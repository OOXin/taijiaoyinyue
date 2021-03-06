//
//  QILocalMovieTableCell.m
//  PlayZer
//
//  Created by mo jun on 2/21/16.
//  Copyright © 2016 kimoworks. All rights reserved.
//

#import "QILocalMovieTableCell.h"
#import "ATImageEntity.h"

@implementation QILocalMovieTableCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.coverView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, kListCellHeight, kListCellHeight)];
        [self addSubview:self.coverView];
        
        self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake( 10, 0, kScreenWidth - 10 * 2, kListCellHeight)];
        self.titleLabel.font = [UIFont systemFontOfSize:13];
        [self addSubview:self.titleLabel];
        
        self.selectedBackgroundView = nil;
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    _coverView.frame = self.bounds;
    _titleLabel.frame = CGRectMake( 10, kMovieListCellHeight * 0.5f, kScreenWidth - 10 * 2, 20);
}

+ (void)registerForTableView:(UITableView *)tableView{
    [tableView registerClass:[self class] forCellReuseIdentifier:[self registeredIdentifier]];
}

+ (NSString *)registeredIdentifier{
    return @"QILocalMovieTableCell";
}

- (void)setCoverEntity:(ATImageEntity *)coverEntity{
    if (coverEntity != _coverEntity) {
        _coverEntity = coverEntity;
//        __weak __typeof(&*self)weakSelf = self;
//        UIImageView *imageView = self.coverView;
//        [[FICImageCache sharedImageCache] retrieveImageForEntity:coverEntity withFormatName:FICMovieListImageFormatName completionBlock:^(id<FICEntity> entity, NSString *formatName, UIImage *image) {
//            // This completion block may be called much later. We should check to make sure this cell hasn't been reused for different photos before displaying the image that has loaded.
//            if (coverEntity == weakSelf.coverEntity) {
//                [imageView setImage:image];
//                [imageView setNeedsLayout];
//            }
//        }];
    }
}

@end
