/**
    STBlockContext.m
 
    Copyright (c) 2002 Free Software Foundation
 
    This file is part of the StepTalk project.
 
    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 
 */

#import "STBlockContext.h"

#import "STStack.h"
#import "STBytecodeInterpreter.h"
#import "STBytecodes.h"
#import "STMethodContext.h"

#import <StepTalk/STExterns.h>

#import <Foundation/NSDebug.h>
#import <Foundation/NSException.h>
#import <Foundation/NSString.h>

@implementation STBlockContext
- initWithInitialIP:(NSUInteger)pointer
  stackSize:(NSUInteger)size
{
    if ((self = [super initWithStackSize:size]) != nil)
    {
        initialIP = pointer;

        instructionPointer = initialIP;
    }
    return self; 
}
- (void)dealloc
{
    RELEASE(homeContext);
    [super dealloc];
}

- (BOOL)isBlockContext
{
    return YES;
}
- (void)setHomeContext:(STMethodContext *)context
{
    ASSIGN(homeContext,context);
}
- (STMethodContext *)homeContext
{
    return homeContext;
}

- (NSUInteger)initialIP
{
    return initialIP;
}

- temporaryAtIndex:(NSUInteger)index;
{
    return [homeContext temporaryAtIndex:index];
}
- (void)setTemporary:anObject atIndex:(NSUInteger)index;
{
    [homeContext setTemporary:anObject atIndex:index];
}

- (NSString *)referenceNameAtIndex:(NSUInteger)index
{
    return [homeContext referenceNameAtIndex:index];
}
- (STBytecodes *)bytecodes
{
    return [homeContext bytecodes];
}
- (id)literalObjectAtIndex:(NSUInteger)index
{
    return [homeContext literalObjectAtIndex:index];
}
- (id)receiver
{
    return [homeContext receiver];
}

- (void)resetInstructionPointer
{
    instructionPointer = initialIP;
}
@end
