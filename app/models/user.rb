class User < ActiveRecord::Base
	validates :first_name, :last_name, length: { minimum: 2 },presence: true 
	validates :email_address, presence: true
	validates :age, presence: true, :numericality => { :only_integer => true, :greater_than_or_equal_to => 10, :less_than_or_equal_to => 150 }
end
