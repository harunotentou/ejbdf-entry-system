# == Schema Information
#
# Table name: competitions
#
#  id         :bigint           not null, primary key
#  due_on     :date
#  name       :string(255)
#  place      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Competition < ApplicationRecord
    has_many :matches
end
