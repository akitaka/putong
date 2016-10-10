ActiveAdmin.register User do
  index do
    id_column
    column :email
    column :port
    column :passwd
    column 't', ->(user) { text_node(number_to_human_size(user.t)) }
    column 'd', ->(user) { text_node(number_to_human_size(user.d)) }
    column 'u', ->(user) { text_node(number_to_human_size(user.u)) }
    column 'total', ->(user) { text_node(number_to_human_size(user.total_traffic)) }
    column 'percent', ->(user) { text_node(user.traffic_usage_percent) }
    actions
  end
end
