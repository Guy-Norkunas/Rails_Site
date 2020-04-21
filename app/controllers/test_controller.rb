class TestController < ApplicationController
    def index
        @test = Test.all
    end

    def new
    end

    def show
        p @test = Test.find(params[:id])
    end

    def create
        @test = Test.new(test_params)
        
        if @test.save
            redirect_to @test
        else
            render 'new'
        end
    end

    private
        def test_params
            params.require(:test).permit(:title, :text)
        end
end
