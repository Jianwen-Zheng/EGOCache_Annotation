//
//  ViewController.m
//  TestPlayer
//
//  Created by 臧其龙 on 15/4/15.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "ViewController.h"
#import "EGOCache.h"

static NSString * const itemKey = @"zqlImageKey";

@interface ViewController ()
{
    UIImage *imageToSave;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    imageToSave = [UIImage imageNamed:@"bomei.jpg"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)saveItem:(id)sender
{
    [[EGOCache globalCache] setObject:imageToSave forKey:itemKey];
}

- (IBAction)removeItem:(id)sender
{
    [[EGOCache globalCache] removeCacheForKey:itemKey];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
