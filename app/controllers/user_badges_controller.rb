class UserBadgesController < ApplicationController

  def index
    badges = Badge.all
    xp = current_user.xp
    @my_badges = badges.select { |badge| xp >= badge.req_xp }
  end
end
