Movie.create [{title: "Room"}, {title: "Zoolander 2"}, {title: "Star Wars"}]
Auditorium.create [{name: "A", capacity: 40}, {name: "B", capacity: 45}, {name: "C", capacity: 60}]
Showing.create [{movie_id: 1, auditorium_id: 1, date: "2016-04-01", time: "12:00:00"}, {movie_id: 2, auditorium_id: 2, date: "2016-04-03", time: "15:00:00"}, {movie_id: 3, auditorium_id: 3, date: "2016-04-02", time: "16:00:00"}]
Order.create [{showing_id: 1, name: "Becky Lehmann", email: "becky@gmail.com", credit_card: "1234567887654321", card_expy_date: "2017-04-17"}]
AdminUser.create(username: "sashafierce", password: "beyonce")