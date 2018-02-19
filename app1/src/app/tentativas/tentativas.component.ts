import { Component, OnInit, Input, OnChanges} from '@angular/core';
import { Coracao } from '../shared/coracao.model'

@Component({
  selector: 'app-tentativas',
  templateUrl: './tentativas.component.html',
  styleUrls: ['./tentativas.component.css']
})
export class TentativasComponent implements OnInit, OnChanges {

   @Input() public tentativas: number

  public coracoes: Coracao[] = [
        new Coracao(true),  new Coracao(true), new Coracao(true)       //Instancia um array de corações cheios
  ]

  constructor() {
     console.log(this.coracoes)
     
   }

   ngOnChanges(){

    if(this.tentativas !== this.coracoes.length){
      let indice = this.coracoes.length - this.tentativas        //esse trecho controla as tentativas 
       this.coracoes[indice - 1].cheio = false
    }
     console.log('tentativas recebidas do painel:', this.tentativas)
   }

  ngOnInit() {

    
  }

}
