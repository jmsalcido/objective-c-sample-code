//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Jose Miguel Salcido on 7/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)changeGreeting:(id)sender;

@end

@implementation HelloWorldViewController
@synthesize label;
@synthesize textField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

// Codigo que agrego Xcode hueuheuhe con estos Storyboards, rarezas...
// Implementacion hecha por Apple en la documentacion
- (IBAction)changeGreeting:(id)sender {
    
    // Yo declare userName en HelloWorldViewController.h no recuerdo ni que era... una propiedad?
    // al parecer lo igualamos al texto del textField (asi llamamos a la caja de texto)
    self.userName = self.textField.text;
    
    // Creamos un objeto tipo NSString (sepa madre que es esto) y lo igualamos a userName
    NSString *nameString = self.userName;
    
    // Revisamos, al parecer... si el tamanio de nameString es igua a 0
    if ([nameString length] == 0) {
        // Si es así, agregamos un string "World" constante.
        nameString = @"World";
    }
    
    // Al parecer aqui hacemos el saludo, y creo que formatea el String "Hello, %@!" con
    //                      el valor de nameString
    // Parecido al output: printf de C (ANSI)
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@! ", nameString];
    
    // Cambia el texto del label por el del saludo :)
    self.label.text = greeting;
    
}

// Implementacion de textFieldShouldReturn declarado en el header ??
- (BOOL) textFieldShouldReturn:(UITextField *) theTextField {
    
    // No es necesario revizar si el textField enviado es igual
    // a textField por que solo hay un textField, pero es bueno
    // mantener este patron cuando hay mas de 1 solo textField!
    if(theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    
    // Regresar un valor negro!
    return YES;
}

@end
