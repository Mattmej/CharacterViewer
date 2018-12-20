//
//  ServiceManager.h
//  CharacterViewer
//
//  Created by Matt Mejia on 12/20/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

// We will use these methods in the implementation file.


#import <UIKit/UIKit.h>

@interface ServiceManager: NSObject

+ (ServiceManager *)shared;

// Block syntax here.
// jsonDict is a block.
-(void)getJSON:(void (^)(NSDictionary *jsonDict))completion;

@end

