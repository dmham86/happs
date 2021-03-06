module UsersHelper

	def full_name(user)
		"#{user.first_name} #{user.last_name}"
	end

	def gravatar_for(user, options={size: 50})
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		size = options[:size]
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		image_tag(gravatar_url, alt: full_name(user), class: "gravatar")
	end

end
