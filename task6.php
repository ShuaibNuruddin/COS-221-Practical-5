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

    $tournaments = array($tournament1,$tournament2,$tournament3,$tournament4,$tournament5,$tournament6);

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

    var_dump($tournaments);

    /*for ($tournament = 0;$tournament<$no_of_tournaments;$tournament++){
        echo "Tournament ".$tournament;
        echo "Tournament ID ".;
    }*/
?>