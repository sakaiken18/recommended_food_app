email = "test@example.com"
password = "password"

ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")

user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

user2.foods.create!(name: "沖縄そば")
user1.foods.create!(name: "海ぶどう")
user3.foods.create!(name: "ゴーヤーチャンプルー")
user3.foods.create!(name: "サーターアンダギー")
user1.foods.create!(name: "タコライス")

User.create!(email: email, password: password)

puts "初期データの投入に成功しました!"
