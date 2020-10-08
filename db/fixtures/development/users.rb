User.seed(
  :id,
  {
    id: 1,
    name: 'Jane',
    role: :teacher,
    email: 'teacher@example.com',
    password: '12345678​'
  },
  {
    id: 2,
    name: 'Nancy',
    role: :teacher,
    email: 'teacher_nancy@example.com',
    password: 'qwertyui'
  },
  {
    id: 3,
    name: 'Mike',
    role: :student,
    email: 'student_mike@example.com',
    password: 'qwertyui'
  },
  {
    id: 4,
    name: 'Tavin',
    role: :student,
    email: 'student_tavin@example.com',
    password: 'qwertyui'
  },
  {
    id: 5,
    name: 'Peter',
    role: :student,
    email: 'student_peter@example.com',
    password: 'qwertyui'
  }
)