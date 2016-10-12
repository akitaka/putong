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
    column 'percent' do |user|
      text_node(user.traffic_usage_percent)
      div class: :progress do
        div class: 'progress-bar',
          'aria-valuenow' => user.traffic_usage_percent * 10,
          'aria-valuemax' => 10,
          style: "width: #{user.traffic_usage_percent * 100}%;" do
          span class: 'sr-only' do
            text_node user.traffic_usage_percent
          end
        end
      end
    end
    actions
  end
end
