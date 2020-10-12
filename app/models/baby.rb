class Baby < ApplicationRecord
    has_many :breastfeedings, dependent: :destroy

end
