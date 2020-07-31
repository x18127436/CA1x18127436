# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


user = User.new(
  #id: 1,
  name: "Administrator",
  email: "Administrator@Administrator.com",
  password: "Administrator",
  password_confirmation: "Administrator"
)
user.save!

Game.create!([{
  title: "Tom Clancys Ghost Recon",
  brand: "XBox",
  publisher: "Ubisoft",
  description: "Tom Clancys Ghost Recon 2002 for XBox platform.",
  release_year: "2002",
  genre: "Shooter",
  price: "20",
  image: Rails.root.join("app/assets/images/TomClancysGhostRecon.jpg").open,
  user_id: user.id
#  user_id: 1
},
{
  title: "The Amazing Spider-Man 2 (2014)",
  brand: "PlayStation 4",
  publisher: "Activision",
  description: "The Amazing Spider-Man 2 for PlayStation 4",
  release_year: "2014",
  genre: "Action",
  price: "23",
  image: Rails.root.join("app/assets/images/TheAmazingSpiderMan2.jpg").open,
  user_id: 1
},
{
  title: "Street Fighter EX3",
  brand: "PlayStation 2",
  publisher: "Virgin Interactive",
  description: "Street Fighter for PlayStation 2",
  release_year: "2000",
  genre: "Fight",
  price: "22",
  image: Rails.root.join("app/assets/images/StreetFighterEX3.jpg").open,
  user_id: user.id
  #user_id: 1
},
{
  title: "Star Trek: The Game",
  brand: "PlayStation 3",
  publisher: "Namco Bandai Games",
  description: "Star Trek for PlayStation 3",
  release_year: "2013",
  genre: "Action",
  price: "27",
  image: Rails.root.join("app/assets/images/StarTrekTheGame.jpg").open,
  user_id: 1
},
{
  title: "Scooby-Doo! and the Spooky Swamp",
  brand: "PlayStation 2",
  publisher: "Warner Bros. Interactive Entertainment",
  description: "Scooby-Doo for PlayStation 2",
  release_year: "2010",
  genre: "Action",
  price: "18",
  image: Rails.root.join("app/assets/images/ScoobyDooandtheSpookySwamp.jpg").open,
  user_id: user.id
  #user_id: 1
},
{
  title: "Resident Evil 3",
  brand: "XBox One",
  publisher: "Capcom",
  description: "Resident Evil 3 for XBox One",
  release_year: "2016",
  genre: "Action",
  price: "17",
  image: Rails.root.join("app/assets/images/ResidentEvil.jpeg").open,
  user_id: 1
},
{
  title: "PES2020",
  brand: "XBox 360",
  publisher: "Konami",
  description: "PES2020 for XBox 360",
  release_year: "2020",
  genre: "Sports",
  price: "26",
  image: Rails.root.join("app/assets/images/PES2020.jpg").open,
  user_id: user.id
  #user_id: 1
},
{
  title: "NBA 2K20",
  brand: "XBox One",
  publisher: "Take-Two Interactive Studios",
  description: "NBA 2K20! for XBox One",
  release_year: "2020",
  genre: "Sports",
  price: "40",
  image: Rails.root.join("app/assets/images/NBA2k20.jpg").open,
  user_id: 1
},
{
  title: "Minecraft",
  brand: "Wii U",
  publisher: "Microsoft Game Studios",
  description: "Minecraft for Wii U",
  release_year: "2016",
  genre: "Misc",
  price: "16",
  image: Rails.root.join("app/assets/images/Minecraft.jpeg").open,
  user_id: user.id
  #user_id: 1
},
{
  title: "Mario Tennis Aces",
  brand: "Nintendo Switch",
  publisher: "Nintendo",
  description: "Mario Tennis Aces for Nintendo Switch",
  release_year: "2018",
  genre: "Sports",
  price: "25",
  image: Rails.root.join("app/assets/images/MarioTennisAces.jpg").open,
  user_id: 1
},
{
  title: "LEGO Marvel Super Heroes",
  brand: "XBox One",
  publisher: "Warner Bros. Interactive Entertainment",
  description: "LEGO Marvel Super Heroes for XBox One",
  release_year: "2013",
  genre: "Action",
  price: "20",
  image: Rails.root.join("app/assets/images/LEGOMarvelSuperHeroes.jpg").open,
  user_id: user.id
  #user_id: 1
},
{
  title: "Kung Fu Panda: Showdown of Legendary Legends",
  brand: "PlayStation 3",
  publisher: "Little Orbit",
  description: "Kung Fu Panda: Showdown of Legendary Legends for PlayStation 3",
  release_year: "2013",
  genre: "Action",
  price: "22",
  image: Rails.root.join("app/assets/images/KungFuPandaShowdownofLegendaryLegends.jpg").open,
  user_id: 1
},
{
  title: "Just Dance 2016",
  brand: "Wii",
  publisher: "Ubisoft",
  description: "Just Dance 2016 for Wii",
  release_year: "2015",
  genre: "Misc",
  price: "12",
  image: Rails.root.join("app/assets/images/JustDance2016.jpeg").open,
  user_id: user.id
  #user_id: 1
},
{
  title: "How to Train Your Dragon 2",
  brand: "Wii",
  publisher: "Little Orbit",
  description: "How to Train Your Dragon 2 for Wii",
  release_year: "2014",
  genre: "Adventure",
  price: "28",
  image: Rails.root.join("app/assets/images/HowtoTrainYourDragon2.jpg").open,
  user_id: 1
},
{
  title: "Halo2",
  brand: "XBox 360",
  publisher: "Little Orbit",
  description: "Halo2 for XBox 360",
  release_year: "2004",
  genre: "Adventure",
  price: "30",
  image: Rails.root.join("app/assets/images/Halo2.jpg").open,
  user_id: user.id
  #user_id: 1
},
{
  title: "Fortnite",
  brand: "Nintendo Switch",
  publisher: "Epic Games",
  description: "Fortnite for Nintendo Switch",
  release_year: "2017",
  genre: "Survival",
  price: "20",
  image: Rails.root.join("app/assets/images/Fortnite.jpg").open,
  user_id: 1
},
{
  title: "FIFA 19",
  brand: "Nintendo Switch",
  publisher: "Electronic Arts",
  description: "FIFA 19 for Nintendo Switch",
  release_year: "2019",
  genre: "Sports",
  price: "23",
  image: Rails.root.join("app/assets/images/Fifa19.jpeg").open,
  user_id: user.id
  #user_id: 1
},
{
  title: "Call of Duty",
  brand: "XBox One",
  publisher: "Activision",
  description: "Call of Duty Modern Warfare for XBox One",
  release_year: "2019",
  genre: "Shooter",
  price: "37",
  image: Rails.root.join("app/assets/images/CallofDutyModernWarfare.jpg").open,
  user_id: 1
},
{
  title: "Batman Arkham Knight",
  brand: "XBox One",
  publisher: "Warner Bros. Interactive Entertainment",
  description: "Batman Arkham Knight for XBox One",
  release_year: "2015",
  genre: "Action",
  price: "33",
  image: Rails.root.join("app/assets/images/BatmanArkhamKnight.jpg").open,
  user_id: user.id
  #user_id: 1
},
{
  title: "Barbie and Her Sisters Puppy Rescue",
  brand: "Wii",
  publisher: "Namco Bandai Games",
  description: "Barbie and Her Sisters Puppy Rescue for Wii",
  release_year: "2015",
  genre: "Action",
  price: "34",
  image: Rails.root.join("app/assets/images/BarbieandHerSistersPuppyRescue.jpg").open,
  user_id: 1
},
{
  title: "Assassins Creed",
  brand: "XBox One",
  publisher: "Ubisoft",
  description: "Assassins Creed for XBox One",
  release_year: "2016",
  genre: "Action",
  price: "20",
  image: Rails.root.join("app/assets/images/AssassinsCreed.jpeg").open,
  user_id: user.id
  #user_id: 1
},
{
  title: "Angry Birds Star Wars",
  brand: "Wii",
  publisher: "Activision",
  description: "Angry Birds Star Wars for Wii",
  release_year: "2013",
  genre: "Strategy",
  price: "34",
  image: Rails.root.join("app/assets/images/AngryBirdsStarWars.jpg").open,
  user_id: 1
}

])