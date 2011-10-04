//
//  SocializeUser.m
//  SocializeSDK
//
//  Created by William Johnson on 5/12/11.
//  Copyright 2011 Socialize, Inc. All rights reserved.
//

#import "SocializeUser.h"


@implementation SocializeUser

@synthesize firstName = _firstName;
@synthesize lastName =  _lastName;
@synthesize userName = _userName;
@synthesize smallImageUrl = _smallInageUrl;
@synthesize city = _city;
@synthesize state = _state;
@synthesize meta = _meta;

@synthesize thirdPartyAuth = _thirdPartyAuth;

-(NSNumber*)detectUserIdWithTag: (NSString*) tag
{
    NSNumber* result = nil;
    for(NSDictionary* info in _thirdPartyAuth)
    {
        if([[info objectForKey:@"auth_type"] isEqual:tag])
            result = [info objectForKey:@"auth_id"];
    }
    return [[result copy] autorelease];
}

-(NSNumber*)userIdForThirdPartyAuth:(ThirdPartyAuthName) auth
{
    NSNumber* userId = nil;
    switch (auth) {
        case FacebookAuth:
            userId = [self detectUserIdWithTag: @"FaceBook"];
            break;
    }
    return userId;
}
@end