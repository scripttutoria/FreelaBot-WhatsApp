<?php
$servidor = 'localhost';
$usuario = 'root';
$senha = '';
$banco = 'bot';
$conn = mysqli_connect($servidor,$usuario,$senha,$banco);
if(!$conn){
echo "deu ruim";
}else{
//echo"deu tudo certo";
}
?>
<?php $menu1 = "Olá! Seja bem-vindo(a) à Central de Compartilhamento de Trabalhos Remotos Freelancers!\n Vamos começar o seu atendimento.\n Por gentileza, me informe o seu nome completo?";
$menu2 = "Ótimo, envie o seu currículo em PDF!";
$menu3 = "Aguarde, pois um robô vai analisar seu curriculo e enviaremos trabalhos remotos freelancers de acordo com as suas qualificações!";
$data = date('d/m/Y')
 ?>
<?php   
$msg =$_GET['msg'];
$telefone_final = $_GET['telefone'];
$horario = $_GET['horario'];
$sql = "SELECT * FROM usuario WHERE telefone = '$telefone_final'";
	$query = mysqli_query($conn, $sql);
	$total = mysqli_num_rows($query);

while ($rows_usuarios = mysqli_fetch_array($query)){
	$status = $rows_usuarios['status'];
}	
	if($total>0){
//echo "numero encontrado";
if ($status == 2){
	echo $menu2;
	$resposta = $menu2  ;
}
if($status == 3){
	echo $menu3;
	 $resposta = $menu3;
}
}else{
$sql = "INSERT INTO usuario (telefone,status) VALUES('$telefone_final','1')";
$query = mysqli_query($conn,$sql);
if(!$query){
//echo "deu ruim";	
}
else{
echo $menu1;
  $resposta = $menu1;	
}
}

?>
<?php
$sql = "SELECT * FROM usuario WHERE telefone = '$telefone_final'";
$query = mysqli_query($conn, $sql);
$total = mysqli_num_rows($query);
while ($rows_usuarios = mysqli_fetch_array($query)){
	$status = $rows_usuarios['status'];
}
if($status < 3){
	$status2 = $status + 1;
	$sql = "UPDATE usuario SET status= '$status2' WHERE telefone= '$telefone_final'";
	$query = mysqli_query($conn, $sql);
}
?>
<?php
$sql = "INSERT INTO historico (telefone,cliente1,bot,horario, data ) VALUES('$telefone_final','$msg','$resposta','$horario','$data')";
$query = mysqli_query($conn,$sql);
if(!$query){

}
else{
	
}
?>
<?php
$sql = "DELETE FROM usuario WHERE telefone = '$telefone_final'";
?>