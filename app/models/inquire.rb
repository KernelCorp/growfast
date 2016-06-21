class Inquire
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :phone, type: String
  field :email, type: String
  field :business, type: String
  field :money, type: String
  field :wageLvl, type: String



end
