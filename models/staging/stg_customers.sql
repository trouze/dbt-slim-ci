with source as (
    select *
    from {{ source('jshop','customers') }}
),
renamed as (
    select
        ID as customer_id,
        FIRST_NAME as first_name,
        LAST_NAME as last_name,
        SIGNUP_DATE as signup_date
    from source
)
select * from renamed