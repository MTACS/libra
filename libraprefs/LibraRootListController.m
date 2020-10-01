#include "LibraRootListController.h"

UIImageView *secondaryHeaderImage;

@implementation LibraRootListController
@synthesize applyButton;
- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}
	return _specifiers;
}
- (void)setPreferenceValue:(id)value specifier:(PSSpecifier *)specifier {
    [super setPreferenceValue:value specifier:specifier];
    NSString *key = [specifier propertyForKey:@"key"];
    if ([key isEqualToString:@"enabled"]) {
        if (![value boolValue]) {
            [self showRespringAlert];
        } else {
            [self showRespringAlert];
        }
    }
}
- (void)showRespringAlert {
    UIAlertController * alert = [UIAlertController
                                alertControllerWithTitle:@"Changes require a respring"
                                message:@"Would you like to do that now?"
                                preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* okayButton = [UIAlertAction
                                actionWithTitle:@"Respring"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    [alert dismissViewControllerAnimated:YES completion:nil];
                                    [self respring];
                                }];
	UIAlertAction* dismissButton = [UIAlertAction
                                actionWithTitle:@"Later"
                                style:UIAlertActionStyleDestructive
                                handler:nil];
	[alert addAction:dismissButton];
    [alert addAction:okayButton];
    [self presentViewController:alert animated:YES completion:nil];
}
- (void)respring {
    AudioServicesPlaySystemSound(1519);
    pid_t pid;
    const char *args[] = {"killall", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char *const *)args, NULL);
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.headerView = [[UIView alloc] initWithFrame:CGRectMake(0,0,200,200)];
    self.headerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,200,200)];
    self.headerImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.headerImageView.image = [UIImage imageWithContentsOfFile:@"/Library/PreferenceBundles/LibraPrefs.bundle/libra.png"];
    self.headerImageView.translatesAutoresizingMaskIntoConstraints = NO;

    [self.headerView addSubview:self.headerImageView];
    [NSLayoutConstraint activateConstraints:@[
        [self.headerImageView.topAnchor constraintEqualToAnchor:self.headerView.topAnchor],
        [self.headerImageView.leadingAnchor constraintEqualToAnchor:self.headerView.leadingAnchor],
        [self.headerImageView.trailingAnchor constraintEqualToAnchor:self.headerView.trailingAnchor],
        [self.headerImageView.bottomAnchor constraintEqualToAnchor:self.headerView.bottomAnchor],
    ]];
    _table.tableHeaderView = self.headerView;
	[self sunday];
}
- (void)sunday {
	secondaryHeaderImage = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,200,200)];
	secondaryHeaderImage.contentMode = UIViewContentModeScaleAspectFill;
	secondaryHeaderImage.image = [UIImage imageWithContentsOfFile:@"/Library/PreferenceBundles/LibraPrefs.bundle/libra-light.png"];
	secondaryHeaderImage.translatesAutoresizingMaskIntoConstraints = NO;
	secondaryHeaderImage.alpha = 0.0;
	[self.headerView addSubview:secondaryHeaderImage];

	[NSLayoutConstraint activateConstraints:@[
	[secondaryHeaderImage.topAnchor constraintEqualToAnchor:self.headerView.topAnchor],
	[secondaryHeaderImage.leadingAnchor constraintEqualToAnchor:self.headerView.leadingAnchor],
	[secondaryHeaderImage.trailingAnchor constraintEqualToAnchor:self.headerView.trailingAnchor],
	[secondaryHeaderImage.bottomAnchor constraintEqualToAnchor:self.headerView.bottomAnchor],
	]];
	[UIView animateWithDuration:2.0 animations:^ {
		secondaryHeaderImage.alpha = 1;
	} completion:^(BOOL finished) {
		/* [UIView animateWithDuration:0.8 animations:^ {
		secondaryHeaderImage.alpha = 0;
		} completion:^(BOOL finished) {}]; */
	}];
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat offsetY = scrollView.contentOffset.y;
    if (offsetY > 0) offsetY = 0;
    self.headerImageView.frame = CGRectMake(0, offsetY, self.headerView.frame.size.width, 200 - offsetY);
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    tableView.tableHeaderView = self.headerView;
    return [super tableView:tableView cellForRowAtIndexPath:indexPath];
}
- (instancetype)init {
	self = [super init];
	if (self) {
		LibraAppearanceSettings *appearanceSettings = [[LibraAppearanceSettings alloc] init];
		appearanceSettings.translucentNavigationBar = YES;
		appearanceSettings.navigationBarTintColor = LibraTint;
		self.hb_appearanceSettings = appearanceSettings;
		UIButton *apply =  [UIButton buttonWithType:UIButtonTypeCustom];
		apply.frame = CGRectMake(0,0,25,25);
		[apply setTintColor:LibraTint];
		[apply setTitle:@"Apply" forState:UIControlStateNormal];
		[apply addTarget:self action:@selector(respring) forControlEvents:UIControlEventTouchUpInside];
		self.applyButton = [[UIBarButtonItem alloc] initWithCustomView:apply];
		[self.applyButton setTintColor:LibraTint];
        self.navigationItem.rightBarButtonItem = self.applyButton;
	}
	return self;
}
@end

@implementation LibraAppearanceSettings
- (UIColor *)tintColor {
    return LibraTint;
}
- (HBAppearanceSettingsLargeTitleStyle)largeTitleStyle {
	return HBAppearanceSettingsLargeTitleStyleNever;
}
- (UIColor *)tableViewCellSelectionColor {
	return [UIColor clearColor];
}
- (BOOL)translucentNavigationBar {
    return YES;
}
- (UIColor *)navigationBarTintColor {
	return LibraTint;
}
@end