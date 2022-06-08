<?php

if($_SERVER['REQUEST_METHOD'] == "POST"){
  //something was posted
  $name = $_POST['name1'];

  //read from database
  $query = "select * from usersphp where name = '$name' limit 1";
  $result = mysqli_query($con, $query);
  $query1 = "select * centuries From cricket_batting_stats  ";
  $query2 = "select * strike_rate From cricket_batting_stats  ";
  $query3 = "select * innings From cricket_batting_stats  "; 
  $query4 = "select * not_out From cricket_batting_stats  "; 
  $query5 = "select * half_centuries From cricket_batting_stats  ";
  $query6 = "select * balls_faced From cricket_batting_stats  ";
  $query7 = "select * runs From cricket_batting_stats  ";
  $query8 = "select * highest_score From cricket_batting_stats  ";
  $query9 = "select * net_run_rate From cricket_batting_stats  ";
  $query11 = "select *  batting_average From cricket_batting_stats  ";
  $result1 = mysqli_query($con, $query1);
  $result2 = mysqli_query($con, $query2);
  $result3 = mysqli_query($con, $query3);
  $result4 = mysqli_query($con, $query4);

  $result5 = mysqli_query($con, $query5);
  $result6 = mysqli_query($con, $query6);
  $result7 = mysqli_query($con, $query7);
  $result8 = mysqli_query($con, $query8);
  $result9 = mysqli_query($con, $query9);
  $result10 = mysqli_query($con, $query10);
  $result11 = mysqli_query($con, $query11);



  
}
$result = "hello";

?>


<!DOCTYPE html>
<html>
<head>
    
    <title>Stats</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    
    <style>
      
     /* *{
        background: linear-gradient(to top,rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%) , url(prac5.jpg);
        
      }*/
    table, th, td {
        border:1px solid black;
      }


      @import url("https://fonts.googleapis.com/css?family=eGlsaio&display=swap");

* { box-sizing: border-box; }

body,
html { overflow-x: hidden; }

.bar {
  position: absolute;
  top: 0;
  left: 0;

  width: 100%;
  padding: 25px 0;

  background-color: green;
  color: white;

  font-family: Gelasio;
  font-size: 28px;
}

.bar_content {
  display: block; /* Important to give the content a width */

  width: 100%;
  transform: translateX(100%); /* Animation start out of the screen */

  /* Add the animation */
  animation: move 15s linear infinite /* infinite make reapeat the animation indefinitely */;
}

/* Create the animation */
@keyframes move {
  to { transform: translateX(-100%); }
}
      </style>
    
</head>
<body>

  <div class="bar">
    <span class="bar_content">
      Cricket STATS !  <span>Cricket STATS !</span> <span>Cricket STATS !</span> <span>Cricket STATS !</span> 
    </span>
  </div>
  <br>
  <br>
  <br>
    <h1>Statistics Page</h1>

    <br><br>
    <h2>Team Selection</h2>
    <form method="post">
			<div style="font-size: 20px;margin: 10px;color: white;">Team Name</div>

			Team Name:<input id="text" type="text" name="name1"><br><br>
			
      <input id="button" type="submit" value="Submit"><br><br>

		</form>

    

    <br><br>

    <h2>Player Stats</h2>
    <h3>(TEAM NAME)</h3>

    <table style="width:100%">
      <tr>
        <th>Team_id</th>
        <th>Num_matches</th>
        <th>Position</th>
        <th>Catches</th>
        <th>Stumpings</th>
        <th>Wins</th>
        <th>Loses</th>

        
        
      </tr>
      <tr>
          <td>11</td>
        <td>21</td>
        <td>Capt/batsman</td>
        <td>38</td>
        <td>2</td>
        <td>11</td>
        <td>9</td>
        
      </tr>
      <tr>
        <td>11</td>
      <td>21</td>
      <td>batsman</td>
      <td>38</td>
      <td>2</td>
      <td>12</td>
      <td>94</td>
      
    </tr>
    <tr>
      <td>11</td>
    <td>21</td>
    <td>batsman</td>
    <td>38</td>
    <td>2</td>
    <td>12</td>
    <td>19</td>
    
  </tr><tr>
    <td>11</td>
  <td>21</td>
  <td>batsman</td>
  <td>38</td>
  <td>2</td>
  <td>2</td>
  <td>12</td>
  
</tr><tr>
  <td>11</td>
<td>21</td>
<td>batsman</td>
<td>38</td>
<td>2</td>
<td>11</td>
<td>1</td>

</tr><tr>
  <td>11</td>
