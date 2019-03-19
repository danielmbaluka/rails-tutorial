class ExpenseCategoriesController < ApplicationController
  before_action :set_expense_category, only: [:show, :edit, :update, :destroy]

  # GET /expense_categories
  # GET /expense_categories.json
  def index
    @expense_categories = ExpenseCategory.all
  end

  # GET /expense_categories/1
  # GET /expense_categories/1.json
  def show
  end

  # GET /expense_categories/new
  def new
    @expense_category = ExpenseCategory.new
  end

  # GET /expense_categories/1/edit
  def edit
  end

  # POST /expense_categories
  # POST /expense_categories.json
  def create
    @expense_category = ExpenseCategory.new(expense_category_params)

    if @expense_category.save
      flash[:success] = 'Expense category was successfully created.'
      redirect_to expense_categories_url
    else
      render :new
    end
  end

  # PATCH/PUT /expense_categories/1
  # PATCH/PUT /expense_categories/1.json
  def update
    if @expense_category.update(expense_category_params)
      flash[:success] = 'Expense category was successfully updated.'
      redirect_to expense_categories_url
    else
      render :edit
    end
  end

  # DELETE /expense_categories/1
  # DELETE /expense_categories/1.json
  def destroy
    @expense_category.destroy
    flash[:success] = 'Expense category was successfully deleted.'
    redirect_to expense_categories_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_category
      @expense_category = ExpenseCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_category_params
      params.require(:expense_category).permit(:name, :description)
    end
end
