class PagesController < ApplicationController
    def home
        @basic_plan = Plan.find(1)
        @pro_plan = Plan.find(2)
        @basic_company_plan = Plan.find(4)
        @pro_company_plan = Plan.find(3)
    end
    def about 
    end
end
