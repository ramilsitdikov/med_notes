class NotesController < ApplicationController
  def create
    @note = Note.new(note_params)
    if @note.save
      render :show, status: :created
    else
      render_ae_error @note
    end
  end

  def show
    @note = Note.find_by(id: params[:id])
    render :show
  end

  private
    def note_params
      params.permit(:symptoms, :diagnosis, :conclusion, :assigning)
    end
end
