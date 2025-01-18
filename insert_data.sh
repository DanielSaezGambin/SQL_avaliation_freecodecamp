#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

cat games.csv | tail -n +2 | cut -d ',' -f3,4 | tr ',' '\n' | sort | uniq | while read team
do
    # Insert each unique team into the teams table
    $PSQL "INSERT INTO teams (name) VALUES ('$team') ON CONFLICT (name) DO NOTHING;"
done

cat games.csv | tail -n +2 | while IFS=',' read year round winner opponent winner_goals opponent_goals
do
    # Get the team_id for the winner and opponent
    winner_id=$($PSQL "SELECT team_id FROM teams WHERE name = '$winner'")
    opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name = '$opponent'")

    # Insert the game into the games table
    $PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) 
           VALUES ($year, '$round', $winner_id, $opponent_id, $winner_goals, $opponent_goals);"
done