<?php

//INCLUI A CONEXÃO
//include_once "../conexao_odbc/conexao_odbc.php";
//define(SERVER, "SISTEMA"); //$Server = "SISTEMA";
//define(LOGIN, 'sa');     //$Login = "sa";
//define(SENHA, '123456'); //$Senha = "123456";
//$con = odbc_connect(SERVER, LOGIN, SENHA) or die(odbc_error()); //$con = odbc_connect($Server, $Login, $Senha) or die(odbc_error());

/* * ***************************
  GERA RESUMOS
 * *************************** */

function lmWord($string, $words = '100') {
    $string = strip_tags($string);
    $count = strlen($string);

    if ($count <= $words) {
        return $string;
    } else {
        $strpos = strrpos(substr($string, 0, $words), ' ');
        return substr($string, 0, $strpos) . '...';
    }
}

/* * ***************************
  VALIDA O CPF
 * *************************** */

function valCpf($cpf) {
    $cpf = preg_replace('/[^0-9]/', '', $cpf);
    $digitoA = 0;
    $digitoB = 0;
    for ($i = 0, $x = 10; $i <= 8; $i++, $x--) {
        @$digitoA += $cpf[$i] * $x;
    }
    for ($i = 0, $x = 11; $i <= 9; $i++, $x--) {
        if (str_repeat($i, 11) == $cpf) {
            return false;
        }
        @$digitoB += $cpf[$i] * $x;
    }
    $somaA = (($digitoA % 11) < 2) ? 0 : 11 - ($digitoA % 11);
    $somaB = (($digitoB % 11) < 2) ? 0 : 11 - ($digitoB % 11);
    if ($somaA != @$cpf[9] || $somaB != $cpf[10]) {
        return false;
    } else {
        return true;
    }
}

/* * ***************************
  VALIDA O EMAIL
 * *************************** */

function valMail($email) {
    if (preg_match('/[a-z0-9_\.\-]+@[a-z0-9_\.\-]*[a-z0-9_\.\-]+\.[a-z]{2,4}$/', $email)) {
        return true;
    } else {
        return false;
    }
}

/* * ***************************
  ENVIA O EMAIL
 * *************************** */

function sendMail($assunto, $mensagem, $remetente, $nomeRemetente, $destino, $nomeDestino, $reply = null, $replyNome = null) {

    require_once 'mail/class.phpmailer.php'; //Include pasta/classe do PHPMailer

    $mail = new PHPMailer(); //INICIA A CLASSE
    $mail->IsSMTP(); //Habilita envio SMPT
    $mail->SMTPAuth = true; //Ativa email autenticado
    $mail->IsHTML(true);

    $mail->Host = MAILHOST; //Servidor de envio
    $mail->Port = MAILPORT; //Porta de envio
    $mail->Username = MAILUSER; //email para smtp autenticado
    $mail->Password = MAILPASS; //seleciona a porta de envio

    $mail->From = utf8_decode($remetente); //remtente
    $mail->FromName = utf8_decode($nomeRemetente); //remtetene nome

    if ($reply != null) {
        $mail->AddReplyTo(utf8_decode($reply), utf8_decode($replyNome));
    }

    $mail->Subject = utf8_decode($assunto); //assunto
    $mail->Body = utf8_decode($mensagem); //mensagem
    $mail->AddAddress(utf8_decode($destino), utf8_decode($nomeDestino)); //email e nome do destino

    if ($mail->Send()) {
        return true;
    } else {
        return false;
    }
}

/* * ***************************
  FORMATA DATA EM TIMESTAMP
 * *************************** */

function formDate($data) {
    $timestamp = explode(" ", $data);
    $getData = $timestamp[0];
    $getTime = $timestamp[1];

    $setData = explode('/', $getData);
    $dia = $setData[0];
    $mes = $setData[1];
    $ano = $setData[2];

    if (!$getTime) :
        $getTime = date('H:i:s');
    endif;

    $resultado = $ano . '-' . $mes . '-' . $dia . ' ' . $getTime;

    return $resultado;
}

/* * ***************************
  CALCULAR IDADE
 * *************************** */

