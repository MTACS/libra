#import <HBLog.h>
#include <MobileCoreServices/MobileCoreServices.h>
#import <AppList/AppList.h>
#import <objc/runtime.h>
#import <UIKit/UIKit.h>
#import <Cephei/HBPreferences.h>
#import <AudioToolbox/AudioServices.h>

#define DEVICE_WIDTH [UIScreen mainScreen].bounds.size.width
#define DEVICE_HEIGHT [UIScreen mainScreen].bounds.size.height
#define PrefsDict @"/var/mobile/Library/Preferences/com.mtac.libra.plist"

extern NSString* const kCAFilterDestOut;
static NSString *domainString = @"com.mtac.libra";

@interface NSUserDefaults (Libra)
- (id)objectForKey:(NSString *)key inDomain:(NSString *)domain;
- (void)setObject:(id)value forKey:(NSString *)key inDomain:(NSString *)domain;
- (void)removeObjectForKey:(NSString *)key inDomain:(NSString *)domain;
@end

@interface SBFolderView: UIView
@property (nonatomic, copy, readonly) NSArray * iconListViews; 
@end

@interface SBRootFolderView : SBFolderView
@end

@interface SBFolderController: NSObject
@property (nonatomic,readonly) long long maximumPageIndex;
@end

@interface SBRootFolderController: SBFolderController
@property (assign,nonatomic) long long currentPageIndex; 
@property (nonatomic, readonly) SBRootFolderView *rootFolderView;
@end

@interface SBIcon : NSObject
@property (nonatomic,readonly) long long badgeValue; 
struct SBIconImageInfo {

	struct CGSize size;
	double scale;
	double continuousCornerRadius;

};
- (id)generateIconImageWithInfo:(struct SBIconImageInfo)arg1 ;
@end

@interface SBIconModel : NSObject
- (SBIcon *)applicationIconForBundleIdentifier:(id)arg1;
- (id)expectedIconForDisplayIdentifier:(id)arg1;
@end

@interface SBIconViewMap : NSObject
@property (nonatomic,readonly) SBIconModel * iconModel;
@end

@interface SBIconController: UIViewController <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout> {
	NSSet* _visibleTags;
}
@property (strong, nonatomic) UICollectionView *libraView;
@property (getter=_rootFolderController, nonatomic, readonly) SBRootFolderController * rootFolderController; 
@property (nonatomic, copy, readonly) NSArray * allApplications;
@property (strong, nonatomic) UIWindow *appWindow;
@property (strong, nonatomic) UIWindow *stackWindow;
@property (strong, nonatomic) NSMutableArray *genres;
@property (nonatomic, copy, readonly) NSSet * visibleIconStateDisplayIdentifiers; 
@property (strong, nonatomic) UILabel *genreLabelOne;
@property (strong, nonatomic) UISwipeGestureRecognizer *swiperight;
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
+ (id)sharedInstance;
- (void)handleHold:(UITapGestureRecognizer *)sender;
- (void)swipeleft:(UISwipeGestureRecognizer *)gestureRecognizer;
- (void)swiperight:(UISwipeGestureRecognizer*)gestureRecognizer;
- (void)removeView;
- (void)setupView;
- (void)getGenres;
- (void)getSystemApps;
- (void)dismissStack;
- (void)dismissStack:(UITapGestureRecognizer *)arg1;
- (UIVisualEffect *)getBlurStyle:(NSInteger)style;
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
- (NSString *)getGenreName:(NSInteger)row section:(NSInteger)section;
- (NSArray *)getAppsForGenreName:(NSString *)name;
- (UIImage *)iconImageForIdentifier:(NSString *)identifier;
- (SBIconViewMap *)homescreenIconViewMap;
- (SBIconModel *)model;
- (NSInteger)getGenreIndex:(NSInteger)indexPathRow :(NSInteger)indexPathSection;
@end

@interface SBIconListView : UIView
- (void)showAllIcons;
- (void)swipeleft:(UISwipeGestureRecognizer *)sender;
@end

@interface SBIconScrollView
@end

@interface SBApplication
@property (nonatomic,readonly) NSString * displayName; 
@property (nonatomic,readonly) NSString * bundleIdentifier; 
- (BOOL)isSystemApplication;
- (BOOL)isInternalApplication;
- (id)badgeValue;
@end

@interface LSApplicationProxy
@property (readonly, nonatomic) NSString * genre;
@property (nonatomic,readonly) NSString * shortVersionString; 
@property (nonatomic,readonly) NSString * itemName;
@property (nonatomic,readonly) NSString * applicationType;
@property (nonatomic,readonly) NSNumber * ratingRank;
@property (nonatomic,readonly) NSNumber * staticDiskUsage;  
@property (nonatomic,readonly) NSString * maximumSystemVersion;
@property (nonatomic,readonly) NSString * minimumSystemVersion;
@property (nonatomic,readonly) NSString * vendorName;
@property (nonatomic,readonly) NSDate * registeredDate;  
+ (id)applicationProxyForIdentifier:(id)arg1;
@end

@interface CALayer (Libra)
@property  BOOL continuousCorners;
@end

@interface LibraCell : UICollectionViewCell
@property (nonatomic, retain) UILabel *genreLabel;
- (void)setGenreLabel:(UILabel *)label;
@end

@interface LibraAppView: UIView
@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic) UIImageView *appOne;
@property (strong, nonatomic) UIImageView *appTwo;
@property (strong, nonatomic) UIImageView *appThree;
@property (strong, nonatomic) UIImageView *appFour;
@end

@interface LibraButtonView: UIButton
@property (strong, nonatomic) NSString *identifier;
- (void)setIdentifier:(NSString *)identifier;
@end

@interface UIApplication (Libra)
- (BOOL)launchApplicationWithIdentifier:(id)arg1 suspended:(BOOL)arg2;
@end

@interface LibraTapGestureRecognizer: UITapGestureRecognizer
@property (strong, nonatomic) NSString *identifier;
@end

@interface LibraStackView: UIView<UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (nonatomic, retain) NSArray *apps;
- (id)initWithApps:(NSArray *)apps;
@end

@interface _UIBackdropViewSettings: NSObject
+ (id)settingsForStyle:(long long)arg1;
@end

@interface _UIBackdropView: UIView
- (id)initWithFrame:(CGRect)arg1 autosizesToFitSuperview:(BOOL)arg2 settings:(id)arg3;
@end

@interface CALayer (Private)
@property (nonatomic, retain) NSString *compositingFilter;
@property (nonatomic, assign) BOOL continuousCorners;
@property (nonatomic, assign) BOOL allowsGroupOpacity;
@property (nonatomic, assign) BOOL allowsGroupBlending;
@end

@interface LibraCollectionView: UICollectionView
@property (strong, nonatomic) NSString *identifier;
- (void)setIdentifier:(NSString *)arg1;
@end

@interface UICollectionView (Libra)
@property (strong, nonatomic) NSString *identifier;
- (void)setIdentifier:(NSString *)arg1;
@end