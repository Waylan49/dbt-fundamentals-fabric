    select
        id as payment_id,
        order_id,
        payment_method,
        amount,
        _batched_at

    from {{ source('dbo', 'raw_payments') }}
    where payment_method = 'credit_card'