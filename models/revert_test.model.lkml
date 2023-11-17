connection: "energy_price_mx"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: revert_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: revert_test_default_datagroup

explore: pml {}

