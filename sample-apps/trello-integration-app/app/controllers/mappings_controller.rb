class MappingsController < ApplicationController
  before_action :authorize

  def boards_index
    @boards = Services::Trello::Boards::GetAll.new.call
  end

  def pipelines_index
    @pipelines = Services::Hubspot::Pipelines::GetAll.new.call
  end

  def index
    @board = Services::Trello::Boards::GetById.new(params[:board_id]).call
    @board_lists = @board.lists
    @pipeline = Services::Hubspot::Pipelines::GetById.new(params[:pipeline_id]).call
  end
end
