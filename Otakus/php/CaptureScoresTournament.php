<!DOCTYPE html>
<html>

<head>
    <title>Capture Scores for a Tournament</title>
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
            margin: 4px;
            font-size: 18px;
        }

        .game {
            background-color: red;
            margin: 15px;
            padding: 5px;
            border-radius: 20px;
            text-align: center;
        }

        #games {
            background-color: cyan;
            margin: 15px;
            padding: 5px;
            border-radius: 20px;
            text-align: center;
        }
    </style>
</head>

<body>

    <h1>Capture Scores for an Tournament</h1>

    <form>
        <label for="tid">Tournament ID: </label>
        <input type="number" id="tid" name="tid" />
        <label for="winner">Winner: </label>
        <input type="number" id="winner" name="winner" />
        <label for="runner_up">Runner Up: </label>
        <input type="number" id="runner_up" name="runner_up" />
        <label for="ttype">Tournament Type: </label>
        <input type="text" id="ttype" name="ttype" />
        <label for="noGames">Number of Games: </label>
        <input type="number" id="noGames" name="noGames" />
        <section id="games">
            <h2>Games</h2>
            <section class="game">
                <h3>Game 1</h3>
                <label for="round">Game Round: </label>
                <input type="number" id="round" name="round" />
                <h4>Team 1</h4>
                <div>
                    General:
                    <br />
                    <label for="id">Team ID: </label>
                    <input type="number" id="id" name="id" />
                    <br />
                    Batting:
                    <br />
                    <label for="runs">Runs Scored: </label>
                    <input type="number" id="runs" name="runs" />
                    <br />
                    <label for="fours">Fours: </label>
                    <input type="number" id="fours" name="fours" />
                    <br />
                    <label for="sixes">Sixes: </label>
                    <input type="number" id="sixes" name="sixes" />
                    <br />
                    <label for="innings">Innings: </label>
                    <input type="number" id="innings" name="innings" />
                    <br />
                    <label for="highest_score">Highest Score: </label>
                    <input type="number" id="highest_score" name="highest_score" />
                    <br />
                    <label for="batting_average">Batting Average: </label>
                    <input type="number" id="batting_average" name="batting_average" />
                    <br />
                    <label for="centuries">Centuries: </label>
                    <input type="number" id="centuries" name="centuries" />
                    <br />
                    <label for="half_centuries">Half-Centuries: </label>
                    <input type="number" id="half_centuries" name="half_centuries" />
                    <br />
                    Bowling:
                    <br />
                    <label for="balls">Balls: </label>
                    <input type="number" id="balls" name="balls" />
                    <br />
                    <label for="m_overs">Maiden Overs: </label>
                    <input type="number" id="m_overs" name="m_overs" />
                    <br />
                    <label for="wickets">Wickets: </label>
                    <input type="number" id="wickets" name="wickets" />
                    <br />
                    <label for="wides">Wides: </label>
                    <input type="number" id="wides" name="wides" />
                    <br />
                    <label for="golden_ducks">Golden Ducks: </label>
                    <input type="number" id="golden_ducks" name="golden_ducks" />
                    <br />
                    Fielding:
                    <br />
                    <label for="assists">Assists: </label>
                    <input type="number" id="assists" name="assists" />
                    <br />
                    <label for="fielding">Fielding Percentage: </label>
                    <input type="number" id="fielding" name="fielding" />
                    <br />
                    <label for="caught">Number of players caught out: </label>
                    <input type="number" id="caught" name="caught" />
                    <br />
                </div>

                <h4>Team 2</h4>
                <div>
                    General:
                    <br />
                    <label for="id">Team ID: </label>
                    <input type="number" id="id" name="id" />
                    <br />
                    Batting:
                    <br />
                    <label for="runs">Runs Scored: </label>
                    <input type="number" id="runs" name="runs" />
                    <br />
                    <label for="fours">Fours: </label>
                    <input type="number" id="fours" name="fours" />
                    <br />
                    <label for="sixes">Sixes: </label>
                    <input type="number" id="sixes" name="sixes" />
                    <br />
                    <label for="innings">Innings: </label>
                    <input type="number" id="innings" name="innings" />
                    <br />
                    <label for="highest_score">Highest Score: </label>
                    <input type="number" id="highest_score" name="highest_score" />
                    <br />
                    <label for="batting_average">Batting Average: </label>
                    <input type="number" id="batting_average" name="batting_average" />
                    <br />
                    <label for="centuries">Centuries: </label>
                    <input type="number" id="centuries" name="centuries" />
                    <br />
                    <label for="half_centuries">Half-Centuries: </label>
                    <input type="number" id="half_centuries" name="half_centuries" />
                    <br />
                    Bowling:
                    <br />
                    <label for="balls">Balls: </label>
                    <input type="number" id="balls" name="balls" />
                    <br />
                    <label for="m_overs">Maiden Overs: </label>
                    <input type="number" id="m_overs" name="m_overs" />
                    <br />
                    <label for="wickets">Wickets: </label>
                    <input type="number" id="wickets" name="wickets" />
                    <br />
                    <label for="wides">Wides: </label>
                    <input type="number" id="wides" name="wides" />
                    <br />
                    <label for="golden_ducks">Golden Ducks: </label>
                    <input type="number" id="golden_ducks" name="golden_ducks" />
                    <br />
                    Fielding:
                    <br />
                    <label for="assists">Assists: </label>
                    <input type="number" id="assists" name="assists" />
                    <br />
                    <label for="fielding">Fielding Percentage: </label>
                    <input type="number" id="fielding" name="fielding" />
                    <br />
                    <label for="caught">Number of players caught out: </label>
                    <input type="number" id="caught" name="caught" />
                    <br />
                </div>
            </section>
        </section>
        <button id="newGame" type="button">Add new Game</button>
        <div>
            <input type="submit" id="submit" />
        </div>
    </form>
    <script src="CaptureScoresTournament.js">
        var button = document.getElementById("newGame");
        var gameNumber = 1;
        button.addEventListener("click", function() {
            document.getElementById("games").innerHTML += `
    <section class="game">
                <h3>Game ${++gameNumber}</h3>
                <label for="round">Game Round: </label>
                <input type="number" id="round" name="round" />
                <h4>Team 1</h4>
                <div>
                    General:
                    <br />
                    <label for="id">Team ID: </label>
                    <input type="number" id="id" name="id" />
                    <br />
                    Batting:
                    <br />
                    <label for="runs">Runs Scored: </label>
                    <input type="number" id="runs" name="runs" />
                    <br />
                    <label for="fours">Fours: </label>
                    <input type="number" id="fours" name="fours" />
                    <br />
                    <label for="sixes">Sixes: </label>
                    <input type="number" id="sixes" name="sixes" />
                    <br />
                    <label for="innings">Innings: </label>
                    <input type="number" id="innings" name="innings" />
                    <br />
                    <label for="highest_score">Highest Score: </label>
                    <input type="number" id="highest_score" name="highest_score" />
                    <br />
                    <label for="batting_average">Batting Average: </label>
                    <input type="number" id="batting_average" name="batting_average" />
                    <br />
                    <label for="centuries">Centuries: </label>
                    <input type="number" id="centuries" name="centuries" />
                    <br />
                    <label for="half_centuries">Half-Centuries: </label>
                    <input type="number" id="half_centuries" name="half_centuries" />
                    <br />
                    Bowling:
                    <br />
                    <label for="balls">Balls: </label>
                    <input type="number" id="balls" name="balls" />
                    <br />
                    <label for="m_overs">Maiden Overs: </label>
                    <input type="number" id="m_overs" name="m_overs" />
                    <br />
                    <label for="wickets">Wickets: </label>
                    <input type="number" id="wickets" name="wickets" />
                    <br />
                    <label for="wides">Wides: </label>
                    <input type="number" id="wides" name="wides" />
                    <br />
                    <label for="golden_ducks">Golden Ducks: </label>
                    <input type="number" id="golden_ducks" name="golden_ducks" />
                    <br />
                    Fielding:
                    <br />
                    <label for="assists">Assists: </label>
                    <input type="number" id="assists" name="assists" />
                    <br />
                    <label for="fielding">Fielding Percentage: </label>
                    <input type="number" id="fielding" name="fielding" />
                    <br />
                    <label for="caught">Number of players caught out: </label>
                    <input type="number" id="caught" name="caught" />
                    <br />
                </div>
    
                <h4>Team 2</h4>
                <div>
                    General:
                    <br />
                    <label for="id">Team ID: </label>
                    <input type="number" id="id" name="id" />
                    <br />
                    Batting:
                    <br />
                    <label for="runs">Runs Scored: </label>
                    <input type="number" id="runs" name="runs" />
                    <br />
                    <label for="fours">Fours: </label>
                    <input type="number" id="fours" name="fours" />
                    <br />
                    <label for="sixes">Sixes: </label>
                    <input type="number" id="sixes" name="sixes" />
                    <br />
                    <label for="innings">Innings: </label>
                    <input type="number" id="innings" name="innings" />
                    <br />
                    <label for="highest_score">Highest Score: </label>
                    <input type="number" id="highest_score" name="highest_score" />
                    <br />
                    <label for="batting_average">Batting Average: </label>
                    <input type="number" id="batting_average" name="batting_average" />
                    <br />
                    <label for="centuries">Centuries: </label>
                    <input type="number" id="centuries" name="centuries" />
                    <br />
                    <label for="half_centuries">Half-Centuries: </label>
                    <input type="number" id="half_centuries" name="half_centuries" />
                    <br />
                    Bowling:
                    <br />
                    <label for="balls">Balls: </label>
                    <input type="number" id="balls" name="balls" />
                    <br />
                    <label for="m_overs">Maiden Overs: </label>
                    <input type="number" id="m_overs" name="m_overs" />
                    <br />
                    <label for="wickets">Wickets: </label>
                    <input type="number" id="wickets" name="wickets" />
                    <br />
                    <label for="wides">Wides: </label>
                    <input type="number" id="wides" name="wides" />
                    <br />
                    <label for="golden_ducks">Golden Ducks: </label>
                    <input type="number" id="golden_ducks" name="golden_ducks" />
                    <br />
                    Fielding:
                    <br />
                    <label for="assists">Assists: </label>
                    <input type="number" id="assists" name="assists" />
                    <br />
                    <label for="fielding">Fielding Percentage: </label>
                    <input type="number" id="fielding" name="fielding" />
                    <br />
                    <label for="caught">Number of players caught out: </label>
                    <input type="number" id="caught" name="caught" />
                    <br />
                </div>
            </section>
    `
        });
    </script>
</body>

</html>