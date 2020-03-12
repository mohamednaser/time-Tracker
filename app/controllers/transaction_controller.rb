# frozen_string_literal: true

class TransactionController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def external
    @transactions = Transaction.where(groupid: nil).all
  end

  def view; end

  def new
    @transaction = Transaction.new 
    
  end

  def create
    @transaction = Transaction.new(post_params)

    if @transaction.save
      redirect_to transaction_index_path, notice: 'transaction was successfully created.'
    else
      redirect_to transaction_new_path, alert: @transaction.errors.full_messages.join('. ').to_s
    end
    
  end


  def post_params
    params.require(:transaction).permit(:name, :amount , :groupid ,:authorid)
  end
  
end
