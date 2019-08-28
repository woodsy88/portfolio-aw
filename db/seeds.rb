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
    company: "Crowdmatrix", 
    job_title: "Head of Product",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
    Nullam non facilisis orci, et porttitor ex. Mauris dapibus mauris nulla, eu imperdiet 
    nibh suscipit at. In hac habitasse platea dictumst. Aenean aliquet elit tellus, 
    nec pharetra ipsum efficitur ut. Vestibulum eu lobortis ante. Suspendisse in malesuada nisl, 
    ac commodo erat. Quisque in sem quam.",
    position: "Product Manager",
    date_text: "Januay, 2012 - December, 2015"
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
    date_text: "Januay, 2012 - December, 2015"
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
    date_text: "Januay, 2012 - December, 2015"
    )    

puts "jobs created"

5.times do |skill|
  Skill.create!(
    title: "My Skill #{skill}",
    percent_utilized: 15
    )
  end

  puts "5 skills created"

  9.times do |portfolio_item|
    Portfolio.create!(
      title: "Portfolio title #{portfolio_item}",
      subtitle: "Ruby on Rails",
      body: "Mauris dapibus mauris nulla, Aenean aliquet elit tellus, nec pharetra ipsum efficitur ut. Vestibulum eu lobortis ante. Suspendisse in malesuada nisl, ac commodo erat. Quisque in sem quam. Sed at iaculis sem. Duis luctus sedtristique elementum risus Fusce vulputate efficitur tellus a hendrerit.",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/300x150",

      )
  end

  5.times do |portfolio_item|
    Portfolio.create!(
      title: "Portfolio title #{portfolio_item}",
      subtitle: "React",
      body: "Mauris dapibus mauris nulla, Aenean aliquet elit tellus, nec pharetra ipsum efficitur ut. Vestibulum eu lobortis ante. Suspendisse in malesuada nisl, ac commodo erat. Quisque in sem quam. Sed at iaculis sem. Duis luctus sedtristique elementum risus Fusce vulputate efficitur tellus a hendrerit.",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/300x150",
      )
  end
  puts "9 portfolio items rewarded"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "technology #{technology}",
    )
end
puts "3 technolgies created"

