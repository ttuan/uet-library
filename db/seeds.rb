5.times do |n|
  Book.create ({
    name: "Book #{n+1}",
    description: "Description for book #{n+1}",
    author: "Author#{n}",
    publish_year: 1994,
    image: "http://t2.gstatic.com/images?q=tbn:ANd9GcRXgz_0MhHdPoZk3ClJGCyAfBuB4auKNu6IyqnZN-cCg_vZIbjL"
  })
end

5.times do |n|
  User.create({
    email: "tuan#{n}@gmail.com",
    password: "11111111",
    password_confirmation: "11111111"
    })
end
