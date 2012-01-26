class Admin::VendorsController < Admin::ResourceController
  before_filter :load_data, :except => :index
  # GET /vendors
  # GET /vendors.json
  def index
    # @vendors = Vendor.all
    # @user = User.all

    respond_with(@collection) do |format|
      format.html
      format.json { render :json => json_data }
    end

#    respond_to do |format|
#      format.html # index.html.erb
#      format.json { render json: @vendors }
#    end
  end

  def collection
    return @collection if @collection.present?
    unless request.xhr?
      @search = Vendor.metasearch(params[:search])
      @collection = @search.relation.page(params[:page]).per(Spree::Config[:admin_products_per_page])
    else
      #disabling proper nested include here due to rails 3.1 bug
      #@collection = User.includes(:bill_address => [:state, :country], :ship_address => [:state, :country]).
      @collection = Vendor.includes(:nombre, :email, :user_id).
                        where("vendor.nombre #{LIKE} :search",
                               {:search => "#{params[:q].strip}%"}).
                        limit(params[:limit] || 100)
    end
  end

  # GET /vendors/new
  # GET /vendors/new.json
  def new
    @vendor = Vendor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vendor }
    end
  end

  # GET /vendors/1/edit
  def edit
    @vendor = Vendor.find(params[:id])
  end

  # POST /vendors
  # POST /vendors.json
  def create
    @vendor = Vendor.new(params[:vendor])

    respond_to do |format|
      if @vendor.save
        format.html { redirect_to admin_vendors_url, notice: 'Vendor was successfully created.' }
        format.json { render json: @vendor, status: :created, location: @vendor }
      else
        format.html { render action: "new" }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vendors/1
  # PUT /vendors/1.json
  def update
    @vendor = Vendor.find(params[:id])

    respond_to do |format|
      if @vendor.update_attributes(params[:vendor])
        format.html { redirect_to admin_vendors_url, notice: 'Vendor was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendors/1
  # DELETE /vendors/1.json
  def destroy
    @vendor = Vendor.find(params[:id])
    @vendor.destroy

    respond_to do |format|
      format.html { redirect_to admin_vendors_url }
      format.json { head :ok }
    end
  end

end

def load_data
  @users = User.order(:email)
end
