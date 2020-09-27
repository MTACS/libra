#line 1 "Tweak.xm"
#import "Libra.h"

CGRect bottomDismiss;
CGRect topDimiss;
static BOOL canOpenLibra = YES;
static BOOL isAppStack = NO;


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBMainSwitcherViewController; @class UITableViewCell; @class SBIconController; @class SBIconScrollView; 
static void (*_logos_orig$_ungrouped$SBIconController$iconManager$didOpenFolder$)(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$SBIconController$iconManager$didOpenFolder$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$SBIconController$iconManager$didCloseFolder$)(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$SBIconController$iconManager$didCloseFolder$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$SBIconController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBIconController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBIconController$viewWillDisappear$)(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$SBIconController$viewWillDisappear$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, BOOL); static void (*_logos_orig$_ungrouped$SBIconController$viewDidDisappear)(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBIconController$viewDidDisappear(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL); static UIImage * _logos_method$_ungrouped$SBIconController$iconImageForIdentifier$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, NSString *); static NSArray * _logos_method$_ungrouped$SBIconController$getAppsForGenreName$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, NSString *); static void _logos_method$_ungrouped$SBIconController$setupView(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBIconController$swiperight$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, id); static NSInteger _logos_method$_ungrouped$SBIconController$collectionView$numberOfItemsInSection$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, UICollectionView *, NSInteger); static NSInteger _logos_method$_ungrouped$SBIconController$numberOfSectionsInCollectionView$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, UICollectionView *); static UICollectionViewCell * _logos_method$_ungrouped$SBIconController$collectionView$cellForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, UICollectionView *, NSIndexPath *); static void _logos_method$_ungrouped$SBIconController$openApp$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, LibraButtonView *); static void _logos_method$_ungrouped$SBIconController$openStack$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, LibraTapGestureRecognizer *); static void _logos_method$_ungrouped$SBIconController$dismissStack$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, UITapGestureRecognizer *); static CGSize _logos_method$_ungrouped$SBIconController$collectionView$layout$sizeForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, UICollectionView *, UICollectionViewLayout*, NSIndexPath *); static UIEdgeInsets _logos_method$_ungrouped$SBIconController$collectionView$layout$insetForSectionAtIndex$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, UICollectionView *, UICollectionViewLayout *, NSInteger); static UIVisualEffect * _logos_method$_ungrouped$SBIconController$getBlurStyle$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, NSInteger); static void _logos_method$_ungrouped$SBIconController$removeView(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBIconController$getGenres$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, void (^)(void)); static void (*_logos_orig$_ungrouped$SBIconScrollView$_didEndDraggingNotification$)(_LOGOS_SELF_TYPE_NORMAL SBIconScrollView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBIconScrollView$_didEndDraggingNotification$(_LOGOS_SELF_TYPE_NORMAL SBIconScrollView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBMainSwitcherViewController$viewWillAppear$)(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$SBMainSwitcherViewController$viewWillAppear$(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void (*_logos_orig$_ungrouped$UITableViewCell$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$UITableViewCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$SBIconController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("SBIconController"); } return _klass; }
#line 8 "Tweak.xm"
long long getCurrentPage() {
    SBRootFolderController *sbr = [[_logos_static_class_lookup$SBIconController() sharedInstance] _rootFolderController];
    return [sbr currentPageIndex];
}

long long getMaxPage() {
    SBRootFolderController *sbr = [[_logos_static_class_lookup$SBIconController() sharedInstance] _rootFolderController];
    return [sbr maximumPageIndex];
}

void showAlert(NSString *title, NSString *message) {
    UIAlertController * alert = [UIAlertController
                                    alertControllerWithTitle:title
                                    message:message
                                    preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* ok = [UIAlertAction
            actionWithTitle:@"Ok"
            style:UIAlertActionStyleDefault
            handler:^(UIAlertAction * action) {
        return;
    }];		
    UIAlertAction* cancel = [UIAlertAction
            actionWithTitle:@"Cancel"
            style:UIAlertActionStyleDestructive
            handler:^(UIAlertAction * action) {
        return;
    }];	
    [alert addAction:ok];
    [alert addAction:cancel];
    [[_logos_static_class_lookup$SBIconController() sharedInstance] presentViewController:alert animated:YES completion:nil]; 
}

int mod (int a, int b) {
   if (b < 0) 
    return -mod(-a, -b);   
   int ret = a % b;
   if(ret < 0)
     ret+=b;
   return ret;
}

NSInteger genreTypesCount() {
    NSInteger genreTypes = [[_logos_static_class_lookup$SBIconController() sharedInstance] genres].count;
    if (genreTypes == 1 || genreTypes == 2) {
        return 1;
    }
    if (genreTypes >= 3) {
        return mod(genreTypes, 2);
    }
	return genreTypes / 2;
}


__attribute__((used)) static UIWindow * _logos_property$_ungrouped$SBIconController$appWindow(SBIconController * __unused self, SEL __unused _cmd) { return (UIWindow *)objc_getAssociatedObject(self, (void *)_logos_property$_ungrouped$SBIconController$appWindow); };
__attribute__((used)) static void _logos_property$_ungrouped$SBIconController$setAppWindow(SBIconController * __unused self, SEL __unused _cmd, UIWindow * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$_ungrouped$SBIconController$appWindow, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
__attribute__((used)) static UIWindow * _logos_property$_ungrouped$SBIconController$stackWindow(SBIconController * __unused self, SEL __unused _cmd) { return (UIWindow *)objc_getAssociatedObject(self, (void *)_logos_property$_ungrouped$SBIconController$stackWindow); };
__attribute__((used)) static void _logos_property$_ungrouped$SBIconController$setStackWindow(SBIconController * __unused self, SEL __unused _cmd, UIWindow * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$_ungrouped$SBIconController$stackWindow, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
__attribute__((used)) static NSMutableArray * _logos_property$_ungrouped$SBIconController$genres(SBIconController * __unused self, SEL __unused _cmd) { return (NSMutableArray *)objc_getAssociatedObject(self, (void *)_logos_property$_ungrouped$SBIconController$genres); };
__attribute__((used)) static void _logos_property$_ungrouped$SBIconController$setGenres(SBIconController * __unused self, SEL __unused _cmd, NSMutableArray * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$_ungrouped$SBIconController$genres, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
__attribute__((used)) static UILabel * _logos_property$_ungrouped$SBIconController$genreLabelOne(SBIconController * __unused self, SEL __unused _cmd) { return (UILabel *)objc_getAssociatedObject(self, (void *)_logos_property$_ungrouped$SBIconController$genreLabelOne); };
__attribute__((used)) static void _logos_property$_ungrouped$SBIconController$setGenreLabelOne(SBIconController * __unused self, SEL __unused _cmd, UILabel * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$_ungrouped$SBIconController$genreLabelOne, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
__attribute__((used)) static UICollectionView * _logos_property$_ungrouped$SBIconController$libraView(SBIconController * __unused self, SEL __unused _cmd) { return (UICollectionView *)objc_getAssociatedObject(self, (void *)_logos_property$_ungrouped$SBIconController$libraView); };
__attribute__((used)) static void _logos_property$_ungrouped$SBIconController$setLibraView(SBIconController * __unused self, SEL __unused _cmd, UICollectionView * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$_ungrouped$SBIconController$libraView, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
__attribute__((used)) static UISwipeGestureRecognizer * _logos_property$_ungrouped$SBIconController$swiperight(SBIconController * __unused self, SEL __unused _cmd) { return (UISwipeGestureRecognizer *)objc_getAssociatedObject(self, (void *)_logos_property$_ungrouped$SBIconController$swiperight); };
__attribute__((used)) static void _logos_property$_ungrouped$SBIconController$setSwiperight(SBIconController * __unused self, SEL __unused _cmd, UISwipeGestureRecognizer * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$_ungrouped$SBIconController$swiperight, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static void _logos_method$_ungrouped$SBIconController$iconManager$didOpenFolder$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    _logos_orig$_ungrouped$SBIconController$iconManager$didOpenFolder$(self, _cmd, arg1, arg2);
    canOpenLibra = NO;
}

static void _logos_method$_ungrouped$SBIconController$iconManager$didCloseFolder$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    _logos_orig$_ungrouped$SBIconController$iconManager$didCloseFolder$(self, _cmd, arg1, arg2);
    canOpenLibra = YES;
}

static void _logos_method$_ungrouped$SBIconController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$SBIconController$viewDidLoad(self, _cmd);
    if (self.appWindow != nil) {
        [self removeView];
    }
}

static void _logos_method$_ungrouped$SBIconController$viewWillDisappear$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL animated) {
    _logos_orig$_ungrouped$SBIconController$viewWillDisappear$(self, _cmd, animated);
    [self removeView];
}

static void _logos_method$_ungrouped$SBIconController$viewDidDisappear(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$SBIconController$viewDidDisappear(self, _cmd);
    [self removeView];
}



static UIImage * _logos_method$_ungrouped$SBIconController$iconImageForIdentifier$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * identifier) {
	SBIconController *iconController = [NSClassFromString(@"SBIconController") sharedInstance];
	SBIcon *icon = [iconController.model expectedIconForDisplayIdentifier:identifier];
	struct CGSize imageSize;
	imageSize.height = 60;
	imageSize.width = 60;
	struct SBIconImageInfo imageInfo;
	imageInfo.size = imageSize;
	imageInfo.scale = [UIScreen mainScreen].scale;
	imageInfo.continuousCornerRadius = 12;
	return [icon generateIconImageWithInfo:imageInfo];
}

 
static NSArray * _logos_method$_ungrouped$SBIconController$getAppsForGenreName$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * name) {
    if (![[NSUserDefaults standardUserDefaults] objectForKey:name inDomain:domainString]) {
        NSMutableArray *returnItems = [[NSMutableArray alloc] init];
        NSDictionary *apps = [[ALApplicationList sharedApplicationList] applications];
        for (NSString *key in [apps allKeys]) {
            if (key != nil) {
                LSApplicationProxy *proxy = [LSApplicationProxy applicationProxyForIdentifier:[NSString stringWithFormat:@"%@", key]];
                NSString *genre = [proxy genre];
                if (genre != NULL) {
                    if ([genre isEqualToString:name]) {
                        [returnItems addObject:key];
                    }
                }
            }
        }
        NSLog(@"LIBRA DEBUG: Genre -> %@: %@", name, returnItems);
        [[NSUserDefaults standardUserDefaults] setObject:[returnItems copy] forKey:name inDomain:domainString];
        return returnItems;
    }
    return [[NSUserDefaults standardUserDefaults] objectForKey:name inDomain:domainString];
}



static void _logos_method$_ungrouped$SBIconController$setupView(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

    [self getGenres:^{
        dispatch_async(dispatch_get_main_queue(), ^{
            if (!self.appWindow) {
                self.appWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
                self.appWindow.backgroundColor = [UIColor clearColor];
                self.appWindow.windowLevel = UIWindowLevelNormal;
                
                if (!self.swiperight) {
                    self.swiperight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swiperight:)];
                    self.swiperight.direction = UISwipeGestureRecognizerDirectionRight;
                    [self.appWindow addGestureRecognizer:self.swiperight];
                }
                
                _UIBackdropViewSettings *dropSettings = [_UIBackdropViewSettings settingsForStyle:2];
                _UIBackdropView *blurView = [[_UIBackdropView alloc] initWithFrame:CGRectMake(0, 0, DEVICE_WIDTH, DEVICE_HEIGHT) autosizesToFitSuperview:YES settings:dropSettings];
                [self.appWindow addSubview:blurView];

                




            
                UIView *searchView = [[UIView alloc] initWithFrame:CGRectMake(30, 50, DEVICE_WIDTH - 60, 50)];
                searchView.layer.masksToBounds = YES;
                searchView.layer.cornerRadius = 16;
                searchView.layer.continuousCorners = YES;
                searchView.backgroundColor = [UIColor clearColor];
                UIVisualEffectView *searchBlur = [[UIVisualEffectView alloc] initWithFrame:searchView.bounds];
                searchBlur.effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemUltraThinMaterial];
                searchBlur.alpha = 0.75;
                
                UILabel *searchLabel = [[UILabel alloc] initWithFrame:searchView.bounds];
                searchLabel.textAlignment = NSTextAlignmentCenter;
                searchLabel.text = @"App Library";
                searchLabel.textColor = [UIColor whiteColor];
                searchLabel.font = [UIFont systemFontOfSize:20];
                [searchView addSubview:searchBlur];
                [searchView addSubview:searchLabel];
                searchLabel.layer.allowsGroupBlending = YES;
		        searchLabel.layer.allowsGroupOpacity = NO;
                searchLabel.layer.compositingFilter = kCAFilterDestOut;
                [self.appWindow addSubview:searchView];

                UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
                layout.minimumInteritemSpacing = 0;
                layout.minimumLineSpacing = 0;
                [layout setScrollDirection:UICollectionViewScrollDirectionVertical];
                self.libraView = [[UICollectionView alloc] initWithFrame:CGRectMake(15, 115, DEVICE_WIDTH - 30, DEVICE_HEIGHT - 115) collectionViewLayout:layout]; 
                [self.libraView setDelegate:self];
                [self.libraView setDataSource:self];
                [self.libraView registerClass:[LibraCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
                [self.libraView setBackgroundColor:[UIColor clearColor]];

                [self.appWindow addSubview:self.libraView];

                self.appWindow.alpha = 0.0;
                [self.appWindow makeKeyAndVisible];
                [UIView animateWithDuration:0.3 animations:^{
                    self.appWindow.alpha = 1.0;
                } completion:^(BOOL finished) {
                }];
            } else {
                self.appWindow.alpha = 0.0;
                [self.appWindow makeKeyAndVisible];
                [UIView animateWithDuration:0.3 animations:^{
                    self.appWindow.alpha = 1.0;
                } completion:^(BOOL finished) {
                }];
            }
        });
    }];

    












































}



static void _logos_method$_ungrouped$SBIconController$swiperight$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender) {
    if (self.appWindow.hidden == NO) {
        [self removeView];
    }
}



static NSInteger _logos_method$_ungrouped$SBIconController$collectionView$numberOfItemsInSection$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UICollectionView * collectionView, NSInteger section) {
    if (!isAppStack) {
        NSArray *genres = [[NSUserDefaults standardUserDefaults] objectForKey:@"genres" inDomain:domainString];
        return genres.count / 2;
    } 
    
    NSString *identifier = MSHookIvar<NSString *>(collectionView, "_identifier");
    NSArray *apps = [[NSUserDefaults standardUserDefaults] objectForKey:identifier inDomain:domainString];
    return apps.count;
}

 

