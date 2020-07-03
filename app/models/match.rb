# == Schema Information
#
# Table name: matches
#
#  id             :bigint           not null, primary key
#  category       :string(255)
#  event          :string(255)
#  name           :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  competition_id :bigint
#
# Indexes
#
#  index_matches_on_competition_id  (competition_id)
#
# Foreign Keys
#
#  fk_rails_...  (competition_id => competitions.id)
#
class Match < ApplicationRecord
  belongs_to :competition
  has_many :entries
end
