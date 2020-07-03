# == Schema Information
#
# Table name: entries
#
#  id         :bigint           not null, primary key
#  payment    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  match_id   :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_entries_on_match_id  (match_id)
#  index_entries_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (match_id => matches.id)
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
