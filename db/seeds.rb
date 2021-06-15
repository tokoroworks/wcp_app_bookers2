# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: 'user1', email: 'user1@gmail.com', password: 'pAssWord1', created_at: Time.now)
User.create!(name: 'user2', email: 'user2@gmail.com', password: 'pAssWord2', created_at: Time.now)
User.create!(name: 'user3', email: 'user3@gmail.com', password: 'pAssWord3', created_at: Time.now)
User.create!(name: 'user4', email: 'user4@gmail.com', password: 'pAssWord4', created_at: Time.now)
User.create!(name: 'user5', email: 'user5@gmail.com', password: 'pAssWord5', created_at: Time.now)
Book.create!(
  title: 'seed test1',
  body: '1_seedファイルについて',
  user_id: 1
  )
Book.create!(
  title: 'seed test2',
  body: '2_seedファイルについて',
  user_id: 2
  )
Book.create!(
  title: 'seed test3',
  body: '3_seedファイルについて',
  user_id: 3
  )
Book.create!(
  title: 'seed test4',
  body: '4_seedファイルについて',
  user_id: 4
  )
Book.create!(
  title: 'seed test5',
  body: '5_seedファイルについて',
  user_id: 5
  )
