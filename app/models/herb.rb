class Herb < ApplicationRecord
    has_many :natures, dependent: :destroy
end
