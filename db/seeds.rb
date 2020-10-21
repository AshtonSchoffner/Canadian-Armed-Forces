require "csv"

def load_data(filename)
  file = File.join(Rails.root, "db", filename)
  data = File.read(file)
  CSV.parse(data, headers: true)
end

Operation.destroy_all
Location.destroy_all

operations = load_data("operations.csv")

operations.each do |operation|
  location = Location.find_or_create_by(
    name_el: operation["Location"],
    name_fr: operation["Emplacement"]
  )

  unless location.valid?
    puts "Could not create operation"
    puts location.errors.messages
  end

  new_operation = location.operations.create(
    op_name_el:     operation["Operation (OP) Name"],
    op_name_fr:     operation["Nom de l'opération (OP)"],
    int_name_el:    operation["International Operation Name"],
    int_name_fr:    operation["Nom de l'opération internationale"],
    description_el: operation["Description"],
    description_fr: operation["Description_fr"],
    start_date:     operation["Start Date/date de début"],
    end_date:       operation["End Date/date de fin"]
  )

  unless new_operation.valid?
    puts "Could not create operation"
    puts new_operation.errors.messages
  end
end

Equipment.destroy_all
EquipmentType.destroy_all

equipment_el = load_data("equipment_el.csv")
equipment_fr = load_data("equipment_fr.csv")

index = 0
while index < equipment_el.length
  equipment_type = EquipmentType.find_or_create_by(
    type_el: equipment_el[index]["Equipment Type"],
    type_fr: equipment_fr[index]["Type d'équipement"]
  )

  unless equipment_type.valid?
    puts "Could not create equipment type"
    puts equipment_type.errors.messages
  end

  new_equipment = equipment_type.equipment.create(
    name_el:        equipment_el[index]["Equipment Name"],
    name_fr:        equipment_fr[index]["Nom de l'équipement"],
    description_el: equipment_el[index]["Equipment Description"],
    description_fr: equipment_fr[index]["Description de l'équipement"]
  )

  unless new_equipment.valid?
    puts "Could not create equipment"
    puts new_equipment.errors.messages
  end

  index += 1
end

Rank.destroy_all
RankCategory.destroy_all
Environment.destroy_all

ranks_el = load_data("rank_el.csv")
ranks_fr = load_data("rank_fr.csv")

index = 0
while index < ranks_el.length
  rank_category = RankCategory.find_or_create_by(
    category_el: ranks_el[index]["Rank Appointment Insignia"],
    category_fr: ranks_fr[index]["Insignes de grade et de Fonction des Forces canadiennes"]
  )

  unless rank_category.valid?
    puts "Could not create category"
    puts rank_category.errors.messages
  end

  environment = Environment.find_or_create_by(
    environment_el: ranks_el[index]["Environment"],
    environment_fr: ranks_fr[index]["Environnement"]
  )

  unless environment.valid?
    puts "Could not create environment"
    puts environment.errors.messages
  end

  new_rank = rank_category.ranks.create(
    rank_el:        ranks_el[index]["Rank"],
    rank_fr:        ranks_fr[index]["Grade"],
    environment_id: environment.id
  )

  unless new_rank.valid?
    puts "Could not create rank"
    puts new_rank.errors.messages
  end

  index += 1
end
