# frozen_string_literal: true

class TransactionController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def external
    @transactions = Transaction.where(groupid: nil).all
  end

  def view; end

  def new; end
end
