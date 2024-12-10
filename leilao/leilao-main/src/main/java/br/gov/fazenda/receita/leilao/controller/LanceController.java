package br.gov.fazenda.receita.leilao.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import br.gov.fazenda.receita.leilao.entity.Lance;
import br.gov.fazenda.receita.leilao.service.LanceService;
import io.swagger.v3.oas.annotations.Operation;

@RestController
@RequestMapping(value = "/lance")
@CrossOrigin
public class LanceController {

    @Autowired
    private LanceService service;

    @GetMapping(value = "/{id}")
    @Operation(summary = "BUSCAR LANCE", description = "BUSCAR LANCE POR ID", tags = {"/lance" })
    public Lance buscarLancePorId(@PathVariable("id") Long id) {
        return service.buscarLancePorId(id);
    }

    @PostMapping
    @Operation(summary = "INSERIR LANCE", description = "INSERIR NOVO LANCE", tags = {"/lance" })
    public Lance novoLance(@RequestBody Lance lance) {
        return service.novoLance(lance);
    }

    @PutMapping(value = "/{id}")
    @Operation(summary = "ATUALIZAR LANCE", description = "ATUALIZAR LANCE PELO ID", tags = {"/lance" })
    public ResponseEntity<Void> atualizarLance(@RequestBody Lance lance, @PathVariable Long id) {
        lance.setId(id);
        lance = service.atualizarLance(lance);
        return ResponseEntity.noContent().build();
    }

    @DeleteMapping(value = "/{id}")
    @Operation(summary = "EXCLUIR LANCE", description = "EXCLUIR LANCE PELO ID", tags = {"/lance" })
    public ResponseEntity<Void> excluirLance(@PathVariable Long id) {
        service.excluirLance(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping(value = "/item/{itemId}")
    @Operation(summary = "BUSCAR LANCES POR ITEM", description = "BUSCAR LANCES DE UM ITEM", tags = {"/lance" })
    public List<Lance> buscarLancesPorItem(@PathVariable("itemId") Long itemId) {
        return service.buscarLancesPorItem(itemId);
    }

    @GetMapping(value = "/usuario/{usuarioId}")
    @Operation(summary = "BUSCAR LANCES POR USUÁRIO", description = "BUSCAR LANCES DE UM USUÁRIO", tags = {"/lance" })
    public List<Lance> buscarLancesPorUsuario(@PathVariable("usuarioId") Long usuarioId) {
        return service.buscarLancesPorUsuario(usuarioId);
    }

    @GetMapping(value = "/todos")
    @Operation(summary = "BUSCAR TODOS LANCES", description = "BUSCAR TODOS LANCES ORDENADOS POR DATA", tags = {"/lance" })
    public List<Lance> buscarTodosLancesOrdenadosPorDataHora() {
        return service.buscarTodosLancesOrdenadosPorDataHora();
    }
}
