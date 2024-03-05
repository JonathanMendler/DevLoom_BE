# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clear existing data
Post.destroy_all

# Seed data
Post.create!(date: Date.today, title: "Demo Post 1", body: "Lorem ipsum dolor sit amet")
Post.create!(date: Date.today - 1.day, title: "Demo Post 2", body: "Lorem ipsum dolor sit amet")