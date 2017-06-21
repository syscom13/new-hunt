# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all

nicolas = User.create!(email: "nicolas@test.com", password: "foobar")
victor = User.create!(email: "victor@test.com", password: "foobar")

Product.create!(name: "Skello", url: "https://www.skello.io",
tagline: "Gérez vos plannings de façon simple et intelligente",
category: "tech", user: nicolas)
Product.create!(name: "Bonsai", url: "https://www.hellobonsai.com/",
tagline: "Bulletproof contracts, e-signing, & invoices used by 40000+ top freelancers",
category: "tech", user: nicolas)
Product.create!(name: "Prisma", url: "https://prisma-ai.com",
tagline: "AI that turns your photos into artwork in seconds",
category: "tech", user: nicolas)
Product.create!(name: "Email Hunter", url: "https://hunter.io",
tagline: "Find all the email addresses related to a domain",
category: "tech", user: nicolas)
Product.create!(name: "Medium 2.0", url: "https://medium.com/",
tagline: "A new look, app, and features to move thinking forward",
category: "tech", user: victor)
Product.create!(name: "Le Wagon", url: "https://lewagon.com/",
tagline: "Coding bootcamp for entrepreneurs and creative people",
category: "education", user: victor)
Product.create!(name: "Code4Startup", url: "https://code4startup.com/",
tagline: "Learn how to code by cloning real life startups",
category: "education", user: victor)
Product.create!(name: "Coolors", url: "https://coolors.co",
tagline: "Super fast color schemes generator for cool designers",
category: "design", user: victor)
