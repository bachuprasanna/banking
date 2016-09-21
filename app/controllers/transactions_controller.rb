class TransactionsController < ApplicationController
def index
    @transactions = transaction.all
  end
 def show
    @transaction = Transaction.find(params[:id])
  end
 def new
 end
 def create
  @transaction = Transaction.new(transaction_params)
 
  @transaction.save
  redirect_to @transaction
end
 
private
  def transaction_params
    params.require(:transaction).permit(:accountnumber, :date_dedection, :discrition, :deducted_amount, :balance)
  end
end
