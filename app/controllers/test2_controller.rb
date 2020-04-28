class Test2Controller < ApplicationController

    before_action :authenticate_user!
    http_basic_authenticate_with name: "guy", password: "pass", only: :destroy

    def create
        @test = Test.find(params[:test_id])
        @test2 = @test.test2.create(test2_params)
        redirect_to test_path(@test)
    end

    def destroy
        @test = Test.find(params[:test_id])
        @test2 = @test.test2.find(params[:id])
        @test2.destroy
        redirect_to test_path(@test)
    end
     
    private
        def test2_params
            params.require(:test2).permit(:name, :body)
        end
end
