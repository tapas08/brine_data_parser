SHELL := /bin/bash

install:
	docker build -t brine/data_parser:latest .

run:
ifeq ($(sales_data), )
	echo "csv file required. Usage: make run sales_data=<file_path>"
	exit 1
endif
	docker run --rm --mount type=bind,source="$(sales_data)",target=/app/data/sales_data brine/data_parser:latest 'python /app/data_parser.py --sales_data=/app/data/sales_data'

test:
	docker run --rm --name=data_parser_test brine/data_parser:latest 'python -m unittest /app/test.py'