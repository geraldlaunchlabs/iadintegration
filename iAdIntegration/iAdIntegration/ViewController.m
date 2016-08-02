//
//  ViewController.m
//  iAdIntegration
//
//  Created by LLDM on 02/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    bannerView = [[ADBannerView alloc]initWithFrame: CGRectMake(0, 0, 320, 50)];
    bannerView.delegate = self;
    
    // Optional to set background color to clear color
    [bannerView setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview: bannerView];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - AdViewDelegates

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    NSLog(@"Error loading");
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner {
    NSLog(@"Ad loaded");
}

-(void)bannerViewWillLoadAd:(ADBannerView *)banner {
    NSLog(@"Ad will load");
}

-(void)bannerViewActionDidFinish:(ADBannerView *)banner {
    NSLog(@"Ad did finish");
}

@end
