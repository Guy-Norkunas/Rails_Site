class Test2Controller < ApplicationController
    def create
        @test = Test.find(params[:test_id])
        @test2 = @test.test2.create(test2_params)
        redirect_to test_path(@test)
      end
     
    private
        def test2_params
            params.require(:test2).permit(:name, :body)
        end
end
