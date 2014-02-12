//
//  FaseGruposViewController.m
//  Copa2014
//
//  Created by Helber Weslley Catarina on 21/01/14.
//  Copyright (c) 2014 hei. All rights reserved.
//

#import "FaseGruposViewController.h"
#import "GrupoViewController.h"

@interface FaseGruposViewController ()

@end

@implementation FaseGruposViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"grupoA"]) {
       GrupoViewController *telaGrupo = segue.destinationViewController;
       telaGrupo.grupo = @"a";
       telaGrupo.fundo = @"imgGrupoA";
    } else if ([segue.identifier isEqualToString:@"grupoB"]) {
        GrupoViewController *telaGrupo = segue.destinationViewController;
        telaGrupo.grupo = @"b";
        telaGrupo.fundo = @"imgGrupoB";
    } else if ([segue.identifier isEqualToString:@"grupoC"]) {
        GrupoViewController *telaGrupo = segue.destinationViewController;
        telaGrupo.grupo = @"c";
        telaGrupo.fundo = @"imgGrupoC";
    } else if ([segue.identifier isEqualToString:@"grupoD"]) {
        GrupoViewController *telaGrupo = segue.destinationViewController;
        telaGrupo.grupo = @"d";
        telaGrupo.fundo = @"imgGrupoD";
    } else if ([segue.identifier isEqualToString:@"grupoE"]) {
        GrupoViewController *telaGrupo = segue.destinationViewController;
        telaGrupo.grupo = @"e";
        telaGrupo.fundo = @"imgGrupoE";
    } else if ([segue.identifier isEqualToString:@"grupoF"]) {
        GrupoViewController *telaGrupo = segue.destinationViewController;
        telaGrupo.grupo = @"f   ";
        telaGrupo.fundo = @"imgGrupoF";
    } else if ([segue.identifier isEqualToString:@"grupoG"]) {
        GrupoViewController *telaGrupo = segue.destinationViewController;
        telaGrupo.grupo = @"g";
        telaGrupo.fundo = @"imgGrupoG";
    } else if ([segue.identifier isEqualToString:@"grupoH"]) {
        GrupoViewController *telaGrupo = segue.destinationViewController;
        telaGrupo.grupo = @"h";
        telaGrupo.fundo = @"imgGrupoH";
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //Alterar posicao de labels de acordo com tamanho da tela
        if ([UIScreen mainScreen].bounds.size.height < 560.0f) {
    
            self.btnA.autoresizingMask = UIViewAutoresizingNone;
            self.btnA.frame = CGRectMake(60, 95, 60, 60);
            
            self.btnB.autoresizingMask = UIViewAutoresizingNone;
            self.btnB.frame = CGRectMake(200, 95, 60, 60);
            
            self.btnC.autoresizingMask = UIViewAutoresizingNone;
            self.btnC.frame = CGRectMake(60, 185, 60, 60);
            
            self.btnD.autoresizingMask = UIViewAutoresizingNone;
            self.btnD.frame = CGRectMake(200, 185, 60, 60);
            
            self.btnE.autoresizingMask = UIViewAutoresizingNone;
            self.btnE.frame = CGRectMake(60, 275, 60, 60);
            
            self.btnF.autoresizingMask = UIViewAutoresizingNone;
            self.btnF.frame = CGRectMake(200, 275, 60, 60);
            
            self.btnG.autoresizingMask = UIViewAutoresizingNone;
            self.btnG.frame = CGRectMake(60, 365, 60, 60);
            
            self.btnH.autoresizingMask = UIViewAutoresizingNone;
            self.btnH.frame = CGRectMake(200, 365, 60, 60);
        }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
