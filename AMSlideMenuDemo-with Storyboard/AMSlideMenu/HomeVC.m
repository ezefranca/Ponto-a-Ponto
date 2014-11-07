//
//  HomeVC.m
//  Ponto-a-Ponto
//
//  Created by Ezequiel on 07/11/14.
//  Copyright (c) 2014 Artur Mkrtchyan. All rights reserved.
//

#import "HomeVC.h"
#import "Mapbox.h"

@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //[[RMConfiguration configuration] setAccessToken:@"pk.eyJ1IjoianVuaW9ybWFnMiIsImEiOiJnbmxmQ1N3In0.UZwnvfLLMRtjJZgCp1pQ-g"];
    
    RMMapboxSource *tileSource = [[RMMapboxSource alloc] initWithMapID:@"juniormag2.k5k542dl"];
    
    RMMapView *mapView = [[RMMapView alloc] initWithFrame:self.view.bounds andTilesource:tileSource];
    
    [self.view addSubview:mapView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
