//
//  BukuDetailViewController.h
//  TableViewTutorial
//
//  Created by Rikza Azriyan's MacBook Pro on 6/23/12.
//  Copyright (c) 2012 Rikza Azriyan's MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Buku.h"

@interface BukuDetailViewController : UIViewController

@property (strong, nonatomic) Buku *buku;

@property (weak, nonatomic) IBOutlet UILabel *labelJudulBuku;
@property (weak, nonatomic) IBOutlet UILabel *labelPengarang;
@property (weak, nonatomic) IBOutlet UILabel *labelTahunTerbit;
@property (weak, nonatomic) IBOutlet UILabel *labelPenerbit;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewCoverBuku;

@end
