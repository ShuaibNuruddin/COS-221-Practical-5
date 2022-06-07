<?php
    
    session_start();
    include_once "db_conn.php";

    $id = $_POST["id"];
    $wins = $_POST["wins"];
    $losses = $_POST["losses"];
    $runs = $_POST["runs"];
    $fours = $_POST["fours"];
    $sixes = $_POST["sixes"];
    $innings = $_POST["innings"];
    $highest_score = $_POST["highest_score"];
    $batting_average = $_POST["batting_average"];
    $centuries = $_POST["centuries"];
    $half_centuries = $_POST["half_centuries"];
    $balls = $_POST["balls"];
    $m_overs = $_POST["m_overs"];
    $wickets = $_POST["wickets"];
    $wides = $_POST["wides"];
    $golden_ducks = $_POST["golden_ducks"];
    $assists = $_POST["assists"];
    $fielding = $_POST["fielding"];
    $caught = $_POST["caught"];

    $sql_query_tournament = "INSERT INTO event (id,wins,losses,runs,fours,sixes,innings,highest_score,batting_average,centuries,half_centuries,balls,m_overs,wickets,wides,golden_ducks,assists,fielding,caught) VALUES($id,$wins,$losses,$runs,$fours,$sixes,$innings,$highest_score,$batting_average,$centuries,$half_centuries,$balls,$m_overs,$wickets,$wides,$golden_ducks,$assists,$fielding,$caught)";
    if ($connection->query($sql_query_tournament)===true){
        echo "Team Data Uploaded Successfully.\n";
    }else{
        echo $connection->error;
    }


    $connection->close();
?>