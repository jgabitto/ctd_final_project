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
        birth_date: Date.strptime("08/17/1992", "%m/%d/%Y"),
        drivers_license_number: '123456',
        expirty_date: Date.strptime("06/20/1980", "%m/%d/%Y")
    },
    {
        email: 'driver1@gmail.com',
        password: '123456',
        phone: '7133334567',
        first_name: 'Maria',
        last_name: 'Doe',
        birth_date: Date.strptime("06/20/1980", "%m/%d/%Y"),
        drivers_license_number: '123456',
        expirty_date: Date.strptime("06/20/1980", "%m/%d/%Y")
    },
    {
        email: 'driver2@gmail.com',
        password: '123456',
        phone: '7133334567',
        first_name: 'Christina',
        last_name: 'Doe',
        birth_date: Date.strptime("06/20/1980", "%m/%d/%Y"),
        drivers_license_number: '123456',
        expirty_date: Date.strptime("06/20/1980", "%m/%d/%Y")
    },
    {
        email: 'driver3@gmail.com',
        password: '123456',
        phone: '7133334567',
        first_name: 'Luisa',
        last_name: 'Doe',
        birth_date: Date.strptime("06/20/1980", "%m/%d/%Y"),
        drivers_license_number: '123456',
        expirty_date: Date.strptime("06/20/1980", "%m/%d/%Y")
    },
    {
        email: 'driver4@gmail.com',
        password: '123456',
        phone: '7133334567',
        first_name: 'Alex',
        last_name: 'Doe',
        birth_date: Date.strptime("06/20/1980", "%m/%d/%Y"),
        drivers_license_number: '123456',
        expirty_date: Date.strptime("06/20/1980", "%m/%d/%Y")
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

locations = Location.create([
    {
        'user_id': User.find(2).id,
        'location': '4702 Kinglet Street, Houston, Texas 77035, United States',
        'latitude': 29.660349,
        'longitude': -95.456562
    },
    {
        'user_id': User.find(3).id,
        'location': 'Rice University, 6100 Main St, Houston, Texas 77005, United States',
        'latitude': 29.717171,
        'longitude': -95.4018215
    },
    {
        'user_id': User.find(4).id,
        'location': 'Houston Downtown Management District, 1119 Milam St, Houston, Texas 77002, United States',
        'latitude': 29.756763,
        'longitude': -95.367593
    },
    {
        'user_id': User.find(5).id,
        'location': 'Poison Girl, 1641 Westheimer Rd, Houston, Texas 77006, United States',
        'latitude': 29.742678,
        'longitude': -95.401127
    }
])