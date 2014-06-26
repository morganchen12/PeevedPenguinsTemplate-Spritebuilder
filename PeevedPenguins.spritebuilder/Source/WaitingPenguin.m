//
//  WaitingPenguin.m
//  PeevedPenguins
//
//  Created by Morgan Chen on 6/26/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "WaitingPenguin.h"

@implementation WaitingPenguin

-(void)didLoadFromCCB {
    float delay = (arc4random() % 2000) / 1000.f;
    [self performSelector:@selector(startIdleAnimation) withObject:nil afterDelay:delay];
}

-(void)startIdleAnimation {
    CCAnimationManager* animationManager = self.animationManager;
    [animationManager runAnimationsForSequenceNamed:@"IdleAnimation"];
}

@end
