//
//  NSMutableAttributedString+YY.m
//  YYKitDemo
//
//  Created by WeichengWang on 16/8/16.
//  Copyright © 2016年 ibireme. All rights reserved.
//

#import "NSMutableAttributedString+YY.h"

@implementation NSMutableAttributedString (YY)

+(NSAttributedString *)attributeTextForString:(NSString *)string WithColor:(UIColor *)color textFont:(UIFont *)font{
    
    NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc]initWithString:string];
    
    if (color) {
        
        [attributedStr addAttribute:NSForegroundColorAttributeName
         
                              value:color
         
                              range:NSMakeRange(0, string.length)];
    }
    if (font) {
        [attributedStr addAttribute:NSFontAttributeName
         
                              value:font
         
                              range:NSMakeRange(0, string.length)];
    }
    return attributedStr;
}

@end
