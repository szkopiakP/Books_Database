## Movies_Database

Hello! I'm **Piotrek Szkopiak** and this is my training project to improve my skills for data science, specially - _database design_ and _database manipulation_. I use knowledge from my previews project and also [Codecademy](https://www.codecademy.com) course about `PostgreSQL` :monocle_face:

### Overview

In this project I focus on _creating tables_ and _connections between theme_. Data of some of books are from [Amazon](https://www.amazon.com/ref=nav_logo) and contains information about generals (title, category, etc.), details, authors and publishers. Primary goal is to split this data to 4 general tables for better visual clarity and lower congestion of space and connetct 2 of theme via 2 different tables which represent many-to-many connection:

> - [x] [Books_Database](https://github.com/szkopiakP/Movies_Database/blob/main/Movies_Database.sql)

>> ![Project_Schema](https://github.com/szkopiakP/Movies_Database/blob/main/Schema.png)

> - [x] Database result as 4 `.csv`:

>> [Author](https://github.com/szkopiakP/Movies_Database/blob/main/Movies.csv)

>> [Book](https://github.com/szkopiakP/Movies_Database/blob/main/Movie_Makers.csv)

>> [Book_ Details](https://github.com/szkopiakP/Movies_Database/blob/main/Movie_Makers.csv)

>> [Publisher](https://github.com/szkopiakP/Movies_Database/blob/main/Movie_Staff.csv)

> - [x] Database interconnection as 2 `.csv`:

>> [Books_Authors](https://github.com/szkopiakP/Movies_Database/blob/main/Movie_Makers.csv)

>> [Books_Publishers](https://github.com/szkopiakP/Movies_Database/blob/main/Movie_Makers.csv)
   
I use `pgAdmin 4` for `PostgreSQL`.

In future I want to increase amount of books in my database for faster and more precise filtering books for my relatives.

### Licence

This project is under [MIT license](./LICENSE)

### Contact

Any questions? E-mail: [szkopiak.piotrek@gmail.com](szkopiak.piotrek@gmail.com) :relaxed:
