module HospitalsHelper
	# Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for_hospital(hospital, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(hospital.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: hospital.name, class: "gravatar")
  end
end
