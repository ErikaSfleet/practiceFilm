class UsersController < ApplicationController
  has_many :favorites
  has_many :films, through: :favorites
  def index
  end
end
