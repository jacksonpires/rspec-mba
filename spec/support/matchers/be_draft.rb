RSpec::Matchers.define :be_draft do
  match do |order|
    order.total == 0 && order.items.nil? && order.status == "draft"
  end

  failure_message do |order|
    "esperado que #{order.inspect} estivesse no estado 'draft'"
  end

  failure_message_when_negated do |order|
    "esperado que #{order.inspect} **não** estivesse no estado 'draft'"
  end

  description do
    "estar no estado draft (sem itens, total 0 e status correto)"
  end
end
