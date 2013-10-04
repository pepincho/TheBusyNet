# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if AdminUser.find_by_email('busybg@abv.bg').blank?
	AdminUser.create!(:email => 'busybg@abv.bg', :password => 'busybg2013', :password_confirmation => 'busybg2013')
end

client = Role.find_or_create_by_name('Клиент')
it = Role.find_or_create_by_name('ИТ специалист')
teacher = Role.find_or_create_by_name('Учител')
accountant = Role.find_or_create_by_name('Счетоводител')

web_sites1 = Activity.find_or_create_by_name('уебсайт - фирмен')
web_sites2 = Activity.find_or_create_by_name('уебсайт - custom')
applications1 = Activity.find_or_create_by_name('мобилно приложение - Android')
applications2 = Activity.find_or_create_by_name('мобилно приложение - iOS')
optimization1 = Activity.find_or_create_by_name('оптимизация на сайт')
optimization2 = Activity.find_or_create_by_name('Интернет услуги')
optimization3 = Activity.find_or_create_by_name('ремонт и поддръжка')
university1 = Activity.find_or_create_by_name('кандидат-студенти')
university2 = Activity.find_or_create_by_name('кандидат-гимназисти')
english = Activity.find_or_create_by_name('английски език')
maths = Activity.find_or_create_by_name('математика')
literature = Activity.find_or_create_by_name('български език')
report1 = Activity.find_or_create_by_name('пълно счетоводство')
report2 = Activity.find_or_create_by_name('ТРЗ')
report3 = Activity.find_or_create_by_name('счетоводство на фактури')
report4 = Activity.find_or_create_by_name('годишно/месечно отчитане')

RoleActivity.delete_all
role_activities = RoleActivity.create ([
  {:role_id => it.id, :activity_id => web_sites1.id },
  {:role_id => it.id, :activity_id => web_sites2.id},
  {:role_id => it.id, :activity_id => applications1.id },
  {:role_id => it.id, :activity_id => applications2.id},
  {:role_id => it.id, :activity_id => optimization1.id },
  {:role_id => it.id, :activity_id => optimization2.id},
  {:role_id => it.id, :activity_id => optimization3.id},
  {:role_id => teacher.id, :activity_id => university1.id},
  {:role_id => teacher.id, :activity_id => university2.id},
  {:role_id => teacher.id, :activity_id => english.id},
  {:role_id => teacher.id, :activity_id => maths.id},
  {:role_id => teacher.id, :activity_id => literature.id},
  {:role_id => accountant.id, :activity_id => report1.id},
  {:role_id => accountant.id, :activity_id => report2.id},
  {:role_id => accountant.id, :activity_id => report3.id},
  {:role_id => accountant.id, :activity_id => report4.id}
])

