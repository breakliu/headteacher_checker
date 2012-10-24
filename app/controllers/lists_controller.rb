# coding: utf-8
class ListsController < ApplicationController
  before_filter :require_login, :except => [:index]
  # GET /lists
  # GET /lists.json
  def index
    #@lists = List.all
    params[:month_id] = Month.all[Time.now.month - 1].id if params[:month_id].blank?
    params[:year_id] = Year.first_or_create(:name => "#{Time.now.year}-#{Time.now.year+1}年度").id if params[:year_id].blank?
    
    @list = List.where(:year_id=>params[:year_id], :month_id=>params[:month_id]).first_or_initialize
    if @list.new_record?
      Grade.all.each do |g|
        @list.posts.build(gname: g.name, tname: g.teacher_name)
      end

      respond_to do |format|
        if not @list.save
          format.html {render :file => "#{Rails.root}/public/error.html", :status => :not_found}
        else
          format.html
        end
      end
    else
      respond_to do |format|
        format.html
      end
    end
  end

  def index_admin
    params[:month_id] = Month.all[Time.now.month - 1].id if params[:month_id].blank?
    params[:year_id] = Year.first_or_create(:name => "#{Time.now.year}-#{Time.now.year+1}年度").id if params[:year_id].blank?
    
    @list = List.where(:year_id=>params[:year_id], :month_id=>params[:month_id]).first_or_initialize
    if @list.new_record?
      Grade.all.each do |g|
        @list.posts.build(gname: g.name, tname: g.teacher_name)
      end

      respond_to do |format|
        if not @list.save
          format.html {render :file => "#{Rails.root}/public/error.html", :status => :not_found}
        else
          format.html
        end
      end
    else
      respond_to do |format|
        format.html
      end
    end
  end

  def reset_data
    params[:month_id] = Month.all[Time.now.month - 1].id if params[:month_id].blank?
    params[:year_id] = Year.first_or_create(:name => "#{Time.now.year}-#{Time.now.year+1}年度").id if params[:year_id].blank?
    
    list = List.find_by_year_id_and_month_id(params[:year_id], params[:month_id])
    list.posts.destroy_all if list.posts
    list.destroy

    redirect_to index_admin_url, :notice => '重置本月数据成功'
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    @list = List.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @list }
    end
  end

  # GET /lists/new
  # GET /lists/new.json
  def new
    @list = List.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @list }
    end
  end

  # GET /lists/1/edit
  def edit
    @list = List.find(params[:id])
  end

  # POST /lists
  # POST /lists.json
  def create
    @list = List.new(params[:list])
    Grade.all.each do |g|
      @list.posts.build(gname: g.name, tname: g.teacher_name)
    end

    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'List was successfully created.' }
        format.json { render json: @list, status: :created, location: @list }
      else
        format.html { render action: "new" }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lists/1
  # PUT /lists/1.json
  def update
    @list = List.find(params[:id])

    respond_to do |format|
      if @list.update_attributes(params[:list])
        flash[:notice] = '修改成功!'
        format.html { redirect_to action: "index_admin" }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list = List.find(params[:id])
    @list.destroy

    respond_to do |format|
      format.html { redirect_to lists_url }
      format.json { head :no_content }
    end
  end
end
