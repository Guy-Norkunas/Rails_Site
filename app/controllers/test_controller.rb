class TestController < ApplicationController
    def index
        @test = Test.all
    end

    def new
        @test = Test.new
    end

    def show
        @test = Test.find(params[:id])
    end

    def create
        @test = Test.new(test_params)
        
        if @test.save
            redirect_to @test
        else
            render 'new'
        end
    end

    def edit
        @test = Test.find(params[:id])
    end

    private
        def test_params
            params.require(:test).permit(:title, :text)
        end
end
