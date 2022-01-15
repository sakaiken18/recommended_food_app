email = "test@example.com"
password = "password"

ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")

user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

food1 = user2.foods.create!(name: "沖縄そば")
food2 = user1.foods.create!(name: "海ぶどう")
food3 = user3.foods.create!(name: "ゴーヤーチャンプルー")
food4 = user3.foods.create!(name: "サーターアンダギー")
food5 = user1.foods.create!(name: "タコライス")

food1.likes.create!(user_id: user1.id)
food1.likes.create!(user_id: user3.id)
food2.likes.create!(user_id: user2.id)
food3.likes.create!(user_id: user1.id)
food4.likes.create!(user_id: user1.id)
food4.likes.create!(user_id: user2.id)
food5.likes.create!(user_id: user3.id)

User.create!(email: email, password: password)

puts "初期データの投入に成功しました!"
