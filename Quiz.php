<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="Quiz.css">
    <title> Quiz</title>
</head>
<body>
    <?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
require_once('inc/connection.php');
// Attempt select query execution
$n=rand(1,5);
$sql = "SELECT * FROM questions WHERE id='$n'";
if($result = mysqli_query($connection, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table>";
           /* echo "<tr>";
                echo "<th>id</th>";
                echo "<th>Question</th>";
                echo "<th>answer1</th>";
                echo "<th>answer2</th>";
                echo "<th>answer3</th>";
            echo "</tr>";*/
        while($row = mysqli_fetch_array($result)){
           // print_r($row);
            
            $answers=array();
            $answers[0]=$row['ans1'];
            $answers[1]=$row['ans2'];
            $answers[2]=$row['ans3'];
            $answers[3]=$row['correct_ans'];
            shuffle($answers);

            echo "<div class='signup'>";
            echo("<center><b><div class='title'>Welcome to MINI QUIZ</div></b></center>");
            echo "<br><br><br>";
            echo "<div class='q'>Question</div><br>";
            echo $row['ques'];
            echo "<br>";
            echo "<br>";

            for ($i=0; $i < 4; $i++) { 
                $j=$i+1;
                echo "<br>".$j.").".$answers[$i];

            }
            echo "<br><br>";
            echo "<br><form method='post' action='Quiz.php'><input type='text' name='enter' placeholder='Enter answers'><br><input type='hidden' name='corans' value ='" .array_search($row['correct_ans'],$answers)."' placeholder='Enter your answer'></center><br>";
            echo "<br><center><input type='submit' name = 'submit' value='Enter'></center></form>";
            echo "</div>";
            //validate answer
            if (isset($_POST['submit'])) {
                
$x = $_POST['enter']-1;
$y = $_POST['corans'];  
    
if ($x < 4 ){
if (($y == $x) && (!is_null($x)) ){
     echo "<script type='text/javascript'> 
                            alert('Answer is correct');
                            </script>";
    /* echo sweetAlert("Sucesso!", "As informações foram atualizadas.", "success");*/
}
else{
     echo "<script type='text/javascript'> 
                            alert('Answer is incorrect');
                            </script>";
}
}else{
         echo "<script type='text/javascript'> 
                            alert('Please Enter Correct Choice');
                            </script>";
}   

            }
            
            /*echo "<tr>";
                echo "<td>" . $row['ques']. "</td>";
                echo "<td>" . $row['id'] . "</td>";
                echo "<td>" . $row['ans1'] . "</td>";
                echo "<td>" . $row['ans2'] . "</td>";
                echo "<td>" . $row['ans3'] . "</td>";
            echo "</tr>";*/
        }
        echo "</table>";
        // Free result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($connection);
}
// Close connection
mysqli_close($connection);
?>
<br>
    <br>
    <div id="home">
        <a href="home.php"><input type="submit" value="Log Out" style="margin-left: 30px;"></a>
    </div>
</body>
</html>