<!DOCTYPE html>
<html>
    <head>
        <title>Capture Scores for an Event/Game</title>
        <style>
            body {
                background-color: rgb(85, 178, 206);
                
            }
            h1 {
                font-size: 50px;
                text-align: center;
            }
            div {
                border-radius: 20px;
                background-color: white;
                text-align: center;
                margin: 15px;
                padding: 5px;
            }
            input {
                margin: 5px;
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        
        <h1>Capture Scores for an Event/Game</h1>
        
        <form method="post" action="CaptureScoresEventQueries.php">
            <label for="winner">Winner: </label>
            <input type="number" id="winner" name="winner" />
            <h2>Team 1</h2>
            <div>
                General:
                <br/>
                <label for="id1">Team ID: </label>
                <input type="number" id="id1" name="id1" />
                <br/>
                Batting:
                <br/>
                <label for="runs1">Runs Scored: </label>
                <input type="number" id="runs1" name="runs1" />
                <br/>
                <label for="fours1">Fours: </label>
                <input type="number" id="fours1" name="fours1" />
                <br/>
                <label for="sixes1">Sixes: </label>
                <input type="number" id="sixes1" name="sixes1" />
                <br/>
                <label for="innings1">Innings: </label>
                <input type="number" id="innings1" name="innings1" />
                <br/>
                <label for="highest_score1">Highest Score: </label>
                <input type="number" id="highest_score1" name="highest_score1" />
                <br/>
                <label for="batting_average1">Batting Average: </label>
                <input type="number" id="batting_average1" name="batting_average1" />
                <br/>
                <label for="centuries1">Centuries: </label>
                <input type="number" id="centuries1" name="centuries1" />
                <br/>
                <label for="half_centuries1">Half-Centuries: </label>
                <input type="number" id="half_centuries1" name="half_centuries1" />
                <br/>
                Bowling:
                <br/>
                <label for="balls1">Balls: </label>
                <input type="number" id="balls1" name="balls1" />
                <br/>
                <label for="m_overs1">Maiden Overs: </label>
                <input type="number" id="m_overs1" name="m_overs1" />
                <br/>
                <label for="wickets1">Wickets: </label>
                <input type="number" id="wickets1" name="wickets1" />
                <br/>
                <label for="wides1">Wides: </label>
                <input type="number" id="wides1" name="wides1" />
                <br/>
                <label for="golden_ducks1">Golden Ducks: </label>
                <input type="number" id="golden_ducks1" name="golden_ducks1" />
                <br/>
                Fielding:
                <br/>
                <label for="assists1">Assists: </label>
                <input type="number" id="assists1" name="assists1" />
                <br/>
                <label for="fielding1">Fielding Percentage: </label>
                <input type="number" id="fielding1" name="fielding1" />
                <br/>
                <label for="caught1">Number of players caught out: </label>
                <input type="number" id="caught1" name="caught1" />
                <br/>
            </div>

            <h2>Team 2</h2>
            <div>
            General:
                <br/>
                <label for="id2">Team ID: </label>
                <input type="number" id="id2" name="id2" />
                <br/>
                Batting:
                <br/>
                <label for="runs2">Runs Scored: </label>
                <input type="number" id="runs2" name="runs2" />
                <br/>
                <label for="fours2">Fours: </label>
                <input type="number" id="fours2" name="fours2" />
                <br/>
                <label for="sixes2">Sixes: </label>
                <input type="number" id="sixes2" name="sixes2" />
                <br/>
                <label for="innings2">Innings: </label>
                <input type="number" id="innings2" name="innings2" />
                <br/>
                <label for="highest_score2">Highest Score: </label>
                <input type="number" id="highest_score2" name="highest_score2" />
                <br/>
                <label for="batting_average2">Batting Average: </label>
                <input type="number" id="batting_average2" name="batting_average2" />
                <br/>
                <label for="centuries2">Centuries: </label>
                <input type="number" id="centuries2" name="centuries2" />
                <br/>
                <label for="half_centuries2">Half-Centuries: </label>
                <input type="number" id="half_centuries2" name="half_centuries2" />
                <br/>
                Bowling:
                <br/>
                <label for="balls2">Balls: </label>
                <input type="number" id="balls2" name="balls2" />
                <br/>
                <label for="m_overs2">Maiden Overs: </label>
                <input type="number" id="m_overs2" name="m_overs2" />
                <br/>
                <label for="wickets2">Wickets: </label>
                <input type="number" id="wickets2" name="wickets2" />
                <br/>
                <label for="wides2">Wides: </label>
                <input type="number" id="wides2" name="wides2" />
                <br/>
                <label for="golden_ducks2">Golden Ducks: </label>
                <input type="number" id="golden_ducks2" name="golden_ducks2" />
                <br/>
                Fielding:
                <br/>
                <label for="assists2">Assists: </label>
                <input type="number" id="assists2" name="assists2" />
                <br/>
                <label for="fielding2">Fielding Percentage: </label>
                <input type="number" id="fielding2" name="fielding2" />
                <br/>
                <label for="caught2">Number of players caught out: </label>
                <input type="number" id="caught2" name="caught2" />
                <br/>
            </div>
            <div>
                <input type="submit" id="submit"/>
            </div>
        </form>
    </body>
</html>