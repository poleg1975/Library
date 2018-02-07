USE test;

DROP TABLE IF EXISTS book;
CREATE TABLE book (
  ID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  TITLE VARCHAR(100) NOT NULL,
  DESCRIPTION VARCHAR(255) NOT NULL,
  AUTHOR VARCHAR(100) NOT NULL,
  ISBN VARCHAR(20) NOT NULL,
  PRINT_YEAR INT(11) NOT NULL,
  READ_ALREADY TINYINT(1) NOT NULL
)
  ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Понедельник начинается в субботу', 'Описание книги Понедельник начинается в субботу' ,'Аркадий и Борис Стругацкие', '9785170416783', '1965', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Собачье сердце', 'Описание книги Собачье сердце' ,'Михаил Булгаков', '9785170416784', '1925', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Отель "У погибшего альпиниста"', 'Описание книги Отель "У погибшего альпиниста"' ,'Аркадий и Борис Стругацкие', '9785170416785', '1953', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Пикник на обочине', 'Описание книги Пикник на обочине' ,'Аркадий и Борис Стругацкие', '9785170416786', '1972', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Солярис', 'Описание книги Солярис' ,'Станислав Лем', '9785170416787', '1961', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Трудно быть богом', 'Описание книги Трудно быть богом' ,'Аркадий и Борис Стругацкие', '9785170416788', '1963', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Человек-амфибия', 'Описание книги Человек-амфибия' ,'Александр Беляев', '9785170416789', '1928', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Таинственный остров', 'Описание книги Таинственный остров' ,'Жюль Верн', '9785170416790', '1874', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('О дивный новый мир', 'Описание книги О дивный новый мир' ,'Олдос Хаксли', '9785170416791', '1932', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Скотный двор', 'Описание книги Скотный двор' ,'Джордж Оруэлл', '9785170416792', '1945', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Земля Санникова', 'Описание книги Земля Санникова' ,'Владимир Обручев', '9785170416793', '1924', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Двадцать тысяч лье под водой', 'Описание книги Двадцать тысяч лье под водой' ,'Жюль Верн', '9785170416794', '1869', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Гиперболоид инженера Гарина', 'Описание книги Гиперболоид инженера Гарина' ,'Алексей Толстой', '9785170416795', '1927', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Обитаемый остров', 'Описание книги Обитаемый остров' ,'Аркадий и Борис Стругацкие', '9785170416796', '1969', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Марсианские хроники', 'Описание книги Марсианские хроники' ,'Рэй Брэдбери', '9785170416797', '1950', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Затерянный мир', 'Описание книги Затерянный мир' ,'Артур Конан Дойль', '9785170416798', '1912', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Машина времени', 'Описание книги Машина времени' ,'Герберт Уэллс', '9785170416799', '1895', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Час быка', 'Описание книги Час быка' ,'Иван Ефремов', '9785170416800', '1970', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Приключения Алисы', 'Описание книги Приключения Алисы' ,'Кир Булычев', '9785170416801', '1965', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Цветы для Элджернона', 'Описание книги Цветы для Элджернона' ,'Дэниел Киз', '9785170416802', '1959', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Война миров', 'Описание книги Война миров' ,'Герберт Уэллс', '9785170416803', '1897', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Лезвие бритвы', 'Описание книги Лезвие бритвы' ,'Иван Ефремов', '9785170416804', '1959', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Град обреченный', 'Описание книги Град обреченный' ,'Аркадий и Борис Стругацкие', '9785170416805', '1975', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Звёздные дневники Ийона Тихого', 'Описание книги Звёздные дневники Ийона Тихого' ,'Станислав Лем', '9785170416806', '1953', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Страна багровых туч', 'Описание книги Страна багровых туч' ,'Аркадий и Борис Стругацкие', '9785170416807', '1979', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Туманность Андромеды', 'Описание книги Туманность Андромеды' ,'Иван Ефремов', '9785170416808', '1955', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('За миллиард лет до конца света', 'Описание книги За миллиард лет до конца света' ,'Аркадий и Борис Стругацкие', '9785170416809', '1976', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('И грянул гром', 'Описание книги И грянул гром' ,'Рэй Брэдбери', '9785170416810', '1952', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Борьба за огонь', 'Описание книги Борьба за огонь' ,'Жозеф Анри Рони-старший', '9785170416811', '1909', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Аэлита', 'Описание книги Аэлита' ,'Алексей Толстой', '9785170416812', '1923', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Вокруг света за восемьдесят дней', 'Описание книги Вокруг света за восемьдесят дней' ,'Жюль Верн', '9785170416813', '1872', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Остров погибших кораблей', 'Описание книги Остров погибших кораблей' ,'Александр Беляев', '9785170416814', '1926', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Электроник - мальчик из чемодана', 'Описание книги Электроник - мальчик из чемодана' ,'Евгений Велтистов', '9785170416815', '1964', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Темная башня', 'Описание книги Темная башня' ,'Стивен Кинг', '9785170416816', '1982', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Далекая Радуга', 'Описание книги Далекая Радуга' ,'Аркадий и Борис Стругацкие', '9785170416817', '1963', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Я, робот', 'Описание книги Я, робот' ,'Айзек Азимов', '9785170416818', '1950', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Путь на Амальтею', 'Описание книги Путь на Амальтею' ,'Аркадий и Борис Стругацкие', '9785170416819', '1959', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('Стажёры', 'Описание книги Стажёры' ,'Аркадий и Борис Стругацкие', '9785170416820', '1961', false);
INSERT INTO book (TITLE, DESCRIPTION, AUTHOR, ISBN, PRINT_YEAR, READ_ALREADY) VALUES ('2001: Космическая одиссея', 'Описание книги 2001: Космическая одиссея' ,'Артур Кларк', '9785170416821', '1968', false);


