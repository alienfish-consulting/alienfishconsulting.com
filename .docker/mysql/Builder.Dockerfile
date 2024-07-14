# Use an official lightweight image as a base
FROM mysql:latest


# Define the entrypoint command to run the MySQL client and execute the SQL file
ENTRYPOINT ["sh", "-c", "mysql -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < /sql/schema.sql"]
