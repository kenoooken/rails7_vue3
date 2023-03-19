module Api
 module V1
   class RootController < ApplicationController
     def index
       render json: { message: 'Hello World!' }
     end
   end
 end
end