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
@synthesize teste, lblTeste;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //Metodo para definir a tela de fundo para iPhone 3.5 e 4 polegadas
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"imgTelaGrupos"]]];
    NSLog(@"%f",[UIScreen mainScreen].bounds.size.height);
    
    //Alterar posicao de labels de acordo com tamanho da tela
    if ([UIScreen mainScreen].bounds.size.height < 560.0f) {
        self.lblTeste.autoresizingMask = UIViewAutoresizingNone;
        self.lblTeste.frame = CGRectMake(10, 10, 280, 21);
        self.lblTeste.text  = @"teste1";
        [self.view frame];
    }
    else {
        self.lblTeste.autoresizingMask = UIViewAutoresizingNone;
        self.lblTeste.frame = CGRectMake(20, 200, 280, 21);
        self.lblTeste.text = @"teste2";
        [self.view frame];
    }
    //
    NSLog(@"teste");
    NSString *plistFile = [[NSBundle mainBundle] pathForResource:@"grupos" ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:plistFile];
    NSLog(@"%@", dict);
    self.lblTime1.text = [[[[dict objectForKey:@"grupos"] objectForKey:@"a"] objectForKey:@"selecoes"] objectAtIndex:0];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