function calcIdade($data) {
    // Separa em dia, mês e ano
    list($dia, $mes, $ano) = explode('/', $data);
    // Descobre que dia é hoje e retorna a unix timestamp
    $hoje = mktime(0, 0, 0, date('m'), date('d'), date('Y'));
    // Descobre a unix timestamp da data de nascimento do fulano
    $nascimento = mktime(0, 0, 0, $mes, $dia, $ano);
    // Depois apenas fazemos o cálculo já citado :)
    $idade = floor((((($hoje - $nascimento) / 60) / 60) / 24) / 365.25);

    return $idade;
}

/* * ***************************
  MANAGE ESTATÍSCAS
 * *************************** */

function viewManager($times = 2) {
    $selMes = date('m');
    $selAno = date('Y');
    if (empty($_SESSION['startView']['sessao'])) {
        $_SESSION['startView']['sessao'] = session_id();
        $_SESSION['startView']['ip'] = $_SERVER['REMOTE_ADDR'];
        $_SESSION['startView']['url'] = $_SERVER['PHP_SELF'];
        $_SESSION['startView']['time_end'] = time() + $times;
        create('up_views_online', $_SESSION['startView']);
        $readViews = read('up_views', "WHERE mes = '$selMes' AND ano = '$selAno'");
        if (!$readViews) {
            $createViews = array('mes' => $selMes, 'ano' => $selAno);
            create('up_views', $createViews);
        } else {
            foreach ($readViews as $views)
                ;
            if (empty($_COOKIE['startView'])) {
                $updateViews = array(
                    'visitas' => $views['visitas'] + 1,
                    'visitantes' => $views['visitantes'] + 1,
                );
                update('up_views', $updateViews, "mes = '$selMes' AND ano = '$selAno'");
                setcookie('startView', time(), time() + 60 * 60 * 24, '/');
            } else {
                $updateVisitas = array('visitas' => $views['visitas'] + 1);
                update('up_views', $updateVisitas, "mes = '$selMes' AND ano = '$selAno'");
            }
        }
    } else {
        $readPageViews = read('up_views', "WHERE mes = '$selMes' AND ano = '$selAno'");
        if ($readPageViews) {
            foreach ($readPageViews as $rpgv)
                ;
            $updatePageViews = array('pageviews' => $rpgv['pageviews'] + 1);
            update('up_views', $updatePageViews, "mes = '$selMes' AND ano = '$selAno'");
        }
        $id_sessao = $_SESSION['startView']['sessao'];
        if ($_SESSION['startView']['time_end'] <= time()) {
            delete('up_views_online', "sessao = '$id_sessao' OR time_end <= time(NOW())");
            unset($_SESSION['startView']);
        } else {
            $_SESSION['startView']['time_end'] = time() + $times;
            $timeEnd = array('time_end' => $_SESSION['startView']['time_end']);
            update('up_views_online', $timeEnd, "sessao = '$id_sessao'");
        }
    }
}

/* * ***************************
  Paginação de resultados
 * *************************** */

function paginacao($tabela, $maxResults = 4) {
    if (!isset($_GET['pag'])) {
        $limit = 0;
    } else {
        $limit = $_GET['pag'] * $maxR;
    }

    $ler = ler('tb_estagiarios', '', "LIMIT {$limit}, {$maxR}");
    echo $todos = mysql_num_rows(ler('tb_estagiarios')) . '<br>';
    while ($result = mysql_fetch_array($ler)) {
        echo $result[0] . ' -';
        echo $result[1] . '<br>';
    }
    $np = ceil($todos / 5);
    for ($i; $i <= $np; $i++) {
        $pg = $i - 1;
        echo "<a href={$_SERVER["PHP_SELF"]}?pag={$pg}> {$i}  </a>";
    }

    return $rLimit;
}

//function paginar($tabela, $pag, $max) {
//    $pag = (!$pag ? '1': $pag);
//    $ini = ($pag*$max)-$max;
//
//    $con = odbc_connect(SERVER, LOGIN, SENHA) or die(odbc_error());
//
//    $qrLer = "SELECT * FROM {$tabela} LIMIT $ini,$max";
//    $exLer = odbc_exec($con, $qrLer) or die('Erro ao Ler a ' . $tabela . ' ' . odbc_error());
//}

