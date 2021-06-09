User.create(email: 'admin@gmail.com', password: 'qweasd123', password_confirmation: 'qweasd123')
User.update_all confirmed_at: DateTime.now