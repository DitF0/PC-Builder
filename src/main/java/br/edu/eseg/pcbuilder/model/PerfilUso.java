package br.edu.eseg.pcbuilder.model;

public enum PerfilUso {

    GAMER("🎮 Gamer",
            "Máximo desempenho em jogos. GPU poderosa, CPU rápida e RAM de alta frequência."),

    TRABALHO("💼 Trabalho / Escritório",
            "Estabilidade e custo-benefício. Componentes eficientes para uso cotidiano."),

    CRIACAO("🎬 Criação de Conteúdo",
            "Edição de vídeo e renderização. Muitos núcleos de CPU e armazenamento rápido."),

    CIENTIFICO("⚗️ Workstation Científica",
            "Machine learning e simulações. CPU e RAM máximas, sem compromisso de custo."),

    MISTO("🎯 Gamer + Trabalho",
            "Equilíbrio entre desempenho e produtividade. Melhor custo-benefício geral.");

    private final String label;
    private final String descricao;

    PerfilUso(String label, String descricao) {
        this.label = label;
        this.descricao = descricao;
    }

    public String getLabel() {
        return label;
    }

    public String getDescricao() {
        return descricao;
    }
}