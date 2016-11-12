(1..1000).each do |n|
	Post.create(content: "content_#{n}")
end