static NSInteger _logos_method$_ungrouped$SBIconController$numberOfSectionsInCollectionView$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UICollectionView * collectionView) {
    return 1;
}



static UICollectionViewCell * _logos_method$_ungrouped$SBIconController$collectionView$cellForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UICollectionView * collectionView, NSIndexPath * indexPath) {
    LibraCell *cell;
    if (!isAppStack) {
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath] ?: [[LibraCell alloc] initWithFrame:CGRectMake(0, 0, self.libraView.bounds.size.width / 2, self.libraView.bounds.size.width / 2)];
        if (cell) {
            UIView *blurredBackground = [[UIView alloc] init];
            UILabel *genreLabel = [[UILabel alloc] init];
            blurredBackground.frame = CGRectMake(10, 10, cell.contentView.bounds.size.width - 20, cell.contentView.bounds.size.width - 20);
            blurredBackground.tag = 1;
            genreLabel.tag = 2;
            UIVisualEffectView *wallVisualEffectView = [[UIVisualEffectView alloc] initWithFrame:blurredBackground.bounds];
            wallVisualEffectView.tag = 3;
            LibraButtonView *launcherOne = [[LibraButtonView alloc] initWithFrame:CGRectMake(10, 10, (blurredBackground.bounds.size.width - 30) / 2, (blurredBackground.bounds.size.width - 30) / 2)];
            launcherOne.backgroundColor = [UIColor clearColor];
            launcherOne.tag = 4;
            LibraButtonView *launcherTwo = [[LibraButtonView alloc] initWithFrame:CGRectMake(20 + (blurredBackground.bounds.size.width - 30) / 2, 10, (blurredBackground.bounds.size.width - 30) / 2, (blurredBackground.bounds.size.width - 30) / 2)];
            launcherTwo.backgroundColor = [UIColor clearColor];
            launcherTwo.tag = 5;
            LibraButtonView *launcherThree = [[LibraButtonView alloc] initWithFrame:CGRectMake(10, 20 + (blurredBackground.bounds.size.width - 30) / 2, (blurredBackground.bounds.size.width - 30) / 2, (blurredBackground.bounds.size.width - 30) / 2)];
            launcherThree.backgroundColor = [UIColor clearColor];
            launcherThree.tag = 6; 
            LibraAppView *appView = [[LibraAppView alloc] initWithFrame:CGRectMake(20 + (blurredBackground.bounds.size.width - 30) / 2, 20 + (blurredBackground.bounds.size.width - 30) / 2, (blurredBackground.bounds.size.width - 30) / 2, (blurredBackground.bounds.size.width - 30) / 2)];
            appView.tag = 7;
            LibraTapGestureRecognizer *tapGesture = [[LibraTapGestureRecognizer alloc] initWithTarget:self action:@selector(openStack:)];
            tapGesture.numberOfTapsRequired = 1;
            tapGesture.identifier = [[[NSUserDefaults standardUserDefaults] objectForKey:@"genres" inDomain:domainString] objectAtIndex:indexPath.row];
            [appView addGestureRecognizer:tapGesture];
            [blurredBackground addSubview:wallVisualEffectView];
            [blurredBackground addSubview:launcherOne];
            [blurredBackground addSubview:launcherTwo];
            [blurredBackground addSubview:launcherThree];
            [blurredBackground addSubview:appView];
            [cell.contentView addSubview:blurredBackground];
            [cell.contentView addSubview:genreLabel];
        }

        UIView *blurredBackground = (UIView *)[cell.contentView viewWithTag:1];
        blurredBackground.layer.masksToBounds = YES;
        blurredBackground.layer.cornerRadius = 20;
        blurredBackground.layer.continuousCorners = YES;
        blurredBackground.backgroundColor = [UIColor clearColor];
        
        UIVisualEffectView *wallVisualEffectView = (UIVisualEffectView *)[cell.contentView viewWithTag:3];
        wallVisualEffectView.effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemUltraThinMaterial]; 
        
        UILabel *genreLabel = (UILabel *)[cell.contentView viewWithTag:2];
        genreLabel.font = [UIFont boldSystemFontOfSize:14];
        genreLabel.textAlignment = NSTextAlignmentCenter;
        genreLabel.text = [[[NSUserDefaults standardUserDefaults] objectForKey:@"genres" inDomain:domainString] objectAtIndex:indexPath.row]; 
        genreLabel.textColor = [UIColor whiteColor];
        genreLabel.translatesAutoresizingMaskIntoConstraints = false;
        [genreLabel.bottomAnchor constraintEqualToAnchor:cell.contentView.bottomAnchor constant:0].active = YES;
        [genreLabel.leftAnchor constraintEqualToAnchor:cell.contentView.leftAnchor constant:0].active = YES;
        [genreLabel.rightAnchor constraintEqualToAnchor:cell.contentView.rightAnchor constant:0].active = YES;
        
        
        LibraButtonView *launcherOne = (LibraButtonView *)[cell.contentView viewWithTag:4];
        LibraButtonView *launcherTwo = (LibraButtonView *)[cell.contentView viewWithTag:5];
        LibraButtonView *launcherThree = (LibraButtonView *)[cell.contentView viewWithTag:6];
        LibraAppView *appView = (LibraAppView *)[cell.contentView viewWithTag:7];
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        NSString *launcherOneID = [[self getAppsForGenreName:[[defaults objectForKey:@"genres" inDomain:domainString] objectAtIndex:indexPath.row]] objectAtIndex:0];
        if (launcherOneID) {
            [launcherOne setImage:[self iconImageForIdentifier:launcherOneID] forState:UIControlStateNormal];
            launcherOne.identifier = launcherOneID;
            [launcherOne addTarget:self action:@selector(openApp:) forControlEvents:UIControlEventTouchUpInside];
        }
        NSString *launcherTwoID = [[defaults objectForKey:[[defaults objectForKey:@"genres" inDomain:domainString] objectAtIndex:indexPath.row] inDomain:domainString] objectAtIndex:1]; 
        if (launcherTwoID) {
            [launcherTwo setImage:[self iconImageForIdentifier:launcherTwoID] forState:UIControlStateNormal];
            launcherTwo.identifier = launcherTwoID;
            [launcherTwo addTarget:self action:@selector(openApp:) forControlEvents:UIControlEventTouchUpInside];
        }
        NSString *launcherThreeID = [[defaults objectForKey:[[defaults objectForKey:@"genres" inDomain:domainString] objectAtIndex:indexPath.row] inDomain:domainString] objectAtIndex:2]; 
        if (launcherThreeID) {
            [launcherThree setImage:[self iconImageForIdentifier:launcherThreeID] forState:UIControlStateNormal];
            launcherThree.identifier = launcherThreeID;
            [launcherThree addTarget:self action:@selector(openApp:) forControlEvents:UIControlEventTouchUpInside];
        }
        NSArray *appsForIndexPath = [defaults objectForKey:[[defaults objectForKey:@"genres" inDomain:domainString] objectAtIndex:indexPath.row] inDomain:domainString]; 
        if (!([appsForIndexPath count] <= 3)) {
            appView.identifier = [[defaults objectForKey:@"genres" inDomain:domainString] objectAtIndex:indexPath.row];
            if ([appsForIndexPath count] >= 4) {
                UIImageView *libraViewOne = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, (appView.bounds.size.width - 15) / 2, (appView.bounds.size.height - 15) / 2)];
                [libraViewOne setImage:[self iconImageForIdentifier:[appsForIndexPath objectAtIndex:3]]];
                [appView addSubview:libraViewOne];
            }
            if ([appsForIndexPath count] >= 5) {
                UIImageView *libraViewTwo = [[UIImageView alloc] initWithFrame:CGRectMake(((appView.bounds.size.width - 15) / 2) + 10, 5, (appView.bounds.size.width - 15) / 2, (appView.bounds.size.height - 15) / 2)];
                [libraViewTwo setImage:[self iconImageForIdentifier:[appsForIndexPath objectAtIndex:4]]];
                [appView addSubview:libraViewTwo];
            }
            if ([appsForIndexPath count] >= 6) {
                UIImageView *libraViewThree = [[UIImageView alloc] initWithFrame:CGRectMake(5, ((appView.bounds.size.width - 15) / 2) + 10, (appView.bounds.size.width - 15) / 2, (appView.bounds.size.height - 15) / 2)];
                [libraViewThree setImage:[self iconImageForIdentifier:[appsForIndexPath objectAtIndex:5]]];
                [appView addSubview:libraViewThree];
            }
            if ([appsForIndexPath count] >= 7) {
                UIImageView *libraViewFour = [[UIImageView alloc] initWithFrame:CGRectMake(((appView.bounds.size.width - 15) / 2) + 10, ((appView.bounds.size.width - 15) / 2) + 10, (appView.bounds.size.width - 15) / 2, (appView.bounds.size.height - 15) / 2)];
                [libraViewFour setImage:[self iconImageForIdentifier:[appsForIndexPath objectAtIndex:6]]];
                [appView addSubview:libraViewFour];
            }
        }
    } else {
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath] ?: [[LibraCell alloc] initWithFrame:CGRectMake(0, 0, (DEVICE_WIDTH - 100) / 4, (DEVICE_WIDTH - 100) / 4)];
        if (cell) {
            [cell.contentView setBackgroundColor:[UIColor blueColor]];
        }
    }
    return cell;
}



