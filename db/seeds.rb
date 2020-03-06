# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
  email: "a@d.co",
  password: "password",
  password_confirmation: "password",
  name: "Admin User",
  roles: "site_admin"
  )

puts "1 admin user created"


User.create!(
  email: "user@user.com",
  password: "password",
  password_confirmation: "password",
  name: "Regular User",

  )

puts "1 regular user was created"


3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}", 
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
    Nullam non facilisis orci, et porttitor ex. Mauris dapibus mauris nulla, eu imperdiet 
    nibh suscipit at. In hac habitasse platea dictumst. Aenean aliquet elit tellus, 
    nec pharetra ipsum efficitur ut. Vestibulum eu lobortis ante. Suspendisse in malesuada nisl, 
    ac commodo erat. Quisque in sem quam. Sed at iaculis sem. Suspendisse aliquet arcu vitae lorem 
    faucibus pretium. Duis luctus sed lacus eu lacinia. Integer fermentum tortor dictum risus 
    ullamcorper, tristique elementum risus varius. Nunc efficitur risus et augue scelerisque varius. 
    Fusce vulputate efficitur tellus a hendrerit.",
    topic_id: Topic.last.id
    )
end

puts "10 blog posts created"


# 5.times do |job|
#   Job.create!(
#     company: "Job #{job}", 
#     job_title: "Title of Job",
#     body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
#     Nullam non facilisis orci, et porttitor ex. Mauris dapibus mauris nulla, eu imperdiet 
#     nibh suscipit at. In hac habitasse platea dictumst. Aenean aliquet elit tellus, 
#     nec pharetra ipsum efficitur ut. Vestibulum eu lobortis ante. Suspendisse in malesuada nisl, 
#     ac commodo erat. Quisque in sem quam.",
#     position: "Product Manager",
#     date_text: "Januay, 2012 - December, 2015"
#     )
# end

  Job.create!(
    company: "Xtreme Blockchain Labs", 
    job_title: "Technical Project Manager",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
    Nullam non facilisis orci, et porttitor ex. Mauris dapibus mauris nulla, eu imperdiet 
    nibh suscipit at. In hac habitasse platea dictumst. Aenean aliquet elit tellus, 
    nec pharetra ipsum efficitur ut. Vestibulum eu lobortis ante. Suspendisse in malesuada nisl, 
    ac commodo erat. Quisque in sem quam.",
    position: "Product Manager",
    date_text: "Januay, 2012 - December, 2015",
    website: "https://www.linkedin.com/company/xtreme-blockchain-labs/"
    )

  Job.create!(
    company: "Crowdmatrix", 
    job_title: "Head of Product",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
    Nullam non facilisis orci, et porttitor ex. Mauris dapibus mauris nulla, eu imperdiet 
    nibh suscipit at. In hac habitasse platea dictumst. Aenean aliquet elit tellus, 
    nec pharetra ipsum efficitur ut. Vestibulum eu lobortis ante. Suspendisse in malesuada nisl, 
    ac commodo erat. Quisque in sem quam.",
    position: "Product Manager",
    date_text: "Januay, 2012 - December, 2015",
    website: "https://crowdmatrix.co/"
    )
    
   Job.create!(
    company: "Hackworks", 
    job_title: "Marketing Specialist",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
    Nullam non facilisis orci, et porttitor ex. Mauris dapibus mauris nulla, eu imperdiet 
    nibh suscipit at. In hac habitasse platea dictumst. Aenean aliquet elit tellus, 
    nec pharetra ipsum efficitur ut. Vestibulum eu lobortis ante. Suspendisse in malesuada nisl, 
    ac commodo erat. Quisque in sem quam.",
    position: "Product Manager",
    date_text: "Januay, 2012 - December, 2015",
    website: "https://www.hackworks.com/en/"
    )
    
  Job.create!(
    company: "XMG", 
    job_title: "Marketing & Business Development Associate",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
    Nullam non facilisis orci, et porttitor ex. Mauris dapibus mauris nulla, eu imperdiet 
    nibh suscipit at. In hac habitasse platea dictumst. Aenean aliquet elit tellus, 
    nec pharetra ipsum efficitur ut. Vestibulum eu lobortis ante. Suspendisse in malesuada nisl, 
    ac commodo erat. Quisque in sem quam.",
    position: "Product Manager",
    date_text: "Januay, 2012 - December, 2015",
    website: "http://xmgstudio.com/"
    )    

