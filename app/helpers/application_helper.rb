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
end
