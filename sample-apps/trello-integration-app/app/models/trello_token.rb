class TrelloToken < ApplicationRecord
  class TokenAlreadyExist < RuntimeError; end

  before_create :confirm_singularity

  def self.instance
    first_or_create!
  end

  def filled?
    token.present? && secret.present?
  end

  private

  def confirm_singularity
    raise(TokenAlreadyExist, 'There can be only one.') if TrelloToken.any?
  end
end
