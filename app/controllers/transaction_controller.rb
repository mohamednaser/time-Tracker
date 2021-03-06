class TransactionController < ApplicationController
  before_action :signed_in?

  def index
    @transactions = Transaction.where(authorid: @current_user.id).most_recent
  end

  def external
    @transactions = Transaction.where(authorid: @current_user.id).where(group_id: [nil, '']).most_recent
  end

  def group_transactions
    @group = Group.find(params[:id].to_i)
    @transactions = Transaction.where(group_id: params[:id].to_i).all
  end

  def view; end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(post_params)
    @transaction.authorid = @current_user.id
    @transaction.amount = (post_params[:hours].to_i * 60 * 60) + (post_params[:minutes].to_i * 60)

    if @transaction.save
      redirect_to transactions_path, notice: 'transaction was successfully created.'
    else
      redirect_to transactions_new_path, alert: @transaction.errors.full_messages.join('. ').to_s
    end
  end

  def post_params
    params.require(:transaction).permit(:name, :hours, :minutes, :group_id, :authorid)
  end
end
