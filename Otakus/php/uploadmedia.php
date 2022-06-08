<!DOCTYPE html>
<html>
    <head>
        <title>Upload Media</title>
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
        
        <h1>Upload Media</h1>
        
        <form method="post" action="uploadmediaqueries.php">
            <div>
                <h2>Upload Media for a Tournament</h2>
                <label for="tournamentd">File Description: </label>
                <input type="text" id="tournamentd" name="tournamentd" size="100" onchange="getFileName(this)"/>
                <br/>
                <label for="tournamentf">File: </label>
                <input type="file" id="tournamentf" name="tournamentf"/>
            </div>
            <div>
                <h2>Upload Media for an Event/Game</h2>
                <label for="eventd">File Description: </label>
                <input type="text" id="eventd" name="eventd" size="100"/>
                <br/>
                <label for="eventf">File: </label>
                <input type="file" id="eventf" name="eventf"/>
            </div>
            <div>
                <h2>Upload Media for a Player</h2>
                <label for="playerd">File Description: </label>
                <input type="text" id="playerd" name="playerd" size="100"/>
                <br/>
                <label for="playerf">File: </label>
                <input type="file" id="playerf" name="playerf"/>
            </div>
            <div>
                <h2>Upload Media for a Team</h2>
                <label for="teamd">File Description: </label>
                <input type="text" id="teamd" name="teamd" size="100"/>
                <br/>
                <label for="teamf">File: </label>
                <input type="file" id="teamf" name="teamf"/>
            </div>
            <div>
                <input type="submit" id="submit"/>
            </div>
        </form>
        <script>
            function getFileName(file){
                var file_name = file.files[0].name;
                document.getElementById("tournamentf").value=file_name;
            }
        </script>
    </body>
</html>