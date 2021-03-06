//
//  TextData.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 28.04.2021.
//

import Foundation

struct TextData: Codable, Identifiable, Hashable {
    let id = UUID()
    var title: String?
    var text: String
    var date: Date?
    var hashTags: [HashTag]?
}

extension TextData {
    static var data: [TextData] {
        [
            TextData(title: "ВТОРНИК", text: """
Вступление:
Ва-па-па-па, е, е, е
Е, е, е (я, я, я)
О-о (я-я)

Припев:
Я начну сегодня день
Скажу делам:?"Пока!"
Освобожу?себя на вечер
На?учёбу ехать лень
Бутылочка пивка -
Отличный план?для вторника

Куплет: GONE.Fludd
Не сдвинуться с кровати, всё надоело, хватит
Нет силы, чтоб?себя?поднять?(уо-уо)
Тусовка будет сильной:?приставка, холодильник
Уже не?терпится начать (е, е, е)
Мои друзья на сутки - фаст-фуд и самокрутки
Сериалы, кинчики онла-айн
Назло унылым будням, забить на всё - не трудно
Я этого так давно ждал

Припев:
Поэтому
Я начну сегодня день
Скажу делам: "Пока!"
Освобожу себя на вечер
На учёбу ехать лень
Бутылочка пивка -
Отличный план для вторника

Аутро:
Я начну сегодня день
Скажу делам: "Пока!"
Освобожу себя на вечер
На учёбу ехать лень
Бутылочка пивка -
Отличный план для втор-ни-ка
""", date: Date()),
            TextData(title: "ПАЦАНЫ II", text: """
                Припев:
                Курю дерьмо, это сочная сатива
                Беру микро, рифма за рифмой, дай им знать
                И со мной братья, я готов за них порвать
                О такой дружбе я мог бы только мечтать

                Зачем те деньги, если не с кем тратить?
                Нужен совет, платина не сможет дать его
                Цифры никогда не прикроют сзади
                Зачем тебе fame? Он не даст тебе взять это

                Курю дерьмо, это сочная сатива
                Беру микро, рифма за рифмой, дай им знать
                И со мной братья, я готов за них порвать
                О такой дружбе я мог бы только мечтать

                Зачем те деньги, если не с кем тратить?
                Нужен совет, платина не сможет дать его
                Цифры никогда не прикроют сзади
                Зачем тебе fame? Он не даст тебе взять это

                Шёпот тает в голове
                Ты один, я один, он один, и каждый наедине
                Пойму, стану сильней, что я одинок
                И один буду лежать в земле

                Тени ползут по стене ко мне (по стене ко мне)
                Тонул постепенно, теперь на дне (теперь на дне)
                Моргаю веками, не вижу никого (никого)
                Курю крапиву букетами

                - Фладда, что это за методы?
                - Я не знаю, я летаю
                Для них я не досягаем
                Таю дымом от сигарет

                Сладкий туман, забери боль
                Взорвал и меня не видно
                Я готов быть где угодно
                Выйдя за пределы лимба

                Припев:
                Курю дерьмо, это сочная сатива
                Беру микро, рифма за рифмой, дай им знать
                И со мной братья, я готов за них порвать
                О такой дружбе я мог бы только мечтать

                Зачем те деньги, если не с кем тратить?
                Нужен совет, платина не сможет дать его
                Цифры никогда не прикроют сзади
                Зачем тебе fame? Он не даст тебе взять это

                Курю дерьмо, это сочная сатива
                Беру микро, рифма за рифмой, дай им знать
                И со мной братья, я готов за них порвать
                О такой дружбе я мог бы только мечтать

                Зачем те деньги, если не с кем тратить?
                Нужен совет, платина не сможет дать его
                Цифры никогда не прикроют сзади
                Зачем тебе fame? Он не даст тебе взять это

                И, наверное, всё это сон
                Просыпаюсь ночью, в голове огонь
                Флейта, позвоночник, я сыграю соло
                Ставишь всё на кон или идёшь на корм

                Одним из ста тысяч таких же людей
                У которых душа грязней, чем у свиней
                Затылок ласкают лишь языки змей
                Я не дам им шанс меня сделать слабей

                Чтобы быть на высоте, дым танцует на воде
                Мы тусуем целый день
                Doobie дымится в кругу друзей
                132 - дай им знать, для чего мы здесь

                Больше не держу обиды
                На тех, кто другой путь выбрал
                У каждого своя битва
                Время, как Оккама бритва

                (Я)

                Пока бокалы полны
                Во мне нет ни капли уныния
                Пацаны знают коны
                Улицы знают их имена

                Пачки ниже дружбы, именно
                Кто зажёг огонь внутри меня
                Когда с виду был как мумия?
                Мы растём вверх, будто либидо
                За команду стой — так принято
                Glam до гроба — la familia

                Припев:
                Курю дерьмо, это сочная сатива
                Беру микро, рифма за рифмой, дай им знать
                И со мной братья, я готов за них порвать
                О такой дружбе я мог бы только мечтать

                Зачем те деньги, если не с кем тратить?
                Нужен совет, платина не сможет дать его
                Цифры никогда не прикроют сзади
                Зачем тебе fame? Он не даст тебе взять это

                Курю дерьмо, это сочная сатива
                Беру микро, рифма за рифмой, дай им знать
                И со мной братья, я готов за них порвать
                О такой дружбе я мог бы только мечтать

                Зачем те деньги, если не с кем тратить?
                Нужен совет, платина не сможет дать его
                Цифры никогда не прикроют сзади
                Зачем тебе fame? Он не даст тебе взять это
""", date: Date()),
            TextData(title: "КУБИК ЛЬДА", text: """
                Кубик! Детка, я холодный кубик.

                Припев:
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!

                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!

                Я холодный кубик льда. Курю дурь. Я хулиган.
                Дурю дурь и убран в хлам. Каламбурим, хули нам?
                Кубикам кидай в стаканчик, а кто ты там?
                Девочки пьют через трубочки. В клубе накурено.
                За щекой чупики, клёво быть кубиком! Эй!

                Кинь меня (я с примесью love)
                В бокал малышки, что не весела.
                Выпей до дна меня со вкусом пламени;
                Губы твои так пленят — это яд.

                Выпей до дна меня — это талант,
                На языке таю, как тает весна.
                То, что не растает, впитает десна,
                И нам не до сна, я кубик льда.

                Припев:
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!

                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!

                Мне нужны голуби (пррр-а). Кидай кубик льда новый сюда.

                 

                Не будь такой скованной (я-я). Не будь исколотом (меня).
                Звеню будто колокол (дзин-дзинь), быть кубиком холодно (увы).
                Но за твоей щекой тепло и здорово, ныряю в колу.

                Я верчусь на языке и у всех на устах.
                Оставляю сладкий след, когда бегу по губам.
                Когда закончится ночь - я растворюсь навсегда.
                Самый холодный (что?) кубик (хм) льда - кинь меня (кинь-кинь).

                Припев:
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!

                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!
                Холодный кубик льда - кинь меня!

                Кинь, кинь!
                Кинь, кинь!
                Кинь, кинь!
""", date: Date()),
            TextData(title: "МАМБЛ", text: """
Ха!
Ха! Ха! Ра!
Поехали, ха!
Ух!

Припев:
Тупая сука, будто питекантроп.
На мне мобильный костюм, это Гандам
Barbie, как бэндо, в ней вся моя банда.
Я по ебалу съебал, будто фантом, эй.
Молодой Стиви - Уандер, эй.
Ты с членом во рту - это Мамбл, эй.
Курим дурь, дурим дур.
Иди нахуй, гандон.

Тупая сука, будто питекантроп.
На мне мобильный костюм, это Гандам
Barbie, как бэндо, в ней вся моя банда.
Я по ебалу съебал, будто фантом, эй.
Молодой Стиви - Уандер, эй.
Ты с членом во рту - это Мамбл, эй.
Курим дурь, дурим дур.
Иди нахуй, гандон.

Молодой GONE.Fludd. У меня шлюх склад.
Выебал твой squad. Сел на руку - снял клад.
Ненаход; Как так? Иди нахуй, мудак.
Я стреляю - бах-бах, ты базаришь - ква-ква.

Мне нужна шкура, щас каменный век.
Сунул в пещеру свой каменный хер.
Фотки летят ко мне прямо в direct.
Стоп, ей даже 17-ти нет!

Воу, воу, воу, воу.
Я мохнатый мамонт, покажи мне свой flow.
С пулемета пули поливаю в ебло
Пидар пиздит, но на деле ссыкло.

Пидар базарит как сучка, эй.
Сука, захлопни ебучку, эй.
Рыбка не barbie, ебал это мясо,
Но я не бытую пизду, м? Что, м?

Припев:
Тупая сука, будто питекантроп.
На мне мобильный костюм, это Гандам
Barbie, как бэндо, в ней вся моя банда.
Я по ебалу съебал, будто фантом, эй.
Молодой Стиви - Уандер, эй.
Ты с членом во рту - это Мамбл, эй.
Курим дурь, дурим дур.
Иди нахуй, гандон.

Тупая сука, будто питекантроп.
На мне мобильный костюм, это Гандам
Barbie, как бэндо, в ней вся моя банда.
Я по ебалу съебал, будто фантом, эй.
Молодой Стиви - Уандер, эй.
Ты с членом во рту - это Мамбл, эй.
Курим дурь, дурим дур.
Иди нахуй, гандон.

У меня есть маленькая сука, ух.
Твоя сука - маленькая шлюха, ух.
Фладда залетает без стука, ух.
Кто твой папочка, ночная бабочка?

Что в корзиночке, красная шапочка?
Нахуй сказочки, милая дамочка.
Прыгнул в пуссичку, только для галочки.
Кто будет следущим - решит считалочка.

Эники-бэники ели вареники.
Финики, драники, кекс и сухарики.
Эники-бэники чертовы нарики.
Эники-бэники, клац, ух.

Вся моя жизнь - это борьба.
Стреляй по купюрам, pow prr-bow
Ты похож на курицу, съебался с улицы.
Время зажмурится - страус...

- Внатуре? Страус?
- Ну да.
- Типо, типо, аааа. Ага.

Припев:
Тупая сука, будто питекантроп.
На мне мобильный костюм, это Гандам
Barbie, как бэндо, в ней вся моя банда.
Я по ебалу съебал, будто фантом, эй.
Молодой Стиви - Уандер, эй.
Ты с членом во рту - это Мамбл, эй.
Курим дурь, дурим дур.
Иди нахуй, гандон.

Тупая сука, будто питекантроп.
На мне мобильный костюм, это Гандам
Barbie, как бэндо, в ней вся моя банда.
Я по ебалу съебал, будто фантом, эй.
Молодой Стиви - Уандер, эй.
Ты с членом во рту.
Вытащи член изо рта, маленькая сука.
""", date: Date())
        ]
    }
}
