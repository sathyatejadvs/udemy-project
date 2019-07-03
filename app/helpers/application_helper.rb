module ApplicationHelper

	def credentials_validation(style)
		if current_user.is_a?(User) 
			link_to'Logout' ,destroy_user_session_path, method: :delete, class: style
		else 
			(link_to'Register' , new_user_registration_path ,class: style) + " ".html_safe  +  
			(link_to'Login' , new_user_session_path ,class: style)
		end
	end

	def source_helper(layout_name)
		if session[:source] 
			greeting = "Thanks for visiting me in #{session[:source]} and you are on the #{layout_name} layout"
			content_tag(:p, greeting , class: 'source-greeting'  )
		end 
	end

end