static void _logos_method$_ungrouped$SBIconController$openApp$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, LibraButtonView * sender) {
    [[UIApplication sharedApplication] launchApplicationWithIdentifier:sender.identifier suspended:0];
}

 

static void _logos_method$_ungrouped$SBIconController$openStack$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, LibraTapGestureRecognizer * sender) {
    NSLog(@"LIBRA DEBUG: %@", sender.identifier);
    isAppStack = YES;
    if (!self.stackWindow) {
        self.stackWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        self.stackWindow.backgroundColor = [UIColor clearColor];
        self.stackWindow.windowLevel = UIWindowLevelNormal;
        self.stackWindow.userInteractionEnabled = 1;

        _UIBackdropViewSettings *dropSettings = [_UIBackdropViewSettings settingsForStyle:2];
        _UIBackdropView *blurView = [[_UIBackdropView alloc] initWithFrame:CGRectMake(0, 0, DEVICE_WIDTH, DEVICE_HEIGHT) autosizesToFitSuperview:YES settings:dropSettings];
        [self.stackWindow addSubview:blurView];

        UIView *dismissView = [[UIView alloc] initWithFrame:CGRectMake(0, DEVICE_HEIGHT - (DEVICE_WIDTH / 2), DEVICE_WIDTH, DEVICE_HEIGHT - (DEVICE_WIDTH / 2))];
        dismissView.backgroundColor = [UIColor clearColor];
        UITapGestureRecognizer *dismiss = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissStack:)];
        dismiss.numberOfTapsRequired = 1;
        [dismissView addGestureRecognizer:dismiss];
        [self.stackWindow addSubview:dismissView];

        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.minimumInteritemSpacing = 0;
        layout.minimumLineSpacing = 20;
        [layout setScrollDirection:UICollectionViewScrollDirectionVertical];
        LibraCollectionView *stack = [[LibraCollectionView alloc] initWithFrame:CGRectMake(0, ([UIScreen mainScreen].bounds.size.height / 2) - ([UIScreen mainScreen].bounds.size.width / 2), [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width) collectionViewLayout:layout];
        [stack setDelegate:self];
        [stack setDataSource:self];
        [stack setIdentifier:sender.identifier];
        [stack registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];

        [stack setBackgroundColor:[UIColor clearColor]];
        stack.tag = 2;
        [self.stackWindow addSubview:stack];

        UILabel *genreLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, (DEVICE_HEIGHT / 2 ) - (DEVICE_WIDTH / 2) - 80, DEVICE_WIDTH - 20, 80)];
        genreLabel.textAlignment = NSTextAlignmentLeft;
        genreLabel.tag = 1;
        genreLabel.textColor = [UIColor whiteColor];
        genreLabel.font = [UIFont boldSystemFontOfSize:40];
        [self.stackWindow addSubview:genreLabel];

    } 
    UILabel *genreLabel = (UILabel *)[self.stackWindow viewWithTag:1];
    genreLabel.text = sender.identifier;
    LibraCollectionView *stack = (LibraCollectionView *)[self.stackWindow viewWithTag:2];
    
    
    [stack reloadData];
    
    self.stackWindow.alpha = 0.0;
    self.libraView.alpha = 1.0;
    
    [self.stackWindow makeKeyAndVisible];
    [UIView animateWithDuration:0.3 animations:^{
        self.stackWindow.alpha = 1.0;
        self.libraView.alpha = 0.0;
    } completion:^(BOOL finished) {
    }];
}



