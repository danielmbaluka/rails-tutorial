class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]
  before_action :ensure_user_is_logged_in, only: [:index, :show, :edit, :update, :destroy]

  # GET /expenses
  # GET /expenses.json
  def index
    @expenses = Expense.all
  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = Expense.new(expense_params)

    if @expense.save
      flash[:success] = "Expense was successfully created."
      redirect_to expenses_url
      
    else
      render :new
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    if @expense.update(expense_params)
      flash[:success] = "Expense was successfully updated."
      redirect_to expenses_url
    else
      render :edit
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    flash[:success] = "Expense was successfully deleted."
    redirect_to expenses_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_params
      params.require(:expense).permit(:date, :vendor_id, :expense_category_id, :vehicle_id, :driver_id, :amount, :description)
    end

    def ensure_user_is_logged_in
      unless logged_in?
        flash[:danger] = "Please sign in"
        redirect_to login_url
      end
    end
end
