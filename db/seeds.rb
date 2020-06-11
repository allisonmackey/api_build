# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Destination.destroy_all
User.destroy_all
Review.destroy_all

class Seed
  def self.begin
    Seed.generate_users
    Seed.generate_destinations_and_reviews   
  end

  def self.generate_users
    10.times do |i|
      user = User.create!(
        email: "#{i}#{Faker::Internet.email}",
        password: 'password',
        password_confirmation: 'password'
      )
    end
  end

  def self.generate_destinations_and_reviews
    @first = User.first.id
    @last = @first + User.count

    5.times do |i|
    @destination = Destination.create!(
      city: Faker::Nation.capital_city,
      country: Faker::Address.country,
      description: Faker::Hipster.paragraph(sentence_count: 3)
    )

      3.times do |i|
        review = Review.create!(
          user_id: rand(@first...@last),
          destination_id: @destination.id,
          content: Faker::Hipster.paragraph(sentence_count: 2)
        )
      end
    end
  end
end 

Seed.begin

p "Created #{User.count} users, #{Destination.count} destinations & #{Review.count} reviews"