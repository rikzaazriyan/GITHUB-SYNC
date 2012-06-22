//
//  Buku.h
//  TableViewTutorial
//
//  Created by Rikza Azriyan's MacBook Pro on 6/23/12.
//  Copyright (c) 2012 Rikza Azriyan's MacBook Pro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Buku : NSObject

@property (nonatomic, strong) NSString *judulBuku;
@property (nonatomic, strong) NSString *pengarang;
@property (nonatomic, strong) NSString *tahunTerbit;
@property (nonatomic, strong) NSString *namaPenerbit;
@property (nonatomic, strong) UIImage *coverBuku;

@end
