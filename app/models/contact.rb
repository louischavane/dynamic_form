class Contact < ApplicationRecord
    validates :gender, :first_name, :last_name, presence: true
    validates :first_name_alt, :last_name_alt, presence: true, if: :couple?


    def couple?
      gender == 2
    end


end
