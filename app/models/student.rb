class Student < ApplicationRecord
    validates :lastname,presence: true, if: :firstname_precent? 
    validates :firstname, format:{ with: /\A[A-Z]+\z/,messgae: "First latter should must be capital"}
    validates :lastname, format:{ with: /\A[A-Z]+\z/,messgae: "First latter should must be capital"}
    validates :email, presence: true, uniqueness:true ,format:{with: /[a-z]+[\.]?[a-z]+[0-9]*\@[a-z]+.com/,message: "Email should be unique or valid!"}   
    validates :age, presence: true, numericality: {only_integer: true, less_than:40, greater_than:15}
    validates :password, presence: true, confirmation:true
    validates :password_confirmation, presence:true
    def firstname_precent?
            firstname.present?
    end
end
