//
//  GrupoViewController.m
//  Copa2014
//
//  Created by Helber Weslley Catarina on 16/01/14.
//  Copyright (c) 2014 hei. All rights reserved.
//

#import "GrupoViewController.h"

@interface GrupoViewController ()

@end

@implementation GrupoViewController
@synthesize grupo, lblTeste, fundo;
@synthesize lblDataLocal1, lblDataLocal2, lblDataLocal3, lblDataLocal4, lblDataLocal5, lblDataLocal6;
@synthesize lblSelecao01, lblSelecao02, lblSelecao03, lblSelecao04, lblSelecao05, lblSelecao06;
@synthesize lblSelecao11, lblSelecao12, lblSelecao13, lblSelecao14, lblSelecao15, lblSelecao16;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)abrirPList {
    NSString *plistFile = [[NSBundle mainBundle] pathForResource:@"grupos" ofType:@"plist"];
    dict = [NSDictionary dictionaryWithContentsOfFile:plistFile];
    NSLog(@"%@", dict);
}

- (void) carregarDadosNaTela {
    
    //Jogo 1
    self.lblSelecao01.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:0] objectForKey:@"esquerda"];
    self.lblSelecao11.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:0] objectForKey:@"direita"];
    self.lblDataLocal1.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:0] objectForKey:@"dataLocal"];
    
    //Jogo 2
    self.lblSelecao02.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:1] objectForKey:@"esquerda"];
    self.lblSelecao12.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:1] objectForKey:@"direita"];
    self.lblDataLocal2.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:1] objectForKey:@"dataLocal"];
    //self.lblDataLocal2.text =
    
    //Jogo 3
    self.lblSelecao03.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:2] objectForKey:@"esquerda"];
    self.lblSelecao13.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:2] objectForKey:@"direita"];
    self.lblDataLocal3.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:2] objectForKey:@"dataLocal"];
    
    //Jogo 4
    self.lblSelecao04.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:3] objectForKey:@"esquerda"];
    self.lblSelecao14.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:3] objectForKey:@"direita"];
    self.lblDataLocal4.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:3] objectForKey:@"dataLocal"];
    
    //Jogo 5
    self.lblSelecao05.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:4] objectForKey:@"esquerda"];
    self.lblSelecao15.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:4] objectForKey:@"direita"];
    self.lblDataLocal5.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:4] objectForKey:@"dataLocal"];
    
    //Jogo 6
    self.lblSelecao06.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:5] objectForKey:@"esquerda"];
    self.lblSelecao16.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:5] objectForKey:@"direita"];
    self.lblDataLocal6.text = [[[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"jogos"] objectAtIndex:5] objectForKey:@"dataLocal"];
    
    //Seleções
    /*self.lblClassificacaoSelecao0.text = [[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"pontuacao"] objectAtIndex:0];
    self.lblClassificacaoSelecao1.text = [[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"pontuacao"] objectAtIndex:1];
    self.lblClassificacaoSelecao2.text = [[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"pontuacao"] objectAtIndex:2];
    self.lblClassificacaoSelecao3.text = [[[[dict objectForKey:@"grupos"] objectForKey:grupo] objectForKey:@"pontuacao"] objectAtIndex:3];
    */
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //Metodo para definir a tela de fundo para iPhone 3.5 e 4 polegadas

    NSLog(@"%f",[UIScreen mainScreen].bounds.size.height);
    NSLog(@"%@",fundo);
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:fundo]]];
    
    //Alterar posicao de labels de acordo com tamanho da tela
//    if ([UIScreen mainScreen].bounds.size.height < 560.0f) {


//  }
//    else {
//        self.lblTeste.autoresizingMask = UIViewAutoresizingNone;
//        self.lblTeste.frame = CGRectMake(20, 200, 280, 21);
//        self.lblTeste.text = @"teste2";
//    }
    [self.view frame];
    [self abrirPList];
    [self carregarDadosNaTela];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
