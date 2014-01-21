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
    NSLog(@"teste");
    NSString *plistFile = [[NSBundle mainBundle] pathForResource:@"grupos" ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:plistFile];
    NSLog(@"%@", dict);
    self.lblTime1.text = [[[[dict objectForKey:@"grupos"] objectForKey:@"a"] objectForKey:@"selecoes"] objectAtIndex:0];
    self.lblTeste.text = teste;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
