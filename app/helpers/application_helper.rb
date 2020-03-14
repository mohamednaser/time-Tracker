# frozen_string_literal: true

module ApplicationHelper
  def group_icon(transaction)
    return 'https://img.icons8.com/plasticine/100/000000/road-closure.png'

    if transaction.group_id.nil?
      return 'https://img.icons8.com/plasticine/100/000000/road-closure.png'
    end

    if transaction.group.icon.empty?
        return 'https://img.icons8.com/plasticine/100/000000/road-closure.png'
    else
      return transaction.group.icon
    end
  end
end
