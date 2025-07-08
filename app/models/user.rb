class User < ApplicationRecord
  attribute :full_name, :string

  after_initialize do |user|
    user.full_name = "#{user.first_name} #{user.last_name}"
  end

  # def full_name
  #   "#{first_name} #{last_name}"
  # end
end