function paginar($tabela, $where, $maximos, $link, $pag, $maxlinks = 8) {
    $readPaginator = ler("$tabela", '', "$where");
    $total = count($readPaginator);
    if ($total > $maximos) {
        $paginas = ceil($total / $maximos);
        if ($width) {
            echo '<div class="paginator" style="width:' . $width . '">';
        } else {
            echo '<div class="paginator">';
        }
        echo '<a href="' . $link . '1">Primeira Página</a>';
        for ($i = $pag - $maxlinks; $i <= $pag - 1; $i++) {
            if ($i >= 1) {
                echo '<a href="' . $link . $i . '">' . $i . '</a>&nbsp;&nbsp;&nbsp;';
            }
        }
        echo '<span class="atv">' . $pag . '</span>&nbsp;&nbsp;&nbsp;';
        for ($i = $pag + 1; $i <= $pag + $maxlinks; $i++) {
            if ($i <= $paginas) {
                echo '<a href="' . $link . $i . '">' . $i . '</a>&nbsp;&nbsp;&nbsp;';
            }
        }
        echo '<a href="' . $link . $paginas . '">Última Página</a>';
        echo '</div><!-- /paginator -->';
    }
}

/* * ***************************
  GERA NUMERO DE MATRICULA
 * *************************** */

function nMatricula($tabela, $coluna, $casas) {
    $lerAlunos = ler($tabela);
    $contAlunos = mysql_num_rows($lerAlunos);
    $nMatricula = date("Ym");
    if ($contAlunos == 0) {
        $sequencia = $contAlunos + 1;
        $nMatricula .= str_pad($sequencia, $casas, "0", STR_PAD_LEFT);
    } elseif ($contAlunos != 0) {
        $maiorAluno = ler($tabela, "max({$coluna})");
        $maiorMatricula = mysql_fetch_array($maiorAluno);
        $nMatricula = $maiorMatricula[0] + 1;
    }
    return $nMatricula;
}

/* * ***************************
  GERA NUMERO DE INSCRIÇÃO
 * *************************** */

//function matricula($tabela, $coluna, $casas) {
function matricula($tabela, $casas) {
    $lerAlunos = ler($tabela);
    $contAlunos = $lerAlunos->rowCount();
    //    if ($contAlunos == 0) {
    $sequencia = $contAlunos + 1;
    $nMatricula = str_pad($sequencia, $casas, "0", STR_PAD_LEFT);
    //    } elseif ($contAlunos != 0) {
    //        $maiorAluno = ler($tabela, "max({$coluna})");
    //        $maiorMatricula = $maiorAluno->fetchAll(PDO::FETCH_ASSOC);
    //        $sequencia = $maiorMatricula + 1;
    //        $nMatricula = str_pad($sequencia, $casas, "0", STR_PAD_LEFT);
    //    }
    return date("Y", time()) . $nMatricula;
}

/* * ***************************
  GERA NUMERO DE CONTRATO
 * *************************** */

//function matricula($tabela, $coluna, $casas) {
function nContrato($tabela, $casas) {
    $contratos = ler($tabela)->rowCount();
    $sequencia = $contratos + 1;
    $nContato = str_pad($sequencia, $casas, "0", STR_PAD_LEFT);
    $ano = date("Y", time());
    $mes = date("m", time());
    return $ano . $mes . $nContato;
}

/* * ***************************
  REDIMENTIONAR IMAGENS
 * *************************** */

