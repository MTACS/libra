#import <Preferences/PSListController.h>
#import <Preferences/PSSpecifier.h>
#import <CepheiPrefs/HBAppearanceSettings.h>
#import <CepheiPrefs/HBRootListController.h>
#import <Cephei/HBPreferences.h>
#import <AudioToolbox/AudioServices.h>
#import "spawn.h"

#define LibraTint [UIColor colorWithRed: 0.10 green: 0.32 blue: 0.46 alpha: 1.00]

@interface LibraRootListController: HBRootListController {
    UITableView * _table;
}
@property (nonatomic, retain) UIView *headerView;
@property (nonatomic, retain) UIImageView *headerImageView;
@property (nonatomic, retain) UIBarButtonItem *applyButton;
@end

@interface LibraAppearanceSettings: HBAppearanceSettings
@end