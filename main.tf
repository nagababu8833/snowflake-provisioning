terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
    }
  }
}

provider "snowflake" {
  account  = "IQ05773"
  username = "NAGABABU8833"
  password = "Nagababu@8833"
  role     = "ACCOUNTADMIN"
  #region   = "central-india"
}


resource "snowflake_user" "example_user" {
  name     = "example_user"
  password = "Password123"
}

resource "snowflake_account_role" "example_role" {
  name = "example_role"
}

resource "snowflake_database" "example_db" {
  name = "example_db"
}

resource "snowflake_schema" "example_schema" {
  name     = "example_schema"
  database = snowflake_database.example_db.name
}
