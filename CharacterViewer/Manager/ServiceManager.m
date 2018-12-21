//
//  ServiceManager.m
//  CharacterViewer
//
//  Created by Matt Mejia on 12/20/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServiceManager.h"

@implementation ServiceManager

// MARK: - Instantiate Singleton
/**************************************************/


// One-time instantiation for singleton in Objective-C.
+ (ServiceManager *)shared {
    static ServiceManager *sharedInstance = nil;
    
    // A static token. Will make sure that initialization of the singleton will happen only once.
    static dispatch_once_t onceToken;
    
    // "&" denotes a unary operator
    // onceToken operates on a single operand
    // Also, block variable of sharedInstance is declared,
    // and a "shared" object is initialized.
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
    
}


// MARK: - Retrieve JSON
/**************************************************/


-(void)getJSON:(void (^)(NSDictionary *jsonDict))completion {
    NSString *urlString = @"https://api.duckduckgo.com/?q=looney+tunes+characters&format=json";
    
    NSURL *url = [[NSURL alloc]initWithString:urlString];
    
    if (url == nil) {
        completion(nil);
        return;
    }
    
    // Receive data from the url.
    [[NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        // If we get no data from the url
        if (data == nil) {
            completion(nil);
            return;
        }
        
        // MARK: - Serialize Data
        /**************************************************/

        
        NSError *jsonError;
        
        // The dictionary that will hold our JSON
        NSDictionary *dictJSON = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&jsonError];
        
        // If there are any errors in serializing the data
        if (jsonError != nil) {
            completion(nil);
            return;
        }
        
        // Completion handler
        completion(dictJSON);
    }] resume];
    
}




@end
