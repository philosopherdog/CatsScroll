  //
  //  ViewController.m
  //  CatsScroll
  //
  //  Created by steve on 2018-01-29.
  //  Copyright © 2018 steve. All rights reserved.
  //

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (nonatomic) UIScrollView *sv;
@end

@implementation ViewController

#define ivtag 100

- (void)viewDidLoad {
  [super viewDidLoad];
  self.sv = [[UIScrollView alloc] init];
  [self.view addSubview:self.sv];
  UIImageView *iv = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cats"]];
  iv.tag = ivtag;
  [self.sv addSubview:iv];
  self.sv.delegate = self;
  self.sv.minimumZoomScale = 0.25;
  self.sv.maximumZoomScale = 3.0;
}

- (void)viewDidLayoutSubviews {
  self.sv.frame = self.view.frame;
  UIImageView *iv = [self.view viewWithTag:ivtag];
  self.sv.contentSize = iv.bounds.size;
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
  
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
  
}

- (void)scrollViewDidZoom:(UIScrollView *)scrollView {
  
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
  return [self.view viewWithTag:ivtag];
}


@end
