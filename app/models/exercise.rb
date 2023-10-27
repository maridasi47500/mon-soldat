class Exercise < ApplicationRecord
  def self.cardio
    where(mytype: "endurer")
  end
  def self.abdo
    where(mytype: "encaisser")
  end
end
