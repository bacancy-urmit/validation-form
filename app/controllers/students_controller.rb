class StudentsController < ApplicationController
    
    def new
        @student=Student.new
    end
    def create
        @student=Student.new(users)
       if @student.save
    
        else
           render :new 
        end
    
    end
private
    
    def users
        
         params.require(:student).permit(:firstname,:lastname,:email,:age,:degree,:yearcompleted,:username,:website,:address_line1,:address_line2,:city,:state,:zipcode,:password,:password_confirmation)
    end
end