static void _logos_method$_ungrouped$SBIconController$dismissStack$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITapGestureRecognizer * sender) {
    self.libraView.alpha = 0.0;
    [UIView animateWithDuration:0.3 animations:^{
        self.libraView.alpha = 1.0;
        self.libraView.userInteractionEnabled = YES;
    } completion:^(BOOL finished) {
    }];
    self.stackWindow.hidden = YES;
}



static CGSize _logos_method$_ungrouped$SBIconController$collectionView$layout$sizeForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UICollectionView * collectionView, UICollectionViewLayout* collectionViewLayout, NSIndexPath * indexPath) {
    if (!isAppStack) {
        return CGSizeMake((DEVICE_WIDTH - 50) / 2, ((DEVICE_WIDTH - 50) / 2) + 20);
    }
    return CGSizeMake((DEVICE_WIDTH - 100) / 4, (DEVICE_WIDTH - 100) / 4);
}


static UIEdgeInsets _logos_method$_ungrouped$SBIconController$collectionView$layout$insetForSectionAtIndex$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UICollectionView * collectionView, UICollectionViewLayout * collectionViewLayout, NSInteger section) {
    if (!isAppStack) {
        return UIEdgeInsetsMake(0, 5, 5, 5); 
    }
    return UIEdgeInsetsMake(20, 20, 20, 20);
}


