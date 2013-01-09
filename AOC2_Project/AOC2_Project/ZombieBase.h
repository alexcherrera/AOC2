//
//  zombieBase.h
//  AOC2_Project
//
//  Created by Alexander Herrera on 1/8/13.
//  Copyright (c) 2013 Alexander Herrera. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
	ZOMBIETYPE_LANDZOMBIE = 0,
	ZOMBIETYPE_SKYZOMBIE,
	ZOMBIETYPE_OCEANZOMBIE
}EZombieType;

@interface zombieBase : NSObject
{
	EZombieType zombieType;
}
@end
