import { Component, OnInit } from '@angular/core';
import { Categoria } from 'src/app/model/Categoria';
import { CategoriaService } from 'src/app/services/categoria.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  lista: Categoria[]|undefined;

  constructor(private service: CategoriaService) { }

  ngOnInit(): void {
      this.service.getAllCategoria()
                          .subscribe((res: Categoria[]|any) => this.lista = res);
  }

}
