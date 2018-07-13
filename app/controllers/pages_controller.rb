class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skils = Skill.all
  end

  def about
  end

  def contact
  end
end
