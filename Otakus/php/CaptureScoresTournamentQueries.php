<?php
    
    session_start();
    include_once "db_conn.php";

    $tid = $_POST["tid"];
    $winner = $_POST["winner"];
    $runner_up = $_POST["runner_up"];
    $ttype = $_POST["ttype"];
    $noGames = $_POST["noGames"];

    $id1 = $_POST["id1"];
    $runs1 = $_POST["runs1"];
    $fours1 = $_POST["fours1"];
    $sixes1 = $_POST["sixes1"];
    $innings1 = $_POST["innings1"];
    $highest_score1 = $_POST["highest_score1"];
    $batting_average1 = $_POST["batting_average1"];
    $centuries1 = $_POST["centuries1"];
    $half_centuries1 = $_POST["half_centuries1"];
    $balls1 = $_POST["balls1"];
    $m_overs1 = $_POST["m_overs1"];
    $wickets1 = $_POST["wickets1"];
    $wides1 = $_POST["wides1"];
    $golden_ducks1 = $_POST["golden_ducks1"];
    $assists1 = $_POST["assists1"];
    $fielding1 = $_POST["fielding1"];
    $caught1 = $_POST["caught1"];

    $id2 = $_POST["id2"];
    $runs2 = $_POST["runs2"];
    $fours2 = $_POST["fours2"];
    $sixes2 = $_POST["sixes2"];
    $innings2 = $_POST["innings2"];
    $highest_score2 = $_POST["highest_score2"];
    $batting_average2 = $_POST["batting_average2"];
    $centuries2 = $_POST["centuries2"];
    $half_centuries2 = $_POST["half_centuries2"];
    $balls2 = $_POST["balls2"];
    $m_overs2 = $_POST["m_overs2"];
    $wickets2 = $_POST["wickets2"];
    $wides2 = $_POST["wides2"];
    $golden_ducks2 = $_POST["golden_ducks2"];
    $assists2 = $_POST["assists2"];
    $fielding2 = $_POST["fielding2"];
    $caught2 = $_POST["caught2"];


    $sql_query_tournament = "INSERT INTO tournament (tid,winner,runner_up,ttype,noGames) VALUES($tid,$winner,$runner_up,$ttype,$noGames)";
    if ($connection->query($sql_query_tournament)===true){
        echo "Tournament Data Uploaded Successfully.\n";
    }else{
        echo $connection->error;
    }

    $sql_query_tournament = "INSERT INTO event (id1,runs1,fours1,sixes1,innings1,highest_score1,batting_average1,centuries1,half_centuries1,balls1,m_overs1,wickets1,wides1,golden_ducks1,assists1,fielding1,caught1,id2,runs2,fours2,sixes2,innings2,highest_score2,batting_average2,centuries2,half_centuries2,balls2,m_overs2,wickets2,wides2,golden_ducks2,assists2,fielding2,caught2) VALUES($winner,$id1,$runs1,$fours1,$sixes1,$innings1,$highest_score1,$batting_average1,$centuries1,$half_centuries1,$balls1,$m_overs1,$wickets1,$wides1,$golden_ducks1,$assists1,$fielding1,$caught1,$id2,$runs2,$fours2,$sixes2,$innings2,$highest_score2,$batting_average2,$centuries2,$half_centuries2,$balls2,$m_overs2,$wickets2,$wides2,$golden_ducks2,$assists2,$fielding2,$caught2)";
    if ($connection->query($sql_query_tournament)===true){
        echo "Tournament Game Data Uploaded Successfully.\n";
    }else{
        echo $connection->error;
    }


    $connection->close();
?>