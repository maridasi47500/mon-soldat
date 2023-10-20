class Cat < ApplicationRecord
  has_many :posts
  before_validation do
    self.url=self.name.parameterize
  end
end