puts "3 jobs created"

# 15.times do |skill|
#   Skill.create!(
#     title: "My Skill #{skill}",
#     percent_utilized: 15,
#     area: "development",
#     badge: "fab fa-react"
#     )
# end

dev_skill_list = [
   ["React", "development", 9],
   ["JavaScript", "development", 9],
   ["CSS", "development", 9],
   ["CSS Flexbox", "development", 9],
   ["CSS Grid", "development", 9],
   ["Bootstrap", "development", 9],
   ["Tailwind", "development", 9],
   ["HTML", "development", 9],
   ["Ruby", "development", 9],
   ["Redux", "development", 9],
 ]

design_skill_list = [
   ["Sketch", "design", 9],
   ["UI", "design", 9],
   ["UX", "design", 9],
   ["mockups", "design", 9],
   ["wireframes", "design", 9],
   ["Adobe XD", "design", 9],
   ["PhotoShop", "design", 9],
   ["Typography", "design", 9],
 ]

management_skill_list = [
   ["Project Management", "management", 9],
   ["Kanban", "management", 9],
   ["Agile", "management", 9],
   ["Sprint Planning", "management", 9],
   ["User Stories", "management", 9],
 ]

marketing_skill_list = [
   ["Email Marketing", "marketing", 9],
   ["Copywriting", "marketing", 9],
   ["A/B Testing", "marketing", 9],
   ["Web Analytics", "marketing", 9],
   ["Segmentation", "marketing", 9],
   ["Product Marketing", "marketing", 9],    
 ]


dev_skill_list.each do |title, area, percent_utilized|
  Skill.create!(title: title, area: area, percent_utilized: percent_utilized)
end

design_skill_list.each do |title, area, percent_utilized|
  Skill.create!(title: title, area: area, percent_utilized: percent_utilized)
end

management_skill_list.each do |title, area, percent_utilized|
  Skill.create!(title: title, area: area, percent_utilized: percent_utilized)
end

marketing_skill_list.each do |title, area, percent_utilized|
  Skill.create!(title: title, area: area, percent_utilized: percent_utilized)
end

puts "13 skills created"

portfolio_list = [
  ["Crowdmatrix", "Digital Exempt Market Dealer",  "lipsum",  "http://via.placeholder.com/600x400", "http://via.placeholder.com/600x400" ],
  ["Featured Heights", "freelance Web Development Website",  "lipsum",  "http://via.placeholder.com/600x400", "http://via.placeholder.com/600x400" ],
  ["Holistick", "Shopify Store",  "lipsum",  "http://via.placeholder.com/600x400", "http://via.placeholder.com/600x400" ],
  ["Crypto Tracker", "Crypto Tracking and Prices",  "lipsum",  "http://via.placeholder.com/600x400", "http://via.placeholder.com/600x400" ],
  ["Dev Course Reviews", "Reviews of Developer Courses",  "lipsum",  "http://via.placeholder.com/600x400", "http://via.placeholder.com/600x400" ],
  ["HackWorks", "Hackathon event hosting platform",  "lipsum",  "http://via.placeholder.com/600x400", "http://via.placeholder.com/600x400" ],
  ["Logo Aggregator", "Digital Exempt Market Dealer",  "lipsum",  "http://via.placeholder.com/600x400", "http://via.placeholder.com/600x400" ],
]


portfolio_list.each do |title, subtitle, body, main_image, thumb_image |
  Portfolio.create!(title: title, subtitle: subtitle, body: body, main_image: main_image, thumb_image: thumb_image)
end





  # 5.times do |portfolio_item|
  #   Portfolio.create!(
  #     title: "Portfolio title #{portfolio_item}",
  #     subtitle: "React",
  #     body: "Mauris dapibus mauris nulla, Aenean aliquet elit tellus, nec pharetra ipsum efficitur ut. Vestibulum eu lobortis ante. Suspendisse in malesuada nisl, ac commodo erat. Quisque in sem quam. Sed at iaculis sem. Duis luctus sedtristique elementum risus Fusce vulputate efficitur tellus a hendrerit.",
  #     main_image: "http://via.placeholder.com/600x400",
  #     thumb_image: "http://via.placeholder.com/300x150",
  #     )
  # end
  puts "9 portfolio items rewarded"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "technology #{technology}",
    )
end
puts "3 technolgies created"

