class HubspotToken < ApplicationRecord
  class TokenAlreadyExist < RuntimeError; end

  before_create :confirm_singularity

  def self.instance
    first_or_create!
  end

  def filled?
    refresh_token.present? && access_token.present?
  end

  private

  def confirm_singularity
    raise(TokenAlreadyExist, 'There can be only one.') if HubspotToken.any?
  end
end
