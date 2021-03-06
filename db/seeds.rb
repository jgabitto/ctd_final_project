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
    {
        email: 'driver5@gmail.com',
        password: '123456',
        phone: '7133334567',
        first_name: 'j',
        last_name: 'Doe',
        birth_date: Date.strptime("06/20/1980", "%m/%d/%Y"),
        drivers_license_number: '123456',
        expirty_date: Date.strptime("06/20/1980", "%m/%d/%Y")
    },
    {
        email: 'driver6@gmail.com',
        password: '123456',
        phone: '7133334567',
        first_name: 'Octavius',
        last_name: 'Doe',
        birth_date: Date.strptime("06/20/1980", "%m/%d/%Y"),
        drivers_license_number: '123456',
        expirty_date: Date.strptime("06/20/1980", "%m/%d/%Y")
    },
    {
        email: 'driver7@gmail.com',
        password: '123456',
        phone: '7133334567',
        first_name: 'Carmen',
        last_name: 'Doe',
        birth_date: Date.strptime("06/20/1980", "%m/%d/%Y"),
        drivers_license_number: '123456',
        expirty_date: Date.strptime("06/20/1980", "%m/%d/%Y")
    },
    {
        email: 'driver8@gmail.com',
        password: '123456',
        phone: '7133334567',
        first_name: 'Jane',
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
    },
    {
        user_id: User.find(6).id,
        role: 'driver',
        working: true
    },
    {
        user_id: User.find(7).id,
        role: 'driver',
        working: true
    },
    {
        user_id: User.find(8).id,
        role: 'driver',
        working: true
    },
    {
        user_id: User.find(9).id,
        role: 'driver',
        working: true
    }
])

locations = Location.create([
    {
        'user_id': User.find(2).id,
        'location': '10311 S Post Oak Rd, Houston, Texas',
        'latitude': 29.670040,
        'longitude': -95.461390
    },
    {
        'user_id': User.find(3).id,
        'location': '2198 Rice Boulevard, Houston, Texas',
        'latitude': 29.718440,
        'longitude': -95.409300
    },
    {
        'user_id': User.find(4).id,
        'location': '1401 McKinney St, Houston, Texas',
        'latitude': 29.754990,
        'longitude': -95.360750
    },
    {
        'user_id': User.find(5).id,
        'location': '1643 Westheimer Rd, Houston, Texas',
        'latitude': 29.742540,
        'longitude': -95.401420
    },
])

car_models = CarModel.create([
    {
        car_model_name: 'honda civic',
        model_description: '4 door sedan',
        manufacture_year: '2020'
    },
    {
        car_model_name: 'ferrari',
        model_description: '2 door badass car',
        manufacture_year: '2020'
    },
    {
        car_model_name: 'Kia van',
        model_description: "Your mom's van",
        manufacture_year: '2020'
    },
    {
        car_model_name: 'toyota corolla',
        model_description: '4 door sedan',
        manufacture_year: '2020'
    },
    {
        car_model_name: 'honda civic',
        model_description: "My childhood car",
        manufacture_year: '2020'
    },
    {
        car_model_name: 'Tesla',
        model_description: "Elon musk's car",
        manufacture_year: '2020'
    },
    {
        car_model_name: 'honda accord',
        model_description: '4 door sedan',
        manufacture_year: '2020'
    },
    {
        car_model_name: 'Mini Cooper',
        model_description: "Brandon's car",
        manufacture_year: '2020'
    },
    {
        car_model_name: "Kia van",
        model_description: 'family van',
        manufacture_year: '2020'
    },
])

cars = Car.create([
    {
        license_plate: '123456',
        car_type: 'sedan',
        driver_id: Driver.find(1).id,
        car_model_id: CarModel.find(1).id,
        capacity: 4,
        active: true
    },
    {
        license_plate: '123456',
        car_type: 'suv',
        driver_id: Driver.find(2).id,
        car_model_id: CarModel.find(3).id,
        capacity: 6,
        active: true
    },
    {
        license_plate: '123456',
        car_type: 'luxury',
        driver_id: Driver.find(3).id,
        car_model_id: CarModel.find(2).id,
        capacity: 4,
        active: true
    },
    {
        license_plate: '123456',
        car_type: 'sedan',
        driver_id: Driver.find(4).id,
        car_model_id: CarModel.find(4).id,
        capacity: 4,
        active: true
    },
    {
        license_plate: '123456',
        car_type: 'hatchback',
        driver_id: Driver.find(5).id,
        car_model_id: CarModel.find(5).id,
        capacity: 2,
        active: true
    },
    {
        license_plate: '123456',
        car_type: 'sports',
        driver_id: Driver.find(6).id,
        car_model_id: CarModel.find(6).id,
        capacity: 1,
        active: true
    },
    {
        license_plate: '123456',
        car_type: 'coupe',
        driver_id: Driver.find(7).id,
        car_model_id: CarModel.find(8).id,
        capacity: 2,
        active: true
    },
    {
        license_plate: '123456',
        car_type: 'sedan',
        driver_id: Driver.find(8).id,
        car_model_id: CarModel.find(7).id,
        capacity: 4,
        active: true
    },
    {
        license_plate: '123456',
        car_type: 'van',
        driver_id: Driver.find(8).id,
        car_model_id: CarModel.find(9).id,
        capacity: 5,
        active: true
    },
])