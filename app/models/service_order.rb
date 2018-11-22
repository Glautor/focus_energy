class ServiceOrder < ApplicationRecord
  belongs_to :user, optional: true
end
