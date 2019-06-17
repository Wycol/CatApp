class PagesController < ApplicationController
    before_action :require_admin, only: [:resume]
    def index
        if !current_user
            redirect_to '/login'
        end
        if logged_in? && current_user.tipo == "Admin"
            redirect_to '/resume'
        end
        if logged_in? && current_user.tipo != "Admin"
            redirect_to '/resources'
        end
    end

    def resume
        @resources = Resource.all
        @not_active_users = User.where(active: false).count
        @resources_not_assign = 0
        Resource.all.each do |resource|
            if resource.users.count == 0
                @resources_not_assign += 1
            end
        end
        users_not_assign = 0
        total_users = User.all.count
        User.all.each do |user|
            if user.resources.count == 0
                 users_not_assign += 1
            end
        end
        @users_not_assign_percent = (users_not_assign*100/total_users*100)/100
        @resources_without_extra_fields = Resource.includes(:form_fields).where( :form_fields => { :resource_id => nil } ).count
        #array
        @resources_by_category = Resource.all.group(:category).count.values
    end
end