# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts '3 topics created'

10.times do |i|
  Blog.create!(
    title: "My Blog Post #{i}",
    body: 'Martinus agens illas provincias pro praefectis aerumnas innocentium graviter gemens saepeque obsecrans, ut ab omni culpa inmunibus parceretur, cum non inpetraret, minabatur se discessurum: ut saltem id metuens perquisitor malivolus tandem desineret quieti coalitos homines in aperta pericula proiectare.',
    topic_id: Topic.last.id
  )
end

puts '10 blog posts created'

5.times do |i|
  Skill.create!(
    title: "Rails #{i}",
    percent_utilized: 15
  )
end

puts '5 Skills created'

8.times do |i|
  Portfolio.create!(
    title: "Portfolio title: #{i}",
    subtitle: 'Ruby on Rails',
    body: 'Martinus agens illas provincias pro praefectis aerumnas innocentium graviter gemens saepeque obsecrans',
    main_image: 'http://via.placeholder.com/600x400',
    thumb_image: 'http://via.placeholder.com/350x200'
  )
end

1.times do |i|
  Portfolio.create!(
    title: "Portfolio title: #{i}",
    subtitle: 'Angular',
    body: 'Martinus agens illas provincias pro praefectis aerumnas innocentium graviter gemens saepeque obsecrans',
    main_image: 'http://via.placeholder.com/600x400',
    thumb_image: 'http://via.placeholder.com/350x200'
  )
end

puts '9 portfolios created'

3.times do |i|
  Portfolio.last.technologies.create!(
    name: "Technology #{i}"
  )
end

puts '3 technonologies created'

User.create!(
  email: 'test@test.com',
  name: 'Jonathan Altoé',
  password: '123456',
  roles: 'site_admin'
 )

puts '1 admin user created'

User.create!(
  email: 'test2@test.com',
  name: 'Jonathan simple',
  password: '123456',
)

puts '1 normal user created'