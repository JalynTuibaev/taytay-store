# language: ru
Функционал: Авторизация админа и редактирования категории
  Как пользователь админ
  Я перехожу на страницу категорий
  Выбираю нужную категорию и меняю ее данные
  Я должен перейти на страницу и увидеть свою изменённую категорию
  @editCategory
  Сценарий:
    Допустим я захожу на страницу "login"
    Если я введу данные
      | username | admin |
      | password | admin0 |
    И нажимаю на кнопку "Войти"

  Затем я перехожу на страницу "admin/categories"
    И пытаюсь нажать кнопку редактирования
    Затем нажимаю на первый селект в неём выбираю пункт "Игрушки"
    И ввожу данные
      | title | Вертолеты |
    Затем нажму на второй селект "#mui-component-select-status"
    Если я нажимаю на кнопку "Сохранить"
    То я перехожу на страницу с категориями и вижу мою отредактированную "Вертолеты"