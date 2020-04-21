class HomeController < ApplicationController
    def index
        render plain: "konnichiwa"
    end
end
