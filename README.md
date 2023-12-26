# Data Parser
A small application to parse sales data and generate reports for 4 KPIs

1. Month wise sales
2. Sales per product
3. Sales per customer
4. Top 10 customers by revenue generated

## Prerequisites
- Make
- Docker

## Steps to run
### Installation
Create docker images
```
make install
```
This will create `brine/data_parser:latest` image with data_parser.py and demo data set in `/app` and `/app/data` directory respectively.

### Run
To run the parser
```
make run sales_data=<csv_file_path>
```
`Note:` csv_file_path should be a absolute path or else the command will fail.
This command will run docker container. Mount the file path to `/app/data/` folder and invoking the `data_parser.py` script.

### Test
This will use a demo dataset preloaded in the docker image.
```
make test
```