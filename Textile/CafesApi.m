//
//  Cafe.m
//  Textile
//
//  Created by Aaron Sutula on 2/28/19.
//  Copyright © 2019 Textile. All rights reserved.
//

#import "CafesApi.h"
#import <Mobile/Mobile.h>
#import "../node_modules/@textile/go-mobile/dist/ios/protos/Model.pbobjc.h"

@implementation CafesApi

- (void)registerCafe:(NSString *)host token:(NSString *)token error:(NSError **)error {
  [self.textile.node registerCafe:host token:token error:error];
}

- (CafeSession *)cafeSession:(NSString *)peerId error:(NSError **)error {
  NSData *data = [self.textile.node cafeSession:peerId error:error];
  return [[CafeSession alloc] initWithData:data error:error];
}

- (CafeSessionList *)cafeSessions:(NSError **)error {
  NSData *data = [self.textile.node cafeSessions:error];
  return [[CafeSessionList alloc] initWithData:data error:error];
}

- (CafeSession *)refreshCafeSession:(NSString *)peerId error:(NSError **)error {
  NSData *data = [self.textile.node refreshCafeSession:peerId error:error];
  return [[CafeSession alloc] initWithData:data error:error];
}

- (void)deregisterCafe:(NSString *)peerId error:(NSError **)error {
  [self.textile.node deregisterCafe:peerId error:error];
}

- (void)checkCafeMessages:(NSError **)error {
  [self.textile.node checkCafeMessages:error];
}

@end