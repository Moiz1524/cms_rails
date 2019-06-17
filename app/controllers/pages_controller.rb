class PagesController < ApplicationController
  
  layout 'admin'
  
  before_action :confirm_logged_in
  before_action :find_subjects, :only => [:new, :create, :edit, :update]
  before_action :set_page_count, :only => [:edit, :update, :new, :create]

  def index
    @page_title = "All Pages"
    @pages = Page.sorted
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new({:name => "Sample Name"})
  end
  
  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:notice] = "Page saved successfully!"
      redirect_to(pages_path)
    else
      render('new')
    end
  end

  def edit
    @page = Page.find(params[:id])
  end
  
  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      flash[:notice] = "Page updated successfully!"
      redirect_to(pages_path)
    else
      render("edit")
    end
  end

  def delete
    @page = Page.find(params[:id])
  end
  
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = "Page #{@page.name} deleted successfully!"
    redirect_to(pages_path)
  end
  
  private
  
  def find_subjects
    @subjects = Subject.sorted
  end
  
  def set_page_count
    @page_count = Page.count
    if params[:action] == 'new' || params[:action] == 'create'
      @page_count += 1      
    end
  end
  
  def page_params
    params.require(:page).permit(:name, :permalink, :position, :visible, :subject_id, :admin_user_id)
  end
end
