module ApplicationHelper
  def transaction_group_icon(transaction)
    return 'http://via.placeholder.com/200x100' if transaction.group_id.nil?

    if transaction.group.nil?
      'http://via.placeholder.com/200x100'
    else
      transaction.group.icon
    end
  end
  
  def seconds_to_hms(sec = 555)
    return '00:00:00' if sec.nil?

    Time.at(sec).utc.strftime('%H:%M:%S')
  end

  def calculate_total_transactions_duration(transactions)
    transactions.map(&:amount).inject(:+)
  end
end
