Given('I fill all the edit profile fields as shown below') do |table|
  @data = table.rows_hash
  @data.each_pair do |key, value|
  	case key
    	when "Nombre"
        fill_in 'nombre', :with => value 
		  when "Apellido"
        fill_in 'apellido', :with => value
		  when "Fecha de nacimiento"
        fill_in 'fecha_de_nacimiento', :with => value	 
	    when "Ocupacion"
        select value, :from => "ocupacion"
    	when "Profesion u oficio"
        fill_in 'carrera', :with => value	 
    	when "Mis intereses"
        check(value)
      when "Mis cualidades"
        check(value) 
      when "Pais de residencia"
        fill_in 'pais_de_recidencia', :with => value
      when "Ciudad de residencia"
        fill_in 'ciudad_de_recidencia', :with => value
      when "Teléfono"
        fill_in 'telefono', :with => value
      when "Género"
        select value, :from => "genero"
      when "Nombre de contacto de emergencia"
        fill_in 'nombre_contacto_de_emergencia', :with => value
      when "Relación con contacto de emergencia"
        fill_in 'relacion_contacto_de_emergencia', :with => value
      when "Número de contacto de emergencia"
        fill_in 'numero_contacto_de_emergencia', :with => value
      when "Mi pequeña descripción"
        fill_in 'descripcion_personal', :with => value
      end
    end
  end

Then('my personal information was updated') do
  @data.each_pair do |key, value|
    if key!="Fecha de nacimiento"
      expect(page).to have_content(value)
    end
  end
end