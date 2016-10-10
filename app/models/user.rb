class User < ApplicationRecord
  self.inheritance_column = 'not_sti'

  def traffic_usage_percent
    ((u + d) / transfer_enable.to_f).round(2)
  end

  def total_traffic
    transfer_enable
  end
end
