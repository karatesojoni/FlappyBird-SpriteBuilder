#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{character = (Character*)[CCBReader load:@"Character"];
    timeSinceObstacle = 0.0f;
[physicsNode addChild:character];
[self addObstacle];
}

-(void)update:(CCTime)delta
// put update code here
{
    
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // this will get called every time the player
    [character flap];
}
@end
