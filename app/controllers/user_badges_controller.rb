class UserBadgesController < ApplicationController
  def index
    badges = Badge.all
    xp = current_user.xp
    @my_badges = badges.select { |badge| xp >= badge.req_xp }
    @xp = xp

    @final_hash = {}

    RunParticipant.where(user_id: current_user.id).each do |run_p|
      date_key = run_p.run.date.strftime('%b %d').to_s
      @final_hash[date_key] = 0
    end

    RunParticipant.where(user_id: current_user.id).each do |run_p|
      date_key = run_p.run.date.strftime('%b %d').to_s
      distance = (run_p.distance.nil? ? 0 : run_p.distance)
      @final_hash[date_key] += distance
    end

  end
end
