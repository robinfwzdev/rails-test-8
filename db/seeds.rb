User.destroy_all
Post.destroy_all
UserProfile.destroy_all

user = User.create!(name: "robin hood", email: "robin@example.com", password: "123123123")
UserProfile.create!(name: "test test", email: "test@example.com", password: "123123123")
Post.create!(title: "Practice ruby", content: "Read a lot of code", user_id: user.id)