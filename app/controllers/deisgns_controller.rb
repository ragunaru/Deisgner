class DeisgnsController < ApplicationController
  # GET /deisgns
  # GET /deisgns.json
  def index
    @deisgns = Deisgn.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @deisgns }
    end
  end

  # GET /deisgns/1
  # GET /deisgns/1.json
  def show
    @deisgn = Deisgn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @deisgn }
    end
  end

  # GET /deisgns/new
  # GET /deisgns/new.json
  def new
    @deisgn = Deisgn.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @deisgn }
    end
  end

  # GET /deisgns/1/edit
  def edit
    @deisgn = Deisgn.find(params[:id])
  end

  # POST /deisgns
  # POST /deisgns.json
  def create
    @deisgn = Deisgn.new(params[:deisgn])

    respond_to do |format|
      if @deisgn.save
        format.html { redirect_to @deisgn, :notice => 'Deisgn was successfully created.' }
        format.json { render :json => @deisgn, :status => :created, :location => @deisgn }
      else
        format.html { render :action => "new" }
        format.json { render :json => @deisgn.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /deisgns/1
  # PUT /deisgns/1.json
  def update
    @deisgn = Deisgn.find(params[:id])

    respond_to do |format|
      if @deisgn.update_attributes(params[:deisgn])
        format.html { redirect_to @deisgn, :notice => 'Deisgn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @deisgn.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /deisgns/1
  # DELETE /deisgns/1.json
  def destroy
    @deisgn = Deisgn.find(params[:id])
    @deisgn.destroy

    respond_to do |format|
      format.html { redirect_to deisgns_url }
      format.json { head :no_content }
    end
  end
end
