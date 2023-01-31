Структура и наполнение таблиц:

Таблица genre: 
+----------+-------------+
| genre_id | name_genre  |
+----------+-------------+
| 1        | Роман       |
| 2        | Поэзия      |
| 3        | Приключения |
+----------+-------------+        
Таблица author:
+-----------+------------------+
| author_id | name_author      |
+-----------+------------------+
| 1         | Булгаков М.А.    |
| 2         | Достоевский Ф.М. |
| 3         | Есенин С.А.      |
| 4         | Пастернак Б.Л.   |
| 5         | Лермонтов М.Ю.   |
+-----------+------------------+
Таблица book:
+---------+-----------------------+-----------+----------+--------+--------+
| book_id | title                 | author_id | genre_id | price  | amount |
+---------+-----------------------+-----------+----------+--------+--------+
| 1       | Мастер и Маргарита    | 1         | 1        | 670.99 | 3      |
| 2       | Белая гвардия         | 1         | 1        | 540.50 | 5      |
| 3       | Идиот                 | 2         | 1        | 460.00 | 10     |
| 4       | Братья Карамазовы     | 2         | 1        | 799.01 | 3      |
| 5       | Игрок                 | 2         | 1        | 480.50 | 10     |
| 6       | Стихотворения и поэмы | 3         | 2        | 650.00 | 15     |
| 7       | Черный человек        | 3         | 2        | 570.20 | 6      |
| 8       | Лирика                | 4         | 2        | 518.99 | 2      |
+---------+-----------------------+-----------+----------+--------+--------+

1. Вывести название, жанр и цену тех книг, количество которых больше 8, в отсортированном по убыванию цены виде.
    select title, name_genre, price 
    from book 
    join genre on book.genre_id = genre.genre_id
    where amount > 8
    order by price desc;


2. Вывести все жанры, которые не представлены в книгах на складе.
    select name_genre 
    from genre 
    left join book on genre.genre_id = book.genre_id 
    where title is null;


3. Необходимо в каждом городе провести выставку книг каждого автора в течение 2020 года. Дату проведения выставки выбрать случайным образом. Создать запрос, который выведет город, автора и дату проведения выставки. Последний столбец назвать Дата. Информацию вывести, отсортировав сначала в алфавитном порядке по названиям городов, а потом по убыванию дат проведения выставок.
    select name_city, name_author, 
    (date_add('2020-01-01', interval floor(rand() * 365) day)) as Дата
    from author, city
    order by 1, 3 desc;


4. Вывести информацию о книгах (жанр, книга, автор), относящихся к жанру, включающему слово «роман» в отсортированном по названиям книг виде.
    SELECT name_genre, title, name_author
FROM
    author 
    INNER JOIN book ON author.author_id = book.author_id
    INNER JOIN genre ON genre.genre_id = book.genre_id
WHERE name_genre like '%роман%'
ORDER BY 2;


5. Посчитать количество экземпляров  книг каждого автора из таблицы author.  Вывести тех авторов,  количество книг которых меньше 10, в отсортированном по возрастанию количества виде. Последний столбец назвать Количество.
    select name_author, SUM(amount) AS Количество
    from author left join book 
    on author.author_id = book.author_id 
    group by name_author
    HAVING SUM(amount) < 10 OR SUM(amount) IS NULL
    order by 2;


6.  Вывести в алфавитном порядке всех авторов, которые пишут только в одном жанре. Поскольку у нас в таблицах так занесены данные, что у каждого автора книги только в одном жанре,  для этого запроса внесем изменения в таблицу book.
     select name_author 
     from author
     join book on author.author_id = book.author_id
     group by name_author
     having count(distinct(genre_id)) = 1;


7.  Вывести информацию о книгах (название книги, фамилию и инициалы автора, название жанра, цену и количество экземпляров книг), написанных в самых популярных жанрах, в отсортированном в алфавитном порядке по названию книг виде. 
     select title, name_author, name_genre, price, amount
from author 
join book on author.author_id = book.author_id
join genre on genre.genre_id = book.genre_id
where genre.genre_id in 
(select genre_id
   from book
   group by genre_id
   having  sum(amount) = (
            select sum(amount) as sum_amount
            from book
            group by genre_id
            having sum_amount
            limit 1))
ORDER BY title;


8. Если в таблицах supply  и book есть одинаковые книги, которые имеют равную цену,  вывести их название и автора, а также посчитать общее количество экземпляров книг в таблицах supply и book,  столбцы назвать Название, Автор  и Количество.
    select title as Название, name_author as Автор, supply.amount + book.amount as Количество 
    from supply 
    join book using (title, price)
    join author on author.author_id = book.author_id;

