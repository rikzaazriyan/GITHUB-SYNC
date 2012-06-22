//
//  MainViewController.m
//  TableViewTutorial
//
//  Created by Rikza Azriyan's MacBook Pro on 6/22/12.
//  Copyright (c) 2012 Rikza Azriyan's MacBook Pro. All rights reserved.
//

#import "MainViewController.h"
#import "Buku.h"
#import "BukuDetailViewController.h"

@interface MainViewController ()

@end


@implementation MainViewController

@synthesize bukuArray = _bukuArray;


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
    
    Buku *buku1 = [[Buku alloc]init];
    buku1.judulBuku = @"Studio D A1";
    buku1.pengarang = @"Rikza Azriyan";
    buku1.tahunTerbit = @"2012";
    buku1.namaPenerbit = @"Katalis";
    buku1.coverBuku = [UIImage imageNamed:@"gambarStudioD.png"];
    
    Buku *buku2 = [[Buku alloc]init];
    buku2.judulBuku = @"Beginning iPhone 4 Development";
    buku2.pengarang = @"Dave Mark";
    buku2.tahunTerbit = @"2011";
    buku2.namaPenerbit = @"Apress";
    buku2.coverBuku = [UIImage imageNamed:@"gambarBeginningiPhone4Development.png"];
    
    Buku *buku3 = [[Buku alloc]init];
    buku3.judulBuku = @"Learning OpenCV with OpenCV Library";
    buku3.pengarang = @"Gary Bradsky";
    buku3.tahunTerbit = @"2010";
    buku3.namaPenerbit = @"Oreilly";
    buku3.coverBuku = [UIImage imageNamed:@"gambarLearningOpenCV.png"];
    
    Buku *buku4 = [[Buku alloc]init];
    buku4.judulBuku = @"More iPhone Cool Project";
    buku4.pengarang = @"Danton Chin";
    buku4.tahunTerbit = @"2011";
    buku4.namaPenerbit = @"Apress";
    buku4.coverBuku = [UIImage imageNamed:@"gambarMoreiPhoneCoolProject.png"];
    
    self.bukuArray = [[NSArray alloc]initWithObjects:buku1,buku2,buku3,buku4,nil];
    
    
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


#pragma mark UITableViewDataSource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.bukuArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    UITableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    Buku *bukuToShow = [self.bukuArray objectAtIndex:indexPath.row];
    cell.imageView.image = bukuToShow.coverBuku;
    cell.textLabel.text = bukuToShow.judulBuku;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

#pragma mark UITableViewDelegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    BukuDetailViewController *bukuDetailViewController = [[BukuDetailViewController alloc]init];
    bukuDetailViewController.buku = [self.bukuArray objectAtIndex:indexPath.row];
    
    [self.navigationController pushViewController:bukuDetailViewController animated:YES];
}




@end
