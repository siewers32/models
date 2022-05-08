<?php
include("Db.php");
include("Model.php");
include("UserModel.php");

$db = new Db();
$connection = $db->getConnection("localhost","mdb","root", "root", "8889");

$user = new UserModel();
print_r($user->all($connection));

print_r($user->getById($connection, 1));

if(isset($_POST['submit'])) {
    $user->store($connection);
}
?>

<form action="index.php" method="post">
    Email <input type="email" name="email"><br>
    Password <input type="password" name="password"><br>
    <input type="submit" name="submit">
</form>