static UIVisualEffect * _logos_method$_ungrouped$SBIconController$getBlurStyle$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSInteger style) {
	switch (style) {
		case 0:
		return [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemUltraThinMaterialDark];
		break;

	
		case 1:
		return [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemUltraThinMaterialDark];
		break;

	
		case 2:
		return [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemThinMaterialLight];
		break;

	
		case 3:
		
		return [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
        break;

	
		case 4:
		return [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemMaterialLight];
		break;

	
		case 5:
		return [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemMaterialDark];
		break;

	
		case 6:
		return [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemThickMaterialLight];
		break;

	
		case 7:
		return [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemThickMaterialDark];
		break;

	
		case 8:
		return [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemChromeMaterialLight];
		break;

	
		case 9:
		return [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemChromeMaterialDark];
		break;

		case 10:
        return nil;
        break;

		default:
		return [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemUltraThinMaterialLight];
		break;
    }

}



static void _logos_method$_ungrouped$SBIconController$removeView(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    for (UIGestureRecognizer *recognizer in self.view.gestureRecognizers) {
        [self.appWindow removeGestureRecognizer:recognizer];
    }
    [UIView animateWithDuration:0.5 animations:^{
        self.appWindow.alpha = 0.0;
    } completion:^(BOOL finished) {
		[self.appWindow setHidden:YES];
	}];
}



static void _logos_method$_ungrouped$SBIconController$getGenres$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, void (^completion)(void)) {
    NSMutableArray *genresList = [[NSMutableArray alloc] init];
    if (![[NSUserDefaults standardUserDefaults] objectForKey:@"genres" inDomain:domainString]) {
        NSDictionary *apps = [[ALApplicationList sharedApplicationList] applications];
        
        for (NSString *key in [apps allKeys]) {
            if (key != nil) {
                LSApplicationProxy *proxy = [LSApplicationProxy applicationProxyForIdentifier:[NSString stringWithFormat:@"%@", key]];
                NSString *genre = [proxy genre];
                if (genre != NULL) {
                    [genresList addObject:[proxy genre]];
                }
            }
        }
        NSOrderedSet *set = [[NSOrderedSet alloc] initWithArray:genresList];
        NSArray *genresFinal = [set array];
        self.genres = [genresFinal copy];
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:[genresFinal copy] forKey:@"genres" inDomain:domainString];
        NSLog(@"LIBRA DEBUG: Genres -> %@", [defaults objectForKey:@"genres" inDomain:domainString]);
    }
    completion();
}



