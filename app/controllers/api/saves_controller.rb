class Api::SavesController < ApplicationController

 def index 
 
  render json:{message:"Vishnu is a Computer Fuck"}

 end 



 def create 
  
    @save = Save.new(


       pocket_money:params['pocket_money'],
       property_worth:params['property_worth'],
       salary: params['salary'],
       weekly_expenses:params['weekly_expenses'],
       start_date:params['start_date'],
       end_date:params['end_date']


      )

    if @save.save

        render 'show.json.jbuilder'

    end 


 end
end
