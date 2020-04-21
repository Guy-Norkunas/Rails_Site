class TestController < ApplicationController
    def index
        render plain: "hi there x"
    end
end
