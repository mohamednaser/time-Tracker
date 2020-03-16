module TransactionHelper
  def available_group_dropdown
    Group.all.collect { |p| [p.name, p.id] } << ['Not set', nil]
  end
end
