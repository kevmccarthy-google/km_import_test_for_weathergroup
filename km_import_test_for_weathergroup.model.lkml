connection: "snowlooker"

view: test_view {
  derived_table: {
    sql:
    select 1 as id, 101 as value
    union all
    select 2 as id, 202 as value
    ;;
  }
  dimension: id {}
  dimension: value {}
  measure: total_value {
    type: sum
    sql: ${value} ;;
  }
}

explore: test_explore {
  view_name: test_view
}
