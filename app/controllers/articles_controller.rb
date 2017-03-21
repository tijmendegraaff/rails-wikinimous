class ArticlesController < ApplicationController
def new
    @article = Article.new
  end

  def create
    @article = Article.new(task_params)
    # @task.done = boolean_value_for_checkbox_inputs(task_params[:done])
    @article.save
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    # @task.done = boolean_value_for_checkbox_inputs(task_params[:done])
    @article.update(article_params)
    redirect_to article_path
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
