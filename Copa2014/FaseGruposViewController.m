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
        telaGrupo.fundo = @"imgGrupoA";
    } else if ([segue.identifier isEqualToString:@"grupoD"]) {
        GrupoViewController *telaGrupo = segue.destinationViewController;
        telaGrupo.grupo = @"d";
        telaGrupo.fundo = @"imgGrupoA";
    } else if ([segue.identifier isEqualToString:@"grupoE"]) {
        GrupoViewController *telaGrupo = segue.destinationViewController;
        telaGrupo.grupo = @"e";
        telaGrupo.fundo = @"imgGrupoE";
    } else if ([segue.identifier isEqualToString:@"grupoF"]) {
        GrupoViewController *telaGrupo = segue.destinationViewController;
        telaGrupo.grupo = @"F";
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
