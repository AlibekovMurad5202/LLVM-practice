# LLVM-practice
Репозиторий для сдачи лабораторных работ по курсу Введение в теорию трансляторов

___Применяемый стек технологий___: C++, [LLVM](https://github.com/llvm/llvm-project.git), [cpuset](https://github.com/lpechacek/cpuset.git)

## Темы лабораторных работ:
1. ___lab_01___ - Peephole-оптимизация
2. ___lab_02___ - Оптимизация инвариантного кода цикла

---

### Сборка LLVM в WSL

+ Устанавливаем WSL
  * На [оффициальном сайте](https://docs.microsoft.com/ru-ru/windows/wsl/install-win10) достаточно подробно написано то, как установить WSL
  * __Совет__: лучше ставить WSL2 (т.е. вторую версию). О плюсах и минусах каждой версии можно прочитать [здесь](https://docs.microsoft.com/ru-ru/windows/wsl/compare-versions)
  * __Совет__: для более удобного начала работы c WSL лучше поставить Ubuntu 18.04 и Windows Terminal
+ Скачиваем репозиторий проекта LLVM ("стабильной" 11-ой релизной версии) с GitHub и переходим в него:
  ```bash
  >> git clone https://github.com/llvm/llvm-project.git -b release/11.x
  >> cd llvm-project
  ```
+ Подготовка папок и cmake к сборке:
  ```bash
  >> mkdir build
  >> cd build
  >> cmake -DLLVM_ENABLE_PROJECTS="clang;libcxx;libcxxabi;opt" -G "Unix Makefiles" ../llvm
  ```
+ Готовим дополнительный файл подкачки (16 Гб):
  * __Внимание__: крайне рекомендуется использовать дополнительный файл подкачки. Без него возможны падения при сборке Clang (приблизительно на 94% сборки) из-за недостаточного размера оперативной памяти
  ```bash
  >> sudo fallocate -l 16G /swapfile
  >> sudo chmod 600 /swapfile
  >> sudo mkswap /swapfile && sudo swapon /swapfile
  ```
+ Собираем LLVM + Clang:
  ```bash
  >> make
  ```
  * __Внимание__: крайне __не__ рекомендуется использовать ключ `-jN` (`make -jN`, N - число потоков) для параллельной сборки. Возможны падения, вызванные, скорее всего, гонкой данных (может не успеть собраться то, что идёт в include другому файлу, который уже собирается)
+ Убираем дополнительный файл подкачки после сборки:
  ```bash
  >> sudo swapoff /swapfile
  >> sudo rm /swapfile
  ```

### Удачи!
