class SessionsController < ApplicationController

    get '/signup' do
        if !logged_in?
            erb :"sessions/signup"
        else
            redirect "/books"
        end
    end

    post '/signup'do
        user = User.create(params)
        if user.save
            session[:user_id] = user.id
            redirect "/books"
        else
            user.errors.full_messages.each {|e| flash[:message] = e}
            redirect "/signup"
        end
        binding.pry
    end

    get '/login' do
        if !logged_in?
            erb :"sessions/login"
        else
            redirect "/books"
        end
    end

    post '/login' do
        user = User.find_by(:username => params[:username])
	   
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect "/books"
        else
          flash[:message] = "Unable to log in, please try again or click \"Sign Up\" below if you need to create an account."
          redirect "/login"    
        end
    end

    get '/logout' do
        session.destroy
        redirect '/'
    end
end
