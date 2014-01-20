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

- (NSString *)getFilePath
{
    NSArray *userDomainPaths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, TRUE);
    NSString *documentsDir = [userDomainPaths objectAtIndex:0];
    return [documentsDir stringByAppendingFormat:@"grupos.plist"];
}

- (void)getInfo
{
    NSLog(@"teste2");
    NSString *filePath = [self getFilePath];
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
        
        NSDictionary *dic = [[NSDictionary alloc] initWithContentsOfFile:filePath];
        NSLog(@"teste3");
        NSLog(@"%@",dic);
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@"teste");
    self.lblTeste.text = teste;
    [self getInfo];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
