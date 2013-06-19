# encoding: UTF-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


MilkType.destroy_all
Country.destroy_all
Texture.destroy_all
Rating.destroy_all
Cheese.destroy_all
User.destroy_all

  users = User.create [
    { first_name: 'Rob',
      last_name: 'Anderson',
      email_address: 'rbndrsn1980@gmail.com',
      alias: 'The Big Cheese',
      password: '123',
      password_confirmation: '123',
      avatar: "http://placecage.com/c/200/300"
    }]

   milk_types = MilkType.create [
  { name: 'Buffalo\'s' },
  { name: 'Camel\'s' },
  { name: 'Cow\'s' },
  { name: 'Dolphin\'s' },
  { name: 'Goat\'s' },
  { name: 'Mare\'s' },
  { name: 'Sheep\'s' },
  { name: 'Yak\'s' },
  { name: 'Mixed' },
  { name: 'Unknown' }
]
  
  countries = Country.create [
  { name: 'Argentina' },
  { name: 'Armenia' },
  { name: 'Australia' },
  { name: 'Austria' },
  { name: 'Azerbaijan' },
  { name: 'Bangladesh' },
  { name: 'Belgium' },
  { name: 'Bhutan' },
  { name: 'Bolivia' },
  { name: 'Bosnia and Herzegovina' },
  { name: 'Brazil' },
  { name: 'Bulgaria' },
  { name: 'Canada' },
  { name: 'Chile' },
  { name: 'China' },
  { name: 'Colombia' },
  { name: 'Croatia' },
  { name: 'Cyprus' },
  { name: 'Czech Republic' },
  { name: 'Denmark' },
  { name: 'Egypt' },
  { name: 'El Salvador' },
  { name: 'Ethiopia' },
  { name: 'Finland' },
  { name: 'France' },
  { name: 'Georgia' },
  { name: 'Germany' },
  { name: 'Greece' },
  { name: 'Honduras' },
  { name: 'Hungary' },
  { name: 'Iceland' },
  { name: 'India' },
  { name: 'Iran' },
  { name: 'Ireland' },
  { name: 'Italy' },
  { name: 'Japan' },
  { name: 'Latvia' },
  { name: 'Lithuania' },
  { name: 'Malta' },
  { name: 'Mauritania' },
  { name: 'Mexico' },
  { name: 'Mongolia' },
  { name: 'Nepal' },
  { name: 'The Netherlands' },
  { name: 'New Zealand' },
  { name: 'Nicaragua' },
  { name: 'Norway' },
  { name: 'The Philippines' },
  { name: 'Poland' },
  { name: 'Portugal' },
  { name: 'The Republic of Macedonia' },
  { name: 'Romania' },
  { name: 'Russia' },
  { name: 'Serbia' },
  { name: 'Slovakia' },
  { name: 'Slovenia' },
  { name: 'South Africa' },
  { name: 'South Korea' },
  { name: 'Spain' },
  { name: 'Sweden' },
  { name: 'Switzerland' },
  { name: 'Turkey' },
  { name: 'Ukraine' },
  { name: 'The UK' },
  { name: 'The USA' },
  { name: 'Venezuela' }
]

textures = Texture.create [
  { texture: 'Fresh' },
  { texture: 'Soft' },
  { texture: 'Semi Soft' }, 
  { texture: 'Hard' }, 
  { texture: 'Double Cream' }, 
  { texture: 'Triple Cream' }, 
  { texture: 'Blue' }, 
  { texture: 'Washed Rind' }, 
  { texture: 'Processed' }, 
  { texture: 'Soft Ripened' },
  { texture: 'Semi firm' },
  { texture: 'Semi hard' },
  { texture: 'Bloomy-rind' },
  { texture: 'Crumbly' }, 
 ]

  
cheeses = Cheese.create [
  { name: 'Cheeze Whiz',
    origin_protected: false,
    image_url: '/assets/cheezwhiz.jpg',
    milk_type: milk_types[2],
    country: countries[64],
    texture: textures[8]
  },
  { name: 'Cheddar',
    origin_protected: false,
    image_url: '/assets/cheddar.jpg',
    milk_type: milk_types[2],
    country: countries[63],
    texture: textures[3]
  },
  { name: 'Stilton',
    origin_protected: true,
    image_url: '/assets/stilton.jpg',
    milk_type: milk_types[2],
    country: countries[63],
    texture: textures[6]
  },
  { name:'Brie de Meaux',
    origin_protected: true,
    image_url: '/assets/brie.jpg',
    milk_type: milk_types[2],
    country: countries[24],
    texture: textures[9]
  },
  { name: 'Camembert',
    origin_protected: true,
    image_url:'/assets/camembert.jpg',
    milk_type: milk_types[2],
    country: countries[24],
    texture: textures[9]
  },
  { name: 'Feta',
    origin_protected: true,
    image_url: '/assets/feta.jpg',
    milk_type: milk_types[8],
    country: countries[27],
    texture: textures[13]
  },
  { name: 'Kashkaval',
    origin_protected: true,
    image_url: '/assets/kashkaval.jpg',
    milk_type: milk_types[8],
    country: countries[51],
    texture: textures[11]
  },
  { name: 'Danish Blue',
    origin_protected: true,
    image_url: '/assets/danishblue.jpg',
    milk_type: milk_types[2],
    country: countries[19],
    texture: textures[6]
  },
  { name: 'Kwaito',
    origin_protected: false,
    image_url: '/assets/kwaito.jpg',
    milk_type: milk_types[2],
    country: countries[57],
    texture: textures[1]
  },
  { name: 'Munster',
    origin_protected: false,
    image_url: '/assets/munster.jpg',
    milk_type: milk_types[2],
    country: countries[24],
    texture: textures[1]
  }
]


