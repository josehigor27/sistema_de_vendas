package br.com.josehigor.sistemavendas.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="tbl_item_pedido")
public class ItemPedido {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column(name="id_num_pedido")
	private Integer id;
	
	@Column(name="qtd_item")
	private Integer qtdItem;
	
	@Column(name="preco_unitario")
	private Double precoUnitario;
	
	@Column(name="preco_total")
	private Double precoTotal; 
	
	@ManyToOne
	@JoinColumn(name="id_produto")
	private Produto produto;
	
	@ManyToOne
	@JoinColumn(name="id_pedido")
	@JsonIgnoreProperties("itensPedido")//referencia ciclica
	private Pedido pedido;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getQtdItem() {
		return qtdItem;
	}

	public void setQtdItem(Integer qtdItem) {
		this.qtdItem = qtdItem;
	}

	public Double getPrecoUnitario() {
		return precoUnitario;
	}

	public void setPrecoUnitario(Double precoUnitario) {
		this.precoUnitario = precoUnitario;
	}

	public Double getPrecoTotal() {
		return precoTotal;
	}

	public void setPrecoTotal(Double precoTotal) {
		this.precoTotal = precoTotal;
	}

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

	public Pedido getPedido() {
		return pedido;
	}

	public void setPedido(Pedido pedido) {
		this.pedido = pedido;
	}
	
	
	

}
