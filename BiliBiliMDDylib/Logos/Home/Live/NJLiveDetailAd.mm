#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/Live/NJLiveDetailAd.xm"


#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "UIViewController+NJFind.h"



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

__asm__(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class BBLiveRevenueCardsContentView; @class BBLiveVerticalPanelViewController; @class BBLiveBaseAppointmentCardView; 
static BBLiveRevenueCardsContentView* (*_logos_orig$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$)(_LOGOS_SELF_TYPE_INIT BBLiveRevenueCardsContentView*, SEL, id, id) _LOGOS_RETURN_RETAINED; static BBLiveRevenueCardsContentView* _logos_method$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$(_LOGOS_SELF_TYPE_INIT BBLiveRevenueCardsContentView*, SEL, id, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$BBLiveVerticalPanelViewController$viewWillAppear$)(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalPanelViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$BBLiveVerticalPanelViewController$viewWillAppear$(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalPanelViewController* _LOGOS_SELF_CONST, SEL, BOOL); static BBLiveBaseAppointmentCardView* (*_logos_orig$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentCardView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAppointmentCardView* _logos_method$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentCardView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 

#line 8 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/Live/NJLiveDetailAd.xm"


static BBLiveRevenueCardsContentView* _logos_method$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$(_LOGOS_SELF_TYPE_INIT BBLiveRevenueCardsContentView* __unused self, SEL __unused _cmd, id source, id model) _LOGOS_RETURN_RETAINED {
    return nil;
}






@interface BBLiveVerticalPanelViewController : NSObject


@property (nonatomic, strong) NSDate *nj_liveAppearDate;

@end




__attribute__((used)) static NSDate * _logos_property$_ungrouped$BBLiveVerticalPanelViewController$nj_liveAppearDate(BBLiveVerticalPanelViewController * __unused self, SEL __unused _cmd) { return (NSDate *)objc_getAssociatedObject(self, (void *)_logos_property$_ungrouped$BBLiveVerticalPanelViewController$nj_liveAppearDate); }; __attribute__((used)) static void _logos_property$_ungrouped$BBLiveVerticalPanelViewController$setNj_liveAppearDate(BBLiveVerticalPanelViewController * __unused self, SEL __unused _cmd, NSDate * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$_ungrouped$BBLiveVerticalPanelViewController$nj_liveAppearDate, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static void _logos_method$_ungrouped$BBLiveVerticalPanelViewController$viewWillAppear$(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalPanelViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL animated) {
    if (!self.nj_liveAppearDate) {
        self.nj_liveAppearDate = [NSDate date];
    }
    _logos_orig$_ungrouped$BBLiveVerticalPanelViewController$viewWillAppear$(self, _cmd, animated);
}



@interface BBLiveBaseAppointmentCardView : NSObject

@end



static BBLiveBaseAppointmentCardView* _logos_method$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentCardView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    Class livcVcClass = NSClassFromString(@"BBLiveVerticalPanelViewController");
    id liveVC = [UIViewController findViewControllerOfClass:livcVcClass];
    if (liveVC) {
        if (![liveVC nj_liveAppearDate]) {
            return nil;
        }
        NSTimeInterval timeInterval = [[NSDate date] timeIntervalSinceDate:[liveVC nj_liveAppearDate]];
        if (timeInterval < 2.0) {
            return nil;
        }
    }
    return _logos_orig$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$(self, _cmd, frame);
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BBLiveRevenueCardsContentView = objc_getClass("BBLiveRevenueCardsContentView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveRevenueCardsContentView, @selector(initWithDataSource:viewModel:), (IMP)&_logos_method$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$, (IMP*)&_logos_orig$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$);}Class _logos_class$_ungrouped$BBLiveVerticalPanelViewController = objc_getClass("BBLiveVerticalPanelViewController"); { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"NSDate\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$_ungrouped$BBLiveVerticalPanelViewController, "nj_liveAppearDate", _attributes, attrc); size_t _nBytes = 1024; char _typeEncoding[_nBytes]; snprintf(_typeEncoding, _nBytes, "%s@:", @encode(NSDate *)); class_addMethod(_logos_class$_ungrouped$BBLiveVerticalPanelViewController, @selector(nj_liveAppearDate), (IMP)&_logos_property$_ungrouped$BBLiveVerticalPanelViewController$nj_liveAppearDate, _typeEncoding); snprintf(_typeEncoding, _nBytes, "v@:%s", @encode(NSDate *)); class_addMethod(_logos_class$_ungrouped$BBLiveVerticalPanelViewController, @selector(setNj_liveAppearDate:), (IMP)&_logos_property$_ungrouped$BBLiveVerticalPanelViewController$setNj_liveAppearDate, _typeEncoding); } { MSHookMessageEx(_logos_class$_ungrouped$BBLiveVerticalPanelViewController, @selector(viewWillAppear:), (IMP)&_logos_method$_ungrouped$BBLiveVerticalPanelViewController$viewWillAppear$, (IMP*)&_logos_orig$_ungrouped$BBLiveVerticalPanelViewController$viewWillAppear$);}Class _logos_class$_ungrouped$BBLiveBaseAppointmentCardView = objc_getClass("BBLiveBaseAppointmentCardView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBaseAppointmentCardView, @selector(initWithEntryFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$);}} }
#line 63 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/Live/NJLiveDetailAd.xm"
