# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}", 
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non facilisis orci, et porttitor ex. Mauris dapibus mauris nulla, eu imperdiet nibh suscipit at. In hac habitasse platea dictumst. Aenean aliquet elit tellus, nec pharetra ipsum efficitur ut. Vestibulum eu lobortis ante. Suspendisse in malesuada nisl, ac commodo erat. Quisque in sem quam. Sed at iaculis sem. Suspendisse aliquet arcu vitae lorem faucibus pretium. Duis luctus sed lacus eu lacinia. Integer fermentum tortor dictum risus ullamcorper, tristique elementum risus varius. Nunc efficitur risus et augue scelerisque varius. Fusce vulputate efficitur tellus a hendrerit."
    )
end

puts "10 blog posts created"

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
      subtitle: "Portfolio_services",
      body: "Mauris dapibus mauris nulla, Aenean aliquet elit tellus, nec pharetra ipsum efficitur ut. Vestibulum eu lobortis ante. Suspendisse in malesuada nisl, ac commodo erat. Quisque in sem quam. Sed at iaculis sem. Duis luctus sedtristique elementum risus Fusce vulputate efficitur tellus a hendrerit.",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/300x150",

      )
  end

  puts "9 portfolio items rewarded"