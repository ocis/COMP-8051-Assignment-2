//
//  ViewController.m
//  ios Assignment 2
//
//  Created by Billy Wong on 2020-03-12.
//  Copyright © 2020 BCIT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    Renderer *renderer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    renderer = [[Renderer alloc] init];
    GLKView *view = (GLKView *)self.view;
    [renderer setup:view];
    [renderer loadModels];
    [renderer loadWallModel];
    
    [renderer initMaze];
    
    renderer.xRot = 30 * M_PI / 180;
    renderer.yRot = 30 * M_PI / 180;
}


- (void)update{
    [renderer update];
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    [renderer draw:rect];
}
@end
