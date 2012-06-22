//
//  BukuDetailViewController.m
//  TableViewTutorial
//
//  Created by Rikza Azriyan's MacBook Pro on 6/23/12.
//  Copyright (c) 2012 Rikza Azriyan's MacBook Pro. All rights reserved.
//

#import "BukuDetailViewController.h"

@interface BukuDetailViewController ()

@end

@implementation BukuDetailViewController
@synthesize labelJudulBuku;
@synthesize labelPengarang;
@synthesize labelTahunTerbit;
@synthesize labelPenerbit;
@synthesize imageViewCoverBuku;

@synthesize buku;

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
    labelJudulBuku.text = buku.judulBuku;
    labelPengarang.text = buku.pengarang;
    labelTahunTerbit.text = buku.tahunTerbit;
    labelPenerbit.text = buku.namaPenerbit;
    imageViewCoverBuku.image = buku.coverBuku;
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
