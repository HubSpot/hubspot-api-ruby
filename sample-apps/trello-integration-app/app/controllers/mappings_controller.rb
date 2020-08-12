class MappingsController < ApplicationController
  before_action :authorize

  def index
    @pipelines = Services::Hubspot::Pipelines::GetAll.new.call
    @boards = Services::Trello::Boards::GetAll.new.call

    respond_to do |format|
      format.html
      format.json do
        board = Services::Trello::Boards::GetById.new(params[:board_id]).call
        board_lists = board&.lists
        pipeline = Services::Hubspot::Pipelines::GetById.new(params[:pipeline_id]).call
        pipeline_stages = pipeline.stages
        mappings = Mapping.where(board_id: params[:board_id], pipeline_id: params[:pipeline_id])
        render json: {
          status: :ok,
          data: {
            board_id: board&.id,
            pipeline_id: pipeline&.id,
            board_lists: board_lists,
            pipeline_stages: pipeline_stages,
            mappings: format_mappings(mappings, lists: board_lists, stages: pipeline_stages)
          }
        }
      end
    end
  end

  def create
    board_lists = Services::Trello::Boards::GetById.new(mapping_params[:board_id]).call.lists
    pipeline_stages = Services::Hubspot::Pipelines::GetById.new(mapping_params[:pipeline_id]).call.stages
    @mapping = Mapping.new(mapping_params)

    respond_to do |format|
      if @mapping.save
        mapping_data = format_mappings([@mapping], lists: board_lists, stages: pipeline_stages)[0]
        format.json { render json: { status: :ok, data: { mapping: mapping_data} } }
      end
    end
  end

  def destroy
    Mapping.find_by(id: params[:id]).destroy!

    render json: { status: :ok, data: { id: params[:id] } }
  end

  private

  def format_mappings(mappings, lists:, stages:)
    mappings.map do |mapping|
      {
        id: mapping.id,
        board_list_name: lists&.detect { |el| el.id == mapping.board_list_id }.name,
        pipeline_stage_label: stages&.detect { |el| el.id == mapping.pipeline_stage_id }.label
      }
    end
  end

  def mapping_params
    params.require(:mapping).permit(%i[board_id pipeline_id board_list_id pipeline_stage_id])
  end
end
