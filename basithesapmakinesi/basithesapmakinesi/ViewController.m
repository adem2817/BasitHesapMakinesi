//
//  ViewController.m
//  basithesapmakinesi
//
//  Created by 2015 on 7.09.2015.
//  Copyright (c) 2015 2015. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqual:@"HESAPLA"]) {
        
        UINavigationController *destination = (UINavigationController*)segue.destinationViewController;
        
        ViewController2 *vc = (ViewController2*)destination.topViewController;
        [vc setSonuc:_myValue];
        
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}




    
    
-(double)topla :(double)sayi1 toplanan :(double)sayi2{
    return sayi1 + sayi2;
}
-(double)cikar :(double)sayi1 cikaran  :(double)sayi2{
    return sayi1 - sayi2;
}
-(double)carp  :(double)sayi1 carpan   :(double)sayi2{
    return sayi1 * sayi2;
}
-(double)bol   :(double)sayi1 bolen    :(double)sayi2{
    return sayi1 / sayi2;
}
    

-(double)textIlkSayi:(NSString*)ilk {
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    NSNumber *ilkSayi = [f numberFromString:ilk];
   
    return [ilkSayi doubleValue];
    
}

-(double)textIkinciSayi:(NSString *)ikinci {
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    NSNumber *ikinciSayi = [f numberFromString:ikinci];
    
    return [ikinciSayi doubleValue];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bTopla:(id)sender {
    
    _ilkSayi = [self textIlkSayi:_textField1.text];
    
    _ikinciSayi = [self textIkinciSayi:_textField2.text];
    
    _myValue = [self topla:_ilkSayi toplanan:_ikinciSayi];
    _LSonuc.text = [NSString stringWithFormat:@" %.02f ",_myValue];
    
    [self performSegueWithIdentifier:@"HESAPLA" sender:self];
    
}

- (IBAction)bCikar:(id)sender {
    
    _ilkSayi = [self textIlkSayi:_textField1.text];
    
    _ikinciSayi = [self textIkinciSayi:_textField2.text];
    
    _myValue = [self cikar:_ilkSayi cikaran:_ikinciSayi];
    _LSonuc.text = [NSString stringWithFormat:@" %.02f ",_myValue];
    [self performSegueWithIdentifier:@"HESAPLA" sender:self];
}

- (IBAction)bCarp:(id)sender {
    
    _ilkSayi = [self textIlkSayi:_textField1.text];
    
    _ikinciSayi = [self textIkinciSayi:_textField2.text];
    
    _myValue = [self carp:_ilkSayi carpan:_ikinciSayi];
    _LSonuc.text = [NSString stringWithFormat:@" %.02f ",_myValue];
    [self performSegueWithIdentifier:@"HESAPLA" sender:self];
    
}

- (IBAction)bBol:(id)sender {
    
    _ilkSayi = [self textIlkSayi:_textField1.text];
    
    _ikinciSayi = [self textIkinciSayi:_textField2.text];
    
    _myValue = [self bol:_ilkSayi bolen:_ikinciSayi];
    _LSonuc.text = [NSString stringWithFormat:@" %.02f ",_myValue];
    [self performSegueWithIdentifier:@"HESAPLA" sender:self];
}


@end

