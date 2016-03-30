package modelo;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author marcelosiedler
 */
public class Produto {
    
    private String nome;
    private Double preco;
    private Integer unidades;
    private Boolean disponivel;
    private Double taxaInstalacao;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }

    public Integer getUnidades() {
        return unidades;
    }

    public void setUnidades(Integer unidades) {
        this.unidades = unidades;
    }

    public Boolean isDisponivel() {
        return disponivel;
    }

    public void setDisponivel(Boolean disponivel) {
        this.disponivel = disponivel;
    }

    public Double getTaxaInstalacao() {
        return taxaInstalacao;
    }

    public void setTaxaInstalacao(Double taxaInstalacao) {
        this.taxaInstalacao = taxaInstalacao;
    }
    
    
    public Double retornarCustoTotal()
    {
        return this.preco + this.taxaInstalacao;
    
    }
    
   
    
    
    
}
