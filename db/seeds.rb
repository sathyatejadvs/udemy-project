# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(

  	title: "Topic number #{topic}")
end
10.times do |blog|
	Blog.create!(
		title: "my blog post #{blog}" ,
		body: "Something went wrong!", 
		topic_id: Topic.last.id
	)
end
puts "10 blog posts created"

7.times do |skills_item|
	Skill.create!(
		title: "Rails #{skills_item}" ,
		percent_utilized: 45
	)
end
puts "7 skills_item aare created"

9.times do |portfolio_item|
Portfolio.create!(
	title: "portfolio title #{portfolio_item}",
	subtitle: "RubyOnRails",
	body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
	main_image: "http://placehold.it/600x400" ,
	thumb_image: "http://placehold.it/350x150"

	)
end
puts "9 portfolio items created"

1.times do |portfolio_item|
Portfolio.create!(
	title: "portfolio title #{portfolio_item}",
	subtitle: "Rails guide",
	body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
	main_image: "http://placehold.it/600x400" ,
	thumb_image: "http://placehold.it/350x150"

	)
end
puts "1 portfolio items created"

3.times do |technology_item|
		Portfolio.last.technologies.create!(
		name: "Technology #{technology_item}"
		)
end
puts "3 technology items created"
