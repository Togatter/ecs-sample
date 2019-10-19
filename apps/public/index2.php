<?php
try {
  $pdo = new PDO('mysql:host=fujiball-study-mysql;dbname=hello;charset=utf8','root','root', array(PDO::ATTR_EMULATE_PREPARES => false));
} catch (PDOException $e) {
  exit('データベース接続失敗。'.$e->getMessage());
}

$stmt = $pdo->query("SELECT * FROM hello");
while($row = $stmt -> fetch(PDO::FETCH_ASSOC)) {
  printf("id         = %d<br>", $row['id']);
  printf("country_id = %s<br>", $row['country_id']);
  printf("greet      = %s<br>", $row['greet']);
  print("-------------------------------------<br>");
}
?>