static void _logos_method$_ungrouped$SBIconScrollView$_didEndDraggingNotification$(_LOGOS_SELF_TYPE_NORMAL SBIconScrollView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    _logos_orig$_ungrouped$SBIconScrollView$_didEndDraggingNotification$(self, _cmd, arg1);
    if (getCurrentPage() == getMaxPage() && canOpenLibra == YES) {
        [[_logos_static_class_lookup$SBIconController() sharedInstance] setupView];
    }
}



static void _logos_method$_ungrouped$SBMainSwitcherViewController$viewWillAppear$(_LOGOS_SELF_TYPE_NORMAL SBMainSwitcherViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1) {
	_logos_orig$_ungrouped$SBMainSwitcherViewController$viewWillAppear$(self, _cmd, arg1);
	UIWindow *appWindow = [[_logos_static_class_lookup$SBIconController() sharedInstance] appWindow];
	if (appWindow != nil) {
        [UIView animateWithDuration:0.5 animations:^{
            appWindow.alpha = 0.0;
        } completion:^(BOOL finished) {
		    [appWindow setHidden:YES];
	    }];
		
		
	}
}



static void _logos_method$_ungrouped$UITableViewCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	_logos_orig$_ungrouped$UITableViewCell$layoutSubviews(self, _cmd);
	NSString *procName = [NSProcessInfo processInfo].processName;
	if ([procName isEqualToString:@"SpringBoard"]) {
		self.backgroundColor = [UIColor clearColor];
		self.selectionStyle = 0;
	}
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIconController = objc_getClass("SBIconController"); { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"UIWindow\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$_ungrouped$SBIconController, "appWindow", _attributes, attrc); char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIWindow *)); class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(appWindow), (IMP)&_logos_property$_ungrouped$SBIconController$appWindow, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIWindow *)); class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(setAppWindow:), (IMP)&_logos_property$_ungrouped$SBIconController$setAppWindow, _typeEncoding); } { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"UIWindow\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$_ungrouped$SBIconController, "stackWindow", _attributes, attrc); char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIWindow *)); class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(stackWindow), (IMP)&_logos_property$_ungrouped$SBIconController$stackWindow, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIWindow *)); class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(setStackWindow:), (IMP)&_logos_property$_ungrouped$SBIconController$setStackWindow, _typeEncoding); } { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"NSMutableArray\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$_ungrouped$SBIconController, "genres", _attributes, attrc); char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(NSMutableArray *)); class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(genres), (IMP)&_logos_property$_ungrouped$SBIconController$genres, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(NSMutableArray *)); class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(setGenres:), (IMP)&_logos_property$_ungrouped$SBIconController$setGenres, _typeEncoding); } { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"UILabel\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$_ungrouped$SBIconController, "genreLabelOne", _attributes, attrc); char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UILabel *)); class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(genreLabelOne), (IMP)&_logos_property$_ungrouped$SBIconController$genreLabelOne, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UILabel *)); class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(setGenreLabelOne:), (IMP)&_logos_property$_ungrouped$SBIconController$setGenreLabelOne, _typeEncoding); } { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"UICollectionView\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$_ungrouped$SBIconController, "libraView", _attributes, attrc); char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UICollectionView *)); class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(libraView), (IMP)&_logos_property$_ungrouped$SBIconController$libraView, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UICollectionView *)); class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(setLibraView:), (IMP)&_logos_property$_ungrouped$SBIconController$setLibraView, _typeEncoding); } { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"UISwipeGestureRecognizer\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$_ungrouped$SBIconController, "swiperight", _attributes, attrc); char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UISwipeGestureRecognizer *)); class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(swiperight), (IMP)&_logos_property$_ungrouped$SBIconController$swiperight, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UISwipeGestureRecognizer *)); class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(setSwiperight:), (IMP)&_logos_property$_ungrouped$SBIconController$setSwiperight, _typeEncoding); } { MSHookMessageEx(_logos_class$_ungrouped$SBIconController, @selector(iconManager:didOpenFolder:), (IMP)&_logos_method$_ungrouped$SBIconController$iconManager$didOpenFolder$, (IMP*)&_logos_orig$_ungrouped$SBIconController$iconManager$didOpenFolder$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBIconController, @selector(iconManager:didCloseFolder:), (IMP)&_logos_method$_ungrouped$SBIconController$iconManager$didCloseFolder$, (IMP*)&_logos_orig$_ungrouped$SBIconController$iconManager$didCloseFolder$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBIconController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$SBIconController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$SBIconController$viewDidLoad);}{ MSHookMessageEx(_logos_class$_ungrouped$SBIconController, @selector(viewWillDisappear:), (IMP)&_logos_method$_ungrouped$SBIconController$viewWillDisappear$, (IMP*)&_logos_orig$_ungrouped$SBIconController$viewWillDisappear$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBIconController, @selector(viewDidDisappear), (IMP)&_logos_method$_ungrouped$SBIconController$viewDidDisappear, (IMP*)&_logos_orig$_ungrouped$SBIconController$viewDidDisappear);}{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(UIImage *), strlen(@encode(UIImage *))); i += strlen(@encode(UIImage *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(iconImageForIdentifier:), (IMP)&_logos_method$_ungrouped$SBIconController$iconImageForIdentifier$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSArray *), strlen(@encode(NSArray *))); i += strlen(@encode(NSArray *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(getAppsForGenreName:), (IMP)&_logos_method$_ungrouped$SBIconController$getAppsForGenreName$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(setupView), (IMP)&_logos_method$_ungrouped$SBIconController$setupView, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(swiperight:), (IMP)&_logos_method$_ungrouped$SBIconController$swiperight$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UICollectionView *), strlen(@encode(UICollectionView *))); i += strlen(@encode(UICollectionView *)); memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(collectionView:numberOfItemsInSection:), (IMP)&_logos_method$_ungrouped$SBIconController$collectionView$numberOfItemsInSection$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UICollectionView *), strlen(@encode(UICollectionView *))); i += strlen(@encode(UICollectionView *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(numberOfSectionsInCollectionView:), (IMP)&_logos_method$_ungrouped$SBIconController$numberOfSectionsInCollectionView$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(UICollectionViewCell *), strlen(@encode(UICollectionViewCell *))); i += strlen(@encode(UICollectionViewCell *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UICollectionView *), strlen(@encode(UICollectionView *))); i += strlen(@encode(UICollectionView *)); memcpy(_typeEncoding + i, @encode(NSIndexPath *), strlen(@encode(NSIndexPath *))); i += strlen(@encode(NSIndexPath *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(collectionView:cellForItemAtIndexPath:), (IMP)&_logos_method$_ungrouped$SBIconController$collectionView$cellForItemAtIndexPath$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(LibraButtonView *), strlen(@encode(LibraButtonView *))); i += strlen(@encode(LibraButtonView *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(openApp:), (IMP)&_logos_method$_ungrouped$SBIconController$openApp$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(LibraTapGestureRecognizer *), strlen(@encode(LibraTapGestureRecognizer *))); i += strlen(@encode(LibraTapGestureRecognizer *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(openStack:), (IMP)&_logos_method$_ungrouped$SBIconController$openStack$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITapGestureRecognizer *), strlen(@encode(UITapGestureRecognizer *))); i += strlen(@encode(UITapGestureRecognizer *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(dismissStack:), (IMP)&_logos_method$_ungrouped$SBIconController$dismissStack$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(CGSize), strlen(@encode(CGSize))); i += strlen(@encode(CGSize)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UICollectionView *), strlen(@encode(UICollectionView *))); i += strlen(@encode(UICollectionView *)); memcpy(_typeEncoding + i, @encode(UICollectionViewLayout*), strlen(@encode(UICollectionViewLayout*))); i += strlen(@encode(UICollectionViewLayout*)); memcpy(_typeEncoding + i, @encode(NSIndexPath *), strlen(@encode(NSIndexPath *))); i += strlen(@encode(NSIndexPath *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(collectionView:layout:sizeForItemAtIndexPath:), (IMP)&_logos_method$_ungrouped$SBIconController$collectionView$layout$sizeForItemAtIndexPath$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(UIEdgeInsets), strlen(@encode(UIEdgeInsets))); i += strlen(@encode(UIEdgeInsets)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UICollectionView *), strlen(@encode(UICollectionView *))); i += strlen(@encode(UICollectionView *)); memcpy(_typeEncoding + i, @encode(UICollectionViewLayout *), strlen(@encode(UICollectionViewLayout *))); i += strlen(@encode(UICollectionViewLayout *)); memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(collectionView:layout:insetForSectionAtIndex:), (IMP)&_logos_method$_ungrouped$SBIconController$collectionView$layout$insetForSectionAtIndex$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(UIVisualEffect *), strlen(@encode(UIVisualEffect *))); i += strlen(@encode(UIVisualEffect *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(getBlurStyle:), (IMP)&_logos_method$_ungrouped$SBIconController$getBlurStyle$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(removeView), (IMP)&_logos_method$_ungrouped$SBIconController$removeView, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(void (^)(void)), strlen(@encode(void (^)(void)))); i += strlen(@encode(void (^)(void))); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconController, @selector(getGenres:), (IMP)&_logos_method$_ungrouped$SBIconController$getGenres$, _typeEncoding); }Class _logos_class$_ungrouped$SBIconScrollView = objc_getClass("SBIconScrollView"); { MSHookMessageEx(_logos_class$_ungrouped$SBIconScrollView, @selector(_didEndDraggingNotification:), (IMP)&_logos_method$_ungrouped$SBIconScrollView$_didEndDraggingNotification$, (IMP*)&_logos_orig$_ungrouped$SBIconScrollView$_didEndDraggingNotification$);}Class _logos_class$_ungrouped$SBMainSwitcherViewController = objc_getClass("SBMainSwitcherViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBMainSwitcherViewController, @selector(viewWillAppear:), (IMP)&_logos_method$_ungrouped$SBMainSwitcherViewController$viewWillAppear$, (IMP*)&_logos_orig$_ungrouped$SBMainSwitcherViewController$viewWillAppear$);}Class _logos_class$_ungrouped$UITableViewCell = objc_getClass("UITableViewCell"); { MSHookMessageEx(_logos_class$_ungrouped$UITableViewCell, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$UITableViewCell$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$UITableViewCell$layoutSubviews);}} }
#line 634 "Tweak.xm"
