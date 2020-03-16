module ApplicationHelper
  def group_icon(transaction)
    return 'https://img.icons8.com/plasticine/100/000000/road-closure.png' if transaction.group_id.nil?

    if transaction.group.nil?
      'https://img.icons8.com/plasticine/100/000000/road-closure.png'
    else
      transaction.group.icon
    end
  end

  def seconds_to_hms(sec = 555)
    return '00:00:00' if sec.nil?

    Time.at(sec).utc.strftime('%H:%M:%S')
  end
end
