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
    company: "Kognitiv Inc", 
    job_title: "Product Manager Contracter",
    body: "Manage a fintech products development.",
    website: "https://kognitiv.com/",
    current: true,
    start_date: Date.strptime("09/01/2019", "%d/%m/%Y"),
    end_date: Date.strptime("09/02/2020", "%d/%m/%Y"),
    acquired: true
    )

  Job.create!(
    company: "Xtreme Blockchain Labs", 
    job_title: "Technical Project Manager",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
    Nullam non facilisis orci, et porttitor ex. Mauris dapibus mauris nulla, eu imperdiet 
    nibh suscipit at. In hac habitasse platea dictumst. Aenean aliquet elit tellus, 
    nec pharetra ipsum efficitur ut. Vestibulum eu lobortis ante. Suspendisse in malesuada nisl, 
    ac commodo erat. Quisque in sem quam.",
    website: "https://xblockchainlabs.com/",
    current: false,
    start_date: Date.strptime("09/01/2019", "%d/%m/%Y"),
    end_date: Date.strptime("09/02/2020", "%d/%m/%Y"),
    acquired: true
    )

  Job.create!(
    company: "Crowdmatrix", 
    job_title: "Head of Product",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
    Nullam non facilisis orci, et porttitor ex. Mauris dapibus mauris nulla, eu imperdiet 
    nibh suscipit at. In hac habitasse platea dictumst. Aenean aliquet elit tellus, 
    nec pharetra ipsum efficitur ut. Vestibulum eu lobortis ante. Suspendisse in malesuada nisl, 
    ac commodo erat. Quisque in sem quam.",
    website: "https://crowdmatrix.co/",
    current: true,
    start_date: Date.strptime("01/11/2015", "%d/%m/%Y"),
    end_date: Date.strptime("09/02/2020", "%d/%m/%Y"),
    acquired: true
    )

  Job.create!(
    company: "Featured Heights", 
    job_title: "Product Builder",
    body: "Featured Heights is my freelance company. I design and develop web apps.",
    website: "https://crowdmatrix.co/",
    current: true,
    start_date: Date.strptime("01/11/2015", "%d/%m/%Y"),
    end_date: Date.strptime("09/02/2020", "%d/%m/%Y"),
    acquired: false
    )    
    
   Job.create!(
    company: "Hackworks", 
    job_title: "Product & Marketing Specialist",
    body: "I planned and organized hackathon events, engaged and recruited participants, grew and managed the various communities and promoted and marketed the Hackorks brand and events.",
    website: "https://www.hackworks.com/en/",
    current: false,
    start_date: Date.strptime("01/02/2015", "%d/%m/%Y"),
    end_date: Date.strptime("09/11/2015", "%d/%m/%Y"),    
    acquired: false
    )
    
  Job.create!(
    company: "XMG", 
    job_title: "Marketing & Business Development Associate",
    body: "XMG Studio Inc. is an award-winning developer of mobile games that has released 18 mobile games in various genres targeting casual game players of which 7 games have in excess of a million installs and several have won Best App Ever industry awards for best in class.",
    website: "http://xmgstudio.com/",
    current: false,
    start_date: Date.strptime("31/10/2012", "%d/%m/%Y"),
    end_date: Date.strptime("09/03/2015", "%d/%m/%Y"),
    acquired: true
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
   ["Wordpress", "development", 9],
   ["Ruby on Rails", "development", 9],
   ["SQL", "development", 9],
   ["Data Structures", "development", 9],
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
   ["Product Management", "management", 9],
 ]

marketing_skill_list = [
   ["Email Marketing", "marketing", 9],
   ["Copywriting", "marketing", 9],
   ["A/B Testing", "marketing", 9],
   ["Web Analytics", "marketing", 9],
   ["Segmentation", "marketing", 9],
   ["Product Marketing", "marketing", 9],    
   ["Branding", "marketing", 9],    
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
  [
    "Crowdmatrix", 
    "Digital Exempt Market Dealer Platform",  
    "Crowdmatrix is a private investment platform that connects accredited investors with growing companies seeking capital.",  
    "http://via.placeholder.com/600x400", 
    "http://via.placeholder.com/600x400" 
  ],
  [
    "Featured Heights",
    "Freelance Web Development",
    "My freelance web development and product management consulting service. ",
    "http://via.placeholder.com/600x400",
    "http://via.placeholder.com/600x400"
  ],
  [
    "Holistick", 
    "All Natual Skincare Shopify Store",  
    "Ecommerce store selling Bali inspired natural beauty, skincare and wellness. ",  
    "http://via.placeholder.com/600x400", 
    "http://via.placeholder.com/600x400"
  ],
  [
    "Malnutrition Research Group", 
    "SickKids Project",  
    "lipsum",  
    "http://via.placeholder.com/600x400", 
    "http://via.placeholder.com/600x400" 
  ],
  [
    "CHAIN Network", 
    "Childhood Acute Illness Research Platform",  
    "Not-for-profit doing medical research on at risk children in developing nations around the world. Partner of the Bill Gates Foundation.",  
    "http://via.placeholder.com/600x400", 
    "http://via.placeholder.com/600x400"
  ],
  [
    "HackWorks", 
    "Hackathon event hosting platform",  
    "Helps people host speciality hackathon events. Comes with a matchmaking system, event management system and a judging tool.",  
    "http://via.placeholder.com/600x400", 
    "http://via.placeholder.com/600x400"
  ],
  [
    "Gleneagles Construction", 
    "Construction company marketing website",  
    "Renovation company operating on the west side of the greater Toronto area specializing in basements and commercial interiors.",  
    "http://via.placeholder.com/600x400", 
    "http://via.placeholder.com/600x400"
  ],
  [
    "Woods Legal Services", 
    "Legal Website for a law firm",  
    "Marketing and informational website for a law firm that has been in business for more then 30+ years",  
    "http://via.placeholder.com/600x400", 
    "http://via.placeholder.com/600x400"
  ],
  [
    "Distilled Beauty", 
    "Booking platform for lash and eyebrow beauty services",  
    "Distilled Beauty is a microblading and lash extensions business based in Toronto, Canada. The website primary serves as a promotional and online booking tool.",  
    "http://via.placeholder.com/600x400", 
    "http://via.placeholder.com/600x400"
  ],  
  [
    "Freckles & Florals", 
    "Lifestyle blog for the modern mom",  
    "Style & makeup blog for real mom life.",  
    "http://via.placeholder.com/600x400", 
    "http://via.placeholder.com/600x400"
  ],           
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

  portfolios = Portfolio.all

  portfolios.each do |portfolio|
    portfolio.technologies.create!(
      name: "technology"
    )
  end

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "technology #{technology}",
    )
end
puts "3 technolgies created"

