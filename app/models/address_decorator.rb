Address.class_eval do

  def stateid_or_statename
    return state.blank? ? state_name : state.name
  end

  def stateiso_or_statename
    return state.blank? ? state_name : state.abbr
  end

  def to_sidebar
    "#{firstname} #{lastname}<br />#{address1}<br />#{city}<br />#{zipcode}<br />#{stateid_or_statename}<br />#{country.name}"
  end

  def to_print
    "Nome e Cognome: #{firstname} #{lastname}<br />Indirizzo: #{address1} - #{zipcode} #{city} (#{stateiso_or_statename}) - [#{country.name}]"
  end

  def to_billing
    "Ragione Sociale: #{company}<br />P.IVA: #{vat_number}<br />Codice Fiscale: #{tax_id_number}"
  end

end