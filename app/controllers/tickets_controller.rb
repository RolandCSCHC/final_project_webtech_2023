class TicketsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  before_action :set_ticket, only: %i[ show edit update destroy ]

  # GET /tickets or /tickets.json
  def index
    
  if params[:search]
     
    @tickets = Ticket.search(params[:search])
    respond_to do |format|
      format.js
    end
    else
      @tickets = Ticket.all
    end

  end

  def search
    @tickets= Ticket.where("lower(title) LIKE ?", "%"+params[:query]+"%")

  end

  # GET /tickets/1 or /tickets/1.json
  def show
    @ticket = Ticket.find(params[:id])
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets or /tickets.json
  def create
    @ticket = Ticket.new(ticket_params)

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to ticket_url(@ticket), notice: "Ticket was successfully created." }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickets/1 or /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to ticket_url(@ticket), notice: "Ticket was successfully updated." }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1 or /tickets/1.json
  def destroy
    @ticket.destroy

    respond_to do |format|
      format.html { redirect_to tickets_url, notice: "Ticket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_params
      params.fetch(:ticket, {}).permit(:user_id, :comment_id, :title, :description, :priority, :status, :search)
    end
end
