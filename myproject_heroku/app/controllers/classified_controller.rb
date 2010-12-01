class ClassifiedController < ApplicationController
  
  def list
    @classifieds = Classified.find(:all)
  end
  
  def show
    @classified = Classified.find(params[:id])
  end

  def new 
    redirect_to :action => 'list' if session[:user].blank? 
    @classified = Classified.new(params[:classified]) 
    @classified.user = session[:user] 
    @categories = Category.find(:all) 
    if request.post? and @classified.save 
      flash[:notice] = "Classified Submitted"
      redirect_to :action => 'list'
    end
  end 

  def edit 
    @classified = Classified.find(params[:id]) 
    @categories = Category.find(:all) 
    if request.post?  and @classified.update_attributes(params[:classified]) 
      flash[:notice] = "Classified Updated"
      redirect_to :action => 'show', :id => @classified 
    end 
  end
  
  def delete
    Classified.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
  def show_category 
    @category = Category.find(params[:id]) 
  end
  
end
