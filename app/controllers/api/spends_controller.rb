class Api::SpendsController < ApplicationController

  def index


  render json:{message:"Vishnu is a COmputer Programmer"}

 end 


 def create 
  
    @spend = Spend.new(


       pocket_money:params['pocket_money'],
       saving:params['saving'],
       weekly_expenses:params['weekly_expenses'],
       start_date:params['start_date'],
       end_date:params['end_date']


      )

    if @spend.save

        render 'show.json.jbuilder'

    end 


 end

 def update 

  @spend = Spend.find_by(id:user.id)

   @spend.pocket_money = params[:pocket_money] || @spend.pocket_money

    @spend.saving = params[:saving] || @spend.saving

    @spend.weekly_expenses = params[:weekly_expenses] || @spend.weekly_expenses

    @spend.start_date = params[:start_date] || @spend.start_date
     
    @spend.end_date = params[:end_date] || @spend.end_date

    @spen.save

 end  
 





end
