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
