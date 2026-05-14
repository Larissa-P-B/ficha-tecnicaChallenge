const API = "http://localhost:8085/api/veiculos";

// ================= ESPECIFICACOES =================
function montarEspecificacoes(prefix = "") {
    const specs = {
        motor: document.getElementById(prefix + "motor")?.value,
        potencia: document.getElementById(prefix + "potencia")?.value,
        torque_max: document.getElementById(prefix + "torque_max")?.value,
        transmissao: document.getElementById(prefix + "transmissao")?.value,
        tracao: document.getElementById(prefix + "tracao")?.value,
        amortecedores: document.getElementById(prefix + "amortecedores")?.value,
        aceleracao_0_100: document.getElementById(prefix + "aceleracao_0_100")?.value,
        modos_conducao: document.getElementById(prefix + "modos_conducao")?.value,
        modos_volante: document.getElementById(prefix + "modos_volante")?.value,
        modos_escapamento: document.getElementById(prefix + "modos_escapamento")?.value,
        modos_amortecedor: document.getElementById(prefix + "modos_amortecedor")?.value,
        farois: document.getElementById(prefix + "farois")?.value,
        rodas_pneus: document.getElementById(prefix + "rodas_pneus")?.value,
        preco: document.getElementById(prefix + "preco")?.value
    };

    return Object.fromEntries(
        Object.entries(specs).filter(([_, v]) => v && v.trim() !== "")
    );
}

// ================= CREATE =================
async function criar() {

    const body = {
        marca: marca.value,
        modelo: modelo.value,
        versao: versao.value,
        especificacoes: montarEspecificacoes()
    };

    await fetch(API, {
        method: "POST",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify(body)
    });

    alert("Cadastrado!");
    listar();
}

// ================= LIST =================
async function listar(page = 0) {

    const res = await fetch(`${API}?page=${page}&size=5`);
    const data = await res.json();

    const tbody = document.querySelector("#tabela tbody");
    tbody.innerHTML = "";

    data.content.forEach(v => {
        tbody.innerHTML += `
            <tr>
                <td>${v.id}</td>
                <td>${v.marca}</td>
                <td>${v.modelo}</td>
                <td>${v.versao}</td>
                <td>
                    <button onclick="editar(${v.id})">Editar</button>
                    <button onclick="deletarDireto(${v.id})">Excluir</button>
                </td>
            </tr>
        `;
    });
}

// ================= EDIT =================
async function editar(id) {

    const res = await fetch(`${API}/${id}`);
    const v = await res.json();

    idUpdate.value = v.id;
    marcaUpdate.value = v.marca;
    modeloUpdate.value = v.modelo;
    versaoUpdate.value = v.versao;

    for (let key in v.especificacoes) {
        const campo = document.getElementById(key + "Update");
        if (campo) campo.value = v.especificacoes[key];
    }
}

// ================= UPDATE =================
async function atualizar() {

    const id = idUpdate.value;

    const body = {
        marca: marcaUpdate.value,
        modelo: modeloUpdate.value,
        versao: versaoUpdate.value,
        especificacoes: montarEspecificacoes("Update")
    };

    await fetch(`${API}/${id}`, {
        method: "PUT",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify(body)
    });

    alert("Atualizado!");
    listar();
}

// ================= DELETE =================
async function deletar() {
    await fetch(`${API}/${idDelete.value}`, { method: "DELETE" });
    listar();
}

async function deletarDireto(id) {
    await fetch(`${API}/${id}`, { method: "DELETE" });
    listar();
}

// ================= BUSCA =================
async function buscar() {

    const body = {
        marca: marcaBusca.value,
        modelo: modeloBusca.value,
        versao: versaoBusca.value,
        atributos: atributos.value.split(",")
    };

    const res = await fetch(`${API}/especificacoes`, {
        method: "POST",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify(body)
    });

    resultado.innerText = JSON.stringify(await res.json(), null, 2);
}

// ================= COMPARAÇÃO =================
async function comparar() {

    const attrs = attrCompare.value.split(",");

    const body = {
        veiculo1: {
            marca: m1.value,
            modelo: mo1.value,
            versao: v1.value,
            atributos: attrs
        },
        veiculo2: {
            marca: m2.value,
            modelo: mo2.value,
            versao: v2.value,
            atributos: attrs
        }
    };

    const res = await fetch(`${API}/comparar`, {
        method: "POST",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify(body)
    });

    resultadoComparacao.innerText =
        JSON.stringify(await res.json(), null, 2);
}