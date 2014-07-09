require 'syntax_highlighter'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end

  def analyze
    @analysis_results = Exercism::Analysis.new(Exercism::Adapters::Ruby.new(params[:code])).run(Exercism::Analyzers::IterMutation)
  end

end
