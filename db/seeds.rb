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

  @kognitiv_job = Job.create!(
    company: "Kognitiv Inc", 
    job_title: "Product Manager Contracter",
    body: "Kognitive  is a loyalty points program focusing on the travel, and real estate industries. I managed a mature fintech product in ongoing development, focusing mainly on compliance, reporting systems, and investor relations.",
    website: "https://kognitiv.com/",
    current: true,
    start_date: Date.strptime("09/01/2019", "%d/%m/%Y"),
    end_date: Date.strptime("09/02/2020", "%d/%m/%Y"),
    acquired: true
    )

  @blockchain_job =  Job.create!(
    company: "Xtreme Blockchain Labs", 
    job_title: "Technical Project Manager",
    body: "Xtreme Blockchain Labs was building a secure online trading platform and providing professional level insights into crypto trading volumes. It was acquired 1.5 years after inception and the platform has since been discontinued. I provided product management over the compliant side of the platform focused on accredited investors.",
    website: "https://xblockchainlabs.com/",
    current: false,
    start_date: Date.strptime("09/01/2019", "%d/%m/%Y"),
    end_date: Date.strptime("09/02/2020", "%d/%m/%Y"),
    acquired: true
    )

   @crowdmatrix_job = Job.create!(
    company: "Crowdmatrix", 
    job_title: "Head of Product",
    body: "Crowdmatrix is a private investment platform that connects accredited investors with growing companies seeking capital. The platform allows private companies to raise money from accredited investors through a structured, compliant online process. The product was acquired by XBL in 2019. I was in charge of all product development.",
    website: "https://crowdmatrix.co/",
    current: true,
    start_date: Date.strptime("01/11/2015", "%d/%m/%Y"),
    end_date: Date.strptime("09/02/2020", "%d/%m/%Y"),
    acquired: true
    )

   @featured_job = Job.create!(
    company: "Featured Heights", 
    job_title: "Product Builder",
    body: "Featured Heights is my freelance company. I design and develop web apps.",
    website: "https://crowdmatrix.co/",
    current: true,
    start_date: Date.strptime("01/11/2015", "%d/%m/%Y"),
    end_date: Date.strptime("09/02/2020", "%d/%m/%Y"),
    acquired: false
    )    
    
    @hackworks_job = Job.create!(
    company: "Hackworks", 
    job_title: "Product & Marketing Specialist",
    body: "I planned and organized hackathon events, engaged and recruited participants, grew and managed the various communities and promoted and marketed the Hackorks brand and events.",
    website: "https://www.hackworks.com/en/",
    current: false,
    start_date: Date.strptime("01/02/2015", "%d/%m/%Y"),
    end_date: Date.strptime("09/11/2015", "%d/%m/%Y"),    
    acquired: false
    )
    
   @xmg_job = Job.create!(
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

# Devlopment Skills
@react_skill = Skill.create!(title: "React", percent_utilized: 9, area: "development", badge: "fab fa-react")
@redux_skill = Skill.create!(title: "Redux", percent_utilized: 9, area: "development", badge: "fab fa-react")
@javascript_skill = Skill.create!(title: "JavaScript", percent_utilized: 9, area: "development", badge: "fab fa-js-square")
@css_skill = Skill.create!(title: "CSS", percent_utilized: 9, area: "development", badge: "fab fa-css3-alt")
@flexbox_skill = Skill.create!(title: "Flexbox", percent_utilized: 9, area: "development", badge: "fab fa-css3-alt")
@grid_skill = Skill.create!(title: "Grid", percent_utilized: 9, area: "development", badge: "fab fa-css3-alt")
@bootstrap_skill = Skill.create!(title: "Bootstrap", percent_utilized: 9, area: "development", badge: "fab fa-css3-alt")
@tailwind_skill = Skill.create!(title: "Tailwind", percent_utilized: 9, area: "development", badge: "fal fa-folder-tree")
@html_skill = Skill.create!(title: "HTML", percent_utilized: 9, area: "development", badge: "fab fa-html5")
@ruby_skill = Skill.create!(title: "Ruby", percent_utilized: 9, area: "development", badge: "fas fa-gem")
@rails_skill = Skill.create!(title: "Ruby on Rails", percent_utilized: 9, area: "development", badge: "fas fa-gem")
@wordpress_skill = Skill.create!(title: "Wordpress", percent_utilized: 9, area: "development", badge: "fab fa-wordpress")
@sql_skill = Skill.create!(title: "SQL", percent_utilized: 9, area: "development", badge: "fas fa-database")
@database_skill = Skill.create!(title: "Data Structures", percent_utilized: 9, area: "development", badge: "fas fa-database")
@testing_skill = Skill.create!(title: "Testing", percent_utilized: 9, area: "development", badge: "far fa-bug")
@testing_skill = Skill.create!(title: "APIs", percent_utilized: 9, area: "development", badge: "far fa-bug")
@testing_skill = Skill.create!(title: "AWS", percent_utilized: 9, area: "development", badge: "far fa-bug")
@testing_skill = Skill.create!(title: "GIT", percent_utilized: 9, area: "development", badge: "far fa-bug")


#Design Skills
@sketch_skill = Skill.create!(title: "Sketch", percent_utilized: 9, area: "design", badge: "fab fa-sketch")
@ui_skill = Skill.create!(title: "UI", percent_utilized: 9, area: "design", badge: "far fa-browser")
@ux_skill = Skill.create!(title: "UX", percent_utilized: 9, area: "design", badge: "far fa-browser")
@wireframes_skill = Skill.create!(title: "Wireframes", percent_utilized: 9, area: "design", badge: "fal fa-sitemap")
@userflows_skill = Skill.create!(title: "User Flows", percent_utilized: 9, area: "design", badge: "fal fa-sitemap")
@mockups_skill = Skill.create!(title: "Mockups", percent_utilized: 9, area: "design", badge: "fal fa-sitemap")
@xd_skill = Skill.create!(title: "Adobe XD", percent_utilized: 9, area: "design", badge: "fab fa-adobe")
@photoshop_skill = Skill.create!(title: "Photoshop", percent_utilized: 9, area: "design", badge: "fab fa-adobe")
@typography_skill = Skill.create!(title: "Typography", percent_utilized: 9, area: "design", badge: "far fa-text-height")



#Management Skills

@project_management_skill = Skill.create!(title: "Project Management", percent_utilized: 9, area: "management", badge: "far fa-tasks")
@product_management_skill = Skill.create!(title: "Product Management", percent_utilized: 9, area: "management", badge: "far fa-tasks")
@kanban_skill = Skill.create!(title: "Kanban", percent_utilized: 9, area: "management", badge: "far fa-columns")
@agile_skill = Skill.create!(title: "Agile", percent_utilized: 9, area: "management", badge: "fa fa-tasks-alt")
@sprintplannig_skill = Skill.create!(title: "Sprint Planning", percent_utilized: 9, area: "management", badge: "fa fa-tasks-alt")
@roadmap_skill = Skill.create!(title: "Roadmapping", percent_utilized: 9, area: "management", badge: "fa fa-tasks-alt")
@userstories_skill = Skill.create!(title: "User Stories", percent_utilized: 9, area: "management", badge: "fa fa-tasks-alt")

#marketing skills

@email_skill = Skill.create!(title: "Email Marketing", percent_utilized: 9, area: "marketing", badge: "fal fa-envelope")
@mailchimp_skill = Skill.create!(title: "Mailchimp", percent_utilized: 9, area: "marketing", badge: "fab fa-mailchimp")
@sendgrid_skill = Skill.create!(title: "Sendgrid", percent_utilized: 9, area: "marketing", badge: "fal fa-envelope")
@copywriting_skill = Skill.create!(title: "Copywriting", percent_utilized: 9, area: "marketing", badge: "fas fa-signature")
@ab_skill = Skill.create!(title: "A/B Testing", percent_utilized: 9, area: "marketing", badge: "fad fa-line-columns")
@analytics_skill = Skill.create!(title: "Web Analytics", percent_utilized: 9, area: "marketing", badge: "fas fa-analytics")
@segmentation_skill = Skill.create!(title: "Segmentation", percent_utilized: 9, area: "marketing", badge: "fas fa-users")
@productmarketing_skill = Skill.create!(title: "Product Marketing", percent_utilized: 9, area: "marketing", badge: "fas fa-search-location")
@branding_skill = Skill.create!(title: "Branding", percent_utilized: 9, area: "marketing", badge: "fal fa-comment-lines")
# [ @react_skill, @redux_skill, @javascript_skill, @css_skill, @flexbox_skill,@grid_skill, @bootstrap_skill, @tailwind_skill,@html_skill, @ruby_skill, @rails_skill, @wordpress_skill, @sql_skill, @database_skill, @testing_skill, @sketch_skill, @ui_skill, @ux_skill, @wireframes_skill, @userflows_skill, @mockups_skill, @xd_skill, @photoshop_skill, @typography_skill, @project_management_skill, @product_management_skill, @kanban_skill, @agile_skill, @sprintplannig_skill, @roadmap_skill, @userstories_skill, @email_skill, @mailchimp_skill, @sendgrid_skill, @copywriting_skill, @ab_skill, @analytics_skill, @segmentation_skill, @productmarketing_skill, @branding_skill ]


featured_skills = [ @react_skill, @javascript_skill, @css_skill, @flexbox_skill, @grid_skill, @bootstrap_skill, @tailwind_skill,@html_skill, @ruby_skill, @rails_skill, @wordpress_skill,  @sketch_skill, @ui_skill, @ux_skill, @wireframes_skill, @userflows_skill, @mockups_skill, @xd_skill, @photoshop_skill, @typography_skill, @project_management_skill, @product_management_skill, @branding_skill ]

featured_skills.each do |skill| 
  JobSkill.create!(skill_id: skill.id, job_id: @featured_job.id)
end

crowdmatrix_skills = [ @react_skill, @redux_skill, @javascript_skill, @css_skill, @flexbox_skill,@grid_skill, @bootstrap_skill, @html_skill, @ruby_skill, @rails_skill, @wordpress_skill, @sql_skill, @database_skill, @testing_skill, @sketch_skill, @ui_skill, @ux_skill, @wireframes_skill, @userflows_skill, @mockups_skill, @xd_skill, @photoshop_skill, @typography_skill, @project_management_skill, @product_management_skill, @kanban_skill, @agile_skill, @sprintplannig_skill, @roadmap_skill, @userstories_skill, @email_skill, @mailchimp_skill, @sendgrid_skill, @copywriting_skill, @ab_skill, @analytics_skill, @segmentation_skill, @productmarketing_skill, @branding_skill ]

crowdmatrix_skills.each do |skill|
  JobSkill.create!(skill_id: skill.id, job_id: @crowdmatrix_job.id)
end


kognitiv_skills = [ @react_skill, @javascript_skill, @css_skill, @flexbox_skill, @grid_skill, @bootstrap_skill, @html_skill, @ruby_skill, @rails_skill, @sql_skill, @database_skill, @testing_skill, @sketch_skill, @ui_skill, @ux_skill, @wireframes_skill, @userflows_skill, @mockups_skill, @xd_skill, @project_management_skill, @product_management_skill, @kanban_skill, @agile_skill, @sprintplannig_skill, @roadmap_skill, @userstories_skill ]

kognitiv_skills.each do |skill|
  JobSkill.create!(skill_id: skill.id, job_id: @kognitiv_job.id)
end

xblockchain_skills = [ @project_management_skill, @product_management_skill, @kanban_skill, @agile_skill, @sprintplannig_skill, @roadmap_skill, @userstories_skill ]

xblockchain_skills.each do |skill|
  JobSkill.create!(skill_id: skill.id, job_id: @blockchain_job.id)
end

hackworks_skills = [ @javascript_skill, @css_skill, @bootstrap_skill, @html_skill,@wordpress_skill, @ui_skill, @ux_skill, @wireframes_skill, @userflows_skill, @mockups_skill, @photoshop_skill, @typography_skill, @project_management_skill, @product_management_skill, @kanban_skill, @agile_skill, @sprintplannig_skill, @roadmap_skill, @userstories_skill, @email_skill, @mailchimp_skill, @sendgrid_skill, @copywriting_skill, @ab_skill, @analytics_skill, @segmentation_skill, @productmarketing_skill, @branding_skill ]

hackworks_skills.each do |skill|
  JobSkill.create!(skill_id: skill.id, job_id: @hackworks_job.id)
end

xmg_skills = [ @css_skill, @bootstrap_skill, @html_skill, @wordpress_skill, @ui_skill, @ux_skill, @wireframes_skill, @userflows_skill, @mockups_skill, @photoshop_skill, @typography_skill, @email_skill, @mailchimp_skill, @copywriting_skill, @ab_skill, @analytics_skill, @segmentation_skill, @productmarketing_skill, @branding_skill ]

xmg_skills.each do |skill|
  JobSkill.create!(skill_id: skill.id, job_id: @xmg_job.id)
end

# dev_skill_list.each do |title, area, percent_utilized|
#   Skill.create!(title: title, area: area, percent_utilized: percent_utilized)
# end

# design_skill_list.each do |title, area, percent_utilized|
#   Skill.create!(title: title, area: area, percent_utilized: percent_utilized)
# end

# management_skill_list.each do |title, area, percent_utilized|
#   Skill.create!(title: title, area: area, percent_utilized: percent_utilized)
# end

# marketing_skill_list.each do |title, area, percent_utilized|
#   Skill.create!(title: title, area: area, percent_utilized: percent_utilized)
# end

puts "skills created"


@crowdmatrix_project = Portfolio.create!(
  title:  "Crowdmatrix", 
  subtitle: "Digital Exempt Market Dealer Platform",  
  body: "Crowdmatrix is a private investment platform that connects accredited investors with growing companies seeking capital.",  
  main_image:   "http://via.placeholder.com/600x400", 
  thumb_image:  "http://via.placeholder.com/600x400", 
  job_id:  @crowdmatrix_job.id
)

@featured_heights = Portfolio.create!(
  title: "Featured Heights",
  subtitle:  "Freelance Web Development",
  body:   "My freelance web development and product management consulting service. ",
  main_image:  "http://via.placeholder.com/600x400",
  thumb_image: "http://via.placeholder.com/600x400",
  job_id:  @featured_job.id
)

@holistick = Portfolio.create!(
  title: "Holistick", 
  subtitle: "All Natual Skincare Shopify Store",  
  body:  "Ecommerce store selling Bali inspired natural beauty, skincare and wellness. ", 
  main_image: "http://via.placeholder.com/600x400",
  thumb_image: "http://via.placeholder.com/600x400",
  job_id:  @featured_job.id
)

@malnutrition = Portfolio.create!(
  title:  "Malnutrition Research Group", 
  subtitle: "SickKids Project",  
  body: "The Malawi Nutrition Research Group (MNRG) is a team of international and national health researchers in Malawi. ",  
  main_image:  "http://via.placeholder.com/600x400",
  thumb_image:  "http://via.placeholder.com/600x400",
  job_id:  @featured_job.id
)

@chain = Portfolio.create!(
  title: "CHAIN Network", 
  subtitle: "Childhood Acute Illness Research Platform",  
  body: "Not-for-profit doing medical research on at risk children in developing nations around the world. Partner of the Bill Gates Foundation.",  
  main_image:  "http://via.placeholder.com/600x400",
  thumb_image:  "http://via.placeholder.com/600x400",
  job_id:  @featured_job.id
)

@hackworks = Portfolio.create!(
  title: "HackWorks",
  subtitle: "HackWorks",
  body: "Helps people host speciality hackathon events. Comes with a matchmaking system, event management system and a judging tool.",  
  main_image: "http://via.placeholder.com/600x400",
  thumb_image:  "http://via.placeholder.com/600x400",
  job_id:  @hackworks_job.id
)

@gleneagles = Portfolio.create!(
  title: "Gleneagles Construction",
  subtitle: "Construction company marketing website",  
  body:  "Renovation company operating on the west side of the greater Toronto area specializing in basements and commercial interiors.",  
  main_image: "http://via.placeholder.com/600x400",
  thumb_image: "http://via.placeholder.com/600x400",
  job_id: @featured_job.id
)

@legal = Portfolio.create!(
  title:  "Woods Legal Services", 
  subtitle:  "Legal Website for a law firm", 
  body:  "Marketing and informational website for a law firm that has been in business for more then 30+ years",  
  main_image:  "http://via.placeholder.com/600x400", 
  thumb_image:  "http://via.placeholder.com/600x400",
  job_id: @featured_job.id
)

@distilled = Portfolio.create!(
  title: "Distilled Beauty",
  subtitle: "Booking platform for lash and eyebrow beauty services",  
  body:  "Distilled Beauty is a microblading and lash extensions business based in Toronto, Canada. The website primary serves as a promotional and online booking tool.",  
  main_image: "http://via.placeholder.com/600x400", 
  thumb_image: "http://via.placeholder.com/600x400",
  job_id: @featured_job.id
)

@freckles = Portfolio.create!(
  title: "Freckles & Florals",
  subtitle: "Lifestyle blog for the modern mom",
  body: "Style & makeup blog for real mom life.",
  main_image: "http://via.placeholder.com/600x400",
  thumb_image:  "http://via.placeholder.com/600x400",
  job_id: @featured_job.id
)

@github_search = Portfolio.create!(
  title: "Github Search",
  subtitle: "Find the most popular repositories & Github Users",
  body: "API React app that fetches the most popular repos and also compares two users github accounts and ranks them.",
  main_image: "http://via.placeholder.com/600x400",
  thumb_image:  "http://via.placeholder.com/600x400",
  job_id: @featured_job.id
)

@dev_course_review = Portfolio.create!(
  title: "Dev Course",
  subtitle: "Headless CMS for course reviews",
  body: "A headless CMS react app that I use to post dev course reviews",
  main_image: "http://via.placeholder.com/600x400",
  thumb_image:  "http://via.placeholder.com/600x400",
  job_id: @featured_job.id
)



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


  @crowdmatrix_project.technologies.create!(name: "Ruby on Rails")
  @crowdmatrix_project.technologies.create!(name: "React")
  @featured_heights.technologies.create!(name: "Wordpress")

  @holistick.technologies.create!(name: "Shopify")

  @malnutrition.technologies.create!(name: "Wordpress")

  @chain.technologies.create!(name: "Wordpress")

  @hackworks.technologies.create!(name: "PHP")

  @gleneagles.technologies.create!(name: "HTML CSS")

  @legal.technologies.create!(name: "Wordpress")

  @distilled.technologies.create!(name: "Wordpress")

  @freckles.technologies.create!(name: "React")

  @github_search.technologies.create!(name: "React")
  @github_search.technologies.create!(name: "API")

  @dev_course_review.technologies.create!(name: "React")
  @dev_course_review.technologies.create!(name: "API")
  @dev_course_review.technologies.create!(name: "Headless CMS")




#   portfolios = Portfolio.all

#   portfolios.each do |portfolio|
#     portfolio.technologies.create!(
#       name: "technology"
#     )
#   end

# 3.times do |technology|
#   Portfolio.last.technologies.create!(
#     name: "technology #{technology}",
#     )
# end
puts "3 technolgies created"

