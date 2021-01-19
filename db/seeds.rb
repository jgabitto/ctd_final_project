# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
    {
        email: 'customer@gmail.com',
        password: '123456',
        phone: '7136688457',
        first_name: 'Jorge',
        last_name: 'Gabitto',
        birth_date: '08/17/1992',
        drivers_license_number: '123456',
        expirty_date: '08/17/2040'
    },
    {
        email: 'driver1@gmail.com',
        password: '123456',
        phone: '7133334567',
        first_name: 'Maria',
        last_name: 'Doe',
        birth_date: '05/18/1950',
        drivers_license_number: '123456',
        expirty_date: '05/18/2040'
    },
    {
        email: 'driver2@gmail.com',
        password: '123456',
        phone: '7133334567',
        first_name: 'Christina',
        last_name: 'Doe',
        birth_date: '05/18/1950',
        drivers_license_number: '123456',
        expirty_date: '05/18/2040'
    },
    {
        email: 'driver3@gmail.com',
        password: '123456',
        phone: '7133334567',
        first_name: 'Luisa',
        last_name: 'Doe',
        birth_date: '05/18/1950',
        drivers_license_number: '123456',
        expirty_date: '05/18/2040'
    },
    {
        email: 'driver4@gmail.com',
        password: '123456',
        phone: '7133334567',
        first_name: 'Alex',
        last_name: 'Doe',
        birth_date: '05/18/1950',
        drivers_license_number: '123456',
        expirty_date: '05/18/2040'
    },
    
])

customer = Customer.create({
    user_id: User.find(1).id,
    role: 'customer'
})

drivers = Driver.create([
    {
        user_id: User.find(2).id,
        role: 'driver',
        working: true
    },
    {
        user_id: User.find(3).id,
        role: 'driver',
        working: true
    },
    {
        user_id: User.find(4).id,
        role: 'driver',
        working: true
    },
    {
        user_id: User.find(5).id,
        role: 'driver',
        working: true
    }
])