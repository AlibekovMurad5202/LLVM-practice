# Лабораторная работа №1
## Peephole-оптимизация

### Команды и ссылки с практики

Docs:
> http://llvm.org/docs/GettingStarted.html
> 
> http://llvm.org/docs/ProgrammersManual.html
> 
> http://llvm.org/docs/WritingAnLLVMPass.html

Commands:
```bash
    /home/ggladilo/dev/llvm-project/build/bin/clang++ -O0 -emit-llvm -S -c practice.cpp -o /dev/stdout | sed 's/ optnone//g' > baseline.ll
    /home/ggladilo/dev/llvm-project/build/bin/clang++ baseline.ll -o baseline

    /home/ggladilo/dev/llvm-project/build/bin/opt -load /home/ggladilo/dev/llvm-project/build/lib/Practice.so -practice < baseline.ll -S -o optimized.ll
    /home/ggladilo/dev/llvm-project/build/bin/clang++ optimized.ll -o optimized

    /home/ggladilo/dev/llvm-project/build/bin/opt --sroa < optimized.ll -S -o sroa.ll
    /home/ggladilo/dev/llvm-project/build/bin/clang++ sroa.ll -o sroa
```

### Задание
В качестве задания нужно реализовать и проанализировать любую другую локальную оптимизацию:
- Вычетание нуля
- Деление на единицу
- Деление нуля на что-то
- Умножение с нулём

### Условие сдачи
Для того, чтобы сдать работу нужно прислать на почту: gleb.gladilov@gmail.com письмо содержащее:
1. ФИО
2. Номер группы
3. Тип операции, которую оптимизировали
4. Файл исходного кода (.cpp), который оптимизировался (с main функцией)
5. Файл исходного кода (.cpp), содержащий пасс
6. Файл с llvm-IR (.ll) до применения пасса
7. Файл с llvm-IR (.ll) после применения пасса
8. Файл, в котором указаны командные строчки для получения файлов с llvm-IR
9. Время работы программы до применения пасса
10. Время работы программы после применения пасса