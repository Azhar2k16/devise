User.create(email: 'user1@gmail.com', password: 'qweasd123', password_confirmation: 'qweasd123')
User.create(email: 'user2@gmail.com', password: 'qweasd123', password_confirmation: 'qweasd123')
User.create(email: 'user3@gmail.com', password: 'qweasd123', password_confirmation: 'qweasd123')
User.create(email: 'user4@gmail.com', password: 'qweasd123', password_confirmation: 'qweasd123')
User.create(email: 'user5@gmail.com', password: 'qweasd123', password_confirmation: 'qweasd123')
User.create(email: 'user6@gmail.com', password: 'qweasd123', password_confirmation: 'qweasd123')
User.create(email: 'user7@gmail.com', password: 'qweasd123', password_confirmation: 'qweasd123')
User.update_all confirmed_at: DateTime.now