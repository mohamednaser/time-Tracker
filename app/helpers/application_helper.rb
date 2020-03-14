# frozen_string_literal: true

module ApplicationHelper
  def group_icon(transaction)

    if transaction.group_id.nil?
      return 'https://img.icons8.com/plasticine/100/000000/road-closure.png'
    end

    if transaction.group.nil?
        return 'https://img.icons8.com/plasticine/100/000000/road-closure.png'
    else
      return transaction.group.icon
    end
  end

  def seconds_to_hms(sec = 555)
    if sec.nil? 
      return '00:00:00'
    end
    
    Time.at(sec).utc.strftime("%H:%M:%S")
  end
end
