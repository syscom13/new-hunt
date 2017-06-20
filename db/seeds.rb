# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

Product.create(name: "Skello", url: "https://www.skello.io", tagline: "Gérez vos plannings de façon simple et intelligente")
Product.create(name: "Bonsai", url: "https://www.hellobonsai.com/", tagline: "Bulletproof contracts, e-signing, & invoices used by 40000+ top freelancers")
Product.create(name: "Prisma", url: "https://prisma-ai.com", tagline: "AI that turns your photos into artwork in seconds")
Product.create(name: "Email Hunter", url: "https://hunter.io", tagline: "Find all the email addresses related to a domain")
Product.create(name: "Medium 2.0", url: "https://medium.com/", tagline: "A new look, app, and features to move thinking forward")
