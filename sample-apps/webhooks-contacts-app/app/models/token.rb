class Token < ApplicationRecord
  class TokenAlreadyExist < RuntimeError; end

  before_create :confirm_singularity

  def self.instance
    first_or_create!
  end

  private

  def confirm_singularity
    raise(TokenAlreadyExist, 'There can be only one.') if Token.any?
  end
end
