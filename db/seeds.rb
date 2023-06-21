# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


c1 = Comment.create(comment_timestamp: Date.new(2023, 12, 25), content: "Your website sucks!", visible_to_all: false)
c2 = Comment.create(comment_timestamp: Date.new(2022, 6, 12), content: "Your website rocks!", visible_to_all: true)
c3 = Comment.create(comment_timestamp: Date.new(2021, 2, 28), content: "ARGH!", visible_to_all: false)
c4 = Comment.create(comment_timestamp: Date.new(2024), content: "EWW!", visible_to_all: true)
c5 = Comment.create(comment_timestamp: Date.new(2019), content: "Yay!", visible_to_all: true)
c6 = Comment.create(comment_timestamp: Date.new(2018), content: "OMG", visible_to_all: false)
c7 = Comment.create(comment_timestamp: Date.new(2020), content: "Still now word from you!", visible_to_all: true)

u1 = User.create(email: "admin@miuandes.cl", name: "Roland", last_name: "Schlösser", phone_number: 91999735, password: "hola123", role: "Administrator")
u2 = User.create(email: "super1@miuandes.cl", name: "Valentina", last_name: "Lospalotes", phone_number: 97463826, password: "password", role: "Supervisor")
u3 = User.create(email: "exec1@miuandes.cl", name: "Catalina", last_name: "Ruiz-Tagle", phone_number: 94782364, password: "987654321", role: "Executive")
u4 = User.create(email: "user1@miuandes.cl", name: "Juan", last_name: "Vergara", phone_number: 98765432, password: "123456789")

e1 = Executive.create(email: "exec2@miuandes.cl", name: "Eustaquio", last_name: "Sobrado", phone_number: 89836472, password: "cuentaRobada", role: "Executive")
e2 = Executive.create(email: "exec3@miuandes.cl", name: "Roberto", last_name: "Importante", phone_number: 81936724, password: "hacks123", role: "Executive")
e3 = Executive.create(email: "super2@miuandes.cl", name: "Ruperto", last_name: "Pencantes", phone_number: 89867351, password: "NoGanoNada", role: "Supervisor")


t1 = Ticket.create(executive_id:e1.id,user: u2, comment: c7, 
    incident_date: Date.new(2022), 
    deadline_date: Date.new(2023), 
    close_date: Date.new(2024), 
    title: "Website doesn't work", description: "It doesn't wooooooork", priority: "High", status: "Open", tags: "Web Services", resolution_eval: 0)
t2 = Ticket.create(executive_id:e3.id,user: u1, comment: c4, 
    incident_date: Date.new(2021), 
    deadline_date: Date.new(2022), 
    close_date: Date.new(2022), 
    title: "Can't login", description: "It says password incorrect", priority: "Low", status: "Close", tags: "Login", resolution_eval: 3)
t3 = Ticket.create(executive_id:e2.id,user: u3, comment: c1, 
    incident_date: Date.new(2020), 
    deadline_date: Date.new(2024), 
    title: "Mail already in use?", description: "I haven't signed up ever", priority: "Medium", status: "Open", tags: "Sign Up", resolution_eval: 0)
t4 = Ticket.create(executive_id:e1.id,user: u4, comment: c3, 
    incident_date: Date.new(2021), 
    deadline_date: Date.new(2022), 
    close_date: Date.new(2022), 
    title: "Is this website working?", description: "I can't get this website to work!", priority: "High", status: "Close", tags: "Website", resolution_eval: 5)
t5 = Ticket.create(executive_id:e3.id,user: u3, comment: c7, 
    incident_date: Date.new(2023), 
    deadline_date: Date.new(2023), 
    close_date: Date.new(2023), 
    title: "Trying this new website", description: "This website is comming together!", priority: "Medium", status: "Open", tags: "Website", resolution_eval: 0)
t6 = Ticket.create(executive_id:e2.id,user: u4, comment: c5, 
    incident_date: Date.new(2019), 
    deadline_date: Date.new(2020), 
    close_date: Date.new(2020), 
    title: "Can't create ticket?", description: "It doesn't let me create a ticket", priority: "Low", status: "Close", tags: "Log out", resolution_eval: 0)
t7 = Ticket.create(executive_id:e3.id,user: u1, comment: c5, 
    incident_date: Date.new(2021), 
    deadline_date: Date.new(2022), 
    close_date: Date.new(2022), 
    title: "Will this work?", description: "I'm trying very hard to fix this", priority: "Medium", status: "Close", tags: "Web Services", resolution_eval: 2)