class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skils = Skill.all
  end

  def about
  end

  def contact
  end

  def france_info_news
    @tweets = SocialTool.twitter_search
  end
end
