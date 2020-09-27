#import "Libra.h"

@implementation LibraCell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.genreLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.genreLabel.textColor = [UIColor whiteColor];
    self.genreLabel.font = [UIFont systemFontOfSize:12];
    self.genreLabel.textAlignment = NSTextAlignmentCenter;
    self.genreLabel.tag = 2;
    [self addSubview:self.genreLabel];
    return self;

}
- (void)setGenreLabel:(UILabel *)label {
    _genreLabel = label;
}
@end

@implementation LibraAppView
- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        CGFloat cstnt = (self.frame.size.width - 15) / 2;
        self.appOne = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        self.appTwo = [[UIImageView alloc] initWithFrame:CGRectMake(cstnt + 5, 5, cstnt, cstnt)];
        self.appThree = [[UIImageView alloc] initWithFrame:CGRectMake(5, cstnt + 5, cstnt, cstnt)];
        self.appFour = [[UIImageView alloc] initWithFrame:CGRectMake(cstnt + 5, cstnt + 5, cstnt, cstnt)];
    }
    return self;
}
@end

@implementation LibraButtonView
@end

@implementation LibraTapGestureRecognizer
@end

@implementation LibraCollectionView
- (void)setIdentifier:(NSString *)arg1 {
    _identifier = arg1;
}
@end

@implementation LibraStackView

- (id)initWithApps:(NSArray *)apps {
    self = [super init];
    if (self) {
        _apps = apps;
    }
    return self;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath] ?: [[UICollectionViewCell alloc] initWithFrame:CGRectMake(0, 0, (DEVICE_WIDTH - 100) / 4, (DEVICE_WIDTH - 100) / 4)];
    if (cell) {
        LibraButtonView *appLauncher = [[LibraButtonView alloc] initWithFrame:CGRectMake(0, 0, cell.contentView.bounds.size.width, cell.contentView.bounds.size.width)];
        appLauncher.tag = 12;
        [cell.contentView addSubview:appLauncher];
        cell.contentView.backgroundColor = [UIColor clearColor];
    }
    LibraButtonView *appLauncher = (LibraButtonView *)[cell.contentView viewWithTag:12];
    // LibraButtonView *appLauncher = [[LibraButtonView alloc] initWithFrame:CGRectMake(0, 0, cell.contentView.bounds.size.width, cell.contentView.bounds.size.width)];
    appLauncher.tag = 14;
    appLauncher.identifier = [self.apps objectAtIndex:indexPath.row + 3];
    [appLauncher setImage:[[%c(SBIconController) sharedInstance] iconImageForIdentifier:[self.apps objectAtIndex:indexPath.row + 3]] forState:UIControlStateNormal];
    [appLauncher addTarget:self action:@selector(openApp:) forControlEvents:UIControlEventTouchUpInside];
    BOOL hasSubview = NO;
    for (UIView *view in cell.contentView.subviews) {
        if (view.tag == 12) {
            hasSubview = YES;
        }
    }
    if (!hasSubview) {
        [cell.contentView addSubview:appLauncher];
        hasSubview = YES;
    }
    return cell;
}
- (void)openApp:(LibraButtonView *)sender {
    NSLog(@"LIBRA DEBUG: %@", sender.identifier);
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"LIBRA DEBUG: Tapped cell at: %ld", indexPath.row);
    // [[UIApplication sharedApplication] launchApplicationWithIdentifier:[self.apps objectAtIndex:indexPath.row + 3] suspended:0];
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.apps.count - 3;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake((DEVICE_WIDTH - 100) / 4, (DEVICE_WIDTH - 100) / 4);
}
- (UIEdgeInsets)collectionView:(UICollectionView *) collectionView layout:(UICollectionViewLayout *) collectionViewLayout insetForSectionAtIndex:(NSInteger) section {
    return UIEdgeInsetsMake(20, 20, 20, 20); // top, left, bottom, right
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    /* if (self.apps.count < 4) {
        return 1;
    }
    if (self.apps.count < 8 && self.apps.count > 4) {
        return 2;
    }
    return self.apps.count / 4; */
    return 1;
}
@end