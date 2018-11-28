# frozen_string_literal: true

class DialogsController < OpenReadController
  before_action :set_dialog, only: %i[show update destroy]

  # GET /dialogs
  def index
    @dialogs = Dialog.all

    render json: @dialogs
  end

  # GET /dialogs/1
  def show
    render json: @dialog
  end

  # POST /dialogs
  def create
    # original scaffold code
    # @dialog = Dialog.new(dialog_params)

    # based on examples_controller
    @dialog = current_user.dialogs.build(dialog_params)

    if @dialog.save
      render json: @dialog, status: :created, location: @dialog
    else
      render json: @dialog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dialogs/1
  def update
    if @dialog.update(dialog_params)
      render json: @dialog
    else
      render json: @dialog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dialogs/1
  def destroy
    @dialog.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dialog
      @dialog = Dialog.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dialog_params
      params.require(:dialog).permit(:date, :entry_name, :rating, :notes)
    end
end
