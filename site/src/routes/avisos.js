var express = require("express");
var router = express.Router();

var avisoController = require("../controllers/avisoController");

router.get("/", function (req, res) {
    avisoController.testar(req, res);
});

router.get("/listar", function (req, res) {
    avisoController.listar(req, res);
});

router.get("/listar/:idPessoa", function (req, res) {
    avisoController.listarPorUsuario(req, res);
});

router.get("/pesquisar/:descricao", function (req, res) {
    avisoController.pesquisarDescricao(req, res);
});

router.get("/validar/:idPessoa", function (req, res) {
    avisoController.validar(req, res);
});

router.post("/publicar/:idPessoa", function (req, res) {
    avisoController.publicar(req, res);
});

router.put("/editar/:id", function (req, res) {
    avisoController.editar(req, res);
});

router.delete("/deletar/:id", function (req, res) {
    avisoController.deletar(req, res);
});

module.exports = router;