function redimencionar($imagem, $largura, $pasta, $name) {
    if ($imagem['type'] == "image/jpeg") {
        $img = imagecreatefromjpeg($imagem['tmp_name']);
    } else if ($imagem['type'] == "image/gif") {
        $img = imagecreatefromgif($imagem['tmp_name']);
    } else if ($imagem['type'] == "image/png") {
        $img = imagecreatefrompng($imagem['tmp_name']);
    }
    @$x = imagesx($img);
    @$y = imagesy($img);
    @$autura = ($largura * $y) / $x;
    @$nova = imagecreatetruecolor($largura, $autura);
    @imagecopyresampled($nova, $img, 0, 0, 0, 0, $largura, $autura, $x, $y);
    if ($imagem['type'] == "image/jpeg") {
        @$local = "$pasta/$name" . ".jpg";
        imagejpeg($nova, $local);
    } else if ($imagem['type'] == "image/gif") {
        @$local = "$pasta/$name" . ".gif";
        imagejpeg($nova, $local);
    } else if ($imagem['type'] == "image/png") {
        @$local = "$pasta/$name" . ".png";
        imagejpeg($nova, $local);
    }
    @imagedestroy($img);
    @imagedestroy($nova);
    return @$local;
}

function tiraMascara($dado) {
    $semMascara = preg_replace("/\D+/", "", $dado);
    return $semMascara;
}

function MascaraCPF($dado) {
    $mascaraCPF = substr($dado, 0, 3) . "." . substr($dado, 3, 3) . "." . substr($dado, 6, 3) . "-" . substr($dado, -2);
    return $mascaraCPF;
}

function MascaraCNPJ($dado) {
    $mascaraCPF = substr($dado, 0, 2) . "." . substr($dado, 2, 3) . "." . substr($dado, 5, 3) . "/" . substr($dado, 8, 4) . "-" . substr($dado, -2);
    return $mascaraCPF;
}

function MascaraPIS($dado) {
    $mascaraPIS = substr($dado, 0, 3) . "." . substr($dado, 3, 4) . "." . substr($dado, 7, 3) . "-" . substr($dado, -1);
    return $mascaraPIS;
}

function formatMoeda($dado) {
    return number_format($dado, 2, ',', '.');
}

function SomarData($data, $dias, $meses, $ano) {
    //passe a data no formato dd/mm/yyyy
    $data = explode("/", $data);
    $newData = date("d/m/Y", mktime(0, 0, 0, $data[1] + $meses, $data[0] + $dias, $data[2] + $ano));
    return $newData;
}

function valorPorExtenso($valor = 0) {
    $singular = array("centavo", "real", "mil", "milhão", "bilhão", "trilhão", "quatrilhão");
    $plural = array("centavos", "reais", "mil", "milhões", "bilhões", "trilhões", "quatrilhões");
    $c = array("", "cem", "duzentos", "trezentos", "quatrocentos", "quinhentos", "seiscentos", "setecentos", "oitocentos", "novecentos");
    $d = array("", "dez", "vinte", "trinta", "quarenta", "cinquenta", "sessenta", "setenta", "oitenta", "noventa");
    $d10 = array("dez", "onze", "doze", "treze", "quatorze", "quinze", "dezesseis", "dezesete", "dezoito", "dezenove");
    $u = array("", "um", "dois", "três", "quatro", "cinco", "seis", "sete", "oito", "nove");
    $z = 0;
    $valor = number_format($valor, 2, ".", ".");
    $inteiro = explode(".", $valor);
    for ($i = 0; $i < count($inteiro); $i++) {
        for ($ii = strlen($inteiro[$i]); $ii < 3; $ii++) {
            $inteiro[$i] = "0" . $inteiro[$i];
        }
    }

    // $fim identifica onde que deve se dar junção de centenas por "e" ou por "," ;)
    $fim = count($inteiro) - ($inteiro[count($inteiro) - 1] > 0 ? 1 : 2);
    for ($i = 0; $i < count($inteiro); $i++) {
        $valor = $inteiro[$i];
        $rc = (($valor > 100) && ($valor < 200)) ? "cento" : $c[$valor[0]];
        $rd = ($valor[1] < 2) ? "" : $d[$valor[1]];
        $ru = ($valor > 0) ? (($valor[1] == 1) ? $d10[$valor[2]] : $u[$valor[2]]) : "";
        $r = $rc . (($rc && ($rd || $ru)) ? " e " : "") . $rd . (($rd && $ru) ? " e " : "") . $ru;
        $t = count($inteiro) - 1 - $i;
        $r .= $r ? " " . ($valor > 1 ? $plural[$t] : $singular[$t]) : "";
        if ($valor == "000") {
            $z++;
        } elseif ($z > 0) {
            $z--;
        }

        if (($t == 1) && ($z > 0) && ($inteiro[0] > 0)) {
            $r .= (($z > 1) ? " de " : "") . $plural[$t];
        }

        if ($r) {
            $rt = $rt . ((($i > 0) && ($i <= $fim) && ($inteiro[0] > 0) && ($z < 1)) ? (($i < $fim) ? ", " : " e ") : " ") . $r;
        }
    }
    return ($rt ? $rt : "zero");
}

