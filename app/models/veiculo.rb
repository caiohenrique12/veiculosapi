class Veiculo < ApplicationRecord
  paginates_per 30

  validates :marca, :veiculo, :ano, :descricao, presence: true
end
