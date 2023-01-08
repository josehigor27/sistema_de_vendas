import { Categoria } from "./Categoria";

export class Produto{
    public id?:number;
    public nome?:string;
    public detalhe?:string;
    public linkFoto?:string;
    public precoProduto?:number;
    public categoria?:Categoria;
    public disponivel?:number;
    
}
