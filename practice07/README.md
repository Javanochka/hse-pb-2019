# О том, почему Haskell

Идея в том, что за ближайшую практику и домашку вы должны понять, почему вообще Haskell кто-то использует. (И почему это не просто язык для фана. И почему вообще нужна функциональная парадигма.)

## Часть 1. Лекционно-просветительская

А как исполнять код?

## Часть 2. Развлечения с бинарными деревьями

* Как задать бинарное дерево?
* Какие функции полезны?
* Функции ко всем элементам.
* Свертки.
* А что если дерево применить к дереву?

## Часть 3. Готовность ко всему

* Как можно задать арифметические операции?
* Хочу писать так:

```
op = Sum (Number 5) (Multiply (Sum (Number 3) (Number (-1))) (Number 6))
showOperation op -- Result: (5) + ((3 + (-1)) * (6)). Будет очень круто, если справитесь уменьшить число скобок
eval op -- Result: 17
```
* А теперь добавьте еще булевые операции. Как приводить результат булевого выражения к числу?
* А теперь гонка на основные арифметические операции.