function valorPorExtensoDois($valor = 0, $bolExibirMoeda = true, $bolPalavraFeminina = false) {
    // $valor = self::removerFormatacaoNumero( $valor );
    $singular = null;
    $plural = null;
    if ($bolExibirMoeda) {
        $singular = array("centavo", "real", "mil", "milhão", "bilhão", "trilhão", "quatrilhão");
        $plural = array("centavos", "reais", "mil", "milhões", "bilhões", "trilhões", "quatrilhões");
    } else {
        $singular = array("", "", "mil", "milhão", "bilhão", "trilhão", "quatrilhão");
        $plural = array("", "", "mil", "milhões", "bilhões", "trilhões", "quatrilhões");
    }
    $c = array("", "cem", "duzentos", "trezentos", "quatrocentos", "quinhentos", "seiscentos", "setecentos", "oitocentos", "novecentos");
    $d = array("", "dez", "vinte", "trinta", "quarenta", "cinquenta", "sessenta", "setenta", "oitenta", "noventa");
    $d10 = array("dez", "onze", "doze", "treze", "quatorze", "quinze", "dezesseis", "dezesete", "dezoito", "dezenove");
    $u = array("", "um", "dois", "três", "quatro", "cinco", "seis", "sete", "oito", "nove");
    if ($bolPalavraFeminina) {
        if ($valor == 1) {
            $u = array("", "uma", "duas", "três", "quatro", "cinco", "seis", "sete", "oito", "nove");
        } else {
            $u = array("", "um", "duas", "três", "quatro", "cinco", "seis", "sete", "oito", "nove");
        }
        $c = array("", "cem", "duzentas", "trezentas", "quatrocentas", "quinhentas", "seiscentas", "setecentas", "oitocentas", "novecentas");
    }
    $z = 0;
    $valor = number_format($valor, 2, ".", ".");
    $inteiro = explode(".", $valor);
    for ($i = 0; $i < count($inteiro); $i++) {
        for ($ii = mb_strlen($inteiro[$i]); $ii < 3; $ii++) {
            $inteiro[$i] = "0" . $inteiro[$i];
        }
    }

    // $fim identifica onde que deve se dar junção de centenas por "e" ou por "," ;)
    $rt = null;
    $fim = count($inteiro) - ($inteiro[count($inteiro) - 1] > 0 ? 1 : 2);
    for ($i = 0; $i < count($inteiro); $i++) {
        $valor = $inteiro[$i];
        $rc = (($valor > 100) && ($valor < 200)) ? "cento" : $c[$valor[0]];
        $rd = ($valor[1] < 2) ? "" : $d[$valor[1]];
        $ru = ($valor > 0) ? (($valor[1] == 1) ? $d10[$valor[2]] : $u[$valor[2]]) : "";
        $r = $rc . (($rc && ($rd || $ru)) ? " e " : "") . $rd . (($rd && $ru) ? " e " : "") . $ru;
        $t = count($inteiro) - 1 - $i;
        $r .= $r ? " " . ($valor > 1 ? $plural[$t] : $singular[$t]) : "";
        if ($valor == "000") {
            $z++;
        } elseif ($z > 0) {
            $z--;
        }

        if (($t == 1) && ($z > 0) && ($inteiro[0] > 0)) {
            $r .= (($z > 1) ? " de " : "") . $plural[$t];
        }

        if ($r) {
            $rt = $rt . ((($i > 0) && ($i <= $fim) && ($inteiro[0] > 0) && ($z < 1)) ? (($i < $fim) ? ", " : " e ") : " ") . $r;
        }
    }
    $rt = mb_substr($rt, 1);
    return ($rt ? trim($rt) : "zero");
}