module ApplicationHelper

  def education_types_for_select
    ["No/Some High School", "GED", "HS Diploma", "Associate Degree", "College Degree"]
  end

  def languages_for_select
    ["English", "Spanish", "Portugese", "Mandarin", "Vietnamese"]
  end

  def work_types_for_select
    ["Temporary", "Full Time", "Both"]
  end

  def shifts_for_select
    ["Any", "Days Only", "Afternoons Only", "Midnights Only", "Days and Afternoons", "Afternoons and Nights", "Days and Nights"]
  end

  def admin_specialties
    Specialty.where(category_id: 1).map { |specialty| [specialty.name]}
  end

  def contact_specialties
    Specialty.where(category_id: 2).map { |specialty| [specialty.name]}
  end

  def industry_specialties
    Specialty.where(category_id: 3).map { |specialty| [specialty.name]}
  end

  def trade_specialties
    Specialty.where(category_id: 4).map { |specialty| [specialty.name]}
  end

  def specialties_for_select
    specialties = []
    admin = ['Administrative']
    admin2 = make_array(1)
    admin << admin2
    specialties << admin
    contacts = ['Contact Center']
    contact2 = make_array(2)
    contacts << contact2
    specialties << contacts
    industry = ["Industrial"]
    indust2 = make_array(3)
    industry << indust2
    specialties << industry
    skill = ["Skilled Trades"]
    skill2 = make_array(4)
    skill << skill2
    specialties << skill
    specialties
  end

  def make_array(i)
    array = []
    Specialty.where(category_id: i).each do |specialty|
      array << specialty.name
    end
    array
  end
end
