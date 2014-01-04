class HospitalsController < ApplicationController
  def new
  end

  def edit
  end

  def index
  	@hospitals = Hospital.search(params[:search]).paginate(page: params[:page])

    respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @hospitals }
    end
  end

  def show
  	@hospital = Hospital.find(params[:id])
    @blooddonations = @hospital.banked_bloods.paginate(page: params[:page])
    @kidneydonations = @hospital.kidneys.paginate(page: params[:page])
  end

  def update
    @hospital = Hospital.find(params[:id])
    @banked_blood = BankedBlood.new
    @kidney = Kidney.new
    
    respond_to do |format|
      if @hospital.update_attributes(blood_params)
        if (!@hospital.donor.empty?)
        @banked_blood.donor = @hospital.donor
        @banked_blood.bloodgroup = @hospital.bloodgroup
        @banked_blood.donated_to = @hospital.donated_to
        @banked_blood.hospital_id = @hospital.id
        @banked_blood.save
        Hospital.update(@hospital.id, :donor => '')
        Hospital.update(@hospital.id, :bloodgroup => '')
        Hospital.update(@hospital.id, :donated_to => '')
        @hospital.update_attributes(blood_params)
        format.html { redirect_to @hospital }
        format.xml  { head :ok }
        elsif (!@hospital.kidneydonor.empty? && !@hospital.kidneybloodgroup.empty?)
          @kidney.kidneydonor = @hospital.kidneydonor
        @kidney.kidneybloodgroup = @hospital.kidneybloodgroup
        @kidney.kidneydonated_to = @hospital.kidneydonated_to
        @kidney.kidneybonemarrow = @hospital.kidneybonemarrow
        @kidney.kidneytissue_type = @hospital.kidneytissue_type
        @kidney.hospital_id = @hospital.id
        @kidney.save
        Hospital.update(@hospital.id, :kidneydonor => '')
        Hospital.update(@hospital.id, :kidneybloodgroup => '')
        Hospital.update(@hospital.id, :kidneydonated_to => '')
        Hospital.update(@hospital.id, :kidneybonemarrow => '')
        Hospital.update(@hospital.id, :kidneytissue_type => '')
        @hospital.update_attributes(blood_params)
        format.html { redirect_to @hospital }
        format.xml  { head :ok }
      end

        
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hospital.errors, :status => :unprocessable_entity }
      end
    end
  end


  private

  def banked_blood_params
    params.require(:banked_blood).permit(:donor, :donated_to, :date, :bloodgroup)
  end

  def blood_params
    params.require(:hospital).permit(:donated_to, :donor, :bloodgroup, :date, :kidneydonor, :kidneydonated_to, :kidneybloodgroup, :kidneybonemarrow, :kidney_date, :kidneytissue_type )
  end
end
