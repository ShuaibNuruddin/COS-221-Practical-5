var button = document.getElementById("newGame");
var gameNumber = 1;
button.addEventListener("click",function(){
    document.getElementById("games").innerHTML+=`
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