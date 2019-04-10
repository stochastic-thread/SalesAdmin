# Sales Admin challenge

1. Postgres needs to be running
2. git clone https://github.com/stochastic-thread/SalesAdmin
3. cd SalesAdmin
4. rails db:create
5. rails db:migrate
6. rails s
7. go to localhost:3000
8. upload .csv file

TO DO:
1. multiple uploads of the same file will yield an artificially high revenue
2. handle duplicate entries with an "ID" field, or implement record hashing to
   match against existing records
3. finish devise authentication
