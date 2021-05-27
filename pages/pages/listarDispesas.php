<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Dispesas</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item"><a href="#">Financeiro</a></li>
          <li class="breadcrumb-item active">Dispesas</li>
        </ol>
      </div>
    </div>
  </div><!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">

  <!-- Default box -->
  <div class="card">
    <div class="card-header">
      <h3 class="card-title">Lista de Dispesas</h3>


      <div class="card-tools">
        <a href="" class="btn btn-tool text-primary" data-toggle="modal" data-target="#modal-novoUsuario">
          <i class="fa fa-plus-square fa-fw fa-lg"></i>
          <!-- <i class="fa fa-user-plus fa-fw fa-lg"></i> -->
          Nova Dispesas</a>
        <!-- <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip"
                             title="Collapse">
                             <i class="fas fa-minus"></i>ttt</button>
                         <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip"
                             title="Remove">
                             <i class="fas fa-times"></i></button> -->
      </div>
    </div>
    <div class="card-body">

      <table id="tabela" class="table table-sm table-striped table-hover ">
        <thead class="">
          <tr>
            <th class="col-md-auto text-center align-middle">
              <i class="mdi mdi-calendar-outline"></i>
              DATA
            </th>
            <th class="col-md-auto align-middle">
              <i class="mdi mdi-cash-minus"></i>
              DESCRIÇÃO DA DESPESA
            </th>
            <th class="col-md-auto text-center1 align-middle">
              <i class="mdi mdi-cash-multiple"></i>
              VALOR
            </th>
            <th class="col-md-auto text-center align-middle">
              <i class="mdi mdi-tag"></i>
              TIPO DESPESA
            </th>
            <th class="col-md-auto text-center align-middle">
              <i class="mdi mdi-hexagon-multiple-outline"></i>
              STATUS
            </th>
            <th class="col-md-auto text-center align-middle">
              <i class="fab fa-lg fa-fw fa-whmcs" title="Ações"></i>
            </th>
          </tr>
        </thead>
        <tbody>
          <?php
          $cont = 0;
          $ler = ler("despesa", '', "ORDER BY cadastroDespesa DESC");
          $listar = $ler->fetchAll(PDO::FETCH_ASSOC);
          foreach ($listar as $dados) {
            $cont = $cont + 1;
          ?>
          <tr>
            <td class="text-center align-middle">
              <?= date('d/m/Y', strtotime($dados['cadastroDespesa'])); ?>
            </td>

            <td class="text-uppercase align-middle">
              <?= $dados['descricaoDespesa'] ?>
            </td>

            <td class="text-center1 text-uppercase align-middle">
              R$ <?= formatMoedaBr($dados['vlDespesa']) ?>
            </td>
            <td class="text-center text-uppercase align-middle">
              <?= $dados['tipoDespesa'] ?>
            </td>
            <td class="text-center text-uppercase align-middle">
              <?= $dados['statusDespesa'] ?>
            </td>

            <td class="align-middle">

              <ul class="nav justify-content-center">

                <?php
                  switch ($_SESSION['NIVEL']) {
                    case '0':

                      echo "<li class=\"nav-item\">
    <a href=\"?page=viewUsuario&idEdit={$dados['idPessoaPaciente']}\" class=\"btn btn-tool\" target=\"\" title=\"Ver Dados\" rel=\"noopener noreferrer\">
      <i class=\"far fa-eye fa-lg\"></i>
    </a>
  </li>
 ";
                      break;
                      // case '2':
                      //     echo '<li class="nav-item">
                      //           <a href="" class="btn btn-tool" target="" title="Ver Dados do Usuário" rel="noopener noreferrer">
                      //             <i class="far fa-eye fa-lg"></i>
                      //           </a>
                      //         </li>
                      //         <li class="nav-item">
                      //           <a href="" class="btn btn-tool" target="" title="Editar Usuário" rel="noopener noreferrer">
                      //             <i class="far fa-edit fa-lg"></i>
                      //           </a>
                      //         </li>
                      //         ';
                      //     break;

                    default:
                      echo 'sem Permisão';
                      break;
                  }
                  ?>



              </ul>

              </ul>

            </td>
          </tr>
          <?php } ?>
        </tbody>
      </table>

    </div>
    <!-- /.card-body -->
    <div class="card-footer">
      <!-- Footer -->
    </div>
    <!-- /.card-footer-->
  </div>
  <!-- /.card -->
  <br />
</section>
<!-- /.content -->

