# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
# ...
Product.create!(title: 'Programming Ruby 1.9 & 2.0',
                description:
                %{
                  Ruby is the fastest growing and most exciting dynamic language out there.
                  If you need to get working programs delivered fast, you should add Ruby to your toolbox.
                  },
                image_url: 'ruby.jpg',
                price: 34.95,
                isbn: 12345,
                author: "David Richard",
                category: "Technology")

Product.create!(title: 'HTML & CSS',
                description:
                %{
                  HTML & CSS is the fastest growing and most exciting dynamic language out there.
                  If you need to get working programs delivered fast, you should add Ruby to your toolbox.
                  },
                image_url: 'html.jpg',
                price: 19.95,
                isbn: 1234511,
                author: "David Richard",
                category: "Technology")

Product.create!(title: 'Ruby on Rails',
                description:
                %{
                  Rails is the fastest growing and most exciting dynamic language out there.
                  If you need to get working programs delivered fast, you should add Ruby to your toolbox.
                  },
                image_url: 'agile.jpg',
                price: 41.95,
                isbn: 123450,
                author: "David Richard",
                category: "Technology")

Product.create!(title: 'Rubyist',
                description:
                %{
                  Rails is the fastest growing and most exciting dynamic language out there.
                  If you need to get working programs delivered fast, you should add Ruby to your toolbox.
                  },
                image_url: 'rubyist.jpg',
                price: 41.95,
                isbn: 123459,
                author: "David Richard",
                category: "Technology")

Product.create!(title: 'Programming Ruby 1.9 & 2.4',
                description:
                %{
                  Ruby is the fastest growing and most exciting dynamic language out there.
                  If you need to get working programs delivered fast, you should add Ruby to your toolbox.
                  },
                image_url: 'ruby.jpg',
                price: 34.95,
                isbn: 123458,
                author: "David Richard",
                category: "Technology")

Product.create!(title: 'HTML & CSS1',
                description:
                %{
                  HTML & CSS is the fastest growing and most exciting dynamic language out there.
                  If you need to get working programs delivered fast, you should add Ruby to your toolbox.
                  },
                image_url: 'html.jpg',
                price: 19.95,
                isbn: 123457,
                author: "David Richard",
                category: "Technology")

Product.create!(title: 'Ruby on Rails 4',
                description:
                %{
                  Rails is the fastest growing and most exciting dynamic language out there.
                  If you need to get working programs delivered fast, you should add Ruby to your toolbox.
                  },
                image_url: 'agile.jpg',
                price: 41.95,
                isbn: 123456,
                author: "David Richard",
                category: "Technology")

Product.create!(title: 'Rubyist1',
                description:
                %{
                  Rails is the fastest growing and most exciting dynamic language out there.
                  If you need to get working programs delivered fast, you should add Ruby to your toolbox.
                  },
                image_url: 'rubyist.jpg',
                price: 41.95,
                isbn: 123455,
                author: "David Richard",
                category: "Technology")

Product.create!(title: 'Programming Ruby 1.7 & 2.0',
                description:
                %{
                  Ruby is the fastest growing and most exciting dynamic language out there.
                  If you need to get working programs delivered fast, you should add Ruby to your toolbox.
                  },
                image_url: 'ruby.jpg',
                price: 34.95,
                isbn: 123454,
                author: "David Richard",
                category: "Technology")

Product.create!(title: 'HTML5 & CSS',
                description:
                %{
                  HTML & CSS.
                  },
                image_url: 'html.jpg',
                price: 19.95,
                isbn: 123453,
                author: "David Richard",
                category: "Technology")

Product.create!(title: 'Ruby on3 Rails',
                description:
                %{
                  Rails is the fastest growing and most exciting dynamic language out there.
                  If you need to get working programs delivered fast, you should add Ruby to your toolbox.
                  },
                image_url: 'agile.jpg',
                price: 41.95,
                isbn: 123452,
                author: "David Richard",
                category: "Technology")

Product.create!(title: 'Rubyist3',
                description:
                %{
                  Rails is the fastest growing and most exciting dynamic language out there.
                  If you need to get working programs delivered fast, you should add Ruby to your toolbox.
                  },
                image_url: 'rubyist.jpg',
                price: 41.95,
                isbn: 123451,
                author: "David Richard",
                category: "Technology")

Contact.create!(name: 'Berat Hoxha',
                email: 'berathoxha4@gmail.com',
                message: 'message1'
                )

Contact.create!(name: 'Dardan Lladrovci',
                email: 'dardanlladrovci@gmail.com',
                message: 'message2'
                )

Contact.create!(name: 'Argjend Xhigoli',
                email: 'argjendxhigoli@gmail.com',
                message: 'message3'
                )

Contact.create!(name: 'Mensuri Latifi',
                email: 'mensurlatifi@gmail.com',
                message: 'message4'
                )

Contact.create!(name: 'Kushtrim Kadriu',
                email: 'kushtrimkadriu@gmail.com',
                message: 'message5'
                )

Contact.create!(name: 'admin',
                email: 'admin@gmail.com',
                message: 'admin'
                )

User.create!(name: "admin", email: "admin@gmail.com", password: "admin")
# ...
puts 'Completed.'
