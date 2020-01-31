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
    after_save_commit :hello_method
    around_save :do_around_save
    before_commit :do_before_commit
    before_action :do_before_action
    after_initialize :do_after_initialize
    def do_befor_action
        puts "#######################before action###################   "
    end
    def hello_method
        puts "--------------------after_save_commit-----------------"
    end
    def do_after_initialize
        puts "$$$$$$$$$$$$$$$$$$$$$$$$$after initializtion$$$$$$$$$$$$$$$$$$$$"
    end
    def do_before_commit
        puts "^^^^^^^^^^^^^before commit^^^^^^^^^^^^^^^^^"
    end
    def do_around_save
        puts "============around save============="
        yield
    end
end
