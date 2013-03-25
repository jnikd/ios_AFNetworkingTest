//
//  ViewController.m
//  AFNetworkingTest
//
//  Created by Ikeda Jun on 13/03/25.
//  Copyright (c) 2013年 mycompany. All rights reserved.
//

#import "ViewController.h"
#import "AFJSONRequestOperation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSURL *url = [NSURL URLWithString:@"http://search.twitter.com/search.json?lang=ja&rpp=20&q=%23AKB"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        NSLog(@"IP Address: %@", [JSON valueForKeyPath:@"results"]);
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *err,id JSON) {
        
    }];
    
    [operation start];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
