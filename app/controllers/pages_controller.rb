class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @idle_users = []
    User.all.each do |user|
      unless user.last_sign_in_at.nil?
        if DateTime.now.utc - user.last_sign_in_at.utc > 259_200.00
          @idle_users << user
        end
      end
    end
  end
end
