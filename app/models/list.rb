class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy

  validates :list, uniqueness: true
end
