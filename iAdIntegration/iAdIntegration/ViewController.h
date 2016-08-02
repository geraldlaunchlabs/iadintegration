//
//  ViewController.h
//  iAdIntegration
//
//  Created by LLDM on 02/08/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface ViewController : UIViewController<ADBannerViewDelegate> {
    ADBannerView *bannerView;
}


@end

