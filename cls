[33mcommit a2aa1a93af6dd2fcc28f2ad222b5098f5ea2483d[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: Edenizia <edeniziacost@gmail.com>
Date:   Tue Feb 6 16:54:34 2018 -0200

    Implementações até dia 05/02

[1mdiff --git a/app1/src/app/painel/painel.component.html b/app1/src/app/painel/painel.component.html[m
[1mindex c84bfe0..cb9a407 100644[m
[1m--- a/app1/src/app/painel/painel.component.html[m
[1m+++ b/app1/src/app/painel/painel.component.html[m
[36m@@ -13,13 +13,13 @@[m
 [m
         <div class="col">[m
            <h6>{{instrucao}}</h6> [m
[31m-           <p>{{frases[0].fraseEng}}</p>[m
[32m+[m[32m           <p>{{rodadaFrase.fraseEng}}</p>[m
 [m
             <div class="form-group">[m
                  <textarea [m
                     class="form-control" [m
                     rows="3"[m
[31m-                    (input)='atualizaResposta()'[m
[32m+[m[32m                    (input)='atualizaResposta($event)'[m
                 ></textarea>[m
             </div>[m
         </div>[m
[36m@@ -27,7 +27,7 @@[m
         <div class="row">[m
             <div class="col">[m
                     <div class="d-flex justify-content-end">[m
[31m-                            <button type="button" class="btn btn-primary">Verificar</button>[m
[32m+[m[32m                            <button type="button" class="btn btn-primary" (click)="verificarResposta()">Verificar</button>[m
                     </div>[m
            </div>[m
         </div>[m
[1mdiff --git a/app1/src/app/painel/painel.component.ts b/app1/src/app/painel/painel.component.ts[m
[1mindex 3d571b2..41e89ff 100644[m
[1m--- a/app1/src/app/painel/painel.component.ts[m
[1m+++ b/app1/src/app/painel/painel.component.ts[m
[36m@@ -12,15 +12,36 @@[m [mexport class PainelComponent implements OnInit {[m
 [m
    public frases: Frase[] = FRASES[m
    public instrucao: string = 'Traduza a Frase:'[m
[32m+[m[32m   public resposta: string[m
 [m
[31m-   constructor() {console.log(this.frases) }[m
[32m+[m[32m   public rodada: number = 0[m
[32m+[m[32m   public rodadaFrase: Frase[m
[32m+[m
[32m+[m[32m   constructor(){[m
[32m+[m[32m     this.rodadaFrase = this.frases[this.rodada][m
[32m+[m[32m     console.log(this.rodadaFrase)[m
[32m+[m[32m   }[m
 [m
   ngOnInit() {[m
   }[m
 [m
 [m
[31m- public atualizaResposta(): void{[m
[31m-      console.log('teste')[m
[32m+[m[32m public atualizaResposta(resposta: Event): void{[m
[32m+[m[32m      this.resposta =(<HTMLInputElement>resposta.target).value[m
[32m+[m[32m      //console.log(this.resposta)[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m  public verificarResposta(): void{[m
[32m+[m
[32m+[m[32m        //trocar pergunda da rodada[m
[32m+[m[32m        this.rodada++[m
[32m+[m[41m        [m
[32m+[m[32m        console.log(this.resposta)[m
[32m+[m[32m        this.rodadaFrase = this.frases[this.rodada][m
[32m+[m[32m        console.log(this.rodadaFrase)[m
[32m+[m
[32m+[m[41m        [m
[32m+[m[41m        [m
   }[m
 [m
 }[m
