import { Component, OnInit } from '@angular/core';
import { Produto } from 'src/app/model/Produto';
import { ProdutoService } from 'src/app/services/produto.service';

@Component({
  selector: 'app-card',
  templateUrl: './card.component.html',
  styleUrls: ['./card.component.css']
})
export class CardComponent implements OnInit {

  public lista:Produto[]|undefined;

  constructor(private service: ProdutoService) { 
    console.log("Estou no construtor do componente");
  }

  ngOnInit(): void {
    console.log("Estou na inicialização do componente");
    this.service.getAllProduto()
                .subscribe((res: Produto[]|any) => this.lista = res);
  }
  
}
