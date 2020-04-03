# frozen_string_literal: true

class Plant < ApplicationRecord
  belongs_to :user, optional: true
end
