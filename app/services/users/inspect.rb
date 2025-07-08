module Users
  class Inspect
    def self.call(user)
      %Q(
        User Full Name: #{user.full_name}
        Full Name Length: #{user.full_name.length}
        Email Length: #{user.email.length}
      )
    end
  end
end