<!-- modal -->
<div class="modal fade" id="modal-novoUsuario">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Novo Paciente</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <!-- form novo Usuário -->
        <form class="needs-validation" novalidate action="pages/pages/acoes/gravaNovoDispesa.php" method="POST"
          enctype="multipart/form-data">
          <div class="form-row">
            <div class="col-md-12 mb-3 ">
              <label for="descricaoDespesa">Dispesa</label>
              <input type="text" name="descricaoDespesa" class="form-control text-uppercase  " id="descricaoDespesa"
                placeholder="Despesa" value="" required>
              <div class="invalid-feedback">
                Obrigatório !
              </div>
            </div>
          </div>
          <div class="form-row">
            <div class="col-md-3 mb-3">
              <label for="vlDespesa">Valor Gasto</label>
              <input type="text" maxlength="12" name="vlDespesa" class="form-control text-uppercase js_dinheiro"
                id="vlDespesa" placeholder="Somente Números" required>
              <div class="invalid-feedback">
                Obrigatório !
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="tipoDespesa">Tipo de Despesa</label>
              <input type="text" name="tipoDespesa" class="form-control text-uppercase" id="tipoDespesa" placeholder=""
                required>
              <div class="invalid-feedback">
                Obrigatório !
              </div>
            </div>

            <div class="col-md-3 mb-3">
              <label for="statusDespesa">Status</label>
              <select class="form-control text-uppercase" required name="statusDespesa" id="statusDespesa">
                <option value="Pago">Pago</option>
                <option value="Agendado">Agendado</option>
              </select>
              <div class="invalid-feedback">
                Obrigatório !
              </div>
            </div>

          </div>


      </div>
      <div class="modal-footer justify-content-between">
        <input type="hidden" name="gravar" value="gravar">
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fas fa-times fa-fw fa-lg"></i>
          Fechar </button>
        <button class="btn btn-primary" type="submit">
          <i class="far fa-save fa-fw fa-lg"></i>
          Gravar Dados</button>
        </form>
        <!--/form novo Usuario -->
        <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
      </div>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<script type="text/javascript"
  src="https://cdn.datatables.net/v/bs4/jq-3.3.1/dt-1.10.20/b-1.6.1/b-html5-1.6.1/b-print-1.6.1/r-2.2.3/datatables.min.js">
</script>

<script src="./dist/js/app.js"></script>

<script>
document.getElementById('caixaMenu').classList.add("menu-open");
//document.getElementById('gestaoMenuActive').classList.add("active");
document.getElementById('dispesaActiva').classList.add("active");

// DATATABLE
// $(".table").DataTable({
//   responsive: true,
//   bLengthChange: false,
//   pageLength: 20,
//   bInfo: true,
//   bFilter: true,
//   bSort: false,
//   language: {
//     url: "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Portuguese-Brasil.json"
//   }
// });

// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();

// Adicionando Javascript
function limpa_formulário_cep() {
  //Limpa valores do formulário de cep.
  document.getElementById("logradouro").value = "";
  document.getElementById("bairro").value = "";
  document.getElementById("cidade").value = "";
  document.getElementById("estado").value = "";
  // document.getElementById("ibge").value = "";
}

function meu_callback(conteudo) {
  if (!("erro" in conteudo)) {
    //Atualiza os campos com os valores.
    document.getElementById("logradouro").value =
      conteudo.logradouro;
    document.getElementById("bairro").value =
      conteudo.bairro;
    document.getElementById("cidade").value =
      conteudo.localidade;
    document.getElementById("estado").value =
      conteudo.uf;
    //document.getElementById("ibge").value =
    //conteudo.ibge;
  } //end if.
  else {
    //CEP não Encontrado.
    limpa_formulário_cep();
    alert("CEP não encontrado.");
  }
}

function pesquisacep(valor) {
  //Nova variável "cep" somente com dígitos.
  var cep = valor.replace(/\D/g, "");

  //Verifica se campo cep possui valor informado.
  if (cep != "") {
    //Expressão regular para validar o CEP.
    var validacep = /^[0-9]{8}$/;

    //Valida o formato do CEP.
    if (validacep.test(cep)) {
      //Preenche os campos com "..." enquanto consulta webservice.
      document.getElementById("logradouro").value =
        "...";
      document.getElementById("bairro").value = "...";
      document.getElementById("cidade").value = "...";
      document.getElementById("estado").value = "...";
      //document.getElementById("ibge").value = "...";

      //Cria um elemento javascript.
      var script = document.createElement("script");

      //Sincroniza com o callback.
      script.src =
        "https://viacep.com.br/ws/" +
        cep +
        "/json/?callback=meu_callback";

      //Insere script no documento e carrega o conteúdo.
      document.body.appendChild(script);
    } //end if.
    else {
      //cep é inválido.
      limpa_formulário_cep();
      alert("Formato de CEP inválido.");
    }
  } //end if.
  else {
    //cep sem valor, limpa formulário.
    limpa_formulário_cep();
  }
}
</script>