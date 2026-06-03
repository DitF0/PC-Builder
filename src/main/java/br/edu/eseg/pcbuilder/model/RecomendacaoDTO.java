package br.edu.eseg.pcbuilder.model;

import java.util.List;
import java.util.Map;

public class RecomendacaoDTO {

    private PerfilUso perfil;
    private String justificativa;
    private Double orcamentoMax;
    private Map<String, List<Componente>> componentesRecomendados;

    // Totais calculados da build sugerida automaticamente
    private Double totalEstimado;
    private Integer consumoEstimado;

    public PerfilUso getPerfil() {
        return perfil;
    }

    public void setPerfil(PerfilUso perfil) {
        this.perfil = perfil;
    }

    public String getJustificativa() {
        return justificativa;
    }

    public void setJustificativa(String justificativa) {
        this.justificativa = justificativa;
    }

    public Double getOrcamentoMax() {
        return orcamentoMax;
    }

    public void setOrcamentoMax(Double orcamentoMax) {
        this.orcamentoMax = orcamentoMax;
    }

    public Map<String, List<Componente>> getComponentesRecomendados() {
        return componentesRecomendados;
    }

    public void setComponentesRecomendados(Map<String, List<Componente>> c) {
        this.componentesRecomendados = c;
    }

    public Double getTotalEstimado() {
        return totalEstimado;
    }

    public void setTotalEstimado(Double totalEstimado) {
        this.totalEstimado = totalEstimado;
    }

    public Integer getConsumoEstimado() {
        return consumoEstimado;
    }

    public void setConsumoEstimado(Integer consumoEstimado) {
        this.consumoEstimado = consumoEstimado;
    }

    public String getTotalEstimadoFormatado() {
        if (totalEstimado == null) return "R$ 0,00";
        return String.format("R$ %,.2f", totalEstimado)
                .replace(",", "X").replace(".", ",").replace("X", ".");
    }
}