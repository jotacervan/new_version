class Syndicate
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :long_name, type: String
  field :description, type: String
  field :scope, type: String

  has_many :cities
  has_many :states
  has_many :users
  
end
