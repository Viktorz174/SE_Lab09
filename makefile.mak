
# Makefile N3
# Имя компилятора (cc или gcc для языка C, g++ для C++)
CC = g++
# Имя редактора связей (cc, gcc или g++)
# Вызывается через драйвер системы программирования,
# когда на её вход подаются объектные модули
LD = g++
# Флаги кмпилятора
# -g — включить режим отладочной компиляции
# -Wall - вывод всех предупреждений и ошибок при компиляции
CCFLAGS = -g -Wall
# флаги связывающего загрузчика (не указаны)
LDFLAGS =
# Исполняемый файл
PROG = test
# Объекты
OBJ = testcmp.o mycomplex.o
# Варианты суффиксов
.SUFFIXES: .cpp .o
# Цели-действия
.PHONY: all
all: test clean
test: $(OBJ)
	$(LD) $(LDFLAGS) -o $(PROG) $(OBJ)
testcmp.o: testcmp.cpp
	$(CC) $(CCFLAGS) -c testcmp.cpp
mycomplex.o: mycomplex.cpp
	$(CC) $(CCFLAGS) -c mycomplex.cpp
mycomplex.cpp testcmp.cpp: mycomplex.h
clean:
	del *.o
