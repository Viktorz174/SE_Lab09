
# Makefile N3
# ��� ����������� (cc ��� gcc ��� ����� C, g++ ��� C++)
CC = g++
# ��� ��������� ������ (cc, gcc ��� g++)
# ���������� ����� ������� ������� ����������������,
# ����� �� � ���� �������� ��������� ������
LD = g++
# ����� ����������
# -g � �������� ����� ���������� ����������
# -Wall - ����� ���� �������������� � ������ ��� ����������
CCFLAGS = -g -Wall
# ����� ������������ ���������� (�� �������)
LDFLAGS =
# ����������� ����
PROG = test
# �������
OBJ = testcmp.o mycomplex.o
# �������� ���������
.SUFFIXES: .cpp .o
# ����-��������
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
