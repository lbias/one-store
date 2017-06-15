# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 新增 admin 账号  User #
if User.find_by(email: 'admin@test.com').nil?
  u = User.new
  u.email = 'admin@test.com'
  u.password = '11111111'
  u.password_confirmation = '11111111'
  u.is_admin = true
  u.save
  puts '创建管理员*1'
else
  puts '已创建过此账号，不重复新增。'
end

# 新增 user 账号  User #
if User.find_by(email: 'user@test.com').nil?
  u = User.new
  u.email = 'user@test.com'
  u.password = '11111111'
  u.password_confirmation = '11111111'
  u.is_admin = false
  u.save
  puts '创建一般用戶*1'
else
  puts '已创建过此账号，不重复新增。'
end
