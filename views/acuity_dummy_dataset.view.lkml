# The name of this view in Looker is "Acuity Dummy Dataset"
view: acuity_dummy_dataset {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ecommerce.Acuity_Dummy_Dataset`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Controller Firmware" in Explore.

  dimension: controller_firmware {
    type: string
    sql: ${TABLE}.Controller_Firmware ;;
  }

  dimension: controller_id {
    type: string
    sql: ${TABLE}.Controller_ID ;;
  }

  dimension: controller_state {
    type: string
    sql: ${TABLE}.Controller_State ;;
  }

  dimension: controller_type {
    type: string
    sql: ${TABLE}.Controller_Type ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_latitude {
    type: sum
    sql: ${latitude} ;;
  }

  measure: average_latitude {
    type: average
    sql: ${latitude} ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: pin {
    type: string
    sql: ${TABLE}.PIN ;;
  }

  dimension: response_level {
    type: number
    sql: ${TABLE}.Response_Level ;;
  }

  dimension: store_number {
    type: string
    sql: ${TABLE}.Store_Number ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.User ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