<td>21</td>
<td>Allrounder</td>
<td>38</td>
<td>2</td>
<td>12</td>
<td>3</td>

</tr><tr>
  <td>11</td>
<td>21</td>
<td>Allrounder</td>
<td>38</td>
<td>2</td>
<td>12</td>
<td>6</td>

</tr><tr>
  <td>11</td>
<td>21</td>
<td>Allrounder</td>
<td>38</td>
<td>2</td>
<td>18</td>
<td>9</td>

</tr><tr>
  <td>11</td>
<td>21</td>
<td>Bowler</td>
<td>38</td>
<td>2</td>
<td>2</td>
<td>9</td>

</tr><tr>
  <td>11</td>
<td>21</td>
<td>Bowler</td>
<td>38</td>
<td>2</td>
<td>12</td>
<td>3</td>

</tr><tr>
  <td>11</td>
<td>21</td>
<td>Bowler</td>
<td>38</td>
<td>2</td>
<td>12</td>
<td>9</td>

</tr><tr>
  <td>11</td>
<td>21</td>
<td>Bowler</td>
<td>38</td>
<td>2</td>
<td>0</td>
<td>9</td>

</tr>
      
    </table>
    <br>
    <br>

 



    <canvas id="myChart" style="width:100%;max-width:600px"></canvas>

<script>
var xValues = ["innings", "not_out", "centuries", "half_centuries", "strike_rate"];
var yValues = [50, 32, 7, 10, 25.5];
var barColors = ["red", "green","blue","orange","brown"];

new Chart("myChart", {
  type: "bar",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: "Batsman Stats(PLAYER NAME)"
    }
  }
});


</script>

<br>

<canvas id="myChart2" style="width:100%;max-width:600px"></canvas>

<script>
var xValues = ["balls_faced", "runs", "highest_score", "net_run_rate", "batting_average"];
var yValues = [300, 250, 140, 13.5, 45];
var barColors = ["yellow", "blue","green","purple","red"];

new Chart("myChart2", {
  type: "bar",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: "Innings Batting Stats(TEAM NAME)"
    }
  }
});


</script>

<br>
<br><br>
<canvas id="myChart5" style="width:100%;max-width:600px"></canvas>

<script>
var xValues = [5,10,15,20,25,30,35,40,45,50];

new Chart("myChart5", {
  type: "line",
  data: {
    labels: xValues,
    datasets: [{ 
      data: [56,88,123,162,199,230,274,296,315,345],
      borderColor: "red",
      fill: false
    }, { 
      data: [42,73,110,170,203,235,255,291,307,333],
      borderColor: "green",
      fill: false
    }]
  },
  options: {
    legend: {display: false} ,
    title: {
      display: true,
      text: "Runs to Overs(TEAM A VS TEAM B) "
    }
  }
});
</script>

<br>

<canvas id="myChart3" style="width:100%;max-width:600px"></canvas>

<script>
var xValues = ["innings", "wickets", "maiden_overs", "bowling_average", "strike_rate"];
var yValues = [50, 92, 7, 9, 25.5];
var barColors = ["red", "green","blue","orange","brown"];

new Chart("myChart3", {
  type: "bar",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: "Bowler Stats(PLAYER NAME)"
    }
  }
});


</script>
<br>

<canvas id="myChart4" style="width:100%;max-width:600px"></canvas>

<script>
var xValues = ["overs_bowled", "wickets_taken", "maiden_overs", "bowling_average", "net_strike_rate"];
var yValues = [50, 9, 14, 13.5, 45];
var barColors = ["yellow", "blue","green","purple","red"];

new Chart("myChart4", {
  type: "bar",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: "Innings Bowling Stats(TEAM NAME)"
    }
  }
});


</script>

<br>



<canvas id="myChart6" style="width:100%;max-width:600px"></canvas>

<script>
var jsvar = '<?=$result?>';

var xValues = ["SINGLES", "fours", "sixes", "wide"];
var yValues = [55, 18, 12, 10];
var barColors = [
  "#b91d47",
  "#00aba9",
  "#2b5797",
  "#e8c3b9",
  "#1e7145"
];

new Chart("myChart6", {
  type: "pie",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    title: {
      display: true,
      text: "Runs Distribution"
    }
  }
});
</script>
<br>
<form method="post">
			<div style="font-size: 20px;margin: 10px;color: white;">Team Name</div>

			Team Name:<input id="text" type="text" name="name6"><br><br>
			
      <input id="button" type="submit" value="Submit"><br><br>

		</form>
<br>



</body>
</html>