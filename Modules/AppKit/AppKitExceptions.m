/**
    AppKitExceptions.m
 
    NOTE: Do not edit this file, it is automaticaly generated.
 
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

#import <Foundation/NSArray.h>
#import <Foundation/NSDictionary.h>
#import <Foundation/NSString.h>

#import <AppKit/AppKit.h>
#import <AppKit/AppKitExceptions.h>

#import <AppKit/NSDocument.h>
#import <AppKit/NSHelpManager.h>


NSDictionary *STGetAppKitExceptions(void)
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    Class numberClass = [NSNumber class];
    IMP numberWithInteger;
    IMP numberWithFloat;
    IMP setObject_forKey;

    SEL numberWithInteger_sel = @selector(numberWithInteger:);
    SEL numberWithFloat_sel = @selector(numberWithFloat:);
    SEL setObject_forKey_sel = @selector(setObject:forKey:);

    numberWithInteger = [numberClass methodForSelector:numberWithInteger_sel];
    numberWithFloat = [numberClass methodForSelector:numberWithFloat_sel];
    setObject_forKey = [dict methodForSelector:setObject_forKey_sel];

#define ADD_id_OBJECT(obj, name) \
            setObject_forKey(dict, setObject_forKey_sel, obj, name)

#define ADD_NSInteger_OBJECT(obj, name) \
            setObject_forKey(dict, setObject_forKey_sel, \
                            numberWithInteger(numberClass, numberWithInteger_sel, obj), \
                            name)

#define ADD_float_OBJECT(obj, name) \
            setObject_forKey(dict, setObject_forKey_sel, \
                            numberWithFloat(numberClass, numberWithFloat_sel, obj), \
                            name)

    ADD_id_OBJECT(NSAbortModalException,@"NSAbortModalException");
    ADD_id_OBJECT(NSAbortPrintingException,@"NSAbortPrintingException");
    ADD_id_OBJECT(NSAppKitIgnoredException,@"NSAppKitIgnoredException");
    ADD_id_OBJECT(NSAppKitVirtualMemoryException,@"NSAppKitVirtualMemoryException");
    ADD_id_OBJECT(NSBadBitmapParametersException,@"NSBadBitmapParametersException");
    ADD_id_OBJECT(NSBadComparisonException,@"NSBadComparisonException");
    ADD_id_OBJECT(NSBadRTFColorTableException,@"NSBadRTFColorTableException");
    ADD_id_OBJECT(NSBadRTFDirectiveException,@"NSBadRTFDirectiveException");
    ADD_id_OBJECT(NSBadRTFFontTableException,@"NSBadRTFFontTableException");
    ADD_id_OBJECT(NSBadRTFStyleSheetException,@"NSBadRTFStyleSheetException");
    ADD_id_OBJECT(NSBrowserIllegalDelegateException,@"NSBrowserIllegalDelegateException");
    ADD_id_OBJECT(NSColorListIOException,@"NSColorListIOException");
    ADD_id_OBJECT(NSColorListNotEditableException,@"NSColorListNotEditableException");
    ADD_id_OBJECT(NSDraggingException,@"NSDraggingException");
    ADD_id_OBJECT(NSFontUnavailableException,@"NSFontUnavailableException");
    ADD_id_OBJECT(NSIllegalSelectorException,@"NSIllegalSelectorException");
    ADD_id_OBJECT(NSImageCacheException,@"NSImageCacheException");
    ADD_id_OBJECT(NSNibLoadingException,@"NSNibLoadingException");
    ADD_id_OBJECT(NSPPDIncludeNotFoundException,@"NSPPDIncludeNotFoundException");
    ADD_id_OBJECT(NSPPDIncludeStackOverflowException,@"NSPPDIncludeStackOverflowException");
    ADD_id_OBJECT(NSPPDIncludeStackUnderflowException,@"NSPPDIncludeStackUnderflowException");
    ADD_id_OBJECT(NSPPDParseException,@"NSPPDParseException");
    ADD_id_OBJECT(NSPasteboardCommunicationException,@"NSPasteboardCommunicationException");
    ADD_id_OBJECT(NSPrintOperationExistsException,@"NSPrintOperationExistsException");
    ADD_id_OBJECT(NSPrintPackageException,@"NSPrintPackageException");
    ADD_id_OBJECT(NSPrintingCommunicationException,@"NSPrintingCommunicationException");
    ADD_id_OBJECT(NSRTFPropertyStackOverflowException,@"NSRTFPropertyStackOverflowException");
    ADD_id_OBJECT(NSTIFFException,@"NSTIFFException");
    ADD_id_OBJECT(NSTextLineTooLongException,@"NSTextLineTooLongException");
    ADD_id_OBJECT(NSTextNoSelectionException,@"NSTextNoSelectionException");
    ADD_id_OBJECT(NSTextReadException,@"NSTextReadException");
    ADD_id_OBJECT(NSTextWriteException,@"NSTextWriteException");
    ADD_id_OBJECT(NSTypedStreamVersionException,@"NSTypedStreamVersionException");
    ADD_id_OBJECT(NSWindowServerCommunicationException,@"NSWindowServerCommunicationException");
    ADD_id_OBJECT(NSWordTablesReadException,@"NSWordTablesReadException");
    ADD_id_OBJECT(NSWordTablesWriteException,@"NSWordTablesWriteException");

    return dict;
}

/* -- End of file -- */
