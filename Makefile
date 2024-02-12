run:
	python src/lab1/main.py

install: requirements.txt
	pip install -r requirements.txt

install_dev: requirements.txt requirements_dev.txt 
	make -C install
	pip install -e .

runTask1:
	make -C ./task1 run

runTask2:
	make -C ./task2 run

runTask3:
	make -C ./task3_narrow run

runTask4:
	make -C ./task4_balance run

