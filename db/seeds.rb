Rake::Task['db:drop'].invoke
Rake::Task['db:create'].invoke
Rake::Task['db:migrate'].invoke

Person.create(first_name: "nev", second_name: "dub")
Person.create(first_name: "test", second_name: "test")
Person.create(first_name: "me", second_name: "me")
Person.create(first_name: "Cast", second_name: "ttt")

Instructor.create(person_id: 1)
Instructor.create(person_id: 2)

Availability.create(start_date: "2012-01-01", end_date: "2012-05-31", instructor_id: 1)
Availability.create(start_date: "2012-02-01", end_date: "2012-04-30", instructor_id: 2)

Client.create(login: "me", password:"test", person_id: 3)
Client.create(login: "me_again", password:"test", person_id: 4)

Reservation.create(client_id: 3)
Reservation.create(client_id: 3)
Reservation.create(client_id: 4)

Lesson.create(day: "2012-01-09", start: "08:00:00", nhours: 9, reservation_id: 1 )
Lesson.create(day: "2012-01-10", start: "08:00:00", nhours: 9, reservation_id: 1 )
Lesson.create(day: "2012-01-11", start: "08:00:00", nhours: 9, reservation_id: 1 )
Lesson.create(day: "2012-01-12", start: "08:00:00", nhours: 9, reservation_id: 1 )
Lesson.create(day: "2012-01-13", start: "08:00:00", nhours: 9, reservation_id: 1 )

Lesson.create(day: "2012-02-13", start: "08:00:00", nhours: 9, reservation_id: 2 )
Lesson.create(day: "2012-02-14", start: "08:00:00", nhours: 9, reservation_id: 2 )
Lesson.create(day: "2012-02-15", start: "08:00:00", nhours: 9, reservation_id: 2 )
Lesson.create(day: "2012-02-16", start: "08:00:00", nhours: 9, reservation_id: 2 )
Lesson.create(day: "2012-02-17", start: "08:00:00", nhours: 9, reservation_id: 2 )
Lesson.create(day: "2012-02-18", start: "08:00:00", nhours: 4, reservation_id: 2 )

Lesson.create(day: "2012-02-13", start: "08:00:00", nhours: 9, reservation_id: 2 )
Lesson.create(day: "2012-02-14", start: "08:00:00", nhours: 9, reservation_id: 2 )
Lesson.create(day: "2012-02-15", start: "08:00:00", nhours: 9, reservation_id: 2 )
Lesson.create(day: "2012-02-16", start: "08:00:00", nhours: 9, reservation_id: 2 )
Lesson.create(day: "2012-02-17", start: "08:00:00", nhours: 9, reservation_id: 2 )

Lesson.create(day: "2012-02-12", start: "12:00:00", nhours: 4, reservation_id: 3 )
Lesson.create(day: "2012-03-13", start: "12:00:00", nhours: 4, reservation_id: 3 )
Lesson.create(day: "2012-02-14", start: "12:00:00", nhours: 4, reservation_id: 3 )
Lesson.create(day: "2012-02-15", start: "12:00:00", nhours: 4, reservation_id: 3 )
Lesson.create(day: "2012-02-16", start: "12:00:00", nhours: 4, reservation_id: 3 )
Lesson.create(day: "2012-02-17", start: "12:00:00", nhours: 4, reservation_id: 3 )
Lesson.create(day: "2012-02-17", start: "12:00:00", nhours: 4, reservation_id: 3 )