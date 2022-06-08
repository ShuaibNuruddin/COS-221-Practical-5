<?php

    $no_of_tournaments = 6;
    $no_of_teams = 6;
    $no_of_players = 11;
    $tournament_id = 87379828433;
    $team_id = 23756890421;
    $player_id = 45567323297;

    $tournament1 = array();
    $tournament2 = array();
    $tournament3 = array();
    $tournament4 = array();
    $tournament5 = array();
    $tournament6 = array();

    $tournaments = array($tournament1,$tournament2,$tournament3,$tournament4,$tournament5,$tournament6); //This stores the data

    srand(10);

    for ($tournament = 0;$tournament<$no_of_tournaments;$tournament++){
        $results_player = range(0,65);
        shuffle($results_player);
        $player_most_runs = $results_player[23];
        $player_most_wickets = $results_player[30];
        $results_team = range(0,5);
        shuffle($results_team);
        $winner = $results_team[4];
        $runner_up = $results_team[2];
        $tournaments[$tournament]["tournament_format"]="Round-robin";
        $tournaments[$tournament]["winner_team_id"]=$team_id+$winner;
        $tournaments[$tournament]["runner_up_team_id"]=$team_id+$runner_up;
        $tournaments[$tournament]["player_most_runs_id"]=$player_id+$player_most_runs;
        $tournaments[$tournament]["player_most_wickets_id"]=$player_id+$player_most_wickets;
        $tournaments[$tournament]["tournament_id"] = $tournament_id++;
        $tournaments[$tournament]["teams"] = array();
        for ($team = 0;$team<$no_of_teams;$team++){
            $tournaments[$tournament]["teams"]["Team ".($team+1)]=array();
            $tournaments[$tournament]["teams"]["Team ".($team+1)]["team_id"] = $team_id++;
            $tournaments[$tournament]["teams"]["Team ".($team+1)]["total_runs"] = rand(400,1000);
            $tournaments[$tournament]["teams"]["Team ".($team+1)]["player_ids"] = range($player_id,$player_id+10);
            $player_id+=11;
        }
    }

    //$tournaments=json_encode($tournaments);

    //We are done generating the data;
    var_dump($tournaments);

    $hostIP = "127.0.0.1";
    $username = "root";
    $password = "#@T-MariaDB.2010";

    $connection = new mysqli($hostIP,$username,$password);

    if ($connection->connect_error){
        die("The connection has failed: ".$connection->connect_error);
    }else{
        $connection->select_db("otakus_cricket_sport_db");
    }
    
    for ($tournament = 0;$tournament<$no_of_tournaments;$tournament++){
        $format = $tournaments[$tournament]["tournament_format"];
        $winning_team = $tournaments[$tournament]["winner_team_id"];
        $runner_up_team = $tournaments[$tournament]["runner_up_team_id"];
        $player_highest_runs=$tournaments[$tournament]["player_most_runs_id"];
        $player_highest_wickets=$tournaments[$tournament]["player_most_wickets_id"];
        $id=$tournaments[$tournament]["tournament_id"];
        $sql_query = "INSERT INTO tournament (tournament_format,winner_team_id,runner_up_team_id,player_most_runs_id,player_most_wickets_id,tournament_id) VALUES('$format','$winning_team',$runner_up_team,$player_highest_runs,$player_highest_wickets,$id)";
        if($connection->query($sql_query)===TRUE)
            echo "success";
        else
            echo "Error: " . $sql_query . "<br>" . $connection->error;
    }

    for ($tournament = 0;$tournament<$no_of_tournaments;$tournament++){
        
        for ($team = 0;$team<$no_of_teams;$team++){
            $id = $tournaments[$tournament]["teams"]["Team ".($team+1)]["team_id"];
            $total_runs = $tournaments[$tournament]["teams"]["Team ".($team+1)]["total_runs"];
            $sql_query = "INSERT INTO cricket_teams (id,total_runs) VALUES($id,$total_runs)";
            $connection->query($sql_query);

            for ($player=0;$player<=10;$player++){
                $id = $tournaments[$tournament]["teams"]["Team ".($team+1)]["player_ids"][$player];
                $sql_query = "INSERT INTO cricket_action_participants (player_id) VALUES($id)";
            }
            $tournaments[$tournament]["teams"]["Team ".($team+1)]=array();
            $tournaments[$tournament]["teams"]["Team ".($team+1)]["player_ids"] = range($player_id,$player_id+10);
        }
    }

    $connection->close();
?>