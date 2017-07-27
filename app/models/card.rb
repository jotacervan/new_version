class Card
  include Mongoid::Document

  field :name, type: String
  field :token, type: String
  field :cpf, type: String
  field :brand, type: String

  belongs_to :user
end
