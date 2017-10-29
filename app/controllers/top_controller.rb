class TopController < ApplicationController
  def index
    # page(params[:page]) - ページ番号を取得(paginateヘルパーがいいかんじにやってくれる)
    # per(40) - 1ページあたりの表示数 40件
    @restaurants = Restaurant.search(params).page(params[:page]).per(40)
  end
end
