class Beacon < ApplicationRecord
    has_one :campaign
    validates :major, :uniqueness => { :case_sensitive => false }
    validates :name, :uniqueness => { :case_sensitive => false }
end
