# frozen_string_literal: true

class Fortune < ApplicationRecord
  validates :text, presence: true
end
