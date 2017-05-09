class Player < ActiveRecord::Base
  belongs_to :team
  has_many :sponsors, {through: :contracts}
end
