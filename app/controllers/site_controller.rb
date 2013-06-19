class SiteController < ApplicationController
  # before_filter :authorize, only: [:edit, :update, :destroy]
  
  def index
    @defaults = {}

    if current_user

      @cheeses = current_user.cheeses 
      
      user_ratings = []
      for cheese in @cheeses
        user_ratings << cheese.ratings.find_by_user_id(@current_user) 
      end
      @test = user_ratings
      
      @rating = Rating.new
    else
      @cheeses = Cheese.all
      @user = User.new
      
      render :template => 'site/home'
    end
  end
  
   def ratings
      params[:rating][:cheese] = Cheese.find(params[:rating][:cheese])
      params[:rating][:user] = current_user
      @rating = Rating.new(params[:rating])
      # @rating.user = current_user
      
      if @rating.save
        redirect_to root_url, notice: "Thanks for rating #{@rating.cheese.name}."
      else
        redirect_to root_url, notice: "Please enter a number between 1 and 5."
      end
  end

  def show_cheese
    @cheese = Cheese.find(params[:cheese_id])
    
  end

  
  def signup
    @user = User.new params[:user]
    
    if @user.save
      redirect_to root_url
    else
      redirect_to root_url
    end
  end
  
  def login
    @user = User.find_by_email_address(params[:email_address])
    
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      
      redirect_to root_url, notice: "Thank you for logging in!"
    else
      flash.now.alert = "Email or password is invalid"
      @cheeses = Cheese.all
      @user = User.new
      @defaults = {}
      render :home
    end
  end

  def logout
    session[:user_id] = nil
    
    redirect_to root_url, notice: "Thanks and bye!"
  end

  def filter_sort
    wstmt = 'cheeses.id = cheeses.id'

    if params[:stars]
      top = params[:stars].to_i + 0.9
      if current_user
        wstmt += " and ratings.star_rating = #{params[:stars]}"
      else
        puts "using average rating"
        wstmt += " and cheeses.average_rating between #{params[:stars]} and #{top}"
      end
    end
    wstmt += " and countries.id = #{params[:country]}" if params[:country]
    wstmt += " and milk_types.id = #{params[:milk_type]}" if params[:milk_type]
    wstmt += " and textures.id = #{params[:texture]}" if params[:texture]

    @defaults = params

    @cheeses = Cheese.includes(:ratings, :country, :milk_type, :texture).where(wstmt)

    render :partial => "cheeses", :layout => false
  end
end

