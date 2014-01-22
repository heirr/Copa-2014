//
//  GrupoViewController.h
//  Copa2014
//
//  Created by Helber Weslley Catarina on 16/01/14.
//  Copyright (c) 2014 hei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GrupoViewController : UIViewController {
    NSDictionary    *dict;
}

@property (nonatomic, retain) IBOutlet UILabel *lblTeste;
@property (nonatomic, retain) IBOutlet UILabel *lblTime1;
@property (nonatomic, strong) NSString *grupo;


//Labels dos Jogos da Fase de Grupos Seleção/Jogo
//Jogo 1
@property (nonatomic, retain) IBOutlet UILabel *lblDataLocal1;
@property (nonatomic, retain) IBOutlet UILabel *lblSelecao01;
@property (nonatomic, retain) IBOutlet UILabel *lblSelecao11;

//Jogo 2
@property (nonatomic, retain) IBOutlet UILabel *lblDataLocal2;
@property (nonatomic, retain) IBOutlet UILabel *lblSelecao02;
@property (nonatomic, retain) IBOutlet UILabel *lblSelecao12;

//Jogo 3
@property (nonatomic, retain) IBOutlet UILabel *lblDataLocal3;
@property (nonatomic, retain) IBOutlet UILabel *lblSelecao03;
@property (nonatomic, retain) IBOutlet UILabel *lblSelecao13;

//Jogo 4
@property (nonatomic, retain) IBOutlet UILabel *lblDataLocal4;
@property (nonatomic, retain) IBOutlet UILabel *lblSelecao04;
@property (nonatomic, retain) IBOutlet UILabel *lblSelecao14;

//Jogo 5
@property (nonatomic, retain) IBOutlet UILabel *lblDataLocal5;
@property (nonatomic, retain) IBOutlet UILabel *lblSelecao05;
@property (nonatomic, retain) IBOutlet UILabel *lblSelecao15;

//Jogo 6
@property (nonatomic, retain) IBOutlet UILabel *lblDataLocal6;
@property (nonatomic, retain) IBOutlet UILabel *lblSelecao06;
@property (nonatomic, retain) IBOutlet UILabel *lblSelecao16;






@end
