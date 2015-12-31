# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
# ...
Product.create!(title: '--------------------Programming Ruby 1.9 & 2.0',
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

Product.create!(title: 'HTML and CSS',
                description:
                %{
                  Every day, more and more people want to learn some HTML and CSS. Joining the professional web designers and programmers are new audiences who need to know a little bit of code at work (update a content management system or e-commerce store)
                  },
                image_url: 'html.jpg',
                price: 19.95,
                isbn: 1234511,
                author: "Jon Duckett ",
                category: "Technology")

Product.create!(title: 'Agile Web Development',
                description:
                %{
                  Rails just keeps on changing. Both Rails 3 and 4, as well as Ruby 1.9 and 2.0, bring hundreds of improvements, including new APIs and substantial performance enhancements.
                  },
                image_url: 'agile.jpg',
                price: 41.95,
                isbn: 123450,
                author: "Dave Thomas",
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

Product.create!(title: 'Beginning Ruby',
                description:
                %{
                  Based on the bestselling first edition, Beginning Ruby: From Novice to Professional, Second Edition is the leading guide for every type of reader who wants to learn Ruby from the ground up.
                  },
                image_url: 'beg-ruby.jpg',
                price: 17.95,
                isbn: 123458,
                author: "Peter Cooper",
                category: "Technology")

Product.create!(title: 'The Personal MBA',
                description:
                %{
                  Getting an MBA (Master the Art of Business) is an expensive choice-one almost impossible to justify regardless of the state of the economy.
                  },
                image_url: 'business2.jpg',
                price: 31.64,
                isbn: 123457,
                author: "Josh Kaufman",
                category: "Business")

Product.create!(title: 'The Entrepreneur Mind',
                description:
                %{
                  To achieve unimaginable business success and financial wealth—to reach the upper echelons of entrepreneurs, 
                  where you’ll find Mark Zuckerberg of Facebook, Sara Blakely of Spanx, Mark Pincus of Zynga,
                  },
                image_url: 'business1.jpg',
                price: 14.63,
                isbn: 123456,
                author: "Kevin D. Johnson",
                category: "Business")

Product.create!(title: 'The 7 Habits of Effective People',
                description:
                %{
                  One of the most inspiring and impactful books ever written, The 7 Habits of Highly Effective People has captivated readers for 25 years.
                  },
                image_url: 'business3.jpg',
                price: 23.36,
                isbn: 123455,
                author: " Stephen R. Covey",
                category: "Business")

Product.create!(title: 'Think and Grow Rich',
                description:
                %{
                  Think and Grow Rich has been called the \"Granddaddy of All Motivational Literature.\" It was the first book to boldly ask, \"What makes a winner?\"
                  }, 
                image_url: 'business4.jpg',
                price: 34.95,
                isbn: 123454,
                author: " Napoleon Hill",
                category: "Business")

Product.create!(title: 'The Power of Positive Thinking ',
                description:
                %{
                  An international bestseller with over five million copies in print, The Power of Positive Thinking has helped men and women around the world to achieve fulfillment in their lives through Dr. Norman Vincent Peale’s powerful message of faith and inspiration
                  },
                image_url: 'business5.jpg',
                price: 23.14,
                isbn: 123453,
                author: " Dr. Norman Vincent Peale",
                category: "Business")

Product.create!(title: 'George Washington\'s Secret Six',
                description:
                %{
                  When George Washington beat a hasty retreat from New York City in August 1776, many thought the American Revolution might soon be over. Instead, Washington rallied—thanks in large part to a little-known, top-secret group called the Culper Spy Ring. 
                  },
                image_url: 'history1.jpg',
                price: 44.95,
                isbn: 123452,
                author: "Brian Kilmeade",
                category: "History")

Product.create!(title: 'Killing Reagan: The Violent Assault',
                description:
                %{
                 From the bestselling team of Bill O'Reilly and Martin Dugard comes Killing Reagan, a page-turning epic account of the career of President Ronald Reagan that tells the vivid story of his rise to power -- and the forces of evil that conspired to bring him down.
                  },
                image_url: 'history2.jpg',
                price: 46.49,
                isbn: 1234512,
                author: " Bill O'Reilly ",
                category: "History")

Product.create!(title: 'The Wright Brothers',
                description:
                %{
                  Rails is the fastest growing and most exciting dynamic language out there.
                  If you need to get working programs delivered fast, you should add Ruby to your toolbox.
                  },
                image_url: 'history3.jpg',
                price: 49.32,
                isbn: 1234513,
                author: "DDavid McCullough",
                category: "History")

Product.create!(title: 'All the Light We Cannot See',
                description:
                %{
                 From the highly acclaimed, multiple award-winning Anthony Doerr, the beautiful, stunningly ambitious instant New York Times bestseller about a blind French girl and a German boy whose paths collide in occupied France as both try to survive the devastation of World War II.
                  },
                image_url: 'history4.jpg',
                price: 41.95,
                isbn: 1234514,
                author: "Anthony Doerr",
                category: "History")

Product.create!(title: 'The Life We Bury',
                description:
                %{
                  College student Joe Talbert has the modest goal of completing a writing assignment for an English class. His task is to interview a stranger and write a brief biography of the person. With deadlines looming, Joe heads to a nearby nursing home to find a willing subject. There he meets Carl Iverson, and soon nothing in Joe's life is ever the same.
                  },
                image_url: 'history5.jpg',
                price: 36.99,
                isbn: 1234515,
                author: "Allen Eskens",
                category: "History")

Product.create!(title: 'Step-Up to Medicine',
                description:
                %{
                  Now thoroughly updated and revised, this best-selling volume in the popular Step-Up series provides a high-yield review of medicine, ideal for preparing for clerkships or clinical rotations, shelf exams, and the USMLE Step 2. 
                  },
                image_url: 'other1.jpg',
                price: 40.10,
                isbn: 12345151,
                author: "Steven Agabegi",
                category: "Other")

Product.create!(title: 'Willy the Whale',
                description:
                %{
                  Are you looking for a children's book that is highly entertaining, great for beginning readers, and is jam-packed with stories, jokes, and more?
                  },
                image_url: 'other2.jpg',
                price: 36.99,
                isbn: 12345152,
                author: " Uncle Amon",
                category: "other")

Product.create!(title: 'The Football Decision',
                description:
                %{
                  Neurosurgeon Uzma Samadani, M.D, Ph.D, and emergency medicine physician Robert Glatter, M.D wrote this book to provide parents with a comprehensive evidence-based approach for navigating the plethora of data surrounding the risks and benefits of contact sports.
                  },
                image_url: 'other3.jpg',
                price: 6.99,
                isbn: 12345153,
                author: "Uzma Samadani",
                category: "other")

Product.create!(title: 'The Future of Architecture',
                description:
                %{
                  The founder of Architizer.com and practicing architect draws on his unique position at the crossroads of architecture and social media to highlight 100 important buildings that embody the future of architecture.
                  },
                image_url: 'other4.jpg',
                price: 36.99,
                isbn: 12345154,
                author: "Marc Kushner",
                category: "other")

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

User.create!(name: "admin", email: "admin@gmail.com ", password: "admin")
# ...
puts 'Completed.'
