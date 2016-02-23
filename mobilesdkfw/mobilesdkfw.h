//
//  mobilesdkfw.h
//  mobilesdkfw
//
//  Created by Gal Blank on 2/4/16.
//  Copyright © 2016 Goemerchant. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for mobilesdkfw.
FOUNDATION_EXPORT double mobilesdkfwVersionNumber;

//! Project version string for mobilesdkfw.
FOUNDATION_EXPORT const unsigned char mobilesdkfwVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <mobilesdkfw/PublicHeader.h>

#import <Foundation/Foundation.h>
#import <sys/socket.h>
#import <arpa/inet.h>
#import "AFNetworking.h"
#import "NSData+Base64.h"
#import "StringHelper.h"
#import "DBManager.h"
#import "UIKit+AFNetworking.h"