City.find_or_create_by_name('София')
City.find_or_create_by_name('Пловдив')
City.find_or_create_by_name('Варна')
City.find_or_create_by_name('Бургас')
City.find_or_create_by_name('Русе')
City.find_or_create_by_name('Айтос')
City.find_or_create_by_name('Аксаково')
City.find_or_create_by_name('Алфатар')
City.find_or_create_by_name('Антоново')
City.find_or_create_by_name('Априлци')
City.find_or_create_by_name('Ардино')
City.find_or_create_by_name('Асеновград')
City.find_or_create_by_name('Ахелой')
City.find_or_create_by_name('Ахтопол')
City.find_or_create_by_name('Балчик')
City.find_or_create_by_name('Банкя')
City.find_or_create_by_name('Банско')
City.find_or_create_by_name('Баня')
City.find_or_create_by_name('Батак')
City.find_or_create_by_name('Батановци')
City.find_or_create_by_name('Белене')
City.find_or_create_by_name('Белица')
City.find_or_create_by_name('Белово')
City.find_or_create_by_name('Белоградчик')
City.find_or_create_by_name('Белослав')
City.find_or_create_by_name('Берковица')
City.find_or_create_by_name('Благоевград')
City.find_or_create_by_name('Бобовдол')
City.find_or_create_by_name('Бобошево')
City.find_or_create_by_name('Божурище')
City.find_or_create_by_name('Бойчиновци')
City.find_or_create_by_name('Болярово')
City.find_or_create_by_name('Борово')
City.find_or_create_by_name('Ботевград')
City.find_or_create_by_name('Брацигово')
City.find_or_create_by_name('Брегово')
City.find_or_create_by_name('Брезник')
City.find_or_create_by_name('Брезово')
City.find_or_create_by_name('Брусарци')
City.find_or_create_by_name('Бухово')
City.find_or_create_by_name('Българово')
City.find_or_create_by_name('Бяла(Варна)')
City.find_or_create_by_name('Бяла(Русе)')
City.find_or_create_by_name('БялаСлатина')
City.find_or_create_by_name('БялаЧерква')
City.find_or_create_by_name('ВеликиПреслав')
City.find_or_create_by_name('ВеликоТърново')
City.find_or_create_by_name('Велинград')
City.find_or_create_by_name('Ветово')
City.find_or_create_by_name('Ветрен')
City.find_or_create_by_name('Видин')
City.find_or_create_by_name('Враца')
City.find_or_create_by_name('Вълчедръм')
City.find_or_create_by_name('Вълчидол')
City.find_or_create_by_name('Върбица')
City.find_or_create_by_name('Вършец')
City.find_or_create_by_name('Габрово')
City.find_or_create_by_name('ГенералТошево')
City.find_or_create_by_name('Главиница')
City.find_or_create_by_name('Глоджево')
City.find_or_create_by_name('Годеч')
City.find_or_create_by_name('ГорнаОряховица')
City.find_or_create_by_name('ГоцеДелчев')
City.find_or_create_by_name('Грамада')
City.find_or_create_by_name('Гулянци')
City.find_or_create_by_name('Гурково')
City.find_or_create_by_name('Гълъбово')
City.find_or_create_by_name('Двемогили')
City.find_or_create_by_name('Дебелец')
City.find_or_create_by_name('Девин')
City.find_or_create_by_name('Девня')
City.find_or_create_by_name('Джебел')
City.find_or_create_by_name('Димитровград')
City.find_or_create_by_name('Димово')
City.find_or_create_by_name('Добринище')
City.find_or_create_by_name('Добрич')
City.find_or_create_by_name('Долнабаня')
City.find_or_create_by_name('ДолнаМитрополия')
City.find_or_create_by_name('ДолнаОряховица')
City.find_or_create_by_name('ДолниДъбник')
City.find_or_create_by_name('Долничифлик')
City.find_or_create_by_name('Доспат')
City.find_or_create_by_name('Драгоман')
City.find_or_create_by_name('Дряново')
City.find_or_create_by_name('Дулово')
City.find_or_create_by_name('Дунавци')
City.find_or_create_by_name('Дупница')
City.find_or_create_by_name('Дългопол')
City.find_or_create_by_name('Елена')
City.find_or_create_by_name('ЕлинПелин')
City.find_or_create_by_name('Елхово')
City.find_or_create_by_name('Етрополе')
City.find_or_create_by_name('Завет')
City.find_or_create_by_name('Земен')
City.find_or_create_by_name('Златарица')
City.find_or_create_by_name('Златица')
City.find_or_create_by_name('Златоград')
City.find_or_create_by_name('Ивайловград')
City.find_or_create_by_name('Игнатиево')
City.find_or_create_by_name('Искър')
City.find_or_create_by_name('Исперих')
City.find_or_create_by_name('Ихтиман')
City.find_or_create_by_name('Каблешково')
City.find_or_create_by_name('Каварна')
City.find_or_create_by_name('Казанлък')
City.find_or_create_by_name('Калофер')
City.find_or_create_by_name('Камено')
City.find_or_create_by_name('Каолиново')
City.find_or_create_by_name('Карлово')
City.find_or_create_by_name('Карнобат')
City.find_or_create_by_name('Каспичан')
City.find_or_create_by_name('Кермен')
City.find_or_create_by_name('Килифарево')
City.find_or_create_by_name('Китен')
City.find_or_create_by_name('Клисура')
City.find_or_create_by_name('Кнежа')
City.find_or_create_by_name('Козлодуй')
City.find_or_create_by_name('Койнаре')
City.find_or_create_by_name('Копривщица')
City.find_or_create_by_name('Костандово')
City.find_or_create_by_name('Костенец')
City.find_or_create_by_name('Костинброд')
City.find_or_create_by_name('Котел')
City.find_or_create_by_name('Кочериново')
City.find_or_create_by_name('Кресна')
City.find_or_create_by_name('Криводол')
City.find_or_create_by_name('Кричим')
City.find_or_create_by_name('Крумовград')
City.find_or_create_by_name('Кубрат')
City.find_or_create_by_name('Куклен')
City.find_or_create_by_name('Кула')
City.find_or_create_by_name('Кърджали')
City.find_or_create_by_name('Кюстендил')
City.find_or_create_by_name('Левски')
City.find_or_create_by_name('Летница')
City.find_or_create_by_name('Ловеч')
City.find_or_create_by_name('Лозница')
City.find_or_create_by_name('Лом')
City.find_or_create_by_name('Луковит')
City.find_or_create_by_name('Лъки')
City.find_or_create_by_name('Любимец')
City.find_or_create_by_name('Лясковец')
City.find_or_create_by_name('Мадан')
City.find_or_create_by_name('Маджарово')
City.find_or_create_by_name('МалкоТърново')
City.find_or_create_by_name('Мартен')
City.find_or_create_by_name('Мездра')
City.find_or_create_by_name('Мелник')
City.find_or_create_by_name('Меричлери')
City.find_or_create_by_name('Мизия')
City.find_or_create_by_name('Моминпроход')
City.find_or_create_by_name('Момчилград')
City.find_or_create_by_name('Монтана')
City.find_or_create_by_name('Мъглиж')
City.find_or_create_by_name('Неделино')
City.find_or_create_by_name('Несебър')
City.find_or_create_by_name('Николаево')
City.find_or_create_by_name('Никопол')
City.find_or_create_by_name('НоваЗагора')
City.find_or_create_by_name('НовиИскър')
City.find_or_create_by_name('Новипазар')
City.find_or_create_by_name('Обзор')
City.find_or_create_by_name('Омуртаг')
City.find_or_create_by_name('Опака')
City.find_or_create_by_name('Оряхово')
City.find_or_create_by_name('Павелбаня')
City.find_or_create_by_name('Павликени')
City.find_or_create_by_name('Пазарджик')
City.find_or_create_by_name('Панагюрище')
City.find_or_create_by_name('Перник')
City.find_or_create_by_name('Перущица')
City.find_or_create_by_name('Петрич')
City.find_or_create_by_name('Пещера')
City.find_or_create_by_name('Пирдоп')
City.find_or_create_by_name('Плачковци')
City.find_or_create_by_name('Плевен')
City.find_or_create_by_name('Плиска')
City.find_or_create_by_name('ПолскиТръмбеш')
City.find_or_create_by_name('Поморие')
City.find_or_create_by_name('Попово')
City.find_or_create_by_name('Пордим')
City.find_or_create_by_name('Правец')
City.find_or_create_by_name('Приморско')
City.find_or_create_by_name('Провадия')
City.find_or_create_by_name('Първомай')
City.find_or_create_by_name('Раднево')
City.find_or_create_by_name('Радомир')
City.find_or_create_by_name('Разград')
City.find_or_create_by_name('Разлог')
City.find_or_create_by_name('Ракитово')
City.find_or_create_by_name('Раковски')
City.find_or_create_by_name('Рила')
City.find_or_create_by_name('Роман')
City.find_or_create_by_name('Рудозем')
City.find_or_create_by_name('Садово')
City.find_or_create_by_name('Самоков')
City.find_or_create_by_name('Сандански')
City.find_or_create_by_name('Сапаревабаня')
City.find_or_create_by_name('СветиВлас')
City.find_or_create_by_name('Свиленград')
City.find_or_create_by_name('Свищов')
City.find_or_create_by_name('Своге')
City.find_or_create_by_name('Севлиево')
City.find_or_create_by_name('Сеново')
City.find_or_create_by_name('Септември')
City.find_or_create_by_name('Силистра')
City.find_or_create_by_name('Симеоновград')
City.find_or_create_by_name('Симитли')
City.find_or_create_by_name('Славяново')
City.find_or_create_by_name('Сливен')
City.find_or_create_by_name('Сливница')
City.find_or_create_by_name('Сливополе')
City.find_or_create_by_name('Смолян')
City.find_or_create_by_name('Смядово')
City.find_or_create_by_name('Созопол')
City.find_or_create_by_name('Сопот')
City.find_or_create_by_name('Средец')
City.find_or_create_by_name('Стамболийски')
City.find_or_create_by_name('СтараЗагора')
City.find_or_create_by_name('Стражица')
City.find_or_create_by_name('Стралджа')
City.find_or_create_by_name('Стрелча')
City.find_or_create_by_name('Суворово')
City.find_or_create_by_name('Сунгурларе')
City.find_or_create_by_name('Сухиндол')
City.find_or_create_by_name('Съединение')
City.find_or_create_by_name('Сърница')
City.find_or_create_by_name('Твърдица')
City.find_or_create_by_name('Тервел')
City.find_or_create_by_name('Тетевен')
City.find_or_create_by_name('Тополовград')
City.find_or_create_by_name('Троян')
City.find_or_create_by_name('Трън')
City.find_or_create_by_name('Тръстеник')
City.find_or_create_by_name('Трявна')
City.find_or_create_by_name('Тутракан')
City.find_or_create_by_name('Търговище')
City.find_or_create_by_name('Угърчин')
City.find_or_create_by_name('Хаджидимово')
City.find_or_create_by_name('Харманли')
City.find_or_create_by_name('Хасково')
City.find_or_create_by_name('Хисаря')
City.find_or_create_by_name('ЦарКалоян')
City.find_or_create_by_name('Царево')
City.find_or_create_by_name('Чепеларе')
City.find_or_create_by_name('Червенбряг')
City.find_or_create_by_name('Черноморец')
City.find_or_create_by_name('Чипровци')
City.find_or_create_by_name('Чирпан')
City.find_or_create_by_name('Шабла')
City.find_or_create_by_name('Шивачево')
City.find_or_create_by_name('Шипка')
City.find_or_create_by_name('Шумен')
City.find_or_create_by_name('Ябланица')
City.find_or_create_by_name('Якоруда')
City.find_or_create_by_name('Ямбол')