//
//  GHWViewController.m
//  GHWPodDemo
//
//  Created by guohongwei719 on 08/21/2019.
//  Copyright (c) 2019 guohongwei719. All rights reserved.
//

#import "GHWViewController.h"
#import <GHWExport.h>
@interface GHWViewController ()

@end

@implementation GHWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    [[GHWExport sharedInstance] testFail];
}

__attribute__((constructor))
void premain() {
    [[GHWExport sharedInstance] executeArrayForKey:@"pre_main"];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
