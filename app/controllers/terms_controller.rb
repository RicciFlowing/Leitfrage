class TermsController < ApplicationController
  before_action :set_term, only: [:show]

def index
  @terms = Term.all
end

def show
end

private
  def set_term
   @term = Term.find(params[:id])
  end

end
