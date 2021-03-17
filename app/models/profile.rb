class Profile < ActiveType::Record[User]
	attribute :birthday, :string
	attribute :gender, :string
	attribute :university, :string
	
end 
