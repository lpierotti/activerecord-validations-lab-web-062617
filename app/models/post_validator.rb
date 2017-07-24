class PostValidator < ActiveModel::Validator
	def validate(post)
		if post.title != nil
			unless post.title.include?("Won't Believe") || post.title.include?("Secret")
				post.errors[:title] << "Need a clickbaity title"
			end
		end
	end
end