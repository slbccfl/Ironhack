# lib/password_checker.rb

class PasswordChecker

	def check_password(email, password)
		user_name = email.split('@')[0]
		domain = email.split('@')[1]
		company = domain.split('.')[0]
		p domain
		if password.length < 7 || (password.match(/[a-zA-Z]+[0-9]+\W+/) == nil) ||
			password.upcase == password || password.downcase == password ||
			password.match(user_name) != nil || password.match(company) != nil
			false
		else
			true
		end

	end

end