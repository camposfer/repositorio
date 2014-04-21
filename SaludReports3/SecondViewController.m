//
//  SecondViewController.m
//  SaludReports3
//
//  Created by Clausulita on 15/01/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "SecondViewController.h"
#define allTrim( object ) [object stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet] ]

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize capituloSelected, conceptoSelected, programaSelected;
@synthesize pickerViewUnid, buttonSelectUnidad, arrayUnid, arrayCapitulo, arrayConcepto, arrayPrograma;
@synthesize isSelectedCapitulo, isSelectedConcepto, isSelectedPrograma, isSelectedUnid;

@synthesize buttonSelectCapitulo, buttonSelectConcepto, buttonSelectPrograma;
@synthesize pickerViewCapitulo, pickerViewConcepto, pickerViewPrograma;
@synthesize urSelected;
@synthesize queryToAddUnid, queryToAddCapitulo, queryToAddConcepto, queryToAddPrograma;
@synthesize alpickerviewUnidad;
@synthesize selectionStates;
@synthesize buttonToHideUnidad, buttonToHideCapitulo, buttonToHideConcepto, buttonToHidePrograma;
@synthesize loadingIndicator;
@synthesize segmentedControlRepor;
@synthesize archivoSeleccionado;
@synthesize arrayArchivos;
@synthesize collectionViewRepor;
@synthesize arrayPresupuesto;
@synthesize segmentedControlSubtotal;
@synthesize tableFechas;
@synthesize buttonUpdate;
//@synthesize hostView = hostView_;
//@synthesize selectedTheme = selectedTheme_;
@synthesize toolbar;
@synthesize buttonGrafica;
@synthesize arrayPptoSorted;
@synthesize segmentedActiProy, segmentedCapPrograma, segmentedConPar, segmentedControlSubtotal2, segmentedDideDver, segmentedDverEnt, segmentedParProg, segmentedProgActi, segmentedProgramaCon, segmentedProyDide, segmentedUrCap;
@synthesize segmentedPred;
@synthesize reporSelected;
@synthesize archivoSeleccionadoDesc;
@synthesize labelTitleRepor;

/*@synthesize stringQueryUnidad, stringQueryCapitulo, stringQueryActi, stringQueryCcp, stringQueryConcepto, stringQueryDide, stringQueryDver, stringQueryEntidad, stringQueryFonc, stringQueryGfun, stringQueryProg, stringQueryPrograma, stringQueryProyInv, stringQuerySfun;
 @synthesize stringQueries;
 @synthesize buttonSelectActi, buttonSelectCcp, buttonSelectDide, buttonSelectDver, buttonSelectEntidad, buttonSelectFecha, buttonSelectFonc, buttonSelectGfun, buttonSelectProg, buttonSelectProyInv, buttonSelectSfun, buttonToHideActi, buttonToHideCcp, buttonToHideDide, buttonToHideDver, buttonToHideEntidad, buttonToHideFecha, buttonToHideFonc, buttonToHideGfun, buttonToHideProg, buttonToHideProyInv, buttonToHideSfun;
 
 @synthesize selectionStatesActi, selectionStatesCcp, selectionStatesDide, selectionStatesDver, selectionStatesEntidad, selectionStatesFecha, selectionStatesFonc, selectionStatesGfun, selectionStatesProg, selectionStatesProyInv, selectionStatesSfun;
 @synthesize alpickerViewActi, alpickerViewCcp, alpickerViewDide, alpickerViewDver, alpickerViewFecha, alpickerViewFonc, alpickerViewGfun, alpickerViewProg, alpickerViewEntidad, alpickerViewProyInv, alpickerViewSfun;*/
@synthesize stringQueryUnidad, stringQueryCapitulo, stringQueryActi, stringQueryCcp, stringQueryConcepto, stringQueryDide, stringQueryDver, stringQueryEntidad, stringQueryProg, stringQueryPrograma, stringQueryProyInv;
@synthesize stringQueries;
@synthesize buttonSelectActi, buttonSelectCcp, buttonSelectDide, buttonSelectDver, buttonSelectEntidad, buttonSelectFecha,  buttonSelectProg, buttonSelectProyInv, buttonToHideActi, buttonToHideCcp, buttonToHideDide, buttonToHideDver, buttonToHideEntidad, buttonToHideFecha, buttonToHideProg, buttonToHideProyInv;

@synthesize selectionStatesActi, selectionStatesCcp, selectionStatesDide, selectionStatesDver, selectionStatesEntidad, selectionStatesFecha, selectionStatesProg, selectionStatesProyInv;

@synthesize alpickerViewActi, alpickerViewCcp, alpickerViewDide, alpickerViewDver, alpickerViewFecha,  alpickerViewProg, alpickerViewEntidad, alpickerViewProyInv;

@synthesize collectionViewClave, collectionViewDescripcion, collectionViewDispo60, collectionViewDisponible, collectionViewDisponiblep, collectionViewEjercido, collectionViewModificado, collectionViewModp, collectionViewOriginal;
@synthesize  popMenu;
@synthesize currentPoint;
@synthesize howManyTouches;
//@synthesize segmentedControlSubtotal2;
@synthesize buttonHideShowOtherButtons;
@synthesize buttonMoveCollection;
//@synthesize imageActi, imageDide, imageDver, imageEntidad, imageFonc, imageGfun, imageProg, imageProyInv,imageSfun;
@synthesize imageActi, imageDide, imageDver, imageEntidad,  imageProg, imageProyInv;

@synthesize buttonTitleClave, buttonTitleDescripcion, buttonTitleDispo60, buttonTitleDisponible, buttonTitleDisponiblep, buttonTitleEjercido, buttonTitleModificado, buttonTitleModp, buttonTitleOriginal;
//@synthesize arrayGfun, arrayFonc, arraySfun, arrayProg, arrayActi, arrayDide, arrayDver, arrayCcp, arrayEntidad, arrayProyInv;
@synthesize  arrayProg, arrayActi, arrayDide, arrayDver, arrayCcp, arrayEntidad, arrayProyInv;
@synthesize isMovedCollection;
@synthesize soundDrag, soundBubble;
@synthesize textFieldQueries;
@synthesize stringQueriesAlways;
@synthesize alphaControl;


@synthesize stringUrCap, stringProyDide, stringProgramaCon, stringProgActi, stringParProg, stringDverEnt, stringDideDver, stringConPar, stringCapPrograma, stringActiProy;
@synthesize labelSubtotales, segmentedArchivos;
@synthesize buttonDis60Graf, buttonDisGraf, buttonDispGraf, buttonEjeGraf, buttonModGraf, buttonModpGraf, buttonOriGraf;
@synthesize imageFecha;
@synthesize viewHideElements;
@synthesize stringGraphSelected;
@synthesize sumOthers;
@synthesize segmentedEntFin;
@synthesize buttonSendCsv;
@synthesize dateSelected;

@synthesize sortClave, sortDispo60, sortDisponible, sortDispop, sortEjercido, sortModificado, sortModp, sortOriginal;

@synthesize buttonDownload;
@synthesize mainDelegate;
@synthesize preDatabase;

@synthesize buttonSelectPred, buttonToHidePred, selectionStatesPred, arrayPred, alpickerViewPred, imagePred, stringQueryPred;

@synthesize arrayDownload;
@synthesize stringQueriesDesc;
@synthesize message, message2;
@synthesize collectionViewReporPdf;
@synthesize filPredWhere;
@synthesize yaUnid;
@synthesize Reports;
@synthesize webViewPdf;
@synthesize finalQuery;
@synthesize buttonSendPdf;
@synthesize arrayCellSelected;

@synthesize arrayCcpAll, searchBar, isFiltered; //for ccp filtered

@synthesize activeOnline, activeGraphic, activeSend;
@synthesize archivoCurrent;

@synthesize textFieldName, imageViewDescarg, buttonCancelAr, buttonDownloadAr, buttonOk;

@synthesize arrayQueryComp;
//@synthesize segmentedPeed;
@synthesize isActive2014;

@synthesize buttonHighlight1, buttonHighlight2, buttonHighlight3;


//selection period Values
@synthesize arrayPeriodo, periodoSelected, buttonToHidePeriodo, selectionStatesPeriodo, alpickerViewPeriodo, buttonSelectPeriodo;

@synthesize buttonActiveOnline;

//chart items
@synthesize pieChart;
- (void)viewDidLoad
{
    [super viewDidLoad];
    loadingIndicator = [[LoadingIndicator alloc] init];
    [self.view addSubview:loadingIndicator];
    [loadingIndicator show:@"Cargando"];
    [self performSelector:@selector(initBefore) withObject:NULL afterDelay:.01];
    
    
}



-(void) initBefore{
    searchBar.delegate = self;
    webViewPdf = [[UIWebView alloc] initWithFrame:CGRectMake(30, 120, 800, 480)];
    webViewPdf.hidden = YES;
    imageViewDescarg.hidden = YES;
    buttonDownloadAr.hidden = YES;
    [self hideComboDownloadPdf:YES];
    //loadingIndicator.hidden = YES;   // Hidden by default
    //webview progress indicator
    mainDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    [mainDelegate.databaseConnection readFromDatabase];
    preDatabase= mainDelegate.databaseConnection;
    filPredWhere = @"";
    yaUnid = 0;
    isActive2014 = NO;
    [self initPopMenu];
    
    activeOnline = NO;
    activeGraphic = NO;
    activeSend = NO;
    //[self Start:buttonUpdate];
    //[self moveCollectionAndButton:buttonMoveCollection];
    //[self.view addSubview:loadingIndicator];
    alphaControl = 0;
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewWasTouched:)];
    tapGestureRecognizer.numberOfTapsRequired = 1;
    [collectionViewClave addGestureRecognizer:tapGestureRecognizer];
    //[self performSelector:@selector(getCatalogos:) withObject:@"" afterDelay:.01];
    [self.segmentedControlSubtotal2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [self.segmentedArchivos setSelectedSegmentIndex:1];
    //[mainDelegate.databaseConnection addElement:@"DELETE from pres_map_columna"];
    isMovedCollection = YES;
    
    [self hideButtonsGraphicsCsvPdf];
    
    //[self moveCollectionAndButton:buttonMoveCollection];
    //currentPoint = collectionViewClave.contentOffset;
    /*
     [UIView animateWithDuration:1.0 delay:3.0 options:UIViewAnimationCurveEaseOut animations: ^
     {   [self hideLoadingIndicator]; //labelTitle.alpha =1.0;
     }completion:^ (BOOL finished)
     {
     if (finished)  {
     
     // Revert image view to original.
     //[self hideLabelAnimated];
     }
     }];*/
    
    
    
    
    arrayPresupuesto = [[NSMutableArray alloc] init];
    Reports = [[NSMutableArray alloc] init];
    
    //   [self initPlot];
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:([arrayArchivos count]-1) inSection:1];
    [tableFechas selectRowAtIndexPath:indexPath animated:NO scrollPosition: UITableViewScrollPositionNone];
    
    NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"buble2"
                                              withExtension:@"mp3"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundDrag);
    soundURL = [[NSBundle mainBundle] URLForResource:@"buble2"
                                       withExtension:@"mp3"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundBubble);
    // hostView_.hidden = YES;
    [self hideShowButtonsGraph];
    UISwitch *switchByPass = [[UISwitch alloc] init];
    [switchByPass setOn:NO];
    [self switchTapped:switchByPass];
    
    arrayCellSelected = [[NSMutableArray alloc] init];
    stringGraphSelected = @"Original";
    
    [buttonTitleClave addTarget:self action:@selector(sortPpto:) forControlEvents:UIControlEventTouchUpInside];
    [buttonTitleDescripcion addTarget:self action:@selector(sortPpto:) forControlEvents:UIControlEventTouchUpInside];
    [buttonTitleOriginal addTarget:self action:@selector(sortPpto:) forControlEvents:UIControlEventTouchUpInside];
    [buttonTitleModificado addTarget:self action:@selector(sortPpto:) forControlEvents:UIControlEventTouchUpInside];
    [buttonTitleDisponible addTarget:self action:@selector(sortPpto:) forControlEvents:UIControlEventTouchUpInside];
    [buttonTitleDispo60 addTarget:self action:@selector(sortPpto:) forControlEvents:UIControlEventTouchUpInside];
    [buttonTitleDisponiblep addTarget:self action:@selector(sortPpto:) forControlEvents:UIControlEventTouchUpInside];
    [buttonTitleEjercido addTarget:self action:@selector(sortPpto:) forControlEvents:UIControlEventTouchUpInside];
    [buttonTitleModp addTarget:self action:@selector(sortPpto:) forControlEvents:UIControlEventTouchUpInside];
    mainDelegate.valChart = stringGraphSelected;
    buttonDownload.hidden = NO;
    //collectionViewRepor.frame = CGRectMake(10, 470, 1000, 230);
    [self getPeriodosWithLoading];
    [self asignaPeriodo:0];
    
    [self StartWithLoading:buttonUpdate];
    
}



-(IBAction)Start:(UIButton*)buttonUpda{
    
    @try{
        arrayArchivos = [[NSMutableArray alloc] init ];
        //firts cleaning the string queries
        stringQueries = [[NSMutableArray alloc] init];
        stringQueriesAlways = [[NSMutableArray alloc] init];
        [self cleanQueries];
        isMovedCollection = NO;
        
        
        //NSString *queryArchivosDiario = [@"http://desarrollo.salud.gob.mx/dgpop/json/consulta_diario_2013.php?anio=" stringByAppendingString:periodoSelected] ;
        
        [self updateArrayArchivos];
        
        
        
        [loadingIndicator show:@"Cargando catálogos"];
        //[self performSelector:@selector(Start:) withObject:buttonUpda afterDelay:.01];
        [self asignaFechaArchivo:0 ];
        [self getCatalogos:@""];
        [self initButtons];
        [self initPickers];
        [self hidePickerViews];
        [self hidePickerViewsSecondColumn];
    }
    @catch (NSException *exception) {
        [popMenu show:@"No fue posible cargar los catalogos o el archivo de fecha, esto usualmente se debe a un problema con la conexión, pruebe actualizando" andTitle:@""];
    }
    [loadingIndicator hide];
    //loadingIndicator.hidden = YES;
    
}


-(void) initPickers{
    alpickerViewUnidad  = [[ALPickerView alloc]  initWithFrame:CGRectMake(132, 192, 380, 216) andIsActivatedAll:YES];
    alpickerViewUnidad.delegate = self;
    
    alpickerViewCapitulo  = [[ALPickerView alloc] initWithFrame:CGRectMake(132, 223, 380, 216) andIsActivatedAll:YES];
    alpickerViewCapitulo.delegate = self;
    
    alpickerViewPrograma  = [[ALPickerView alloc] initWithFrame:CGRectMake(132, 253, 380, 216) andIsActivatedAll:YES];
    alpickerViewPrograma.delegate = self;
    
    alpickerViewConcepto  = [[ALPickerView alloc] initWithFrame:CGRectMake(132, 290, 380, 216) andIsActivatedAll:YES];
    alpickerViewConcepto.delegate = self;
    
    alpickerViewCcp  = [[ALPickerView alloc] initWithFrame:CGRectMake(62, 16, 380, 216) andIsActivatedAll:YES];
    alpickerViewCcp.delegate = self;
    
    
    alpickerViewFecha  = [[ALPickerView alloc] initWithFrame:CGRectMake(715, 235, 190, 180) andIsActivatedAll:NO  ];
    alpickerViewFecha.delegate = self;
    
    
    alpickerViewPeriodo  = [[ALPickerView alloc] initWithFrame:CGRectMake(715, 195, 190, 180) andIsActivatedAll:NO  ];
    alpickerViewPeriodo.delegate = self;
    
    /*alpickerViewGfun  = [[ALPickerView alloc] initWithFrame:CGRectMake(423, 192, 380, 216)];
     alpickerViewGfun.delegate = self;
     
     alpickerViewFonc  = [[ALPickerView alloc] initWithFrame:CGRectMake(423, 223, 380, 216)];
     alpickerViewFonc.delegate = self;
     
     alpickerViewSfun  = [[ALPickerView alloc] initWithFrame:CGRectMake(423, 253, 380, 216)];
     alpickerViewSfun.delegate = self;*/
    
    alpickerViewProg  = [[ALPickerView alloc] initWithFrame:CGRectMake(423, 192, 380, 216) andIsActivatedAll:YES];
    alpickerViewProg.delegate = self;
    
    alpickerViewActi  = [[ALPickerView alloc] initWithFrame:CGRectMake(423, 223, 380, 216) andIsActivatedAll:YES];
    alpickerViewActi.delegate = self;
    
    alpickerViewDide  = [[ALPickerView alloc] initWithFrame:CGRectMake(600, 192, 380, 216) andIsActivatedAll:YES];
    alpickerViewDide.delegate = self;
    
    alpickerViewDver  = [[ALPickerView alloc] initWithFrame:CGRectMake(600, 223, 380, 216) andIsActivatedAll:YES  ];
    alpickerViewDver.delegate = self;
    
    alpickerViewEntidad  = [[ALPickerView alloc] initWithFrame:CGRectMake(600, 253, 380, 216) andIsActivatedAll:YES];
    alpickerViewEntidad.delegate = self;
    
    alpickerViewProyInv  = [[ALPickerView alloc] initWithFrame:CGRectMake(423, 253, 380, 216) andIsActivatedAll:YES];
    alpickerViewProyInv.delegate = self;
    
    alpickerViewPred  = [[ALPickerView alloc] initWithFrame:CGRectMake(423, 313, 380, 216) andIsActivatedAll:YES];
    alpickerViewPred.delegate = self;
    
    
    [self.view addSubview:alpickerViewUnidad];
    [self.view addSubview:alpickerViewCapitulo];
    [self.view addSubview:alpickerViewConcepto];
    [self.view addSubview:alpickerViewPrograma];
    [self.view addSubview:alpickerViewFecha];
    /*[self.view addSubview:alpickerViewGfun];
     [self.view addSubview:alpickerViewFonc];
     [self.view addSubview:alpickerViewSfun];*/
    [self.view addSubview:alpickerViewProg];
    [self.view addSubview:alpickerViewActi];
    [self.view addSubview:alpickerViewCcp];
    [self.view addSubview:alpickerViewDver];
    [self.view addSubview:alpickerViewDide];
    [self.view addSubview:alpickerViewEntidad];
    [self.view addSubview:alpickerViewProyInv];
    [self.view addSubview:alpickerViewPred];
    [self.view addSubview:alpickerViewPeriodo];
    
}
-(void) initButtons{
    buttonToHideUnidad = [[buttonWithStyle alloc] initWithFrame:CGRectMake(202, 413, 220, 45)];
    [buttonToHideUnidad addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
    
    buttonToHideCapitulo = [[buttonWithStyle alloc] initWithFrame:CGRectMake(202, 443, 220, 45)];
    [buttonToHideCapitulo addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
    
    
    buttonToHidePrograma = [[buttonWithStyle alloc] initWithFrame:CGRectMake(202, 475, 220, 45)];
    [buttonToHidePrograma addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
    
    buttonToHideConcepto = [[buttonWithStyle alloc] initWithFrame:CGRectMake(202, 512, 220, 45)];
    [buttonToHideConcepto addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
    
    buttonToHideCcp = [[buttonWithStyle alloc] initWithFrame:CGRectMake(142, 227, 220, 45)];
    [buttonToHideCcp addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
    
    buttonToHideFecha = [[buttonWithStyle alloc] initWithFrame:CGRectMake(728, 415, 155, 45)];
    [buttonToHideFecha addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
    
    
    buttonToHidePeriodo = [[buttonWithStyle alloc] initWithFrame:CGRectMake(728, 385, 155, 45)];
    [buttonToHidePeriodo addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
    
    /*buttonToHideGfun = [[buttonWithStyle alloc] initWithFrame:CGRectMake(503, 413, 220, 45)];
     [buttonToHideGfun addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
     
     buttonToHideFonc = [[buttonWithStyle alloc] initWithFrame:CGRectMake(503, 443, 220, 45)];
     [buttonToHideFonc addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
     
     buttonToHideSfun = [[buttonWithStyle alloc] initWithFrame:CGRectMake(503, 475, 220, 45)];
     [buttonToHideSfun addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];*/
    
    buttonToHideProg = [[buttonWithStyle alloc] initWithFrame:CGRectMake(503, 413, 220, 45)];
    [buttonToHideProg addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
    
    buttonToHideActi = [[buttonWithStyle alloc] initWithFrame:CGRectMake(503, 433, 220, 45)];
    [buttonToHideActi addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    buttonToHideDide = [[buttonWithStyle alloc] initWithFrame:CGRectMake(687, 413, 220, 45)];
    [buttonToHideDide addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
    
    buttonToHideDver = [[buttonWithStyle alloc] initWithFrame:CGRectMake(687, 443, 220, 45)];
    [buttonToHideDver addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
    
    buttonToHideEntidad = [[buttonWithStyle alloc] initWithFrame:CGRectMake(687, 475, 220, 45)];
    [buttonToHideEntidad addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
    
    buttonToHideProyInv = [[buttonWithStyle alloc] initWithFrame:CGRectMake(503, 475, 220, 45)];
    [buttonToHideProyInv addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
    
    buttonToHidePred = [[buttonWithStyle alloc] initWithFrame:CGRectMake(503, 575, 220, 45)];
    [buttonToHidePred addTarget:self action:@selector(hidePickerViewsforButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonToHideUnidad];
    [self.view addSubview:buttonToHideCapitulo];
    [self.view addSubview:buttonToHideConcepto];
    [self.view addSubview:buttonToHidePrograma];
    [self.view addSubview:buttonToHideCcp];
    [self.view addSubview:buttonToHideFecha];
    
    /*[self.view addSubview:buttonToHideGfun];
     [self.view addSubview:buttonToHideFonc];
     [self.view addSubview:buttonToHideSfun];*/
    [self.view addSubview:buttonToHideProg];
    [self.view addSubview:buttonToHideActi];
    
    [self.view addSubview:buttonToHideDide];
    [self.view addSubview:buttonToHideDver];
    [self.view addSubview:buttonToHideEntidad];
    [self.view addSubview:buttonToHideProyInv];
    
    [self.view addSubview:buttonToHidePred];
    
    
    [self.view addSubview:buttonToHidePeriodo];
    
}
-(void)initButtonText{
    
    
    int fecha_active = 0;
    for (NSString* key in selectionStatesFecha) {
        BOOL unidActive = [[selectionStatesFecha objectForKey:key ] boolValue]; // setObject:[NSNumber
        if (unidActive) {
            //[self asignaFechaArchivo:fecha_active ];
            NSString* modifica = [[NSString alloc] init];
            ArchivoDesc *ar = [arrayArchivos objectAtIndex:dateSelected];
            buttonSelectFecha.titleLabel.textAlignment = NSTextAlignmentLeft;
            [buttonSelectFecha setTitle:ar.descripcion forState:UIControlStateNormal];//.titleLabel.text
            
            
            //fecha_activ
        }
        fecha_active++;
    }
    
}

-(void)searchBar:(UISearchBar*)searchBar textDidChange:(NSString*)text
{
    if(text.length == 0)
    {
        isFiltered = FALSE;
        arrayCcp = [[NSMutableArray alloc] initWithArray:arrayCcpAll];
    }
    else
    {
        isFiltered = true;
        //filteredTableData = [[NSMutableArray alloc] init];
        arrayCcp = [[NSMutableArray alloc] init];
        for (ElemClave* cla in arrayCcpAll)
        {
            NSRange nameRange = [cla.descripcion rangeOfString:text options:NSCaseInsensitiveSearch];
            NSRange descriptionRange = [cla.clave rangeOfString:text options:NSCaseInsensitiveSearch];
            if(nameRange.location != NSNotFound || descriptionRange.location != NSNotFound){
                //if (nameRange.location !=NSNotFound) {
                [arrayCcp addObject:cla];
            }
        }
    }
    
    [self.alpickerViewCcp reloadAllComponents];
}


-(void)hideShowButtonsGraph{
    
    buttonOriGraf.hidden = !buttonOriGraf.hidden;
    buttonModGraf.hidden = !buttonModGraf.hidden;
    buttonDisGraf.hidden = !buttonDisGraf.hidden;
    buttonDis60Graf.hidden = !buttonDis60Graf.hidden;
    buttonModpGraf.hidden = !buttonModpGraf.hidden;
    buttonEjeGraf.hidden = !buttonEjeGraf.hidden;
    buttonDispGraf.hidden = !buttonDispGraf.hidden;
    viewHideElements.hidden = !viewHideElements.hidden;
    
    
    
}

-(void)initPopMenu{
    popMenu = [[PopupMenuTemplate alloc] initWithFrame:CGRectMake(315, 240, 360, 250) andIpad:NO andHowManyLabelMessage:1 andButton:YES andTextField:NO];
    [popMenu initButtonWithFrame: CGRectMake(130, 190, 80, 40 )];
    [popMenu setDelegate:self];
    [popMenu hide];
    [self hideShowButtons:buttonHideShowOtherButtons];
    [self.view addSubview:popMenu];
    [popMenu.labelMessage setFrame:CGRectMake(40, 20, 280, 180)];
    [popMenu.labelMessageTitle setFrame:CGRectMake(10, 5, 240, 40)];
    [popMenu.labelMessageTitle setFont:[UIFont fontWithName:@"System-Bold" size:35.0]];
    popMenu.labelMessage.numberOfLines = 7;
    [popMenu.labelMessage setFont:[UIFont fontWithName:@"System-Bold" size:20.0]];
    
}



-(IBAction)selectGraph:(UIButton *)sender{
    
    if (sender == buttonOriGraf) {
        stringGraphSelected = @"Original";
    }
    if (sender == buttonModGraf) {
        stringGraphSelected = @"Modificado anual";
    }
    if (sender == buttonDisGraf) {
        stringGraphSelected = @"Disponible anual";
    }
    if (sender == buttonDis60Graf) {
        stringGraphSelected = @"Disponible susceptible recorte";
    }
    
    if (sender == buttonModpGraf) {
        stringGraphSelected = @"Modificado al periodo";
    }
    if (sender == buttonEjeGraf) {
        stringGraphSelected = @"Ejercido";
    }
    
    if (sender == buttonDispGraf) {
        stringGraphSelected = @"Disponible al periodo";
    }
    arrayPptoSorted = [self cloneArrayPpto];
    
    [self generaGraficaWithLoading:buttonOriGraf];
    [self generaGraficaWithLoading:buttonOriGraf];
    mainDelegate.valChart = stringGraphSelected;
    
}




-(void)updateArrayArchivos{
    
    if (segmentedArchivos.selectedSegmentIndex == 0) {
        NSString *queryArchivosDiario = [@"http://desarrollo.salud.gob.mx/dgpop/json/consulta_diario_2013.php?anio=" stringByAppendingString:periodoSelected] ;
        arrayArchivos = [self obtainFromJson: queryArchivosDiario andKey:@"archivo" andDescripcion:@"descripcion" ];
    }else{
        @try {
            [mainDelegate.databaseConnection   readArchivos:[[@"SELECT id_reg_archivo, fc_nombre, fc_descripcion from pres_reg_archivos WHERE anio = '" stringByAppendingString:periodoSelected] stringByAppendingString: @"' ORDER BY id_reg_archivo DESC "]];
        }
        @catch (NSException *exception) {
            [mainDelegate.databaseConnection   readArchivos:[[@"SELECT id_reg_archivo, fc_nombre, fc_descripcion from pres_reg_archivos WHERE anio = '" stringByAppendingString:periodoSelected ] stringByAppendingString:@"' ORDER BY id_reg_archivo DESC "]];
        }
        arrayArchivos = mainDelegate.databaseConnection.arrayArchivos;
    }
    
    
}


- (IBAction)viewWasTouched:(UITapGestureRecognizer *)sender
{
    if (sender.numberOfTouches == 1) {
        CGPoint touchPoint = [sender locationOfTouch:0 inView:self.collectionViewClave];
        CGFloat touchX = touchPoint.x;
        CGFloat touchY = touchPoint.y;
        // is the touch in the bounds of the touchLabel?
        if (touchX >= 0 && touchY >= 0) {
            if (touchX <= self.collectionViewClave.bounds.size.width && touchY <= self.collectionViewClave.bounds.size.height) {
                //NSLog(@"View was touched");
                
                
            }
        }
    }
}


-(IBAction)activeDeactiveOnline:(UIButton *)sender{
    if (activeOnline) {
        UIImage *buttonImage = [UIImage imageNamed:@"wif1.png"];
        //[sender setBackgroundImage:buttonImage forState:UIControlStateNormal];
        [sender setImage:buttonImage forState:UIControlStateNormal];
        [buttonActiveOnline setImage:buttonImage forState:UIControlStateNormal];
        activeOnline = NO;
        [segmentedArchivos setSelectedSegmentIndex:1];
        [self segmentedControlIndexChanged:segmentedArchivos];
        
    }else{
        UIImage *buttonImage = [UIImage imageNamed:@"wif.png"];
        //[sender setBackgroundImage:buttonImage forState:UIControlStateNormal];
        [sender setImage:buttonImage forState:UIControlStateNormal];
        [buttonActiveOnline setImage:buttonImage forState:UIControlStateNormal];

        activeOnline = YES;
        [segmentedArchivos setSelectedSegmentIndex:0];
        [self segmentedControlIndexChanged:segmentedArchivos];
        
    }
    
    
    
    
}


-(void)dispatchTouchEvent:(UIView *)theView toPosition:(CGPoint)position
{
    if (CGRectContainsPoint([collectionViewDescripcion frame], position)) {
        [collectionViewDescripcion setCenter:CGPointMake(position.x, collectionViewDescripcion.center.y)];
        [collectionViewOriginal setCenter:CGPointMake(collectionViewDescripcion.center.x+130, collectionViewOriginal.center.y)];
        CGPoint pointOffset =  collectionViewDescripcion.contentOffset;
        int dif = position.y- currentPoint.y;
        //[collectionViewClave  setContentOffset: CGPointMake(pointOffset.x, pointOffset.y+dif)];
        //collectionViewClave.center.x = position.x;
        currentPoint = position;
        
    }
    
    
    
}

- (void)collectionViewDidScroll:(UICollectionView *)scrollView
{
    //NSLog(@" Offset = %@ ",NSStringFromCGPoint(scrollView.contentOffset));
}
- (void)touchesended:(NSSet*) touches withEvent:(UIEvent *)event {
    
    // UITouch *touch = [touch anyObject];
    //bild_1_1.image = [UIImage imageNamed:@"t_1_4.jpg"];
    [collectionViewClave  setContentOffset: CGPointMake(0.00, collectionViewClave.center.y)];
    
    //}
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    
    //NSLog(@"touch Movement");
    UITouch *touch = [[event allTouches] anyObject];
    for (UITouch *touch in touches) {
        [self dispatchTouchEvent:[touch view] toPosition:[touch locationInView:self.view]];
        //touchCount++;
    }
    
    /* if ([touch view] == collectionViewClave) {
     
     CGPoint location = [touch locationInView: self.view];
     
     collectionViewClave.center  = location;
     
     }
     */
}


/*
 -(void)dispatchTouchEndEvent:(UIView *)theView toPosition:(CGPoint)position
 {
 if (CGRectContainsPoint([firstPieceView frame], position)) {
 [self animateView:firstPieceView toPosition: position];
 }
 if (CGRectContainsPoint([secondPieceView frame], position)) {
 [self animateView:secondPieceView toPosition: position];
 }
 if (CGRectContainsPoint([thirdPieceView frame], position)) {
 [self animateView:thirdPieceView toPosition: position];
 }
 if (CGPointEqualToPoint(firstPieceView.center, secondPieceView.center) ||
 CGPointEqualToPoint(firstPieceView.center, thirdPieceView.center) ||
 CGPointEqualToPoint(secondPieceView.center, thirdPieceView.center)) {
 touchInstructionsText.text = @"Double tap the background to move the pieces apart.";
 piecesOnTop = YES;
 } else {
 piecesOnTop = NO;
 }
 }*/

-(void)cleanQueries{
    filPredWhere = @"";
    stringQueryUnidad =@"";
    stringQueryPrograma = @"";
    stringQueryCapitulo = @"";
    stringQueryConcepto = @"";
    /*stringQueryGfun= @"";
     stringQueryFonc = @"";
     stringQuerySfun = @"";*/
    stringQueryProg = @"";
    stringQueryActi = @"";
    stringQueryDide = @"";
    stringQueryDver = @"";
    stringQueryCcp =@"";
    stringQueryProyInv =@"";
    stringQueryEntidad =@"";
    stringQueryPred =@"";
    stringQueries = [[NSMutableArray alloc] init];
    [stringQueriesAlways addObject:stringQueryUnidad];
    [stringQueriesAlways addObject:stringQueryPrograma];
    [stringQueriesAlways addObject:stringQueryCapitulo];
    [stringQueriesAlways addObject:stringQueryConcepto];
    /*[stringQueriesAlways addObject:stringQueryGfun];
     [stringQueriesAlways addObject:stringQueryFonc];
     [stringQueriesAlways addObject:stringQuerySfun];*/
    [stringQueriesAlways addObject:stringQueryProg];
    [stringQueriesAlways addObject:stringQueryActi];
    [stringQueriesAlways addObject:stringQueryDide];
    [stringQueriesAlways addObject:stringQueryDver];
    [stringQueriesAlways addObject:stringQueryCcp];
    [stringQueriesAlways addObject:stringQueryProyInv];
    [stringQueriesAlways addObject:stringQueryEntidad];
    [stringQueriesAlways addObject:stringQueryPred];
    textFieldQueries.text = @"";
    
    //stringQueries = [[NSMutableArray alloc] init];
    
}



-(IBAction)generaPresupuestoWithLoading:(UIButton *)sender{
    int filaIni = [arrayPresupuesto count];
    AudioServicesPlaySystemSound(soundBubble);
    
    [loadingIndicator show:@"Generando reporte"];
    [self performSelector:@selector(generaPresupuesto:) withObject:sender afterDelay:.01];
    
    
}
-(void) hideShowElementsNearGraph{
    segmentedArchivos.hidden = !segmentedArchivos.hidden;
    segmentedControlSubtotal.hidden = !segmentedControlSubtotal.hidden;
    segmentedControlSubtotal2.hidden = !segmentedControlSubtotal2.hidden;
    buttonSelectFecha.hidden = !buttonSelectFecha.hidden;
    imageFecha.hidden = !imageFecha.hidden;
    labelSubtotales.hidden = !labelSubtotales.hidden;
    
    
}

-(void)cleanViewForTag:(int)tagToRemove andTextView:(UIView*)textView{
    for (UIView *subview in [textView  subviews]) {
        if (subview.tag == tagToRemove) {
            [subview removeFromSuperview];
        }
    }
    
}





-(IBAction)generaGraficaWithLoading:(UIButton *)sender{
    
    [self cleanViewForTag:8 andTextView:self.view];
    [viewHideElements setFrame:CGRectMake(0, 0,  1024, 768)];
    if (activeGraphic) {
        UIImage *imageForButton = [UIImage imageNamed:@"GRAAPAG.png"];
        [buttonGrafica setBackgroundImage:imageForButton forState:UIControlStateNormal];
        activeGraphic = NO;
        
    }else{
        [loadingIndicator show:@"Generando gráfica"];
        [self performSelector:@selector(generaGrafica:) withObject:sender afterDelay:.01];
        
        UIImage *imageForButton = [UIImage imageNamed:@"GRAENCE.png"];
        [buttonGrafica setBackgroundImage:imageForButton forState:UIControlStateNormal];
        activeGraphic = YES;
        
    }
    
    
    //if () {
    
    // }
    
    
    [self hideShowButtonsGraph];
    // [self hideShowElementsNearGraph];
    //  if (hostView_.hidden) {
    // }
    
}

-(IBAction)generaGrafica :(UIButton *)sender{
    /*if (hostView_.hidden) {
     
     arrayPptoSorted = [self cloneArrayPpto];
     [self initPlot];
     hostView_.hidden = NO;
     [loadingIndicator hide];
     
     }else{
     hostView_.hidden = YES;
     }*/
    
    
    arrayPptoSorted = [self cloneArrayPpto];
    //PCPieChart *pieChart = [[PCPieChart alloc] initWithFrame:CGRectMake(([self.view bounds].size.width-width)/2,([self.view bounds].size.height-height)/2,width,height)];
    //[pieChart setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleBottomMargin];
    
    //when the chart is bigger than screen we need a scroll view
    UIScrollView *scrollForChart = [[UIScrollView alloc] initWithFrame:CGRectMake(15, 65, 810, 630)];
    scrollForChart.scrollEnabled = YES;
    [scrollForChart setContentSize:CGSizeMake(810, 850)];
    [scrollForChart setPagingEnabled:YES];
    
    pieChart = [[PCPieChart alloc] initWithFrame:CGRectMake(5, 5, 780, 830)];
    pieChart.backgroundColor = [UIColor whiteColor];
    pieChart.showArrow = YES;
    UILabel *labelTitle = [[UILabel alloc] initWithFrame:CGRectMake(20, 16, 730, 35)];
    labelTitle.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:25];
    labelTitle.textColor = [UIColor whiteColor];
    labelTitle.text =  [@"Presupuesto " stringByAppendingString: mainDelegate.valChart];
    labelTitle.textAlignment = NSTextAlignmentCenter;
    
    UILabel *labelTitle2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 40, 730, 35)];
    labelTitle2.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:14];
    labelTitle2.textColor = [UIColor whiteColor];
    Reporte *repor1 = [Reports objectAtIndex:0];
    
    labelTitle2.text =  [@"Generado por  " stringByAppendingString: repor1.descripcion];
    labelTitle2.textAlignment = NSTextAlignmentCenter;
    
    labelTitle.tag = 8;
    labelTitle2.tag = 8;
    [self.view addSubview:labelTitle];
    [self.view addSubview:labelTitle2];
    int height =  200;   //[pieChart bounds].size.width/3*2.; // 220;
    int width =  [pieChart bounds].size.width; //320;
    [pieChart setDiameter:width/3.0];
    [pieChart setSameColorLabel:YES];
    [scrollForChart addSubview:pieChart];
    scrollForChart.tag = 8;
    [self.view addSubview:scrollForChart];
    
    if ([[UIDevice currentDevice] userInterfaceIdiom]==UIUserInterfaceIdiomPad)
    {
        pieChart.titleFont = [UIFont fontWithName:@"HelveticaNeue-Bold" size:15];
        pieChart.percentageFont = [UIFont fontWithName:@"HelveticaNeue-Bold" size:40];
    }
    
    /*NSString *sampleFile = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"sample_piechart_data.plist"];
     NSDictionary *sampleInfo = [NSDictionary dictionaryWithContentsOfFile:sampleFile];*/
    NSMutableArray *components = [NSMutableArray array];
    int i = 0;
    for (Presupuesto *ppto in arrayPptoSorted){
        
        NSString *labelItem = [[ppto.clave stringByAppendingString:@" - "] stringByAppendingString:ppto.descripcion];
        PCPieComponent *component = [PCPieComponent pieComponentWithTitle:labelItem value:0.00];
        if ([mainDelegate.valChart isEqualToString:@"Original"]){
            component.value = ppto.original;
        }else if ([mainDelegate.valChart isEqualToString:@"Modificado anual"]){
            component.value = ppto.modificado;
        }else if ([mainDelegate.valChart isEqualToString:@"Disponible anual"]){
            component.value = ppto.disponible;
        }else if ([mainDelegate.valChart isEqualToString:@"Disponible susceptible recorte"]){
            component.value = ppto.dispo60;
        }else if ([mainDelegate.valChart isEqualToString:@"Modificado al periodo"]){
            component.value = ppto.modp;
        }else if ([mainDelegate.valChart isEqualToString:@"Ejercido"]){
            component.value = ppto.ejercido;
        }else if ([mainDelegate.valChart isEqualToString:@"Disponible al periodo"]){
            component.value = ppto.disponiblep;
            
        }
        
        [components addObject:component];
        
        if (i==0)
        {
            [component setColour:PCColorYellow];
        }
        else if (i==1)
        {
            [component setColour:PCColorGreen];
        }
        //the new color version
        else if ((i%7)==0)
        {
            [component setColour:PCColorYellow];
        }
        else if ((i%8)==0)
        {
            [component setColour:PCColorBlue];
        }
        else if ((i%9)==0)
        {
            [component setColour:PCColorGreen];
        }
        else if ((i%10)==0)
        {
            [component setColour:PCColorRed];
        }
        else if ((i%11)==0)
        {
            [component setColour:PCColorOrange];
        }
        else if ((i%4)==0)
        {
            [component setColour:PCColorBlue];
        }
        else if ((i%5)==0)
        {
            [component setColour:PCColorYellow];
        }
        else if ((i%6)==0)
        {
            [component setColour:PCColorGreen];
        }
        
        
        else if ((i%2)==0)
        {
            [component setColour:PCColorOrange];
        }
        else if ((i%3)==0)
        {
            [component setColour:PCColorRed];
        }
        else{
            [component setColour:PCColorRed];
        }
        i++;
    }
    [pieChart setComponents:components];
    
    
    
    
    
    
    
    
    
    [loadingIndicator hide];
    
    
    /*mainDelegate.arrayForGraph = arrayPptoSorted;
     [loadingIndicator hide];
     PieChartViewController *detailViewController = [[PieChartViewController alloc] init];
     detailViewController.view.tag = 8;*/
    
    //    [self.view addSubview:detailViewController.view];
    //[self.navigationController pushViewController:detailViewController animated:YES];
    
    
}
-(NSMutableArray*)sortArrayPpto:(NSString*)column andArray:(NSMutableArray *)arrayToSort  andAscending:(BOOL)asc{
    NSMutableArray *arraypas = [[NSMutableArray alloc] initWithArray:arrayToSort];
    //arraypas = arrayToSort;
    [arraypas removeLastObject];
    NSSortDescriptor *sort=[NSSortDescriptor sortDescriptorWithKey:column ascending:asc];
    [arraypas sortUsingDescriptors:[NSArray arrayWithObject:sort]];
    
    return arraypas;
}
-(NSMutableArray*)cloneArrayPpto{
    
    //NSMutableArray *arraypas = [[NSMutableArray alloc] initWithArray:arrayPresupuesto ];
    //Which report??
    
    NSMutableArray *arraypas = [[NSMutableArray alloc] init];
    Reporte *repor = [Reports objectAtIndex:0];
    for (int i = 0; i< repor.filaFin; i++ ) {
        Presupuesto *ppt = [arrayPresupuesto objectAtIndex:i];
        [arraypas addObject:ppt];
    }
    
    //arraypas = arrayPresupuesto;
    Presupuesto *ptr = [arrayPresupuesto objectAtIndex:[arrayPresupuesto count]-1];
    double importMax;
    if ([stringGraphSelected isEqualToString: @"Original"]) {
        arraypas = [self sortArrayPpto:@"original" andArray:arraypas andAscending:NO];
        importMax = ptr.original;
    }else if ([stringGraphSelected isEqualToString: @"Modificado anual"]) {
        arraypas = [self sortArrayPpto:@"modificado" andArray:arraypas andAscending:NO];
        importMax = ptr.modificado;
    }else if ([stringGraphSelected isEqualToString: @"Disponible anual"]) {
        arraypas = [self sortArrayPpto:@"disponible" andArray:arraypas andAscending:NO];
        importMax = ptr.disponible;
    }else if ([stringGraphSelected isEqualToString: @"Disponible susceptible recorte"]) {
        arraypas = [self sortArrayPpto:@"dispo60" andArray:arraypas andAscending:NO];
        importMax = ptr.dispo60;
    }else if ([stringGraphSelected isEqualToString: @"Modificado al periodo"]) {
        arraypas = [self sortArrayPpto:@"modp" andArray:arraypas andAscending:NO];
        importMax = ptr.modp;
    }else if ([stringGraphSelected isEqualToString: @"Ejercido"]) {
        arraypas = [self sortArrayPpto:@"ejercido" andArray:arraypas andAscending:NO];
        importMax = ptr.ejercido;
    }else if ([stringGraphSelected isEqualToString: @"Disponible al periodo"]) {
        arraypas = [self sortArrayPpto:@"disponiblep" andArray:arraypas andAscending:NO];
        importMax = ptr.disponiblep;
    }
    BOOL keepSearching= TRUE;
    double sum =0.00;
    sumOthers=0.00;
    int lastIndex=0;
    for (Presupuesto *ptr in arraypas) {
        double importeCompare;
        
        if ([stringGraphSelected isEqualToString: @"Original"]) {
            importeCompare = ptr.original;
        }else if ([stringGraphSelected isEqualToString: @"Modificado anual"]) {
            importeCompare = ptr.modificado;
        }else if ([stringGraphSelected isEqualToString: @"Disponible anual"]) {
            importeCompare = ptr.disponible;
        }else if ([stringGraphSelected isEqualToString: @"Disponible susceptible recorte"]) {
            importeCompare = ptr.dispo60;
        }else if ([stringGraphSelected isEqualToString: @"Modificado al periodo"]) {
            importeCompare = ptr.modp;
        }else if ([stringGraphSelected isEqualToString: @"Ejercido"]) {
            importeCompare = ptr.ejercido;
        }else if ([stringGraphSelected isEqualToString: @"Disponible al periodo"]) {
            importeCompare = ptr.disponiblep;
        }else{
            importeCompare=0.00;
        }
        if (keepSearching) {
            float percentage =((double)(importeCompare))/(double)importMax;
            if (percentage>=.03){  //only % > 3.0
                sum+=importeCompare;
                lastIndex++;
            }else{
                keepSearching = NO;
                sumOthers+=importeCompare;
            }
        }else{
            
            sumOthers+=importeCompare;
        }
        
        
        
    }
    //int countArray = [arraypas count];
    while ([arraypas count]>lastIndex ) {
        [arraypas removeLastObject];
    }
    Presupuesto *pptoOthers = [[Presupuesto alloc] initWithClave:@"Otros" andDescripcion:@"Otros" andOriginal:sumOthers andModificado:sumOthers andDisponible:sumOthers andDispo60:sumOthers andModp:sumOthers andEjercido:sumOthers andDisponiblep:sumOthers];
    [arraypas addObject:pptoOthers];
    /* for (int i = lastIndex; i<countArray; i++) {
     [arraypas remo removeObjectAtIndex:i];
     }*/
    
    return arraypas;
}

-(NSString*)getAndOrQuery{
    NSString *queryAndS = @"";
    
    if (segmentedUrCap.selectedSegmentIndex ==0) { //AND
        queryAndS = [queryAndS stringByAppendingString:@"LOGICUN=AND"];
    }else{
        queryAndS =[queryAndS stringByAppendingString:@"LOGICUN=OR"];
    }
    
    if (segmentedCapPrograma.selectedSegmentIndex ==0) { //AND
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICCA=AND"];
    }else{
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICCA=OR"];
    }
    
    if (segmentedProgramaCon.selectedSegmentIndex ==0) { //AND
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICPR=AND"];
    }else{
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICPR=OR"];
    }
    
    if (segmentedConPar.selectedSegmentIndex ==0) { //AND
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICCO=AND"];
    }else{
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICCO=OR"];
    }
    
    if (segmentedParProg.selectedSegmentIndex ==0) { //AND
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICCC=AND"];
    }else{
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICCC=OR"];
    }
    
    if (segmentedProgActi.selectedSegmentIndex ==0) { //AND
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICPRO=AND"];
    }else{
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICPRO=OR"];
    }
    
    if (segmentedActiProy.selectedSegmentIndex ==0) { //AND
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICAC=AND"];
    }else{
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICAC=OR"];
    }
    
    if (segmentedProyDide.selectedSegmentIndex ==0) { //AND
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICPROY=AND"];
    }else{
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICPROY=OR"];
    }
    
    if (segmentedDideDver.selectedSegmentIndex ==0) { //AND
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICDV=AND"];
    }else{
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICDV=OR"];
    }
    
    if (segmentedDverEnt.selectedSegmentIndex ==0) { //AND
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICEN=AND"];
    }else{
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICEN=OR"];
    }
    
    if (segmentedPred.selectedSegmentIndex ==0) { //AND
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICFIL=AND"];
    }else{
        queryAndS =[queryAndS stringByAppendingString:@"&LOGICFIL=OR"];
    }
    
    return [queryAndS lowercaseString];
}

-(void)cleanSorts{
    sortOriginal = NO;
    sortClave = NO;
    sortDispo60 = NO;
    sortDisponible = NO;
    sortModp = NO;
    sortModificado = NO;
    sortEjercido = NO;
    sortDispop = NO;
    
}



-(IBAction)generaPresupuesto:(UIButton *)sender{
    [self cleanSorts];
    
    NSString *query;
    //arrayPresupuesto = [[NSMutableArray alloc] init];
    NSString *key;
    NSString *queryComposed=@"";
    
    
    for (NSString *obj in stringQueries) {
        if (![obj isEqualToString:@""]) {
            queryComposed = [[queryComposed stringByAppendingString:@"&"] stringByAppendingString:obj];
        }
    }
    //THE AND_OR CONTROL
    
    NSString *queryAndOr = [self getAndOrQuery];
    queryComposed = [[queryComposed stringByAppendingString:@"&"] stringByAppendingString:queryAndOr];
    if (segmentedControlSubtotal.selectedSegmentIndex == 0) {
        // query = [[@"http://desarrollo.salud.gob.mx/dgpop/json/genera_ppto_clave.php"
        
        query = [[mainDelegate.currentLink stringByAppendingString:archivoSeleccionado ] stringByAppendingString:@"&tipo=unidad"];
        key = @"unidad";
        
    }else if (segmentedControlSubtotal.selectedSegmentIndex == 1){
        query = [[mainDelegate.currentLink stringByAppendingString:archivoSeleccionado ] stringByAppendingString:@"&tipo=capitulo"];
        key = @"capitulo";
    }else if (segmentedControlSubtotal.selectedSegmentIndex == 2){
        query = [[mainDelegate.currentLink stringByAppendingString:archivoSeleccionado ] stringByAppendingString:@"&tipo=programa"];
        key = @"programa";
    }else if (segmentedControlSubtotal.selectedSegmentIndex == 3){
        query = [[mainDelegate.currentLink stringByAppendingString:archivoSeleccionado ] stringByAppendingString:@"&tipo=concepto"];
        key = @"concepto";
    }else if (segmentedControlSubtotal.selectedSegmentIndex == 4){
        query = [[mainDelegate.currentLink stringByAppendingString:archivoSeleccionado ] stringByAppendingString:@"&tipo=partida"];
        key = @"partida";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex == 0){
        query = [[mainDelegate.currentLink stringByAppendingString:archivoSeleccionado ] stringByAppendingString:@"&tipo=gfun"];
        key = @"gfun";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex == 1){
        query = [[mainDelegate.currentLink stringByAppendingString:archivoSeleccionado ] stringByAppendingString:@"&tipo=prog"];
        key = @"prog";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex == 2){
        query = [[mainDelegate.currentLink stringByAppendingString:archivoSeleccionado ] stringByAppendingString:@"&tipo=acti"];
        key = @"acti";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex == 3){
        query = [[mainDelegate.currentLink stringByAppendingString:archivoSeleccionado ] stringByAppendingString:@"&tipo=dide"];
        key = @"dide";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex == 4){
        query = [[mainDelegate.currentLink stringByAppendingString:archivoSeleccionado ] stringByAppendingString:@"&tipo=entidad"];
        key = @"entidad";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex == 5){
        query = [[mainDelegate.currentLink stringByAppendingString:archivoSeleccionado ] stringByAppendingString:@"&tipo=proyinv"];
        key = @"proyinv";
    }
    
    
    if (segmentedArchivos.selectedSegmentIndex == 0) {  //web
        
        NSString *capitalized = [[[key substringToIndex:1] uppercaseString] stringByAppendingString:[key substringFromIndex:1]];
        reporSelected = capitalized;
        [buttonTitleClave setTitle:reporSelected forState:UIControlStateNormal];
        
        query = [query stringByAppendingString:queryComposed];
        query = [[query stringByAppendingString:@"&select_table="] stringByAppendingString:archivoCurrent.select_table];
        query = [[query stringByAppendingString:@"&anio="] stringByAppendingString:archivoCurrent.anio];
        
        finalQuery = query;
        NSLog(@"%@", query);
        @try{
            NSMutableArray *tempArray = [[NSMutableArray alloc] init];
            tempArray = [self obtainFromJson:query andKey:key andDescripcion:@"presupuesto" ];
            if ([tempArray count]!= 0) {
                int filaIni = [arrayPresupuesto count];
                int idNue = [Reports count]+1;
                int numFilas = [tempArray count];
                NSRange end = [archivoSeleccionado rangeOfString:@"="];
                NSString *modifica  = [archivoSeleccionado substringWithRange:NSMakeRange(end.location+1,10 )];
                Reporte *report1 = [[Reporte alloc] initWithId:idNue andNumFilas:numFilas andFilaIni:filaIni andFilaFin:numFilas+filaIni andFiltro:@"" andDescripcion:[@"" stringByAppendingString:key] andQuery:finalQuery andFecha:modifica andFechaTotal:buttonSelectFecha.titleLabel.text];
                [Reports addObject:report1];
                [self addToArrayPresupuesto:tempArray];
                for (int i = 0; i<= ([tempArray count] *11); i++) {
                    [arrayCellSelected addObject:@"NO"];
                }
                
                
            }
            
            [collectionViewRepor reloadData];
            //[collectionViewRepor  scrollRectToVisible:CGRectMake(0,480 , 1000, 480) animated:YES];//
            //[collectionViewRepor setContentOffset:CGPointMake(0, 1500) animated:YES];
            [collectionViewReporPdf reloadData];
            [collectionViewClave reloadData];
            [collectionViewDescripcion reloadData];
            [collectionViewOriginal reloadData];
            [collectionViewModificado reloadData];
            [collectionViewDisponible reloadData];
            [collectionViewDispo60 reloadData];
            [collectionViewModp reloadData];
            [collectionViewEjercido reloadData];
            [collectionViewDisponiblep reloadData];
            [self showButtonsGraphicsCsvPdf];
            
            if ([Reports count] == 1) {
                reporSelected = key;
            }else{
                reporSelected = @"Clave";
            }
            [buttonTitleClave setTitle:reporSelected forState:UIControlStateNormal];
            
            
        }
        @catch (NSException *exception) {
            [collectionViewRepor reloadData];
            [collectionViewReporPdf reloadData];
            [popMenu show:@"No existen registros a mostrar con la consulta seleccionada, o existe error en la obtención de datos, verifique su conexión o pruebe cambiando los filtros" andTitle:@""];
            [self hideButtonsGraphicsCsvPdf];
        }
        
    }else{   //descargados
        @try{
            NSString *query1 = [self queryLogicModel:@"detail"];
            NSString *queryTotal = [self queryLogicModel:@"total"];
            finalQuery = query1;
            
            
            [mainDelegate.databaseConnection readFromPpto: query1];
            [mainDelegate.databaseConnection readFromPptoTotal:queryTotal];
            
            if ([mainDelegate.databaseConnection.arrayPresupuesto count] != 0) {
                NSMutableArray *tempArray = [[NSMutableArray alloc] init];
                tempArray = [[NSMutableArray alloc] initWithArray:mainDelegate.databaseConnection.arrayPresupuesto];
                if ([tempArray count]!= 0) {
                    int filaIni = [arrayPresupuesto count];
                    int idNue = [Reports count]+1;
                    int numFilas = [tempArray count];
                    NSRange end = [archivoSeleccionado rangeOfString:@"="];
                    NSString *modifica  = [archivoSeleccionado substringWithRange:NSMakeRange(end.location+1,10 )];
                    Reporte *report1 = [[Reporte alloc] initWithId:idNue andNumFilas:numFilas andFilaIni:filaIni andFilaFin:numFilas+filaIni andFiltro:@"" andDescripcion:[@"" stringByAppendingString:key] andQuery:finalQuery andFecha:modifica andFechaTotal:buttonSelectFecha.titleLabel.text];
                    [Reports addObject:report1];
                    [self addToArrayPresupuesto:tempArray];
                    for (int i = 0; i<= ([tempArray count] *11); i++) {
                        [arrayCellSelected addObject:@"NO"];
                    }
                    
                    
                }
                [collectionViewRepor reloadData];
                //[collectionViewRepor setContentOffset:CGPointMake(0, 1500) animated:YES];
                [collectionViewReporPdf reloadData];
                [collectionViewClave reloadData];
                [collectionViewDescripcion reloadData];
                [collectionViewOriginal reloadData];
                [collectionViewModificado reloadData];
                [collectionViewDisponible reloadData];
                [collectionViewDispo60 reloadData];
                [collectionViewModp reloadData];
                [collectionViewEjercido reloadData];
                [collectionViewDisponiblep reloadData];
                [self showButtonsGraphicsCsvPdf];
                if ([Reports count] == 1) {
                    reporSelected = key;
                }else{
                    reporSelected = @"Clave";
                }
                [buttonTitleClave setTitle:reporSelected forState:UIControlStateNormal];
            }
            
        }@catch (NSException *exception) {
            [collectionViewRepor reloadData];
            [collectionViewReporPdf reloadData];
            [popMenu show:@"No existen registros a mostrar con la consulta seleccionada, o existe error en la obtención de datos, verifique su conexión o pruebe cambiando los filtros" andTitle:@""];
            [self hideButtonsGraphicsCsvPdf];
            
            
            if ([Reports count] == 1) {
                reporSelected = key;
            }else{
                reporSelected = @"Clave";
            }
            [buttonTitleClave setTitle:reporSelected forState:UIControlStateNormal];
            
            
            
        }
        
    }
    
    
    [loadingIndicator hide];
}

-(void)setFirstImage{
    
    UIImage *imageForButton = [UIImage imageNamed:@"PDFAPAG.png"];
    [buttonSendPdf setBackgroundImage:imageForButton forState:UIControlStateNormal];
    
    imageForButton = [UIImage imageNamed:@"GRAAPAG.png"];
    [buttonGrafica setBackgroundImage:imageForButton forState:UIControlStateNormal];
    
    
}

-(void)hideButtonsGraphicsCsvPdf{
    buttonSendCsv.hidden = YES;
    buttonSendPdf.hidden = YES;
    buttonGrafica.hidden = YES;
    activeSend = NO;
    activeGraphic = NO;
    [self setFirstImage];
    
    
    
}

-(void)showButtonsGraphicsCsvPdf{
    buttonSendCsv.hidden = NO;
    buttonSendPdf.hidden = NO;
    buttonGrafica.hidden = NO;
    
}

-(void)addToArrayPresupuesto:(NSMutableArray *) arrayToAdd{
    
    for (Presupuesto * pre in arrayToAdd) {
        [arrayPresupuesto addObject:pre];
    }
    
}







-(IBAction)sortPpto:(UIButton*)sender{
    NSMutableArray *arraypas;
    NSMutableArray *arraypasFinal = [[NSMutableArray alloc] init];
    
    
    
    
    
    
    for (Reporte *repor in Reports) {
        
        arraypas= [[NSMutableArray alloc] initWithArray:[arrayPresupuesto subarrayWithRange:NSMakeRange(repor.filaIni, repor.filaFin-repor.filaIni)  ]];
        if (sender == buttonTitleClave ) {
            arraypas = [self sortArrayPpto:@"clave" andArray:arraypas andAscending:sortClave];
        }else if ([sender.titleLabel.text isEqualToString: @"Original"]) {
            arraypas = [self sortArrayPpto:@"original" andArray:arraypas andAscending:sortOriginal];
        }else if ([sender.titleLabel.text isEqualToString: @"Modificado"]) {
            arraypas = [self sortArrayPpto:@"modificado" andArray:arraypas andAscending:sortModificado];
        }else if ([sender.titleLabel.text isEqualToString: @"Disponible"]) {
            arraypas = [self sortArrayPpto:@"disponible" andArray:arraypas andAscending:sortDisponible];
        }else if ([sender.titleLabel.text isEqualToString: @"Dispo 60 dias"]) {
            arraypas = [self sortArrayPpto:@"dispo60" andArray:arraypas andAscending: sortDispo60];
        }else if ([sender.titleLabel.text isEqualToString: @"Mod periodo"]) {
            arraypas = [self sortArrayPpto:@"modp" andArray:arraypas andAscending:sortModp];
        }else if ([sender.titleLabel.text isEqualToString: @"Ejercido"]) {
            arraypas = [self sortArrayPpto:@"ejercido" andArray:arraypas andAscending:sortEjercido];
        }else if ([sender.titleLabel.text isEqualToString: @"Dis Periodo"]) {
            arraypas = [self sortArrayPpto:@"disponiblep" andArray:arraypas andAscending:sortDispop];
        }
        
        //Presupuesto *ptr = [arrayPresupuesto lastObject];
        Presupuesto *ptr = [arrayPresupuesto objectAtIndex:repor.filaFin-1];
        [arraypas addObject:ptr];
        
        if ([arraypas count] != 0) {
            [arraypasFinal addObjectsFromArray:arraypas];
        }
    }
    
    
    
    arrayPresupuesto = [[NSMutableArray alloc] initWithArray: arraypasFinal];
    [collectionViewRepor reloadData];
    [collectionViewReporPdf reloadData];
    
    
    //updating flags
    
    if (sender == buttonTitleClave ) {
        sortClave = !sortClave;
    }else if ([sender.titleLabel.text isEqualToString: @"Original"]) {
        sortOriginal = !sortOriginal;
    }else if ([sender.titleLabel.text isEqualToString: @"Modificado"]) {
        sortModificado = !sortModificado;
    }else if ([sender.titleLabel.text isEqualToString: @"Disponible"]) {
        sortDisponible = !sortDisponible;
    }else if ([sender.titleLabel.text isEqualToString: @"Dispo 60 dias"]) {
        sortDispo60 = !sortDispo60;
    }else if ([sender.titleLabel.text isEqualToString: @"Mod periodo"]) {
        sortModp = !sortModp;
    }else if ([sender.titleLabel.text isEqualToString: @"Ejercido"]) {
        sortEjercido = !sortEjercido;
    }else if ([sender.titleLabel.text isEqualToString: @"Dis Periodo"]) {
        sortDispop = !sortDispop;
    }
    
}


-(NSString*) convertFromPred:(NSString*)pred{
    NSString *stringToReturn = @"";
    NSString *whereFecha;
    NSRange end = [archivoSeleccionado rangeOfString:@"="];
    //NSString *modifica  = [archivoSeleccionado substringWithRange:NSMakeRange(end.location+1,archivoSeleccionado.length-end.location-1 )];
    NSString *modifica  = [archivoSeleccionado substringWithRange:NSMakeRange(end.location+1,10 )];
    whereFecha = [[@" fecha= '" stringByAppendingString:modifica] stringByAppendingString:@"'"];
    if ([pred isEqualToString:@"SPO"]) {
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND UNIDAD != 'U00' )"];
    }else if ([pred isEqualToString:@"GOP"]) {
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND CAP <= 3 )"];
    }else if ([pred isEqualToString:@"SPE"]) {
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND CAP != 1 )"];
    }else if ([pred isEqualToString:@"SUB"]) {
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND CAP != 4 )"];
    }else if ([pred isEqualToString:@"GIN"]) {
        stringToReturn = [[[[[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND CAP = 5 "] stringByAppendingString:@" OR ("] stringByAppendingString:whereFecha] stringByAppendingString:@" AND CAP = 6))"] ;
    }else if ([pred isEqualToString:@"SEF"]) {
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND PARTIDA = 43801 )"];
    }else if ([pred isEqualToString:@"CSO"]) {
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND CON = 36 )"];
    }else if ([pred isEqualToString:@"MED"]) {
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND PARTIDA = 25301 )"];
    }else if ([pred isEqualToString:@"CEN"]) {
        //        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND UNIDAD >= 1 )"];
        
        if (yaUnid == 2) {
            yaUnid = 4;
        }else if (yaUnid == 3){
            yaUnid = 5;
        }else if (yaUnid == 6){
            yaUnid = 7;
        }else{
            yaUnid = 1;
        }
        
        
    }else if ([pred isEqualToString:@"ENT"]) {
        if (yaUnid == 1) {
            yaUnid = 5;
        }else if (yaUnid == 2){
            yaUnid = 6;
        }else if (yaUnid == 4){
            yaUnid = 7;
        }else{
            yaUnid = 3;
        }
        
    }else if ([pred isEqualToString:@"ORG"]) {
        if (yaUnid == 1) {
            yaUnid = 4;
        }else if (yaUnid == 3){
            yaUnid = 6;
        }else if (yaUnid == 5){
            yaUnid = 7;
            
        }else{
            yaUnid = 2;
        }
        
    }else if ([pred isEqualToString:@"ASE"]) {
        stringToReturn = [[[[[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND PARTIDA >= 33100 "] stringByAppendingString:@" AND ("] stringByAppendingString:whereFecha] stringByAppendingString:@" AND PARTIDA <= 33199))"] ;
    }else if ([pred isEqualToString:@"ISN"]) {
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND PARTIDA = 39801 )"];
    }else if ([pred isEqualToString:@"FID"]) {
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND PARTIDA = 46101 )"];
        
        
    }
    
    
    
    return stringToReturn;
}


-(NSString*) obtainUnidCombination:(int)comb{
    NSString *stringToReturn=@"";
    NSString *whereFecha;
    NSRange end = [archivoSeleccionado rangeOfString:@"="];
    //NSString *modifica  = [archivoSeleccionado substringWithRange:NSMakeRange(end.location+1,archivoSeleccionado.length-end.location-1 )];
    NSString *modifica  = [archivoSeleccionado substringWithRange:NSMakeRange(end.location+1,10 )];
    whereFecha = [[@" fecha= '" stringByAppendingString:modifica] stringByAppendingString:@"'"];
    if (comb == 0) {
        stringToReturn = @"";
    }else if (comb == 1){
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND (UNIDAD = '100' OR UNIDAD = '111' OR UNIDAD = '112' OR UNIDAD = '113' OR UNIDAD = '114' OR UNIDAD = '160' OR UNIDAD = '170' OR UNIDAD = '171' OR UNIDAD = '172' OR UNIDAD = '180' OR UNIDAD = '300' OR UNIDAD = '310' OR UNIDAD = '313' OR UNIDAD = '315' OR UNIDAD = '316' OR UNIDAD = '500' OR UNIDAD = '510' OR UNIDAD = '511' OR UNIDAD = '512' OR UNIDAD = '513' OR UNIDAD = '514' OR UNIDAD = '600' OR UNIDAD = '610' OR UNIDAD = '611' OR UNIDAD = '613' OR UNIDAD = '614'))"];
        
    }else if (comb == 2){
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND (UNIDAD= 'E00' OR UNIDAD = 'I00' OR UNIDAD = 'K00' OR UNIDAD = 'L00' OR UNIDAD = 'M00' OR UNIDAD = 'N00' OR UNIDAD = 'O00' OR UNIDAD = 'Q00' OR UNIDAD = 'R00' OR UNIDAD = 'S00' OR UNIDAD = 'T00' OR UNIDAD = 'U00' OR UNIDAD = 'V00' OR UNIDAD = 'W00' OR UNIDAD = 'X00' ))"];
        
    }else if (comb==3){
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND (UNIDAD ='AYK' OR UNIDAD = 'M7A' OR UNIDAD = 'M7F' OR UNIDAD = 'M7K' OR UNIDAD = 'NAW' OR UNIDAD = 'NBB' OR UNIDAD = 'NBD' OR UNIDAD = 'NBG' OR UNIDAD = 'NBQ' OR UNIDAD = 'NBR' OR UNIDAD = 'NBS' OR UNIDAD = 'NBT' OR UNIDAD = 'NBV' OR UNIDAD = 'NCA' OR UNIDAD = 'NCD' OR UNIDAD = 'NCG' OR UNIDAD = 'NCH' OR UNIDAD = 'NCK' OR UNIDAD = 'NCZ' OR UNIDAD = 'NDE' OR UNIDAD = 'NDF' OR UNIDAD = 'NDY' OR UNIDAD = 'NEF' OR UNIDAD = 'NHK' OR UNIDAD = 'NCE' OR UNIDAD = 'NBU' ) )"];
    }else if (comb==4){
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND (UNIDAD = '100' OR UNIDAD = '111' OR UNIDAD = '112' OR UNIDAD = '113' OR UNIDAD = '114' OR UNIDAD = '160' OR UNIDAD = '170' OR UNIDAD = '171' OR UNIDAD = '172' OR UNIDAD = '180' OR UNIDAD = '300' OR UNIDAD = '310' OR UNIDAD = '313' OR UNIDAD = '315' OR UNIDAD = '316' OR UNIDAD = '500' OR UNIDAD = '510' OR UNIDAD = '511' OR UNIDAD = '512' OR UNIDAD = '513' OR UNIDAD = '514' OR UNIDAD = '600' OR UNIDAD = '610' OR UNIDAD = '611' OR UNIDAD = '613' OR UNIDAD = '614' OR UNIDAD= 'E00' OR UNIDAD = 'I00' OR UNIDAD = 'K00' OR UNIDAD = 'L00' OR UNIDAD = 'M00' OR UNIDAD = 'N00' OR UNIDAD = 'O00' OR UNIDAD = 'Q00' OR UNIDAD = 'R00' OR UNIDAD = 'S00' OR UNIDAD = 'T00' OR UNIDAD = 'U00' OR UNIDAD = 'V00' OR UNIDAD = 'W00' OR UNIDAD = 'X00'))"];
    }else if (comb == 5){
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND (UNIDAD = '100' OR UNIDAD = '111' OR UNIDAD = '112' OR UNIDAD = '113' OR UNIDAD = '114' OR UNIDAD = '160' OR UNIDAD = '170' OR UNIDAD = '171' OR UNIDAD = '172' OR UNIDAD = '180' OR UNIDAD = '300' OR UNIDAD = '310' OR UNIDAD = '313' OR UNIDAD = '315' OR UNIDAD = '316' OR UNIDAD = '500' OR UNIDAD = '510' OR UNIDAD = '511' OR UNIDAD = '512' OR UNIDAD = '513' OR UNIDAD = '514' OR UNIDAD = '600' OR UNIDAD = '610' OR UNIDAD = '611' OR UNIDAD = '613' OR UNIDAD = '614' OR UNIDAD ='AYK' OR UNIDAD = 'M7A' OR UNIDAD = 'M7F' OR UNIDAD = 'M7K' OR UNIDAD = 'NAW' OR UNIDAD = 'NBB' OR UNIDAD = 'NBD' OR UNIDAD = 'NBG' OR UNIDAD = 'NBQ' OR UNIDAD = 'NBR' OR UNIDAD = 'NBS' OR UNIDAD = 'NBT' OR UNIDAD = 'NBV' OR UNIDAD = 'NCA' OR UNIDAD = 'NCD' OR UNIDAD = 'NCG' OR UNIDAD = 'NCH' OR UNIDAD = 'NCK' OR UNIDAD = 'NCZ' OR UNIDAD = 'NDE' OR UNIDAD = 'NDF' OR UNIDAD = 'NDY' OR UNIDAD = 'NEF' OR UNIDAD = 'NHK' OR UNIDAD = 'NCE' OR UNIDAD = 'NBU'))"];
        
    }else if (comb == 6){
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND (UNIDAD= 'E00' OR UNIDAD = 'I00' OR UNIDAD = 'K00' OR UNIDAD = 'L00' OR UNIDAD = 'M00' OR UNIDAD = 'N00' OR UNIDAD = 'O00' OR UNIDAD = 'Q00' OR UNIDAD = 'R00' OR UNIDAD = 'S00' OR UNIDAD = 'T00' OR UNIDAD = 'U00' OR UNIDAD = 'V00' OR UNIDAD = 'W00' OR UNIDAD = 'X00' OR UNIDAD ='AYK' OR UNIDAD = 'M7A' OR UNIDAD = 'M7F' OR UNIDAD = 'M7K' OR UNIDAD = 'NAW' OR UNIDAD = 'NBB' OR UNIDAD = 'NBD' OR UNIDAD = 'NBG' OR UNIDAD = 'NBQ' OR UNIDAD = 'NBR' OR UNIDAD = 'NBS' OR UNIDAD = 'NBT' OR UNIDAD = 'NBV' OR UNIDAD = 'NCA' OR UNIDAD = 'NCD' OR UNIDAD = 'NCG' OR UNIDAD = 'NCH' OR UNIDAD = 'NCK' OR UNIDAD = 'NCZ' OR UNIDAD = 'NDE' OR UNIDAD = 'NDF' OR UNIDAD = 'NDY' OR UNIDAD = 'NEF' OR UNIDAD = 'NHK' OR UNIDAD = 'NCE' OR UNIDAD = 'NBU'))"];
    }else if (comb == 7){ //todos
        stringToReturn = [[@" (" stringByAppendingString:whereFecha ] stringByAppendingString:@" AND (UNIDAD = '100' OR UNIDAD = '111' OR UNIDAD = '112' OR UNIDAD = '113' OR UNIDAD = '114' OR UNIDAD = '160' OR UNIDAD = '170' OR UNIDAD = '171' OR UNIDAD = '172' OR UNIDAD = '180' OR UNIDAD = '300' OR UNIDAD = '310' OR UNIDAD = '313' OR UNIDAD = '315' OR UNIDAD = '316' OR UNIDAD = '500' OR UNIDAD = '510' OR UNIDAD = '511' OR UNIDAD = '512' OR UNIDAD = '513' OR UNIDAD = '514' OR UNIDAD = '600' OR UNIDAD = '610' OR UNIDAD = '611' OR UNIDAD = '613' OR UNIDAD = '614' OR UNIDAD= 'E00' OR UNIDAD = 'I00' OR UNIDAD = 'K00' OR UNIDAD = 'L00' OR UNIDAD = 'M00' OR UNIDAD = 'N00' OR UNIDAD = 'O00' OR UNIDAD = 'Q00' OR UNIDAD = 'R00' OR UNIDAD = 'S00' OR UNIDAD = 'T00' OR UNIDAD = 'U00' OR UNIDAD = 'V00' OR UNIDAD = 'W00' OR UNIDAD = 'X00' OR UNIDAD ='AYK' OR UNIDAD = 'M7A' OR UNIDAD = 'M7F' OR UNIDAD = 'M7K' OR UNIDAD = 'NAW' OR UNIDAD = 'NBB' OR UNIDAD = 'NBD' OR UNIDAD = 'NBG' OR UNIDAD = 'NBQ' OR UNIDAD = 'NBR' OR UNIDAD = 'NBS' OR UNIDAD = 'NBT' OR UNIDAD = 'NBV' OR UNIDAD = 'NCA' OR UNIDAD = 'NCD' OR UNIDAD = 'NCG' OR UNIDAD = 'NCH' OR UNIDAD = 'NCK' OR UNIDAD = 'NCZ' OR UNIDAD = 'NDE' OR UNIDAD = 'NDF' OR UNIDAD = 'NDY' OR UNIDAD = 'NEF' OR UNIDAD = 'NHK' OR UNIDAD = 'NCE' OR UNIDAD = 'NBU'))"];
    }
    
    return stringToReturn;
}

-(NSMutableArray*)getDescribeFromButton:(UIButton*)butTipo andClave:(NSString*) clav{
    NSString *des = @"";
    NSString *key = @"";
    if (butTipo == buttonToHideUnidad){
        for(ElemClave *eclave in mainDelegate.databaseConnection.arrayUnid ){
            if ([eclave.clave  isEqualToString:clav]){
                des = [[eclave.clave stringByAppendingString:@": "] stringByAppendingString:eclave.descripcion];
                key = @"unidad";
            }
        }
        
    }
    if (butTipo == buttonToHideCapitulo){
        for(ElemClave *eclave in mainDelegate.databaseConnection.arrayCapitulo ){
            if ([eclave.clave  isEqualToString:clav]){
                des = [[eclave.clave stringByAppendingString:@": "] stringByAppendingString:eclave.descripcion];
                key = @"capitulo";
                
            }
        }
        
    }
    if (butTipo == buttonToHideConcepto){
        for(ElemClave *eclave in mainDelegate.databaseConnection.arrayConcepto ){
            if ([eclave.clave  isEqualToString:clav]){
                des = [[eclave.clave stringByAppendingString:@": "] stringByAppendingString:eclave.descripcion];
                key = @"concepto";
                
            }
        }
        
    }
    if (butTipo == buttonToHidePrograma){
        for(ElemClave *eclave in mainDelegate.databaseConnection.arrayPrograma ){
            if ([eclave.clave  isEqualToString:clav]){
                des = [[eclave.clave stringByAppendingString:@": "] stringByAppendingString:eclave.descripcion];
                key = @"programa";
            }
        }
        
    }
    if (butTipo == buttonToHideCcp){
        for(ElemClave *eclave in mainDelegate.databaseConnection.arrayCcp ){
            if ([eclave.clave  isEqualToString:clav]){
                des = [[eclave.clave stringByAppendingString:@": "] stringByAppendingString:eclave.descripcion];
                key = @"partida";
            }
        }
        
    }
    if (butTipo == buttonToHideProg){
        for(ElemClave *eclave in mainDelegate.databaseConnection.arrayProg){
            if ([eclave.clave  isEqualToString:clav]){
                des = [[eclave.clave stringByAppendingString:@": "] stringByAppendingString:eclave.descripcion];
                key = @"prog";
            }
        }
        
    }
    if (butTipo == buttonToHideActi){
        for(ElemClave *eclave in mainDelegate.databaseConnection.arrayActi ){
            if ([eclave.clave  isEqualToString:clav]){
                des = [[eclave.clave stringByAppendingString:@": "] stringByAppendingString:eclave.descripcion];
                key = @"acti";
            }
        }
        
    }
    if (butTipo == buttonToHideProyInv){
        for(ElemClave *eclave in mainDelegate.databaseConnection.arrayProyInv ){
            if ([eclave.clave  isEqualToString:clav]){
                des = [[eclave.clave stringByAppendingString:@": "] stringByAppendingString:eclave.descripcion];
                key = @"proyinv";
            }
        }
        
    }
    if (butTipo == buttonToHideDide){
        for(ElemClave *eclave in mainDelegate.databaseConnection.arrayDide ){
            if ([eclave.clave  isEqualToString:clav]){
                des = [[eclave.clave stringByAppendingString:@": "] stringByAppendingString:eclave.descripcion];
                key = @"dide";
            }
        }
        
    }
    if (butTipo == buttonToHideDver){
        for(ElemClave *eclave in mainDelegate.databaseConnection.arrayDver ){
            if ([eclave.clave  isEqualToString:clav]){
                des = [[eclave.clave stringByAppendingString:@": "] stringByAppendingString:eclave.descripcion];
                key = @"fuente";
            }
        }
        
    }
    
    if (butTipo == buttonToHideEntidad){
        for(ElemClave *eclave in mainDelegate.databaseConnection.arrayEntidad ){
            if ([eclave.clave  isEqualToString:clav]){
                des = [[eclave.clave stringByAppendingString:@": "] stringByAppendingString:eclave.descripcion];
                key = @"entidad";
            }
        }
        
    }
    if (butTipo == buttonToHidePred){
        for(ElemClave *eclave in mainDelegate.databaseConnection.arrayPred){
            if ([eclave.clave  isEqualToString:clav]){
                des = [[eclave.clave stringByAppendingString:@": "] stringByAppendingString:eclave.descripcion];
                key = @"pred";
            }
        }
        
    }
    
    
    
    //NSMutableArray *array
    
    return des;
}




-(NSString *) obtainQuery:(NSString *)firstQuery andSelector:(NSMutableDictionary* )selectStates andButton:(UIButton *)button {
    NSString *queryResult =firstQuery;
    NSString *howWasTheQuery = firstQuery;
    filPredWhere = @"";
    yaUnid = 0;
    BOOL isSelectedOne=FALSE;
    for (NSString* key in selectStates) {
        BOOL unidActive = [[selectStates objectForKey:key ] boolValue]; // setObject:[NSNumber numberWithBool:NO] forKey:key];
        if (unidActive){
            isSelectedOne = YES;
            if ([queryResult isEqualToString:howWasTheQuery]) {
                if ([firstQuery isEqualToString:@"fil_pred="]) {
                    queryResult = [queryResult stringByAppendingString:[[@"" stringByAppendingString: key] stringByAppendingString:@""]];
                    if ([filPredWhere isEqualToString:@""]) {
                        filPredWhere = [self convertFromPred:key];
                    }else{
                        if ([key isEqualToString:@"CEN"] || [key isEqualToString:@"ORG"] || [key isEqualToString:@"ENT"]   ) {
                            filPredWhere = [[filPredWhere stringByAppendingString: @" "  ]stringByAppendingString:[self convertFromPred:key]];
                            
                        }else{
                            filPredWhere = [[filPredWhere stringByAppendingString: @" AND "  ]stringByAppendingString:[self convertFromPred:key]];
                        }
                    }
                    
                    
                    
                }else{
                    
                    
                    
                    queryResult = [queryResult stringByAppendingString:[[@"'" stringByAppendingString: key] stringByAppendingString:@"'"]];
                    
                }
                
                //            queryResult = [queryResult stringByAppendingString:[[@"" stringByAppendingString: key] stringByAppendingString:@""]];
            }else{
                
                if ([firstQuery isEqualToString:@"fil_pred="]) {
                    queryResult = [[[[queryResult stringByAppendingString:@"," ]stringByAppendingString: @"" ] stringByAppendingString: key] stringByAppendingString:@""] ;
                    if ([filPredWhere isEqualToString:@""]) {
                        filPredWhere = [self convertFromPred:key];
                    }else{
                        if ([key isEqualToString:@"CEN"] || [key isEqualToString:@"ORG"] || [key isEqualToString:@"ENT"]   ) {
                            filPredWhere = [[filPredWhere stringByAppendingString: @" "  ]stringByAppendingString:[self convertFromPred:key]];
                            
                        }else{
                            filPredWhere = [[filPredWhere stringByAppendingString: @" AND "  ]stringByAppendingString:[self convertFromPred:key]];
                        }
                    }
                    
                }else{
                    queryResult = [[[[queryResult stringByAppendingString:@"," ]stringByAppendingString: @"'" ] stringByAppendingString: key] stringByAppendingString:@"'"] ;
                }
                //                              queryResult = [[[[queryResult stringByAppendingString:@"," ]stringByAppendingString: @"" ] stringByAppendingString: key] stringByAppendingString:@""] ;
                
            }
            
            if (isSelectedOne){
                NSMutableArray *des = [self getDescribeFromButton:button  andClave:key];
                //QueryComp *queryComp = [[QueryComp alloc] initWithTipo:button AndDescribe:<#(NSString *)#>]
            }
        }
    }
    if (yaUnid != 0) {
        if ([filPredWhere isEqualToString:@""]) {
            
            filPredWhere = [[filPredWhere stringByAppendingString: @" "  ]stringByAppendingString:[self obtainUnidCombination:yaUnid]];
        }else{
            filPredWhere = [[filPredWhere stringByAppendingString: @" AND "  ]stringByAppendingString:[self obtainUnidCombination:yaUnid]];
            
        }
    }
    
    if (isSelectedOne) {  //one element in the Selection States exist...
        //[stringQueries addObject:queryResult];
        //button.titleLabel.text = queryResult;
        return queryResult;
    }else{
        return @"NO";
    }
    
    //return queryResult;
    
}

-(NSString*)buildQuery:(NSString *)stringq andSelector:(NSDictionary*)selector{
    
    NSString *stringBy = stringq;
    BOOL foundQuery = NO;
    for (NSString* key in selector) {
        BOOL unidActive = [[selector objectForKey:key ] boolValue]; // setObject:[NSNumber numberWithBool:NO] forKey:key];
        if (unidActive){
            foundQuery = YES;
            if ([stringq  isEqualToString:stringBy]) {
                stringq = [stringq stringByAppendingString:[[@"'" stringByAppendingString: key] stringByAppendingString:@"'"]];
            }else{
                stringq = [[[[stringq stringByAppendingString:@"," ]stringByAppendingString: @"'" ] stringByAppendingString: key] stringByAppendingString:@"'"] ;
                
            }
        }
        
    }
    if (foundQuery) {
        return stringq;
    }else{
        return @"NO";
    }
}

-(void) hidePickerViewsforButton: (buttonWithStyle*)buttonHide {
    //here we need change the text for uilabel
    stringQueries = nil;
    stringQueries = [[NSMutableArray alloc] init];
    
    
    NSString *queryByPas;
    if (buttonHide == buttonToHideUnidad) {
        queryByPas = [self obtainQuery:@"unidad=" andSelector:selectionStates andButton:buttonSelectUnidad];
        if (!([queryByPas isEqualToString:@"NO"])){
            stringQueryUnidad = queryByPas;
        }else{
            stringQueryUnidad = @"";
        }
    }
    
    if (buttonHide == buttonToHideCapitulo) {
        queryByPas = [self obtainQuery:@"capitulo=" andSelector:selectionStatesCapitulo andButton:buttonSelectCapitulo];
        if (!([queryByPas isEqualToString:@"NO"])){
            stringQueryCapitulo = queryByPas;
        }else{
            stringQueryCapitulo = @"";
        }
    }
    if (buttonHide == buttonToHidePrograma) {
        queryByPas = [self obtainQuery:@"programa=" andSelector:selectionStatesPrograma andButton:buttonSelectPrograma];
        if (!([queryByPas isEqualToString:@"NO"])){
            stringQueryPrograma = queryByPas;
        }else{
            stringQueryPrograma = @"";
        }
    }
    if (buttonHide == buttonToHideConcepto) {
        queryByPas = [self obtainQuery:@"concepto=" andSelector:selectionStatesConcepto andButton:buttonSelectConcepto];
        if (!([queryByPas isEqualToString:@"NO"])){
            stringQueryConcepto = queryByPas;
        }else{
            stringQueryConcepto = @"";
        }
    }
    if (buttonHide == buttonToHideCcp) {
        queryByPas = [self obtainQuery:@"ccp=" andSelector:selectionStatesCcp andButton:buttonSelectCcp];
        if (!([queryByPas isEqualToString:@"NO"])){
            stringQueryCcp = queryByPas;
        }else{
            stringQueryCcp = @"";
        }
    }
    
    /*if (buttonHide == buttonToHideGfun) {
     queryByPas = [self obtainQuery:@"gfun=" andSelector:selectionStatesGfun andButton:buttonSelectGfun];
     if (!([queryByPas isEqualToString:@"NO"])){
     stringQueryGfun = queryByPas;
     }else{
     stringQueryGfun = @"";
     }
     }
     if (buttonHide == buttonToHideFonc) {
     queryByPas = [self obtainQuery:@"fonc=" andSelector:selectionStatesFonc andButton:buttonSelectFonc];
     if (!([queryByPas isEqualToString:@"NO"])){
     stringQueryFonc = queryByPas;
     }else{
     stringQueryFonc = @"";
     }
     
     }
     if (buttonHide == buttonToHideSfun) {
     queryByPas = [self obtainQuery:@"sfun=" andSelector:selectionStatesSfun andButton:buttonSelectSfun];
     if (!([queryByPas isEqualToString:@"NO"])){
     stringQuerySfun = queryByPas;
     }else{
     stringQuerySfun = @"";
     }
     
     }*/
    if (buttonHide == buttonToHideProg) {
        queryByPas = [self obtainQuery:@"prog=" andSelector:selectionStatesProg andButton:buttonSelectProg];
        if (!([queryByPas isEqualToString:@"NO"])){
            stringQueryProg = queryByPas;
        }else{
            stringQueryProg = @"";
        }
        
    }
    if (buttonHide == buttonToHideActi) {
        queryByPas = [self obtainQuery:@"acti=" andSelector:selectionStatesActi andButton:buttonSelectActi];
        if (!([queryByPas isEqualToString:@"NO"])){
            stringQueryActi = queryByPas;
        }else{
            stringQueryActi = @"";
        }
        
    }
    if (buttonHide == buttonToHideDide) {
        queryByPas = [self obtainQuery:@"dide=" andSelector:selectionStatesDide andButton:buttonSelectDide];
        if (!([queryByPas isEqualToString:@"NO"])){
            stringQueryDide = queryByPas;
        }else{
            stringQueryDide = @"";
        }
        
    }
    if (buttonHide == buttonToHideDver) {
        queryByPas = [self obtainQuery:@"dver=" andSelector:selectionStatesDver andButton:buttonSelectDver];
        if (!([queryByPas isEqualToString:@"NO"])){
            stringQueryDver = queryByPas;
        }else{
            stringQueryDver = @"";
        }
    }
    if (buttonHide == buttonToHideEntidad) {
        queryByPas = [self obtainQuery:@"entidad=" andSelector:selectionStatesEntidad andButton:buttonSelectEntidad];
        if (!([queryByPas isEqualToString:@"NO"])){
            stringQueryEntidad = queryByPas;
        }else{
            stringQueryEntidad = @"";
        }
        
    }
    if (buttonHide == buttonToHideProyInv) {
        queryByPas = [self obtainQuery:@"proyinv=" andSelector:selectionStatesProyInv andButton:buttonSelectProyInv];
        if (!([queryByPas isEqualToString:@"NO"])){
            stringQueryProyInv = queryByPas;
        }else{
            stringQueryProyInv = @"";
        }
        
    }
    if (buttonHide == buttonToHidePred) {
        queryByPas = [self obtainQuery:@"fil_pred=" andSelector:selectionStatesPred andButton:buttonSelectPred];
        if (!([queryByPas isEqualToString:@"NO"])){
            stringQueryPred = queryByPas;
        }else{
            stringQueryPred = @"";
        }
        
    }
    
    if (buttonHide ==buttonToHideFecha) {
        int fecha_active=0;
        for (NSString* key in selectionStatesFecha) {
            BOOL unidActive = [[selectionStatesFecha objectForKey:key ] boolValue]; // setObject:[NSNumber
            if (unidActive) {
                //[self asignaFechaArchivo:fecha_active ];
                NSString* modifica = [[NSString alloc] init];
                ArchivoDesc *ar = [arrayArchivos objectAtIndex:dateSelected];
                modifica = key ;
                NSRange end = [modifica rangeOfString:@"?"];
                modifica  = [modifica substringWithRange:NSMakeRange(end.location,modifica.length-end.location )];
                archivoSeleccionado = [[NSString alloc] initWithString:modifica] ;
                archivoSeleccionadoDesc = ar.descripcion;
                //[buttonSelectFecha setTitle:modifica forState:UIControlStateNormal];//.titleLabel.text = modifica; //[archivoSeleccionado stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet] ];
                buttonSelectFecha.titleLabel.textAlignment = NSTextAlignmentLeft;
                [buttonSelectFecha setTitle:ar.descripcion forState:UIControlStateNormal];//.titleLabel.text
                /*for (ArchivoDesc *ar in arrayArchivos) {
                 if ([ar.descripcion isEqualToString:<#(NSString *)#>) {
                 <#statements#>
                 }
                 }*/
                archivoCurrent = ar;
                /*if ([allTrim(ar.descripcion) isEqualToString: @"PEF 2014"]){
                 isActive2014 = YES;
                 
                 if (segmentedArchivos.selectedSegmentIndex == 0) {
                 [loadingIndicator show:@"Cargando catálogos del 2014"];
                 [self performSelector:@selector(getCatalogos:) withObject:@"" afterDelay:.01];
                 }else{
                 [loadingIndicator show:@"Cargando catálogos descargados del 2014 "];
                 [self performSelector:@selector(getCatalogos:) withObject:@"" afterDelay:.01];
                 }
                 
                 }else{
                 if (isActive2014){
                 isActive2014 = NO;
                 if (segmentedArchivos.selectedSegmentIndex == 0) {
                 [loadingIndicator show:@"Cargando catálogos del 2013"];
                 [self performSelector:@selector(getCatalogos:) withObject:@"" afterDelay:.01];
                 }else{
                 [loadingIndicator show:@"Cargando catálogos descargados del 2013 "];
                 [self performSelector:@selector(getCatalogos:) withObject:@"" afterDelay:.01];
                 }
                 }
                 }*/
                
                if (segmentedArchivos.selectedSegmentIndex == 0) {
                    [loadingIndicator show:[@"Cargando catálogos disponibles del " stringByAppendingString:periodoSelected]];
                    [self performSelector:@selector(getCatalogos:) withObject:@"" afterDelay:.01];
                }else{
                    [loadingIndicator show:[@"Cargando catálogos descargados del " stringByAppendingString:periodoSelected]];
                    [self performSelector:@selector(getCatalogos:) withObject:@"" afterDelay:.01];
                }
                
                //fecha_activ
            }
            fecha_active++;
        }
    }
    if (buttonHide ==buttonToHidePeriodo) {
        int fecha_active=0;
        for (NSString* key in selectionStatesPeriodo) {
            BOOL unidActive = [[selectionStatesPeriodo objectForKey:key ] boolValue]; // setObject:[NSNumber
            if (unidActive) {
                //[self asignaFechaArchivo:fecha_active ];
                periodoSelected = key;
                buttonSelectPeriodo.titleLabel.textAlignment = NSTextAlignmentLeft;
                [buttonSelectPeriodo setTitle:periodoSelected forState:UIControlStateNormal];//.titleLabel.text
                archivoCurrent.anio = periodoSelected;
                //fecha_activ
                if (segmentedArchivos.selectedSegmentIndex == 0) {
                    [loadingIndicator show:[@"Cargando fechas disponibles del " stringByAppendingString:periodoSelected]];
                    [self StartWithLoading:buttonSelectFecha];
                }else{
                    [loadingIndicator show:[@"Cargando fechas descargadas del " stringByAppendingString:periodoSelected]];
                    [self StartWithLoading:buttonSelectFecha];
                    
                }
                
                
            }
            fecha_active++;
        }
        
        
        
        //NSArray *keys = [selectionStatesFecha allKeys];
        //id aKey = [keys objectAtIndex:0];
        //id anObject = [dict objectForKey:aKey];
        
    }else{
        textFieldQueries.text = @"Usted ha seleccionado como filtros :";
    }
    
    [self checkAndAddToQueries:stringQueryUnidad andType:@"Unidad :"];
    [self checkAndAddToQueries:stringQueryCapitulo andType:@"Capitulo :"];
    [self checkAndAddToQueries:stringQueryPrograma andType:@"Programa presup :"];
    [self checkAndAddToQueries:stringQueryConcepto andType:@"Concepto :"];
    [self checkAndAddToQueries:stringQueryCcp andType:@"Partida :"];
    [self checkAndAddToQueries:stringQueryActi];
    [self checkAndAddToQueries:stringQueryProg];
    [self checkAndAddToQueries:stringQueryDide];
    [self checkAndAddToQueries:stringQueryDver];
    [self checkAndAddToQueries:stringQueryEntidad];
    [self checkAndAddToQueries:stringQueryProyInv];
    [self checkAndAddToQueries:stringQueryPred];
    for (NSString* str in stringQueries) {
        textFieldQueries.text = [textFieldQueries.text stringByAppendingString:[@"\n" stringByAppendingString:str]];
    }
    if (buttonHide != buttonToHidePred) {
        [self hidePickerViewsforButton:buttonToHidePred];
    }
    
    //textFieldQueries.text =
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    
}

-(void) checkAndAddToQueries:(NSString *)query andType:(NSString*)type{
    if (!([ query isEqualToString:@""])) {
        
        [stringQueries addObject:query ];
    }
    
}


-(void) checkAndAddToQueries:(NSString *)query {
    if (!([ query isEqualToString:@""])) {
        
        [stringQueries addObject:query ];
    }
    
}


-(void) hidePickerViews{
    pickerViewUnid.hidden = YES;
    pickerViewCapitulo.hidden = YES;
    pickerViewPrograma.hidden = YES;
    pickerViewConcepto.hidden = YES;
    alpickerViewUnidad.hidden = YES;
    alpickerViewCapitulo.hidden = YES;
    alpickerViewConcepto.hidden = YES;
    alpickerViewPrograma.hidden = YES;
    alpickerViewFecha.hidden = YES;
    alpickerViewPeriodo.hidden = YES;
    buttonToHideUnidad.hidden = YES;
    buttonToHideCapitulo.hidden = YES;
    buttonToHideConcepto.hidden = YES;
    buttonToHidePrograma.hidden = YES;
    buttonToHideFecha.hidden = YES;
    buttonToHidePeriodo.hidden = YES;
    
}


-(void) hidePickerViewsSecondColumn{
    alpickerViewCcp.hidden = YES;
    /* alpickerViewGfun.hidden = YES;
     alpickerViewFonc.hidden = YES;
     alpickerViewSfun.hidden = YES;*/
    alpickerViewProg.hidden = YES;
    alpickerViewActi.hidden = YES;
    alpickerViewDide.hidden = YES;
    alpickerViewDver.hidden = YES;
    alpickerViewEntidad.hidden = YES;
    alpickerViewProyInv.hidden = YES;
    alpickerViewPred.hidden = YES;
    alpickerViewPeriodo.hidden = YES;
    
    buttonToHideCcp.hidden = YES;
    /*buttonToHideGfun.hidden = YES;
     buttonToHideFonc.hidden = YES;
     buttonToHideSfun.hidden = YES;*/
    buttonToHideProg.hidden = YES;
    buttonToHideActi.hidden = YES;
    buttonToHideDide.hidden = YES;
    buttonToHideDver.hidden = YES;
    buttonToHideEntidad.hidden = YES;
    buttonToHideProyInv.hidden = YES;
    buttonToHidePred.hidden =YES;
    buttonToHidePeriodo.hidden = YES;
    
    
    /* segmentedUrCap.hidden = YES;
     segmentedCapPrograma.hidden = YES;
     segmentedProgramaCon.hidden = YES;
     segmentedConPar.hidden = YES;
     segmentedParProg.hidden = YES;
     segmentedProgActi.hidden = YES;
     segmentedActiProy.hidden = YES;
     segmentedProyDide.hidden = YES;
     segmentedDideDver.hidden = YES;
     segmentedDverEnt.hidden = YES;*/
    
    
}


-(void ) getPeriodosWithLoading{
    if (segmentedArchivos.selectedSegmentIndex == 0) {
        [loadingIndicator show:@"Cargando periodos en línea"];
        //[self performSelector:@selector(getPeriodos:) withObject:@"http://desarrollo.salud.gob.mx/dgpop/json/consultaPeriodos.php" afterDelay:.01];
        [self getPeriodos:@"http://desarrollo.salud.gob.mx/dgpop/json/consultaPeriodos.php"];
    }else{
        [loadingIndicator show:@"Cargando periodos descargados "];
        @try {
            [mainDelegate.databaseConnection   readPeriodos:@"SELECT distinct anio FROM pres_reg_archivos Where fi_estatus = '2'  ORDER BY id_reg_archivo DESC "];
            arrayPeriodo = mainDelegate.databaseConnection.arrayPeriodos;
        }
        @catch (NSException *exception) {
            [mainDelegate.databaseConnection   readPeriodos:@"SELECT distinct anio FROM pres_reg_archivos Where fi_estatus = '2' ORDER BY id_reg_archivo DESC "];
            arrayPeriodo = mainDelegate.databaseConnection.arrayPeriodos;
        }
    }
    
}


-(void)getPeriodos:(NSString *) query{
    
    arrayPeriodo = [[NSMutableArray alloc] init];
    arrayPeriodo = [self obtainFromJson:query  andKey:@"periodo" andDescripcion:@"periodo" ];
    
    
    
    
}



-(void) getCatalogos:(NSString *) query{
    if (segmentedArchivos.selectedSegmentIndex ==0) { //en linea
        
        queryToAddPrograma = @"";
        arrayUnid = [[NSMutableArray alloc] init ];
        arrayCapitulo = [[NSMutableArray alloc] init ];
        arrayPrograma = [[NSMutableArray alloc] init ];
        arrayConcepto = [[NSMutableArray alloc] init ];
        
        
        NSString *queryClave = [[[@"http://desarrollo.salud.gob.mx/dgpop/json/muestra_ppto_clave.php"  stringByAppendingString:archivoSeleccionado  ] stringByAppendingString:@"&select_table=" ] stringByAppendingString:archivoCurrent.select_table];
        
        arrayUnid = [self obtainFromJson: queryClave andKey:@"unidad" andDescripcion:@"clave" ];
        arrayCapitulo = [self obtainFromJson:queryClave andKey:@"capitulo" andDescripcion:@"clave" ];
        arrayPrograma = [self obtainFromJson: queryClave andKey:@"programa" andDescripcion:@"clave" ];
        arrayConcepto = [self obtainFromJson: queryClave andKey:@"concepto" andDescripcion:@"clave" ];
        
        
        arrayProg = [self obtainFromJson: queryClave andKey:@"prog" andDescripcion:@"clave" ];
        arrayActi = [self obtainFromJson: queryClave andKey:@"acti" andDescripcion:@"clave" ];
        arrayDide = [self obtainFromJson: queryClave andKey:@"dide" andDescripcion:@"clave" ];
        arrayDver = [self obtainFromJson: queryClave andKey:@"dver" andDescripcion:@"clave" ];
        arrayCcp = [self obtainFromJson: queryClave andKey:@"partida" andDescripcion:@"clave" ];
        arrayCcpAll = [[NSMutableArray alloc] initWithArray:arrayCcp];
        arrayEntidad = [self obtainFromJson: queryClave andKey:@"entidad" andDescripcion:@"clave" ];
        arrayProyInv = [self obtainFromJson: queryClave andKey:@"proyinv" andDescripcion:@"clave" ];
        
        arrayPred = [self obtainFromJson: queryClave andKey:@"pred" andDescripcion:@"clave" ];
        
        
        [self cleanSelectors];
        //[self asignaFechaArchivo:0];
        
        //[self hideLoadingIndicator];
    }else{  //descargados, obtenemos los guardados
        [self.segmentedControlSubtotal setSelectedSegmentIndex:0];
        [mainDelegate.databaseConnection readFromCatalogo:[[[self queryModelSelect ] stringByAppendingString:@" FROM pres_map_columna GROUP BY " ] stringByAppendingString:[self queryModelGroupBy]] andTipo:@"unid" ];
        self.arrayUnid = mainDelegate.databaseConnection.arrayUnid;
        
        [self.segmentedControlSubtotal setSelectedSegmentIndex:1];
        [mainDelegate.databaseConnection readFromCatalogo:[[[self queryModelSelect ] stringByAppendingString:@" FROM pres_map_columna GROUP BY " ] stringByAppendingString:[self queryModelGroupBy]] andTipo:@"capitulo" ];
        self.arrayCapitulo = mainDelegate.databaseConnection.arrayCapitulo;
        
        [self.segmentedControlSubtotal setSelectedSegmentIndex:2];
        [mainDelegate.databaseConnection readFromCatalogo:[[[self queryModelSelect ] stringByAppendingString:@" FROM pres_map_columna GROUP BY " ] stringByAppendingString:[self queryModelGroupBy]] andTipo:@"programa" ];
        self.arrayPrograma = mainDelegate.databaseConnection.arrayPrograma;
        
        [self.segmentedControlSubtotal setSelectedSegmentIndex:3];
        [mainDelegate.databaseConnection readFromCatalogo:[[[self queryModelSelect ] stringByAppendingString:@" FROM pres_map_columna GROUP BY " ] stringByAppendingString:[self queryModelGroupBy]] andTipo:@"concepto" ];
        self.arrayConcepto = mainDelegate.databaseConnection.arrayConcepto;
        
        [self.segmentedControlSubtotal setSelectedSegmentIndex:4];
        [mainDelegate.databaseConnection readFromCatalogo:[[[self queryModelSelect ] stringByAppendingString:@" FROM pres_map_columna GROUP BY " ] stringByAppendingString:[self queryModelGroupBy]] andTipo:@"partida" ];
        self.arrayCcp = mainDelegate.databaseConnection.arrayCcp;
        arrayCcpAll = [[NSMutableArray alloc] initWithArray:arrayCcp];
        [self.segmentedControlSubtotal setSelectedSegmentIndex:UISegmentedControlNoSegment];
        [self.segmentedControlSubtotal2 setSelectedSegmentIndex:1];
        [mainDelegate.databaseConnection readFromCatalogo:[[[self queryModelSelect ] stringByAppendingString:@" FROM pres_map_columna GROUP BY " ] stringByAppendingString:[self queryModelGroupBy]] andTipo:@"reasignaciones" ];
        self.arrayProg = mainDelegate.databaseConnection.arrayProg;
        
        [self.segmentedControlSubtotal2 setSelectedSegmentIndex:2];
        [mainDelegate.databaseConnection readFromCatalogo:[[[self queryModelSelect ] stringByAppendingString:@" FROM pres_map_columna GROUP BY " ] stringByAppendingString:[self queryModelGroupBy]] andTipo:@"actividad" ];
        self.arrayActi = mainDelegate.databaseConnection.arrayActi;
        
        [self.segmentedControlSubtotal2 setSelectedSegmentIndex:3];
        [mainDelegate.databaseConnection readFromCatalogo:[[[self queryModelSelect ] stringByAppendingString:@" FROM pres_map_columna GROUP BY " ] stringByAppendingString:[self queryModelGroupBy]] andTipo:@"tipo_gasto" ];
        self.arrayDide = mainDelegate.databaseConnection.arrayDide;
        
        [self.segmentedControlSubtotal2 setSelectedSegmentIndex:4];
        [mainDelegate.databaseConnection readFromCatalogo:[[[self queryModelSelect ] stringByAppendingString:@" FROM pres_map_columna GROUP BY " ] stringByAppendingString:[self queryModelGroupBy]] andTipo:@"entidad" ];
        self.arrayEntidad = mainDelegate.databaseConnection.arrayEntidad;
        
        [self.segmentedControlSubtotal2 setSelectedSegmentIndex:5];
        [mainDelegate.databaseConnection readFromCatalogo:[[[self queryModelSelect ] stringByAppendingString:@" FROM pres_map_columna GROUP BY " ] stringByAppendingString:[self queryModelGroupBy]] andTipo:@"proyinv" ];
        
        self.arrayProyInv = mainDelegate.databaseConnection.arrayProyInv;
        
        [self.segmentedControlSubtotal2 setSelectedSegmentIndex:0];
        
        [mainDelegate.databaseConnection readFromCatalogo:[ @"SELECT Fuente_finan as dver, (Select descripcion from pres_cat_dver WHERE dver = fuente_finan) "  stringByAppendingString:@" FROM pres_map_columna GROUP BY fuente_finan " ] andTipo:@"fuente" ];
        self.arrayDver = mainDelegate.databaseConnection.arrayDver;
        
        [mainDelegate.databaseConnection readFromCatalogo: @"SELECT clave_fil_pred as clave, desc_fil_pred as descripcion from pres_cat_fil_pred "  andTipo:@"pred" ];
        self.arrayPred = mainDelegate.databaseConnection.arrayPred;
        
        
        [self.segmentedControlSubtotal setSelectedSegmentIndex:0];
        [self.segmentedControlSubtotal2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        
        
        [self cleanSelectors];
        
    }
    [loadingIndicator hide];
    
    
}


-(void) cleanSelectors{
    selectionStates = [[NSMutableDictionary alloc] init];
	for (Unidad *key in arrayUnid)
		[selectionStates setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
    
    selectionStatesConcepto = [[NSMutableDictionary alloc] init];
	for (Concepto *key in arrayConcepto)
		[selectionStatesConcepto setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
    
    selectionStatesPrograma = [[NSMutableDictionary alloc] init];
	for (Programa *key in arrayPrograma)
		[selectionStatesPrograma setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
    
    selectionStatesCapitulo = [[NSMutableDictionary alloc] init];
	for (Capitulo *key in arrayCapitulo)
		[selectionStatesCapitulo setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
    
    selectionStatesFecha = [[NSMutableDictionary alloc] init];
	for (ArchivoDesc *key in arrayArchivos)
		[selectionStatesFecha setObject:[NSNumber numberWithBool:NO] forKey:key.archivo ];
    
    
    selectionStatesPeriodo = [[NSMutableDictionary alloc] init];
	for (NSString *key in arrayPeriodo)
		[selectionStatesPeriodo setObject:[NSNumber numberWithBool:NO] forKey:key ];
    
    selectionStatesCcp = [[NSMutableDictionary alloc] init];
	for (ElemClave *key in arrayCcp)
		[selectionStatesCcp setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
    
    selectionStatesCcp = [[NSMutableDictionary alloc] init];
	for (ElemClave *key in arrayCcp)
		[selectionStatesCcp setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
    /*selectionStatesGfun = [[NSMutableDictionary alloc] init];
     for (ElemClave *key in arrayGfun)
     [selectionStatesGfun setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
     
     selectionStatesFonc= [[NSMutableDictionary alloc] init];
     for (ElemClave *key in arrayFonc)
     [selectionStatesFonc setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
     
     selectionStatesSfun = [[NSMutableDictionary alloc] init];
     for (ElemClave *key in arraySfun)
     [selectionStatesSfun setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];*/
    
    selectionStatesProg = [[NSMutableDictionary alloc] init];
	for (ElemClave *key in arrayProg)
		[selectionStatesProg setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
    
    selectionStatesActi = [[NSMutableDictionary alloc] init];
	for (ElemClave *key in arrayActi)
		[selectionStatesActi setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
    
    selectionStatesDide = [[NSMutableDictionary alloc] init];
	for (ElemClave *key in arrayDide)
		[selectionStatesDide setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
    selectionStatesDver = [[NSMutableDictionary alloc] init];
	for (ElemClave *key in arrayDver)
		[selectionStatesDver setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
    selectionStatesEntidad = [[NSMutableDictionary alloc] init];
	for (ElemClave *key in arrayEntidad)
		[selectionStatesEntidad setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
    
    selectionStatesProyInv = [[NSMutableDictionary alloc] init];
	for (ElemClave *key in arrayProyInv)
		[selectionStatesProyInv setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
    
    selectionStatesPred = [[NSMutableDictionary alloc] init];
	for (ElemClave *key in arrayPred)
		[selectionStatesPred setObject:[NSNumber numberWithBool:NO] forKey:key.clave ];
    
    
    [self pickerView:alpickerViewUnidad didUncheckRow:-1];
    //  - (void)pickerView:(ALPickerView *)pickerView didUncheckRow:(NSInteger)row
    [self pickerView:alpickerViewCapitulo didUncheckRow:-1];
    [self pickerView:alpickerViewConcepto didUncheckRow:-1];
    [self pickerView:alpickerViewPrograma didUncheckRow:-1];
    /* [self pickerView:alpickerViewGfun didUncheckRow:-1];
     [self pickerView:alpickerViewFonc didUncheckRow:-1];
     [self pickerView:alpickerViewSfun didUncheckRow:-1];*/
    [self pickerView:alpickerViewProg didUncheckRow:-1];
    [self pickerView:alpickerViewActi didUncheckRow:-1];
    [self pickerView:alpickerViewDide didUncheckRow:-1];
    [self pickerView:alpickerViewDver didUncheckRow:-1];
    [self pickerView:alpickerViewCcp didUncheckRow:-1];
    [self pickerView:alpickerViewEntidad didUncheckRow:-1];
    [self pickerView:alpickerViewProyInv didUncheckRow:-1];
    [self pickerView:alpickerViewPred didUncheckRow:-1];
    
    [alpickerViewUnidad reloadAllComponents];
    [alpickerViewCapitulo reloadAllComponents];
    [alpickerViewConcepto reloadAllComponents];
    [alpickerViewPrograma reloadAllComponents];
    [alpickerViewFecha reloadAllComponents];
    [alpickerViewPeriodo reloadAllComponents];
    /*[alpickerViewGfun reloadAllComponents];
     [alpickerViewFonc reloadAllComponents];
     [alpickerViewSfun reloadAllComponents];*/
    [alpickerViewProg reloadAllComponents];
    [alpickerViewActi reloadAllComponents];
    [alpickerViewDide reloadAllComponents];
    [alpickerViewDver reloadAllComponents];
    [alpickerViewCcp reloadAllComponents];
    [alpickerViewProyInv reloadAllComponents];
    [alpickerViewEntidad reloadAllComponents];
    [alpickerViewPred reloadAllComponents];
    //[self pickerView:alpickerViewFecha didCheckRow:0];
    
    for (NSString* key in selectionStatesFecha) {
        BOOL unidActive = [[selectionStatesFecha objectForKey:key ] boolValue]; // setObject:[NSNumber
        if (unidActive) {
            //[self asignaFechaArchivo:fecha_active ];
            NSString* modifica = [[NSString alloc] init];
            //ArchivoDesc *ar = [arrayArchivos objectAtIndex:iRenglon];
            modifica = key ;
            NSRange end = [modifica rangeOfString:@"?"];
            modifica  = [modifica substringWithRange:NSMakeRange(end.location,modifica.length-end.location )];
            //archivoSeleccionado = [[NSString alloc] initWithString:modifica] ;
            buttonSelectFecha.titleLabel.text = archivoSeleccionado;
        }
    }
    //stringQueries = [[]
    
}

-(IBAction)cleanReportForButton:(UIButton *)sender{
    arrayPresupuesto = [[NSMutableArray alloc] init];
    [collectionViewRepor reloadData];
    Reports = [[NSMutableArray alloc] init];
    [self hideButtonsGraphicsCsvPdf];
    arrayCellSelected = [[NSMutableArray alloc] init];
    
}






-(IBAction)cleanSelectorsForButton:(UIButton *)sender{
    [self initButtonText];
    [self cleanQueries];
    [self cleanSelectors];
}

-(IBAction)StartWithLoading:(UIButton*)buttonUpda{
    
    if (segmentedArchivos.selectedSegmentIndex == 0) {
        [loadingIndicator show:@"Cargando catálogos en línea"];
        [self performSelector:@selector(Start:) withObject:buttonUpda afterDelay:.01];
    }else{
        [loadingIndicator show:@"Cargando catálogos descargados "];
        [self performSelector:@selector(Start:) withObject:buttonUpda afterDelay:.01];
    }
    
}

-(IBAction)downloadWithLoading:(UIButton*)buttonUpda{
    //[loadingIndicator show:[ @"Descargando base del " stringByAppendingString:buttonSelectFecha.titleLabel.text]];
    if (segmentedArchivos.selectedSegmentIndex == 0) { //download
        [self performSelector:@selector(download:) withObject:buttonUpda afterDelay:.01];
    }else{ //delete current Date
        [loadingIndicator show:@"Eliminando fecha actual de las descargas"];
        
        [self performSelector:@selector(deleteWithMessage:) withObject:buttonUpda.titleLabel.text afterDelay:.01];
        
    }
    
}

-(void)deleteWithMessage:(NSString *)somethingToSend{
    message2 = [[UIAlertView alloc] initWithTitle:@"Confirmación"
                                          message:[[@"¿Desea eliminar el archivo descargado con fecha " stringByAppendingString: archivoSeleccionadoDesc] stringByAppendingString:@" ? "]
                                         delegate:self
                                cancelButtonTitle:@"Cancelar"
                                otherButtonTitles:@"Continuar",nil];
    //message.backgroundColor=[UIColor blackColor];
    [message2 show];
    [loadingIndicator hide];
    //loadingIndicator.hidden = YES;
    
    
}


-(void)deleteCurrentDate{
    NSString *fechaSeleccionada = [archivoSeleccionado substringWithRange:NSMakeRange(1,archivoSeleccionado.length-1 )];
    NSRange end = [fechaSeleccionada rangeOfString:@"="];
    fechaSeleccionada  = [fechaSeleccionada substringWithRange:NSMakeRange(end.location+1,fechaSeleccionada.length-end.location-1 )];
    fechaSeleccionada = [[@"'" stringByAppendingString:fechaSeleccionada ] stringByAppendingString:@"'"];
    NSString *queryToDelete = [@"DELETE from pres_map_columna where fecha = " stringByAppendingString:fechaSeleccionada];
    [mainDelegate.databaseConnection addElement:queryToDelete ];
    queryToDelete = [[@"DELETE from pres_reg_archivos where fc_nombre = 'data.php" stringByAppendingString:archivoSeleccionado ] stringByAppendingString:@"'"];
    [mainDelegate.databaseConnection addElement:queryToDelete ];//  mainDelegate.databaseConnection
    [mainDelegate.databaseConnection readFromDatabase];
    
    @try{
        [self updateArrayArchivos];
        [alpickerViewPeriodo reloadAllComponents];
        [mainDelegate.databaseConnection readFromDatabase];
        [alpickerViewFecha reloadAllComponents];
        [self getPeriodosWithLoading];
        [self asignaPeriodo:0];
        [self asignaFechaArchivo:0 ];
        [self getCatalogos:@""];
        
    }
    @catch (NSException *exception) {
        [popMenu show:@"No fue posible cargar los catalogos o el archivo de fecha, esto usualmente se debe a un problema con la conexión, pruebe actualizando" andTitle:@""];
    }
    
    
}




-(void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    if (buttonIndex == 1) {
        if (actionSheet == message) {
            [actionSheet dismissWithClickedButtonIndex:0 animated:YES];
            [message dismissWithClickedButtonIndex:0 animated:YES];
            [self deleteCurrentDate];
            [self keepDownloadWithLoading:@""];
        }else{
            [actionSheet dismissWithClickedButtonIndex:0 animated:YES];
            [message dismissWithClickedButtonIndex:0 animated:YES];
            [self deleteCurrentDate];
        }
        
        
    }
}

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    //[alertView hide];
    
}

-(void)keepDownloadWithLoading:(NSString*) somethingToSend{
    [loadingIndicator show:[ @"Descargando base del " stringByAppendingString:buttonSelectFecha.titleLabel.text]];
    [self performSelector:@selector(keepDownload:) withObject:@"" afterDelay:.01];
    
}

-(void)keepDownload:(NSString*) somethingToSend{
    
    //[loadingIndicator show:[ @"Descargando base del " stringByAppendingString:buttonSelectFecha.titleLabel.text]];
    [message  dismissWithClickedButtonIndex:0 animated:YES];
    
    @try{
        NSString *stringUrl =  [[[@"http://desarrollo.salud.gob.mx/dgpop/json/prueba_contador_4.php" stringByAppendingString:archivoSeleccionado] stringByAppendingString:@"&tabla="] stringByAppendingString:archivoCurrent.select_table] ;
        NSData *data=[NSData dataWithContentsOfURL:[NSURL URLWithString:stringUrl ]];
        NSLog(stringUrl);
        //NSLog(stringUrl);
        // parseo y creación del array
        
        NSMutableArray *arrayResults = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        int inicio;
        int final;
        for (NSDictionary * item in arrayResults){
            inicio = [[item objectForKey:@"start"] intValue];
            final = [[item objectForKey:@"end"] intValue]  ;
        }
        NSMutableArray *arrayToReturn = [[NSMutableArray alloc] init];
        
        
        for (int i =1; i<=2; i++) {
            NSString *ini = [[NSString alloc] initWithFormat:@"%d",inicio];
            NSString *fin = [[NSString alloc] initWithFormat:@"%d",inicio+5000];
            if (i==2) {
                ini = [[NSString alloc] initWithFormat:@"%d",inicio+5001];
                fin = [[NSString alloc] initWithFormat:@"%d",final];
            }
            
            stringUrl =  [[[[[[[[@"http://desarrollo.salud.gob.mx/dgpop/json/muestra_todo_4.php" stringByAppendingString:archivoSeleccionado] stringByAppendingString:@"&inicio="] stringByAppendingString:ini] stringByAppendingString:@"&fin="] stringByAppendingString:fin] stringByAppendingString:@"&select_table="] stringByAppendingString:archivoCurrent.select_table] stringByAppendingString:@"&descarga=no"]  ;
            data=[NSData dataWithContentsOfURL:[NSURL URLWithString:stringUrl ]];
            NSLog(stringUrl);
            //NSLog(stringUrl);
            // parseo y creación del array
            
            arrayResults = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            for (NSDictionary * item in arrayResults){
                ClaveP *clav = [[ClaveP alloc] init];
                clav.idC = [[item objectForKey:@"id_pres"] intValue];
                clav.ciclo = [item objectForKey:@"ciclo"];
                clav.ramo = [item objectForKey:@"ramo"];
                clav.unidad = [item objectForKey:@"cve_unidad"];
                clav.gf    = [[item objectForKey:@"gf"] intValue];
                clav.funcion = [[item objectForKey:@"f"] intValue];
                clav.subfuncion = [[item objectForKey:@"sf"] intValue];
                clav.programa = [[item objectForKey:@"rg"] intValue];
                
                clav.actividad_inst = [[item objectForKey:@"ai"] intValue];
                clav.iden_proy  = [item objectForKey:@"ipp"] ;
                clav.proyecto  = [[item objectForKey:@"pp"] intValue] ;
                clav.partida   = [[item objectForKey:@"og"] intValue];
                clav.tipo_gasto = [[item objectForKey:@"tg"] intValue];
                clav.fuente_finan = [[item objectForKey:@"ff"] intValue];
                clav.ent_fed = [[item objectForKey:@"ef"] intValue];
                clav.clave_cartera  = [item objectForKey:@"ppi"] ;
                
                clav.original = [[item objectForKey:@"original"] doubleValue];
                clav.ori_ene = [[item objectForKey:@"pres_ene"] doubleValue];
                clav.ori_feb = [[item objectForKey:@"pres_feb"] doubleValue];
                clav.ori_mar = [[item objectForKey:@"pres_mar"] doubleValue];
                clav.ori_abr = [[item objectForKey:@"pres_abr"] doubleValue];
                clav.ori_may = [[item objectForKey:@"pres_may"] doubleValue];
                clav.ori_jun = [[item objectForKey:@"pres_jun"] doubleValue];
                clav.ori_jul = [[item objectForKey:@"pres_jul"] doubleValue];
                clav.ori_ago = [[item objectForKey:@"pres_ago"] doubleValue];
                clav.ori_sep = [[item objectForKey:@"pres_sep"] doubleValue];
                clav.ori_oct = [[item objectForKey:@"pres_oct"] doubleValue];
                clav.ori_nov = [[item objectForKey:@"pres_nov"] doubleValue];
                clav.ori_dic = [[item objectForKey:@"pres_dic"] doubleValue];
                
                
                clav.modificado = [[item objectForKey:@"modificado"] doubleValue];
                clav.mod_ene = [[item objectForKey:@"mod_ene"] doubleValue];
                clav.mod_feb = [[item objectForKey:@"mod_feb"] doubleValue];
                clav.mod_mar = [[item objectForKey:@"mod_mar"] doubleValue];
                clav.mod_abr = [[item objectForKey:@"mod_abr"] doubleValue];
                clav.mod_may = [[item objectForKey:@"mod_may"] doubleValue];
                clav.mod_jun = [[item objectForKey:@"mod_jun"] doubleValue];
                clav.mod_jul = [[item objectForKey:@"mod_jul"] doubleValue];
                clav.mod_ago = [[item objectForKey:@"mod_ago"] doubleValue];
                clav.mod_sep = [[item objectForKey:@"mod_sep"] doubleValue];
                clav.mod_oct = [[item objectForKey:@"mod_oct"] doubleValue];
                clav.mod_nov = [[item objectForKey:@"mod_nov"] doubleValue];
                clav.mod_dic = [[item objectForKey:@"mod_dic"] doubleValue];
                
                
                clav.ejercido = [[item objectForKey:@"ejercido"] doubleValue];
                clav.eje_ene = [[item objectForKey:@"eje_ene"] doubleValue];
                clav.eje_feb = [[item objectForKey:@"eje_feb"] doubleValue];
                clav.eje_mar = [[item objectForKey:@"eje_mar"] doubleValue];
                clav.eje_abr = [[item objectForKey:@"eje_abr"] doubleValue];
                clav.eje_may = [[item objectForKey:@"eje_may"] doubleValue];
                clav.eje_jun = [[item objectForKey:@"eje_jun"] doubleValue];
                clav.eje_jul = [[item objectForKey:@"eje_jul"] doubleValue];
                clav.eje_ago = [[item objectForKey:@"eje_ago"] doubleValue];
                clav.eje_sep = [[item objectForKey:@"eje_sep"] doubleValue];
                clav.eje_oct = [[item objectForKey:@"eje_oct"] doubleValue];
                clav.eje_nov = [[item objectForKey:@"eje_nov"] doubleValue];
                clav.eje_dic = [[item objectForKey:@"eje_dic"] doubleValue];
                
                
                
                //clav.disponible = [[item objectForKey:@"disponible"] doubleValue];
                clav.dis_ene = [[item objectForKey:@"dis_ene"] doubleValue];
                clav.dis_feb = [[item objectForKey:@"dis_feb"] doubleValue];
                clav.dis_mar = [[item objectForKey:@"dis_mar"] doubleValue];
                clav.dis_abr = [[item objectForKey:@"dis_abr"] doubleValue];
                clav.dis_may = [[item objectForKey:@"dis_may"] doubleValue];
                clav.dis_jun = [[item objectForKey:@"dis_jun"] doubleValue];
                clav.dis_jul = [[item objectForKey:@"dis_jul"] doubleValue];
                clav.dis_ago = [[item objectForKey:@"dis_ago"] doubleValue];
                clav.dis_sep = [[item objectForKey:@"dis_sep"] doubleValue];
                clav.dis_oct = [[item objectForKey:@"dis_oct"] doubleValue];
                clav.dis_nov = [[item objectForKey:@"dis_nov"] doubleValue];
                clav.dis_dic = [[item objectForKey:@"dis_dic"] doubleValue];
                
                
                clav.cap  = [item objectForKey:@"capitulo"] ;
                clav.con  = [item objectForKey:@"concepto"] ;
                clav.prog  = [item objectForKey:@"proyecto"] ;
                clav.fecha  = [item objectForKey:@"fd_fecha"] ;
                
                clav.gsgf =  [[item objectForKey:@"gfsf"] intValue] ;
                //NSLog(clav);
                //NSlog(clav.gsgf);
                //NSLog(@"%d", clav.gsgf);
                
                [arrayDownload addObject:clav];
                
                
            }
            
        }
        [loadingIndicator hide];
        NSString *fechaSeleccionada = [archivoSeleccionado substringWithRange:NSMakeRange(1,archivoSeleccionado.length-1 )];
        NSRange end = [fechaSeleccionada rangeOfString:@"="];
        fechaSeleccionada  = [fechaSeleccionada substringWithRange:NSMakeRange(end.location+1,fechaSeleccionada.length-end.location-1 )];
        fechaSeleccionada = [[@"'" stringByAppendingString:fechaSeleccionada ] stringByAppendingString:@"'"];
        NSString * result = [mainDelegate.databaseConnection addNewDate:arrayDownload andNameDate:fechaSeleccionada andDateDescrip:archivoSeleccionadoDesc  andAnio:archivoCurrent.anio andEstatus:[[NSString alloc] initWithFormat:@"%d", archivoCurrent.estatus] ];
        
        [popMenu show:result andTitle:@""];
        
    }
    @catch (NSException *exception) {
        [loadingIndicator hide];
        [popMenu show:@"No fue posible descargar el archivo de presupuesto" andTitle:@""];
    }
    
    
    
    
    [loadingIndicator hide];
    
    
}
-(NSString*)obtainWithoutEqual:(NSString*)stringTo{
    NSString *stringReturn;
    NSRange end = [stringTo rangeOfString:@"="];
    //NSString *modifica  = [archivoSeleccionado substringWithRange:NSMakeRange(end.location+1,archivoSeleccionado.length-end.location-1 )];
    stringReturn  = [stringTo substringWithRange:NSMakeRange(end.location+1,stringTo.length-end.location-1 )];
    return stringReturn;
    
}


-(NSString*)logicWhere{
    NSString *whereFecha;
    NSString *whereToReturn;
    NSRange end = [archivoSeleccionado rangeOfString:@"="];
    //NSString *modifica  = [archivoSeleccionado substringWithRange:NSMakeRange(end.location+1,archivoSeleccionado.length-end.location-1 )];
    NSString *modifica  = [archivoSeleccionado substringWithRange:NSMakeRange(end.location+1,10 )];
    whereFecha = [[@" fecha= '" stringByAppendingString:modifica] stringByAppendingString:@"'"];
    whereToReturn = [@"" stringByAppendingString:whereFecha];
    
    if (![stringQueryCapitulo isEqualToString:@""] ) {
        if (segmentedCapPrograma.selectedSegmentIndex == 0) {
            whereToReturn = [[[whereToReturn stringByAppendingString:@" AND CAP IN ("] stringByAppendingString:[self obtainWithoutEqual: stringQueryCapitulo]] stringByAppendingString:@")"];
        }else{
            whereToReturn = [[[[[whereToReturn stringByAppendingString:@" OR ( "] stringByAppendingString:whereFecha] stringByAppendingString:@" AND CAP IN ( "] stringByAppendingString:[self obtainWithoutEqual: stringQueryCapitulo]]stringByAppendingString:@"))"] ;
        }
        
    }
    if (![stringQueryUnidad isEqualToString:@""] ) {
        if (segmentedUrCap.selectedSegmentIndex == 0) {
            whereToReturn = [[[whereToReturn stringByAppendingString:@" AND UNIDAD IN ("] stringByAppendingString:[self obtainWithoutEqual: stringQueryUnidad]] stringByAppendingString:@")"];
        }else{
            whereToReturn = [[[[[whereToReturn stringByAppendingString:@" OR ( "] stringByAppendingString:whereFecha] stringByAppendingString:@" AND UNIDAD IN ( "] stringByAppendingString:[self obtainWithoutEqual: stringQueryUnidad]]stringByAppendingString:@"))"] ;
        }
        
    }
    
    if (![stringQueryPrograma isEqualToString:@""] ) {
        if (segmentedProgramaCon.selectedSegmentIndex == 0) {
            whereToReturn = [[[whereToReturn stringByAppendingString:@" AND PROG IN ("] stringByAppendingString:[self obtainWithoutEqual: stringQueryPrograma]] stringByAppendingString:@")"];
        }else{
            whereToReturn = [[[[[whereToReturn stringByAppendingString:@" OR ( "] stringByAppendingString:whereFecha] stringByAppendingString:@" AND PROG IN ( "] stringByAppendingString:[self obtainWithoutEqual: stringQueryPrograma]]stringByAppendingString:@"))"] ;
        }
    }
    
    if (![stringQueryConcepto isEqualToString:@""] ) {
        if (segmentedConPar.selectedSegmentIndex == 0) {
            whereToReturn = [[[whereToReturn stringByAppendingString:@" AND CON IN ("] stringByAppendingString:[self obtainWithoutEqual: stringQueryConcepto]] stringByAppendingString:@")"];
        }else{
            whereToReturn = [[[[[whereToReturn stringByAppendingString:@" OR ( "] stringByAppendingString:whereFecha] stringByAppendingString:@" AND CON IN ( "] stringByAppendingString:[self obtainWithoutEqual: stringQueryConcepto]]stringByAppendingString:@"))"] ;
        }
        
    }
    
    if (![stringQueryCcp isEqualToString:@""] ) {
        if (segmentedParProg.selectedSegmentIndex == 0) {
            whereToReturn = [[[whereToReturn stringByAppendingString:@" AND PARTIDA IN ("] stringByAppendingString:[self obtainWithoutEqual: stringQueryCcp]] stringByAppendingString:@")"];
        }else{
            whereToReturn = [[[[[whereToReturn stringByAppendingString:@" OR ( "] stringByAppendingString:whereFecha] stringByAppendingString:@" AND PARTIDA IN ( "] stringByAppendingString:[self obtainWithoutEqual: stringQueryCcp]]stringByAppendingString:@"))"] ;
        }
        
    }
    
    
    if (![stringQueryProg isEqualToString:@""] ) {
        if (segmentedProgActi.selectedSegmentIndex == 0) {
            whereToReturn = [[[whereToReturn stringByAppendingString:@" AND PROGRAMA IN ("] stringByAppendingString:[self obtainWithoutEqual: stringQueryProg]] stringByAppendingString:@")"];
        }else{
            whereToReturn = [[[[[whereToReturn stringByAppendingString:@" OR ( "] stringByAppendingString:whereFecha] stringByAppendingString:@" AND PROGRAMA IN ( "] stringByAppendingString:[self obtainWithoutEqual: stringQueryProg]]stringByAppendingString:@"))"] ;
        }
        
    }
    
    if (![stringQueryActi isEqualToString:@""] ) {
        if (segmentedActiProy.selectedSegmentIndex == 0) {
            whereToReturn = [[[whereToReturn stringByAppendingString:@" AND ACTIVIDAD_INST IN ("] stringByAppendingString:[self obtainWithoutEqual: stringQueryActi]] stringByAppendingString:@")"];
        }else{
            whereToReturn = [[[[[whereToReturn stringByAppendingString:@" OR ( "] stringByAppendingString:whereFecha] stringByAppendingString:@" AND ACTIVIDAD_INST IN ( "] stringByAppendingString:[self obtainWithoutEqual: stringQueryActi]]stringByAppendingString:@"))"] ;
        }
        
    }
    if (![stringQueryProyInv isEqualToString:@""] ) {
        if (segmentedProyDide.selectedSegmentIndex == 0) {
            whereToReturn = [[[whereToReturn stringByAppendingString:@" AND CLAVE_CARTERA IN ("] stringByAppendingString:[self obtainWithoutEqual: stringQueryProyInv]] stringByAppendingString:@")"];
        }else{
            whereToReturn = [[[[[whereToReturn stringByAppendingString:@" OR ( "] stringByAppendingString:whereFecha] stringByAppendingString:@" AND CLAVE_CARTERA IN ( "] stringByAppendingString:[self obtainWithoutEqual: stringQueryProyInv]]stringByAppendingString:@"))"] ;
        }
        
    }
    
    if (![stringQueryDide isEqualToString:@""] ) {
        if (segmentedDideDver.selectedSegmentIndex == 0) {
            whereToReturn = [[[whereToReturn stringByAppendingString:@" AND TIPO_GASTO IN ("] stringByAppendingString:[self obtainWithoutEqual: stringQueryDide]] stringByAppendingString:@")"];
        }else{
            whereToReturn = [[[[[whereToReturn stringByAppendingString:@" OR ( "] stringByAppendingString:whereFecha] stringByAppendingString:@" AND TIPO_GASTO IN ( "] stringByAppendingString:[self obtainWithoutEqual: stringQueryDide]]stringByAppendingString:@"))"] ;
        }
        
    }
    
    if (![stringQueryDver isEqualToString:@""] ) {
        if (segmentedDverEnt.selectedSegmentIndex == 0) {
            whereToReturn = [[[whereToReturn stringByAppendingString:@" AND FUENTE_FINAN IN ("] stringByAppendingString:[self obtainWithoutEqual: stringQueryDver]] stringByAppendingString:@")"];
        }else{
            whereToReturn = [[[[[whereToReturn stringByAppendingString:@" OR ( "] stringByAppendingString:whereFecha] stringByAppendingString:@" AND FUENTE_FINAN IN ( "] stringByAppendingString:[self obtainWithoutEqual: stringQueryDver]]stringByAppendingString:@"))"] ;
        }
        
    }
    
    if (![stringQueryEntidad isEqualToString:@""] ) {
        if (segmentedEntFin.selectedSegmentIndex == 0) {
            whereToReturn = [[[whereToReturn stringByAppendingString:@" AND ENTIDAD_FED IN ("] stringByAppendingString:[self obtainWithoutEqual: stringQueryEntidad]] stringByAppendingString:@")"];
        }else{
            whereToReturn = [[[[[whereToReturn stringByAppendingString:@" OR ( "] stringByAppendingString:whereFecha] stringByAppendingString:@" AND ENTIDAD_FED IN ( "] stringByAppendingString:[self obtainWithoutEqual: stringQueryEntidad]]stringByAppendingString:@"))"] ;
        }
        
    }
    if (![filPredWhere isEqualToString:@""] ) {
        if (segmentedEntFin.selectedSegmentIndex == 0) {
            whereToReturn = [[[whereToReturn stringByAppendingString:@" AND  ("] stringByAppendingString:filPredWhere] stringByAppendingString:@")"];
        }else{
            whereToReturn = [[[[[whereToReturn stringByAppendingString:@" OR ( "] stringByAppendingString:whereFecha] stringByAppendingString:@" AND ( "] stringByAppendingString:filPredWhere]stringByAppendingString:@"))"] ;
        }
        
    }
    
    
    
    
    return whereToReturn;
}


-(IBAction)download:(UIButton*)buttonUpda{
    arrayDownload = [[NSMutableArray alloc] init];
    
    
    
    NSString *fechaSeleccionada = [archivoSeleccionado substringWithRange:NSMakeRange(1,archivoSeleccionado.length-1 )];
    NSRange end = [fechaSeleccionada rangeOfString:@"="];
    fechaSeleccionada  = [fechaSeleccionada substringWithRange:NSMakeRange(end.location+1,fechaSeleccionada.length-end.location-1 )];
    fechaSeleccionada = [[@"'" stringByAppendingString:fechaSeleccionada ] stringByAppendingString:@"'"];
    if ([mainDelegate.databaseConnection countDatabaseRegister: [[[@"select count(id) from pres_map_columna  where fecha= " stringByAppendingString: fechaSeleccionada]stringByAppendingString: @"and ciclo="]stringByAppendingString:periodoSelected]] != 0) {
        [loadingIndicator hide];
        message = [[UIAlertView alloc] initWithTitle:@""
                                             message:@"Existen registros ya descargados con esta fecha, ¿Desea eliminar la carga anterior y  continuar con la carga?"
                                            delegate:self
                                   cancelButtonTitle:@"Cancelar"
                                   otherButtonTitles:@"Continuar",nil];
        //message.backgroundColor=[UIColor blackColor];
        [message show];
        
        
        // message.
        
        
    }else{
        [self keepDownloadWithLoading:@""];
    }
    
}

-(NSString*)queryModelGroupBy{
    NSString *groupBy  ;
    if (segmentedControlSubtotal.selectedSegmentIndex == 0) {
        groupBy = @"unidad ";
    }else if (segmentedControlSubtotal.selectedSegmentIndex ==1){
        groupBy = @"cap ";
    }else if (segmentedControlSubtotal.selectedSegmentIndex ==2){
        groupBy = @"prog ";
    }else if (segmentedControlSubtotal.selectedSegmentIndex ==3){
        groupBy = @"con ";
    }else if (segmentedControlSubtotal.selectedSegmentIndex ==4){
        groupBy = @"partida ";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex ==0){
        groupBy = @"GF ";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex ==1){
        groupBy = @"PROGRAMA ";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex ==2){
        groupBy = @"ACTIVIDAD_INST ";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex ==3){
        groupBy = @"TIPO_GASTO ";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex ==4){
        groupBy = @"ENTIDAD_FED ";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex ==5){
        groupBy = @"CLAVE_CARTERA ";
    }
    return groupBy;
}

-(NSString*)queryModelSelect{
    NSString *groupDesc  ;
    if (segmentedControlSubtotal.selectedSegmentIndex == 0) {
        groupDesc = @"SELECT unidad as unidad, (SELECT fc_desc_unidad FROM 	                pres_cat_unidades WHERE fc_cve_unidad = unidad)";
    }else if (segmentedControlSubtotal.selectedSegmentIndex ==1){
        groupDesc = @"SELECT cap as capitulo, (SELECT fc_desc_capitulo FROM 	                pres_cat_capitulo WHERE fc_id_capitulo = cap) ";
    }else if (segmentedControlSubtotal.selectedSegmentIndex ==2){
        groupDesc = @"SELECT prog as programa, (SELECT fc_desc_programa FROM 	               pres_cat_programas WHERE fc_id_programa = prog)";
    }else if (segmentedControlSubtotal.selectedSegmentIndex ==3){
        groupDesc = @"SELECT con as concepto, (SELECT fc_desc_concepto FROM 	               	         pres_cat_concepto WHERE fc_id_concepto = con)";
    }else if (segmentedControlSubtotal.selectedSegmentIndex ==4){
        groupDesc = @"SELECT partida as partida, (SELECT fc_desc_partida FROM 	               	         pres_cat_partida WHERE fc_id_partida = partida) ";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex ==0){
        groupDesc = @"SELECT gf as gfun, (SELECT fc_descripcion FROM  pres_cat_gfun WHERE fc_id_gfun = gf)";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex ==1){
        groupDesc = @"SELECT programa as prog, (SELECT descripcion FROM 	                pres_cat_prog WHERE prog = programa  ) ";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex ==2){
        groupDesc = @"SELECT actividad_inst as acti, (SELECT descripcion FROM 	                pres_cat_acti WHERE acti = actividad_inst)";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex ==3){
        groupDesc = @"SELECT tipo_gasto as dide, (SELECT descripcion FROM 	               	         pres_cat_dide WHERE dide = tipo_gasto)";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex ==4){
        groupDesc = @"SELECT entidad_fed as entidad, (SELECT descripcion FROM 	               	         pres_cat_entidad WHERE edo = entidad_fed) ";
    }else if (segmentedControlSubtotal2.selectedSegmentIndex ==5){
        groupDesc = @"SELECT CLAVE_CARTERA as proyinv, (SELECT desc_proy FROM 	               	         pres_cat_proy_inv WHERE proy_inv = CLAVE_CARTERA) ";
    }
    return groupDesc;
}

-(NSString*)queryModelPeriod60{
    NSString *groupDesc  ;
    
    NSString *mes = archivoSeleccionado ;
    NSRange end = [mes rangeOfString:@"-"];
    mes  = [mes substringWithRange:NSMakeRange(end.location+1,2 )];
    
    // When the current year is littler than the date's year
    NSString *anioF = archivoSeleccionado;
    end = [anioF rangeOfString:@"="];
    anioF  = [anioF substringWithRange:NSMakeRange(end.location+1,4)];
    if ([anioF intValue] > [archivoCurrent.anio intValue]){  // at the finish of the year month = 12
        mes = @"12";
    }
    
    
    
    
    if ([mes isEqualToString:@"01" ]) {
        groupDesc = @"0.00";
    }else if ([mes isEqualToString:@"02" ]) {
        groupDesc = @"0.00";
    }else if ([mes isEqualToString:@"03" ]) {
        groupDesc = @"dis_ene";
    }else if ([mes isEqualToString:@"04" ]) {
        groupDesc = @"dis_ene+dis_feb";
    }else if ([mes isEqualToString:@"05" ]) {
        groupDesc = @"dis_ene+des_feb+dis_mar";
    }else if ([mes isEqualToString:@"06" ]) {
        groupDesc = @"dis_ene+dis_feb+dis_mar+dis_abr";
    }else if ([mes isEqualToString:@"07" ]) {
        groupDesc = @"dis_ene+dis_feb+dis_mar+dis_abr+dis_may";
    }else if ([mes isEqualToString:@"08" ]) {
        groupDesc = @"dis_ene+dis_feb+dis_mar+dis_abr+dis_may+dis_jun";
    }else if ([mes isEqualToString:@"09" ]) {
        groupDesc = @"dis_ene+dis_feb+dis_mar+dis_abr+dis_may+dis_jun+dis_jul";
    }else if ([mes isEqualToString:@"10" ]) {
        groupDesc = @"dis_ene+dis_feb+dis_mar+dis_abr+dis_may+dis_jun+dis_jul+dis_ago";
    }else if ([mes isEqualToString:@"11" ]) {
        groupDesc = @"dis_ene+dis_feb+dis_mar+dis_abr+dis_may+dis_jun+dis_jul+dis_ago+dis_sep";
    }else if ([mes isEqualToString:@"12" ]) {
        groupDesc = @"dis_ene+dis_feb+dis_mar+dis_abr+dis_may+dis_jun+dis_jul+dis_ago+dis_sep+dis_oct";
    }
    return groupDesc;
}

-(NSString*)queryModelPeriodModp{
    NSString *groupDesc  ;
    
    NSString *mes = archivoSeleccionado ;
    NSRange end = [mes rangeOfString:@"-"];
    mes  = [mes substringWithRange:NSMakeRange(end.location+1,2 )];
    // When the current year is littler than the date's year
    NSString *anioF = archivoSeleccionado;
    end = [anioF rangeOfString:@"="];
    anioF  = [anioF substringWithRange:NSMakeRange(end.location+1,4)];
    if ([anioF intValue] > [archivoCurrent.anio intValue]){  // at the finish of the year month = 12
        mes = @"12";
    }
    
    if ([mes isEqualToString:@"01" ]) {
        groupDesc = @"mod_ene";
    }else if ([mes isEqualToString:@"02" ]) {
        groupDesc = @"mod_ene+mod_feb";
    }else if ([mes isEqualToString:@"03" ]) {
        groupDesc = @"mod_ene+mod_feb+mod_mar";
    }else if ([mes isEqualToString:@"04" ]) {
        groupDesc = @"mod_ene+mod_feb+mod_mar+mod_abr";
    }else if ([mes isEqualToString:@"05" ]) {
        groupDesc = @"mod_ene+mod_feb+mod_mar+mod_abr+mod_may";
    }else if ([mes isEqualToString:@"06" ]) {
        groupDesc = @"mod_ene+mod_feb+mod_mar+mod_abr+mod_may+mod_jun";
    }else if ([mes isEqualToString:@"07" ]) {
        groupDesc = @"mod_ene+mod_feb+mod_mar+mod_abr+mod_may+mod_jun+mod_jul";
    }else if ([mes isEqualToString:@"08" ]) {
        groupDesc = @"mod_ene+mod_feb+mod_mar+mod_abr+mod_may+mod_jun+mod_jul+mod_ago";
    }else if ([mes isEqualToString:@"09" ]) {
        groupDesc = @"mod_ene+mod_feb+mod_mar+mod_abr+mod_may+mod_jun+mod_jul+mod_ago+mod_sep";
    }else if ([mes isEqualToString:@"10" ]) {
        groupDesc = @"mod_ene+mod_feb+mod_mar+mod_abr+mod_may+mod_jun+mod_jul+mod_ago+mod_sep+mod_oct";
    }else if ([mes isEqualToString:@"11" ]) {
        groupDesc = @"mod_ene+mod_feb+mod_mar+mod_abr+mod_may+mod_jun+mod_jul+mod_ago+mod_sep+mod_oct+mod_nov";
    }else if ([mes isEqualToString:@"12" ]) {
        groupDesc = @"mod_ene+mod_feb+mod_mar+mod_abr+mod_may+mod_jun+mod_jul+mod_ago+mod_sep+mod_oct+mod_nov+mod_dic";
    }
    return groupDesc;
}

-(NSString*)queryModelPeriodEje{
    NSString *groupDesc  ;
    
    NSString *mes = archivoSeleccionado ;
    NSRange end = [mes rangeOfString:@"-"];
    mes  = [mes substringWithRange:NSMakeRange(end.location+1,2 )];
    // When the current year is littler than the date's year
    NSString *anioF = archivoSeleccionado;
    end = [anioF rangeOfString:@"="];
    anioF  = [anioF substringWithRange:NSMakeRange(end.location+1,4)];
    if ([anioF intValue] > [archivoCurrent.anio intValue]){  // at the finish of the year month = 12
        mes = @"12";
    }
    
    if ([mes isEqualToString:@"01" ]) {
        groupDesc = @"eje_ene";
    }else if ([mes isEqualToString:@"02" ]) {
        groupDesc = @"eje_ene+eje_feb";
    }else if ([mes isEqualToString:@"03" ]) {
        groupDesc = @"eje_ene+eje_feb+eje_mar";
    }else if ([mes isEqualToString:@"04" ]) {
        groupDesc = @"eje_ene+eje_feb+eje_mar+eje_abr";
    }else if ([mes isEqualToString:@"05" ]) {
        groupDesc = @"eje_ene+eje_feb+eje_mar+eje_abr+eje_may";
    }else if ([mes isEqualToString:@"06" ]) {
        groupDesc = @"eje_ene+eje_feb+eje_mar+eje_abr+eje_may+eje_jun";
    }else if ([mes isEqualToString:@"07" ]) {
        groupDesc = @"eje_ene+eje_feb+eje_mar+eje_abr+eje_may+eje_jun+eje_jul";
    }else if ([mes isEqualToString:@"08" ]) {
        groupDesc = @"eje_ene+eje_feb+eje_mar+eje_abr+eje_may+eje_jun+eje_jul+eje_ago";
    }else if ([mes isEqualToString:@"09" ]) {
        groupDesc = @"eje_ene+eje_feb+eje_mar+eje_abr+eje_may+eje_jun+eje_jul+eje_ago+eje_sep";
    }else if ([mes isEqualToString:@"10" ]) {
        groupDesc = @"eje_ene+eje_feb+eje_mar+eje_abr+eje_may+eje_jun+eje_jul+eje_ago+eje_sep+eje_oct";
    }else if ([mes isEqualToString:@"11" ]) {
        groupDesc = @"eje_ene+eje_feb+eje_mar+eje_abr+eje_may+eje_jun+eje_jul+eje_ago+eje_sep+eje_oct+eje_nov";
    }else if ([mes isEqualToString:@"12" ]) {
        groupDesc = @"eje_ene+eje_feb+eje_mar+eje_abr+eje_may+eje_jun+eje_jul+eje_ago+eje_sep+eje_oct+eje_nov+eje_dic";
    }
    return groupDesc;
}

-(NSString * ) queryLogicModel:(NSString *) type{
    
    NSString *queryDownload= @"";
    //queryDownload = [@"SELECT " stringByAppendingString:[self queryModelGroupBy]];
    
    
    if ([type isEqualToString:@"detail"]) { //this apply just for detail
        queryDownload = [[ queryDownload stringByAppendingString: [self queryModelSelect]] stringByAppendingString:@" as descripcion"];
        queryDownload = [ queryDownload stringByAppendingString:@", SUM(original) as original, SUM(modificado) as modificado, (SUM(modificado) - SUM(ejercido)) as disponible" ];
    }else{
        queryDownload = [ queryDownload stringByAppendingString:@"Select SUM(original) as original, SUM(modificado) as modificado, (SUM(modificado) - SUM(ejercido)) as disponible" ];
        
    }
    
    queryDownload = [[[ queryDownload stringByAppendingString:@", sum(" ] stringByAppendingString:[self queryModelPeriod60]] stringByAppendingString:@") as dispo60"] ;
    queryDownload = [[[ queryDownload stringByAppendingString:@", sum(" ] stringByAppendingString:[self queryModelPeriodModp]] stringByAppendingString:@") as modp"] ;
    queryDownload = [[[ queryDownload stringByAppendingString:@", sum(" ] stringByAppendingString:[self queryModelPeriodEje]] stringByAppendingString:@") as ejercido"] ;
    queryDownload = [[[[[ queryDownload stringByAppendingString:@", (sum(" ] stringByAppendingString:[self queryModelPeriodModp]] stringByAppendingString:@") - sum( "]stringByAppendingString:[self queryModelPeriodEje]] stringByAppendingString:@")) as disponiblep FROM pres_map_columna"]  ;
    NSRange end = [archivoSeleccionado rangeOfString:@"="];
    //NSString *modifica  = [archivoSeleccionado substringWithRange:NSMakeRange(end.location+1,archivoSeleccionado.length-end.location-1 )];
    NSString *modifica  = [archivoSeleccionado substringWithRange:NSMakeRange(end.location+1,10 )];
    
    queryDownload = [[[queryDownload stringByAppendingString:@" WHERE " ] stringByAppendingString: [self logicWhere]] stringByAppendingString:@"" ];
    
    queryDownload = [[queryDownload stringByAppendingString:@" and CICLO = "] stringByAppendingString:periodoSelected];
    
    queryDownload = [queryDownload stringByAppendingString:@" "];
    
    if ([type isEqualToString:@"detail"]) { //this apply just for detail
        queryDownload = [[queryDownload stringByAppendingString:@" GROUP BY " ] stringByAppendingString:[self queryModelGroupBy]]  ;
    }
    
    return queryDownload;
    
}




-(NSMutableArray* ) obtainFromJson:(NSString *) stringUrl andKey:(NSString *) key andDescripcion:(NSString *) descrip {
    if ([descrip isEqualToString:@"clave"] ) {
        stringUrl = [[stringUrl stringByAppendingString:@"&tipo=" ] stringByAppendingString:key];
        if ([key isEqualToString:@"pred"]){
            stringUrl =@"http://desarrollo.salud.gob.mx/dgpop/json/muestra_fil_pred.php";
            
            
            //stringUrl = [stringUrl  stringByAppendingString:key];
        }
    }
    NSData *data=[NSData dataWithContentsOfURL:[NSURL URLWithString:stringUrl ]];
    //NSLog(stringUrl);
    //NSLog(stringUrl);
    // parseo y creación del array
    
    NSMutableArray *arrayResults = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSMutableArray *arrayToReturn = [[NSMutableArray alloc] init];
    for (NSDictionary * item in arrayResults){
        
        NSString *cveResulta = [item objectForKey:key];
        NSString *descResulta = [item objectForKey:@"descripcion"];    //descrip];
        
        if ([descrip isEqualToString:@"presupuesto"]) {
            cveResulta = [item objectForKey:key];
            descResulta = [item objectForKey:@"descripcion"];
            
            double original = [[item objectForKey:@"original"] doubleValue] ;
            double  modificado = [[item objectForKey:@"modificado"] doubleValue];
            double  disponible = [[item objectForKey:@"disponible"] doubleValue];
            double  dispo60 = [[item objectForKey:@"dispo60"] doubleValue] ;
            double  modp = [[item objectForKey:@"modp"]doubleValue];
            double  ejercido = [[item objectForKey:@"ejercido"]doubleValue];
            double  disponiblep = [[item objectForKey:@"disponiblep"] doubleValue];
            Presupuesto *pr = [[Presupuesto alloc] initWithClave:cveResulta andDescripcion:descResulta andOriginal:original andModificado:modificado andDisponible:disponible andDispo60:dispo60 andModp:modp andEjercido:ejercido andDisponiblep:disponiblep];
            [arrayToReturn addObject:pr];
        }else if ([key isEqualToString:@"periodo"]){
            cveResulta = [item objectForKey:@"anio"];
            [arrayToReturn addObject:cveResulta];
        }
        
        else{
            if ([key isEqualToString:@"unidad"]) {
                Unidad *ur = [[Unidad alloc] initWithClave:cveResulta andDescripcion:descResulta];
                [arrayToReturn addObject:ur];
                
            }
            
            else if ([key isEqualToString:@"capitulo"]) {
                Capitulo *ca = [[Capitulo alloc] initWithClave:cveResulta andDescripcion:descResulta];
                [arrayToReturn addObject:ca];
                
            }
            else if ([key isEqualToString:@"programa"]) {
                Programa *pr = [[Programa alloc] initWithClave:cveResulta andDescripcion:descResulta];
                [arrayToReturn addObject:pr];
                
            }
            else if ([key isEqualToString:@"concepto"]) {
                Concepto *co = [[Concepto alloc] initWithClave:cveResulta andDescripcion:descResulta];
                [arrayToReturn addObject:co];
                
            }
            else if ([key isEqualToString:@"archivo"]) {
                
                NSString *selectT = [item objectForKey:@"select_table"];
                NSString *anioT = [item objectForKey:@"anio"];
                
                
                int estatusT = 0;
                @try{
                    estatusT = [[item objectForKey:@"estatus"] intValue];
                    
                }
                @catch (NSException *exception) {
                    estatusT = 2;
                }
                ArchivoDesc *ar = [[ArchivoDesc alloc] initWithArchivo:cveResulta andDescripcion:descResulta andSelect_table:selectT andAnio:anioT andEstatus:estatusT];
                [arrayToReturn addObject:ar];
            }else if ([key isEqualToString:@"pred"]) {
                
                //int  idPred = [[item objectForKey:@"idPred"] intValue];
                //NSString *nameN  = [item objectForKey:@"name"];
                NSString *claveN  = [item objectForKey:@"clave"];
                NSString *valueN  = [item objectForKey:@"descripcion"];
                //NSString *sentenceN  = [item objectForKey:@"sentence"];
                int idPred = 0;
                NSString *nameN = @"";
                NSString *sentenceN = @"";
                Predefinido *pred = [[Predefinido alloc] initWithId:idPred andName:nameN andClave:claveN andValue:valueN andSentence:sentenceN];
                [arrayToReturn addObject:pred];
                
            }else{
                ElemClave *el = [[ElemClave alloc] initWithClave:cveResulta andDescripcion:descResulta];
                [arrayToReturn addObject:el];
            }
        }
    }
    
    return arrayToReturn;
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma code for picker view starts here



- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
{
    return 1;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (pickerView == pickerViewUnid){
        
        Unidad *urPaso = [arrayUnid objectAtIndex:row];
        urSelected = [[urPaso.clave stringByAppendingString: @"-"] stringByAppendingString: urPaso.descripcion];
        //buttonSelectUnidad.titleLabel.text=   urSelected;
        [self muestraUnidad:buttonSelectUnidad];
        [self getCatalogos:@"unid"];
    }
    if (pickerView == pickerViewCapitulo){
        
        Capitulo *caPaso = [arrayCapitulo objectAtIndex:row];
        capituloSelected = [[caPaso.clave stringByAppendingString: @"-"] stringByAppendingString: caPaso.descripcion];
        //  buttonSelectCapitulo.titleLabel.text=   capituloSelected;
        [self muestraCapitulo:buttonSelectCapitulo];
        [self getCatalogos:@"capitulo"];
    }
    if (pickerView == pickerViewPrograma){
        
        Programa *prPaso = [arrayPrograma objectAtIndex:row];
        programaSelected = [[prPaso.clave stringByAppendingString: @"-"] stringByAppendingString: prPaso.descripcion];
        //buttonSelectPrograma.titleLabel.text=   programaSelected;
        [self muestraPrograma:buttonSelectPrograma];
        [self getCatalogos:@"programa"];
    }
    if (pickerView == pickerViewConcepto){
        
        Concepto *coPaso = [arrayConcepto objectAtIndex:row];
        conceptoSelected = [[coPaso.clave stringByAppendingString: @"-"] stringByAppendingString: coPaso.descripcion];
        //buttonSelectConcepto.titleLabel.text=   conceptoSelected;
        [self muestraConcepto:buttonSelectConcepto];
        [self getCatalogos:@"concepto"];
    }
    
    
    
    
    
    
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
{
    if (pickerView == pickerViewUnid){
        return [arrayUnid count];
    }else if (pickerView == pickerViewCapitulo){
        return [arrayCapitulo count];
    }else if (pickerView == pickerViewPrograma){
        return [arrayPrograma count];
        
    }else if (pickerView == pickerViewConcepto){
        return [arrayConcepto count];
    }
    
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
{
    NSString *titleToReturn;
    if (pickerView == pickerViewUnid){
        Unidad *urPaso = [arrayUnid objectAtIndex:row];
        titleToReturn = [[urPaso.clave stringByAppendingString: @"-"] stringByAppendingString: urPaso.descripcion] ;
    }else if (pickerView == pickerViewCapitulo){
        Capitulo *caPaso = [arrayCapitulo objectAtIndex:row];
        titleToReturn = [[caPaso.clave stringByAppendingString: @"-"] stringByAppendingString: caPaso.descripcion] ;
    }else if (pickerView == pickerViewPrograma){
        Programa *prPaso = [arrayPrograma objectAtIndex:row];
        titleToReturn = [[prPaso.clave stringByAppendingString: @"-"] stringByAppendingString: prPaso.descripcion] ;
    }else if (pickerView == pickerViewConcepto){
        Concepto *coPaso = [arrayConcepto objectAtIndex:row];
        titleToReturn = [[coPaso.clave stringByAppendingString: @"-"] stringByAppendingString: coPaso.descripcion] ;
    }
    
    
    
    
    
    
    return titleToReturn;
}

#pragma code for uibutton IBActions

-(IBAction)muestraUnidad:(UIButton*)sender{
    
    alpickerViewUnidad.hidden =!alpickerViewUnidad.hidden;
    buttonToHideUnidad.hidden = !buttonToHideUnidad.hidden;
    
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    alpickerViewUnidad.hidden =!alpickerViewUnidad.hidden;
    buttonToHideUnidad.hidden = !buttonToHideUnidad.hidden;
    
    alpickerViewConcepto.hidden = YES;
    alpickerViewCapitulo.hidden = YES;
    alpickerViewPrograma.hidden = YES;
    
    buttonToHideCapitulo.hidden = YES;
    buttonToHideConcepto.hidden = YES;
    buttonToHidePrograma.hidden = YES;
    
}

-(IBAction)muestraCapitulo:(UIButton *)sender{
    
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    
    alpickerViewCapitulo.hidden =!alpickerViewCapitulo.hidden;
    buttonToHideCapitulo.hidden = !buttonToHideCapitulo.hidden;
    alpickerViewConcepto.hidden = YES;
    alpickerViewUnidad.hidden = YES;
    alpickerViewPrograma.hidden = YES;
    
    buttonToHideUnidad.hidden = YES;
    buttonToHideConcepto.hidden = YES;
    buttonToHidePrograma.hidden = YES;
}


-(IBAction)muestraConcepto:(UIButton*)sender{
    
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    alpickerViewConcepto.hidden =!alpickerViewConcepto.hidden;
    buttonToHideConcepto.hidden = !buttonToHideConcepto.hidden;
    alpickerViewUnidad.hidden = YES;
    alpickerViewCapitulo.hidden = YES;
    alpickerViewPrograma.hidden = YES;
    
    buttonToHideCapitulo.hidden = YES;
    buttonToHideUnidad.hidden = YES;
    buttonToHidePrograma.hidden = YES;
    
    
}



-(IBAction)muestraPrograma:(UIButton*)sender{
    
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    alpickerViewPrograma.hidden =!alpickerViewPrograma.hidden;
    buttonToHidePrograma.hidden = !buttonToHidePrograma.hidden;
    alpickerViewConcepto.hidden = YES;
    alpickerViewCapitulo.hidden = YES;
    alpickerViewUnidad.hidden = YES;
    
    buttonToHideCapitulo.hidden = YES;
    buttonToHideUnidad.hidden = YES;
    buttonToHideConcepto.hidden = YES;
}


-(IBAction)muestraFecha:(UIButton*)sender{
    
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    alpickerViewFecha.hidden =!alpickerViewFecha.hidden;
    buttonToHideFecha.hidden = !buttonToHideFecha.hidden;
}


-(IBAction)muestraPeriodo:(UIButton*)sender{
    
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    alpickerViewPeriodo.hidden =!alpickerViewPeriodo.hidden;
    buttonToHidePeriodo.hidden = !buttonToHidePeriodo.hidden;
}

/*-(IBAction)muestraGfun:(UIButton *)sender{
 [self hidePickerViews];
 [self hidePickerViewsSecondColumn];
 alpickerViewGfun.hidden =!alpickerViewGfun.hidden;
 buttonToHideGfun.hidden = !buttonToHideGfun.hidden;
 }
 -(IBAction)muestraFonc:(UIButton *)sender{
 [self hidePickerViews];
 [self hidePickerViewsSecondColumn];
 alpickerViewFonc.hidden =!alpickerViewFonc.hidden;
 buttonToHideFonc.hidden = !buttonToHideFonc.hidden;
 }
 
 -(IBAction)muestraSfun:(UIButton *)sender{
 [self hidePickerViews];
 [self hidePickerViewsSecondColumn];
 alpickerViewSfun.hidden =!alpickerViewSfun.hidden;
 buttonToHideSfun.hidden = !buttonToHideSfun.hidden;
 }*/
-(IBAction)muestraProg:(UIButton *)sender{
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    alpickerViewProg.hidden =NO;
    buttonToHideProg.hidden = NO;
}
-(IBAction)muestraActi:(UIButton *)sender{
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    alpickerViewActi.hidden =!alpickerViewActi.hidden;
    buttonToHideActi.hidden = !buttonToHideActi.hidden;
}
-(IBAction)muestraCcp :(UIButton *)sender{
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    alpickerViewCcp.hidden =!alpickerViewCcp.hidden;
    buttonToHideCcp.hidden = !buttonToHideCcp.hidden;
}

-(IBAction)muestraDide  :(UIButton *)sender{
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    alpickerViewDide.hidden =!alpickerViewDide.hidden;
    buttonToHideDide.hidden = !buttonToHideDide.hidden;
}
-(IBAction)muestraDver  :(UIButton *)sender{
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    alpickerViewDver.hidden =!alpickerViewDver.hidden;
    buttonToHideDver.hidden = !buttonToHideDver.hidden;
}

-(IBAction)muestraEntidad   :(UIButton *)sender{
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    alpickerViewEntidad.hidden =!alpickerViewEntidad.hidden;
    buttonToHideEntidad.hidden = !buttonToHideEntidad.hidden;
}

-(IBAction)muestraProyInv:(UIButton *)sender  {
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    alpickerViewProyInv.hidden =!alpickerViewProyInv.hidden;
    buttonToHideProyInv.hidden = !buttonToHideProyInv.hidden;
}

-(IBAction)muestraPred:(UIButton *)sender  {
    [self hidePickerViews];
    [self hidePickerViewsSecondColumn];
    alpickerViewPred.hidden =!alpickerViewPred.hidden;
    buttonToHidePred.hidden = !buttonToHidePred.hidden;
}

//process delegate for alpickerview with selector




- (NSInteger)numberOfRowsForPickerView:(ALPickerView *)pickerView {
	if (pickerView == alpickerViewUnidad) {
        return [arrayUnid count];
        
    }else if (pickerView == alpickerViewCapitulo){
        return [arrayCapitulo count];
    }else if (pickerView == alpickerViewConcepto){
        return [arrayConcepto count];
    }else if (pickerView == alpickerViewPrograma){
        return [arrayPrograma count];
    }else if (pickerView == alpickerViewFecha){
        return [arrayArchivos count];
    }else if (pickerView == alpickerViewPeriodo){
        return [arrayPeriodo count];
        /*    }else if (pickerView == alpickerViewGfun){
         return [arrayGfun count];
         }else if (pickerView == alpickerViewFonc){
         return [arrayFonc count];
         }else if (pickerView == alpickerViewSfun){
         return [arraySfun count];*/
    }else if (pickerView == alpickerViewProg){
        return [arrayProg count];
    }else if (pickerView == alpickerViewActi){
        return [arrayActi count];
    }else if (pickerView == alpickerViewDide){
        return [arrayDide count];
    }else if (pickerView == alpickerViewDver){
        return [arrayDver count];
    }else if (pickerView == alpickerViewCcp){
        return [arrayCcp count];
    }else if (pickerView == alpickerViewEntidad){
        return [arrayEntidad count];
    }else if (pickerView == alpickerViewProyInv){
        return [arrayProyInv count];
    }else if (pickerView == alpickerViewPred){
        return [arrayPred count];
        
    }else{
        return 0;
    }
    
}

- (NSString *)pickerView:(ALPickerView *)pickerView textForRow:(NSInteger)row {
	
    if (pickerView ==alpickerViewUnidad) {
        Unidad *urPaso = [arrayUnid objectAtIndex:row];
        return  [[urPaso.clave stringByAppendingString: @"-"] stringByAppendingString: urPaso.descripcion] ;
    }else if(pickerView == alpickerViewConcepto){
        Concepto *coPaso = [arrayConcepto objectAtIndex:row];
        return  [[coPaso.clave stringByAppendingString: @"-"] stringByAppendingString: coPaso.descripcion] ;
    }else if(pickerView == alpickerViewCapitulo){
        Capitulo *caPaso = [arrayCapitulo objectAtIndex:row];
        return  [[caPaso.clave stringByAppendingString: @"-"] stringByAppendingString: caPaso.descripcion] ;
    }else if(pickerView == alpickerViewPrograma){
        Programa *prPaso = [arrayPrograma objectAtIndex:row];
        return  [[prPaso.clave stringByAppendingString: @"-"] stringByAppendingString: prPaso.descripcion] ;
        /*}else if(pickerView == alpickerViewPred){
         Predefinido *elPaso = [arrayPred objectAtIndex:row];
         return  [[elPaso.clave stringByAppendingString: @"-"] stringByAppendingString: elPaso.name] ;*/
        
    }else if(pickerView == alpickerViewFecha){
        ArchivoDesc *arPaso = [arrayArchivos objectAtIndex:row];
        return  arPaso.descripcion ;
    }else if(pickerView == alpickerViewPeriodo){
        NSString *pePaso = [arrayPeriodo objectAtIndex:row];
        return  pePaso ;
    }else if(pickerView == alpickerViewProg){
        ElemClave *elPaso = [arrayProg objectAtIndex:row];
        return  [[elPaso.clave stringByAppendingString: @"-"] stringByAppendingString: elPaso.descripcion] ;
    }else if(pickerView == alpickerViewActi){
        ElemClave *elPaso = [arrayActi objectAtIndex:row];
        return  [[elPaso.clave stringByAppendingString: @"-"] stringByAppendingString: elPaso.descripcion] ;
    }else if(pickerView == alpickerViewDide){
        ElemClave *elPaso = [arrayDide objectAtIndex:row];
        return  [[elPaso.clave stringByAppendingString: @"-"] stringByAppendingString: elPaso.descripcion] ;
    }else if(pickerView == alpickerViewDver){
        ElemClave *elPaso = [arrayDver objectAtIndex:row];
        return  [[elPaso.clave stringByAppendingString: @"-"] stringByAppendingString: elPaso.descripcion] ;
    }else if(pickerView == alpickerViewCcp){
        ElemClave *elPaso = [arrayCcp objectAtIndex:row];
        return  [[elPaso.clave stringByAppendingString: @"-"] stringByAppendingString: elPaso.descripcion] ;
    }else if(pickerView == alpickerViewProyInv){
        ElemClave *elPaso = [arrayProyInv objectAtIndex:row];
        return  [[elPaso.clave stringByAppendingString: @"-"] stringByAppendingString: elPaso.descripcion] ;
    }else if(pickerView == alpickerViewEntidad){
        ElemClave *elPaso = [arrayEntidad objectAtIndex:row];
        return  [[elPaso.clave stringByAppendingString: @"-"] stringByAppendingString: elPaso.descripcion] ;
    }else if(pickerView == alpickerViewPred){
        Predefinido *elPaso = [arrayPred objectAtIndex:row];
        return  [[elPaso.clave stringByAppendingString: @"-"] stringByAppendingString: elPaso.name] ;
        
        
    }else{
        return 0;
    }
}

- (BOOL)pickerView:(ALPickerView *)pickerView selectionStateForRow:(NSInteger)row {
    if (pickerView ==alpickerViewUnidad) {
        Unidad *urPaso = [arrayUnid objectAtIndex:row];
        return [[selectionStates objectForKey:urPaso.clave] boolValue];
    }else if(pickerView == alpickerViewConcepto){
        Concepto *coPaso = [arrayConcepto objectAtIndex:row];
        return [[selectionStatesConcepto objectForKey:coPaso.clave] boolValue];
    }else if(pickerView == alpickerViewCapitulo){
        Capitulo *caPaso = [arrayCapitulo objectAtIndex:row];
        return [[selectionStatesCapitulo objectForKey:caPaso.clave] boolValue];
    }else if(pickerView == alpickerViewPrograma){
        Programa *prPaso = [arrayPrograma objectAtIndex:row];
        return [[selectionStatesPrograma objectForKey:prPaso.clave] boolValue];
    }else if(pickerView == alpickerViewPeriodo){
        NSString  *prPaso = [arrayPeriodo objectAtIndex:row];
        return [[selectionStatesPeriodo objectForKey:prPaso] boolValue];
    }else if(pickerView == alpickerViewFecha){
        ArchivoDesc  *prPaso = [arrayArchivos objectAtIndex:row];
        return [[selectionStatesFecha objectForKey:prPaso.archivo] boolValue];
    }else if(pickerView == alpickerViewPeriodo){
        NSString  *prPaso = [arrayPeriodo objectAtIndex:row];
        return [[selectionStatesPeriodo objectForKey:prPaso] boolValue];
        
        /*    }else if(pickerView == alpickerViewGfun){
         ElemClave *prPaso = [arrayGfun objectAtIndex:row];
         return [[selectionStatesGfun objectForKey:prPaso.clave] boolValue];
         }else if(pickerView == alpickerViewFonc){
         ElemClave *prPaso = [arrayFonc objectAtIndex:row];
         return [[selectionStatesFonc objectForKey:prPaso.clave] boolValue];
         }else if(pickerView == alpickerViewSfun){
         ElemClave *prPaso = [arraySfun objectAtIndex:row];
         return [[selectionStatesSfun objectForKey:prPaso.clave] boolValue];*/
    }else if(pickerView == alpickerViewProg){
        ElemClave *prPaso = [arrayProg objectAtIndex:row];
        return [[selectionStatesProg objectForKey:prPaso.clave] boolValue];
    }else if(pickerView == alpickerViewActi){
        ElemClave *prPaso = [arrayActi objectAtIndex:row];
        return [[selectionStatesActi objectForKey:prPaso.clave] boolValue];
    }else if(pickerView == alpickerViewCcp){
        ElemClave *prPaso = [arrayCcp objectAtIndex:row];
        return [[selectionStatesCcp objectForKey:prPaso.clave] boolValue];
    }else if(pickerView == alpickerViewDver){
        ElemClave *prPaso = [arrayDver objectAtIndex:row];
        return [[selectionStatesDver objectForKey:prPaso.clave] boolValue];
    }else if(pickerView == alpickerViewDide){
        ElemClave *prPaso = [arrayDide objectAtIndex:row];
        return [[selectionStatesDide objectForKey:prPaso.clave] boolValue];
    }else if(pickerView == alpickerViewEntidad){
        ElemClave *prPaso = [arrayEntidad objectAtIndex:row];
        return [[selectionStatesEntidad objectForKey:prPaso.clave] boolValue];
    }else if(pickerView == alpickerViewProyInv){
        ElemClave *prPaso = [arrayProyInv objectAtIndex:row];
        return [[selectionStatesProyInv objectForKey:prPaso.clave] boolValue];
    }else if(pickerView == alpickerViewPred){
        Predefinido *prPaso = [arrayPred objectAtIndex:row];
        return [[selectionStatesPred objectForKey:prPaso.clave] boolValue];
        
    }else{
        return NO;
    }
    
}

- (void)pickerView:(ALPickerView *)pickerView didCheckRow:(NSInteger)row {
	// Check whether all rows are checked or only one
    if (row == -1){
        if (pickerView ==alpickerViewUnidad) {
            for (id key in [selectionStates allKeys])
                [selectionStates setObject:[NSNumber numberWithBool:YES] forKey:key];
        }else if (pickerView ==alpickerViewCapitulo) {
            for (id key in [selectionStatesCapitulo allKeys])
                [selectionStatesCapitulo setObject:[NSNumber numberWithBool:YES] forKey:key];
        }else if(pickerView ==alpickerViewConcepto) {
            for (id key in [selectionStatesConcepto allKeys])
                [selectionStatesConcepto setObject:[NSNumber numberWithBool:YES] forKey:key];
        }else if(pickerView ==alpickerViewPrograma) {
            for (id key in [selectionStatesPrograma allKeys])
                [selectionStatesPrograma setObject:[NSNumber numberWithBool:YES] forKey:key];
        }else if(pickerView ==alpickerViewPeriodo) {
            for (id key in [selectionStatesPeriodo allKeys])
                [selectionStatesPeriodo setObject:[NSNumber numberWithBool:YES] forKey:key];
        }else if(pickerView ==alpickerViewFecha) {
            for (id key in [selectionStatesFecha allKeys])
                [selectionStatesFecha setObject:[NSNumber numberWithBool:YES] forKey:key];
            /*        }else if(pickerView ==alpickerViewGfun) {
             for (id key in [selectionStatesGfun allKeys])
             [selectionStatesGfun setObject:[NSNumber numberWithBool:YES] forKey:key];
             }else if(pickerView ==alpickerViewFonc) {
             for (id key in [selectionStatesFonc allKeys])
             [selectionStatesFonc setObject:[NSNumber numberWithBool:YES] forKey:key];*/
        }else if(pickerView ==alpickerViewProg) {
            for (id key in [selectionStatesProg allKeys])
                [selectionStatesProg setObject:[NSNumber numberWithBool:YES] forKey:key];
        }else if(pickerView ==alpickerViewActi) {
            for (id key in [selectionStatesActi allKeys])
                [selectionStatesActi setObject:[NSNumber numberWithBool:YES] forKey:key];
        }else if(pickerView ==alpickerViewCcp) {
            for (id key in [selectionStatesCcp allKeys])
                [selectionStatesCcp setObject:[NSNumber numberWithBool:YES] forKey:key];
        }else if(pickerView ==alpickerViewDver) {
            for (id key in [selectionStatesDver allKeys])
                [selectionStatesDver setObject:[NSNumber numberWithBool:YES] forKey:key];
        }else if(pickerView ==alpickerViewDide) {
            for (id key in [selectionStatesDide allKeys])
                [selectionStatesDide setObject:[NSNumber numberWithBool:YES] forKey:key];
        }else if(pickerView ==alpickerViewEntidad) {
            for (id key in [selectionStatesEntidad allKeys])
                [selectionStatesEntidad setObject:[NSNumber numberWithBool:YES] forKey:key];
        }else if(pickerView ==alpickerViewProyInv) {
            for (id key in [selectionStatesProyInv allKeys])
                [selectionStatesProyInv setObject:[NSNumber numberWithBool:YES] forKey:key];
        }else if(pickerView ==alpickerViewPred) {
            for (id key in [selectionStatesPred allKeys])
                [selectionStatesPred setObject:[NSNumber numberWithBool:YES] forKey:key];
        }
	}else{
        if (pickerView ==alpickerViewUnidad) {
            Unidad *urPaso = [arrayUnid objectAtIndex:row];
            [selectionStates setObject:[NSNumber numberWithBool:YES] forKey:urPaso.clave];
        }else if(pickerView == alpickerViewConcepto){
            Concepto *coPaso = [arrayConcepto objectAtIndex:row];
            [selectionStatesConcepto setObject:[NSNumber numberWithBool:YES] forKey:coPaso.clave];
        }else if(pickerView == alpickerViewCapitulo){
            Capitulo *caPaso = [arrayCapitulo objectAtIndex:row];
            [selectionStatesCapitulo setObject:[NSNumber numberWithBool:YES] forKey:caPaso.clave];
        }else if(pickerView == alpickerViewPrograma){
            Programa *prPaso = [arrayPrograma objectAtIndex:row];
            [selectionStatesPrograma setObject:[NSNumber numberWithBool:YES] forKey:prPaso.clave];
            /*       }else if(pickerView ==alpickerViewGfun) {
             ElemClave *prPaso = [arrayGfun objectAtIndex:row];
             [selectionStatesGfun setObject:[NSNumber numberWithBool:YES] forKey:prPaso.clave];
             }else if(pickerView ==alpickerViewFonc) {
             Programa *prPaso = [arrayFonc objectAtIndex:row];
             [selectionStatesFonc setObject:[NSNumber numberWithBool:YES] forKey:prPaso.clave];*/
        }else if(pickerView ==alpickerViewProg) {
            Programa *prPaso = [arrayProg objectAtIndex:row];
            [selectionStatesProg setObject:[NSNumber numberWithBool:YES] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewActi) {
            Programa *prPaso = [arrayActi objectAtIndex:row];
            [selectionStatesActi setObject:[NSNumber numberWithBool:YES] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewCcp) {
            Programa *prPaso = [arrayCcp objectAtIndex:row];
            [selectionStatesCcp setObject:[NSNumber numberWithBool:YES] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewDver) {
            Programa *prPaso = [arrayDver objectAtIndex:row];
            [selectionStatesDver setObject:[NSNumber numberWithBool:YES] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewDide) {
            Programa *prPaso = [arrayDide objectAtIndex:row];
            [selectionStatesDide setObject:[NSNumber numberWithBool:YES] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewEntidad) {
            Programa *prPaso = [arrayEntidad objectAtIndex:row];
            [selectionStatesEntidad setObject:[NSNumber numberWithBool:YES] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewProyInv) {
            Programa *prPaso = [arrayProyInv objectAtIndex:row];
            [selectionStatesProyInv setObject:[NSNumber numberWithBool:YES] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewPred) {
            Predefinido *prPaso = [arrayPred objectAtIndex:row];
            [selectionStatesPred setObject:[NSNumber numberWithBool:YES] forKey:prPaso.clave];
        }else if(pickerView == alpickerViewFecha){
            //first unckeck the others, then we select the user choise
            for (id key in [selectionStatesFecha allKeys])
                [selectionStatesFecha setObject:[NSNumber numberWithBool:NO] forKey:key];
            ArchivoDesc *prPaso = [arrayArchivos objectAtIndex:row];
            [selectionStatesFecha setObject:[NSNumber numberWithBool:YES] forKey:prPaso.archivo];
            dateSelected = row;
            
        }else if(pickerView == alpickerViewPeriodo){
            //first unckeck the others, then we select the user choise
            for (id key in [selectionStatesPeriodo allKeys])
                [selectionStatesPeriodo setObject:[NSNumber numberWithBool:NO] forKey:key];
            NSString *prPaso = [arrayPeriodo objectAtIndex:row];
            [selectionStatesPeriodo setObject:[NSNumber numberWithBool:YES] forKey:prPaso];
            
            //dateSelected = row;
            
        }else{
            //ArchivoDesc *prPaso = [arrayArchivos objectAtIndex:row];
            //[selectionStatesFecha setObject:[NSNumber numberWithBool:YES] forKey:prPaso.archivo];
        }
        
        
        
    }
}

- (void)pickerView:(ALPickerView *)pickerView didUncheckRow:(NSInteger)row {
	// Check whether all rows are unchecked or only one
    if (row == -1){
        if (pickerView ==alpickerViewUnidad) {
            for (id key in [selectionStates allKeys])
                [selectionStates setObject:[NSNumber numberWithBool:NO] forKey:key];
        }else if (pickerView ==alpickerViewCapitulo) {
            for (id key in [selectionStatesCapitulo allKeys])
                [selectionStatesCapitulo setObject:[NSNumber numberWithBool:NO] forKey:key];
        }else if(pickerView ==alpickerViewConcepto) {
            for (id key in [selectionStatesConcepto allKeys])
                [selectionStatesConcepto setObject:[NSNumber numberWithBool:NO] forKey:key];
        }else if(pickerView ==alpickerViewPrograma) {
            for (id key in [selectionStatesPrograma allKeys])
                [selectionStatesPrograma setObject:[NSNumber numberWithBool:NO] forKey:key];
            /*        }else if(pickerView ==alpickerViewGfun) {
             for (id key in [selectionStatesGfun allKeys])
             [selectionStatesGfun setObject:[NSNumber numberWithBool:NO] forKey:key];
             }else if(pickerView ==alpickerViewFonc) {
             for (id key in [selectionStatesFonc allKeys])
             [selectionStatesFonc setObject:[NSNumber numberWithBool:NO] forKey:key];*/
        }else if(pickerView ==alpickerViewProg) {
            for (id key in [selectionStatesProg allKeys])
                [selectionStatesProg setObject:[NSNumber numberWithBool:NO] forKey:key];
        }else if(pickerView ==alpickerViewActi) {
            for (id key in [selectionStatesActi allKeys])
                [selectionStatesActi setObject:[NSNumber numberWithBool:NO] forKey:key];
        }else if(pickerView ==alpickerViewCcp) {
            for (id key in [selectionStatesCcp allKeys])
                [selectionStatesCcp setObject:[NSNumber numberWithBool:NO] forKey:key];
        }else if(pickerView ==alpickerViewDver) {
            for (id key in [selectionStatesDver allKeys])
                [selectionStatesDver setObject:[NSNumber numberWithBool:NO] forKey:key];
        }else if(pickerView ==alpickerViewDide) {
            for (id key in [selectionStatesDide allKeys])
                [selectionStatesDide setObject:[NSNumber numberWithBool:NO] forKey:key];
        }else if(pickerView ==alpickerViewEntidad) {
            for (id key in [selectionStatesEntidad allKeys])
                [selectionStatesEntidad setObject:[NSNumber numberWithBool:NO] forKey:key];
        }else if(pickerView ==alpickerViewProyInv) {
            for (id key in [selectionStatesProyInv allKeys])
                [selectionStatesProyInv setObject:[NSNumber numberWithBool:NO] forKey:key];
        }else if(pickerView ==alpickerViewFecha) {
            for (id key in [selectionStatesFecha allKeys])
                [selectionStatesFecha setObject:[NSNumber numberWithBool:NO] forKey:key];
        }else if(pickerView ==alpickerViewPeriodo) {
            for (id key in [selectionStatesPeriodo allKeys])
                [selectionStatesPeriodo setObject:[NSNumber numberWithBool:NO] forKey:key];
        }else if(pickerView ==alpickerViewPred) {
            for (id key in [selectionStatesPred allKeys])
                [selectionStatesPred setObject:[NSNumber numberWithBool:NO] forKey:key];
        }
	}else
        if (pickerView ==alpickerViewUnidad) {
            Unidad *urPaso = [arrayUnid objectAtIndex:row];
            [selectionStates setObject:[NSNumber numberWithBool:NO] forKey:urPaso.clave];
        }else if(pickerView == alpickerViewConcepto){
            Concepto *coPaso = [arrayConcepto objectAtIndex:row];
            [selectionStatesConcepto setObject:[NSNumber numberWithBool:NO] forKey:coPaso.clave];
        }else if(pickerView == alpickerViewCapitulo){
            Capitulo *caPaso = [arrayCapitulo objectAtIndex:row];
            [selectionStatesCapitulo setObject:[NSNumber numberWithBool:NO] forKey:caPaso.clave];
        }else if(pickerView == alpickerViewPrograma){
            Programa *prPaso = [arrayPrograma objectAtIndex:row];
            [selectionStatesPrograma setObject:[NSNumber numberWithBool:NO] forKey:prPaso.clave];
            /*        }else if(pickerView ==alpickerViewGfun) {
             for (id key in [selectionStatesGfun allKeys])
             [selectionStatesGfun setObject:[NSNumber numberWithBool:NO] forKey:key];
             }else if(pickerView ==alpickerViewFonc) {
             for (id key in [selectionStatesFonc allKeys])
             [selectionStatesFonc setObject:[NSNumber numberWithBool:NO] forKey:key];*/
        }else if(pickerView ==alpickerViewProg) {
            ElemClave *prPaso = [arrayProg objectAtIndex:row];
            [selectionStatesProg setObject:[NSNumber numberWithBool:NO] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewActi) {
            ElemClave *prPaso = [arrayActi objectAtIndex:row];
            [selectionStatesActi setObject:[NSNumber numberWithBool:NO] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewCcp) {
            ElemClave *prPaso = [arrayCcp objectAtIndex:row];
            [selectionStatesCcp setObject:[NSNumber numberWithBool:NO] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewDver) {
            ElemClave *prPaso = [arrayDver objectAtIndex:row];
            [selectionStatesDver setObject:[NSNumber numberWithBool:NO] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewDide) {
            ElemClave *prPaso = [arrayDide objectAtIndex:row];
            [selectionStatesDide setObject:[NSNumber numberWithBool:NO] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewEntidad) {
            ElemClave *prPaso = [arrayEntidad objectAtIndex:row];
            [selectionStatesEntidad setObject:[NSNumber numberWithBool:NO] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewProyInv) {
            ElemClave *prPaso = [arrayProyInv objectAtIndex:row];
            [selectionStatesProyInv setObject:[NSNumber numberWithBool:NO] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewPred) {
            Predefinido *prPaso = [arrayPred objectAtIndex:row];
            [selectionStatesPred setObject:[NSNumber numberWithBool:NO] forKey:prPaso.clave];
        }else if(pickerView ==alpickerViewFecha) {
            for (id key in [selectionStatesFecha allKeys])
                [selectionStatesFecha setObject:[NSNumber numberWithBool:NO] forKey:key];
        }else if(pickerView == alpickerViewFecha){
            ArchivoDesc *prPaso = [arrayArchivos objectAtIndex:row];
            [selectionStatesFecha setObject:[NSNumber numberWithBool:NO] forKey:prPaso.archivo];
        }else if(pickerView == alpickerViewPeriodo){
            NSString *prPaso = [arrayPeriodo objectAtIndex:row];
            [selectionStatesPeriodo setObject:[NSNumber numberWithBool:NO] forKey:prPaso];
            
        }
}

#pragma code  for loadingindicator

- (void)showLoadingIndicator:(NSString *)theMessage {
    [self.loadingIndicator performSelectorOnMainThread:@selector(show:) withObject:theMessage waitUntilDone:NO];
}

- (void)hideLoadingIndicator {
    [self.loadingIndicator performSelectorOnMainThread:@selector(hide) withObject:nil waitUntilDone:NO];
    
}


#pragma CODE for tableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [arrayArchivos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithFrame:CGRectZero ] ;
    }
    
    // Set up the cell...
    ArchivoDesc *arPaso = [arrayArchivos objectAtIndex:indexPath.row];
    NSString *cellValue = arPaso.descripcion;
    cell.text = cellValue;
    cell.selectedBackgroundView.backgroundColor=[UIColor redColor];
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"button_red.png"]];
    UIView *bgColorView = [[UIView alloc] init];
    [bgColorView setBackgroundColor:background];
    [cell setSelectedBackgroundView:bgColorView];
    //[bgColorView release];
    // cell.textLabel.font = [UIFont systemFontOfSize:8]; //Change this value to adjust size
    //[cell.textLabel setFont:[UIFont systemFontOfSize:10]];
    //cell.textLabel.numberOfLines = 2; //Change this value to show more or less lines.
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath {
    
    // [myVar setName:[_contentsOfElement substringWithRange:NSMakeRange(0, end.location)]];
    [self asignaFechaArchivo:[indexPath row]];
    
}
-(void) asignaFechaArchivo:(int) iRenglon{
    
    if (segmentedArchivos.selectedSegmentIndex == 0) { //en linea
        if(segmentedControlRepor.selectedSegmentIndex == 0) { //diario
            NSString* modifica = [[NSString alloc] init];
            ArchivoDesc *ar = [arrayArchivos objectAtIndex:iRenglon];
            modifica = ar.archivo ;
            NSRange end = [modifica rangeOfString:@"?"];
            modifica  = [modifica substringWithRange:NSMakeRange(end.location,modifica.length-end.location )];
            archivoSeleccionado = [[NSString alloc] initWithString:modifica] ;
            archivoSeleccionadoDesc = ar.descripcion;
            [ buttonSelectFecha setTitle:ar.descripcion forState:UIControlStateNormal];
            archivoCurrent = ar;
            archivoCurrent.anio = periodoSelected;
            //labelSelector.text = archivoSeleccionado;
            //labelSelector.text = [arrayArchivosDesc objectAtIndex:iRenglon];
            
        }
    }else{
        //archivoSeleccionado = [arrayArchivos objectAtIndex:iRenglon];
        //labelSelector.text = [arrayArchivosDesc objectAtIndex:iRenglon];
        NSString* modifica = [[NSString alloc] init];
        ArchivoDesc *ar = [arrayArchivos objectAtIndex:iRenglon];
        modifica = ar.archivo ;
        NSRange end = [modifica rangeOfString:@"?"];
        modifica  = [modifica substringWithRange:NSMakeRange(end.location,modifica.length-end.location )];
        archivoSeleccionado = [[NSString alloc] initWithString:modifica] ;
        archivoSeleccionadoDesc = ar.descripcion;
        [ buttonSelectFecha setTitle:ar.descripcion forState:UIControlStateNormal];
        archivoCurrent = ar;
        archivoCurrent.anio = periodoSelected;
        
    }
}



-(void) asignaPeriodo:(int) iRenglon{
    
    NSString *pe = [arrayPeriodo objectAtIndex:iRenglon];
    periodoSelected = pe;
    [buttonSelectPeriodo setTitle:periodoSelected forState:UIControlStateNormal];
    archivoCurrent.anio = periodoSelected;
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}


/*- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
 if (segmentedControlRepor.selectedSegmentIndex == 0) {
 return  @"Archivos disponibles diario";
 }else {
 return   @"Archivos disponibles semanal";
 }
 
 
 }*/


- (UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 30)];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 3, tableView.bounds.size.width - 10, 18)];
    if (segmentedControlRepor.selectedSegmentIndex == 0) {
        label.text =  @"Archivos diario";
    }else if (segmentedControlRepor.selectedSegmentIndex == 1){
        label.text =  @"Archivos semanal";
    }else{
        label.text =  @"Archivos Histórico";
    }
    
    //label.text = @"Section Header Text Here";
    label.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1];
    UIColor *colorHeader = [UIColor colorWithRed:5 green:.1 blue:.1 alpha:1];
    label.backgroundColor = [UIColor clearColor];
    [headerView addSubview:label];
    if (section == 0)
        [headerView setBackgroundColor:colorHeader];
    else
        [headerView setBackgroundColor:[UIColor clearColor]];
    
    return headerView;
}

/*- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
 {
 CGFloat pageWidth = self.collectionViewClave.frame.size.width;
 //self.pageControl.currentPage = self.collectionView.contentOffset.x / pageWidth;
 }*/
#pragma mark -
#pragma mark delegate for UICollectionViewDataSource

-(NSInteger)numberOfSectionsInCollectionView:
(UICollectionView *)collectionView
{
    return 1;
}


-(NSInteger)collectionView:(UICollectionView *)collectionView
    numberOfItemsInSection:(NSInteger)section
{
    
    if ((collectionView == collectionViewRepor) || (collectionView == collectionViewReporPdf)) {
        return [arrayPresupuesto count]*9;
        
    }else{
        return [arrayPresupuesto count];
        
    }
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGPoint pointClave = collectionViewClave.contentOffset;
    //[collectionViewDescripcion setContentOffset:CGPointMake(collectionViewDescripcion.contentOffset.x, pointClave.y)];
    
    
    
    
    if ((collectionView == collectionViewRepor) || (collectionView == collectionViewReporPdf)) {
        MyCollectionViewCell  *myCell = [collectionView
                                         dequeueReusableCellWithReuseIdentifier:@"MyCell"
                                         forIndexPath:indexPath];
        /*if (myCell.selected) {
         UIImage *imageBackground = [UIImage imageNamed:@"blue6.jpg"];
         myCell.backgroundColor = [UIColor colorWithPatternImage:imageBackground]; // highlight selection
         myCell.labelCell.textColor = [UIColor whiteColor];
         }
         else
         {
         myCell.backgroundColor = [UIColor whiteColor]; // Default color
         myCell.labelCell.textColor = [UIColor blackColor];
         }*/
        UIImage *imageBackground = [UIImage imageNamed:@"blue6.jpg"];
        
        NSLog(@"%d",indexPath.row);
        if (indexPath.row <= [arrayCellSelected count]) {
            if ([[arrayCellSelected objectAtIndex:(indexPath.row ) ] isEqualToString:@"NO"]) {
                myCell.backgroundColor = [UIColor whiteColor]; // highlight selection
                myCell.labelCell.textColor = [UIColor blackColor];
                [arrayCellSelected setObject:@"NO" atIndexedSubscript:indexPath.row ];
            }else{
                myCell.backgroundColor = [UIColor colorWithPatternImage:imageBackground]; // highlight selection
                myCell.labelCell.textColor = [UIColor whiteColor];
                [arrayCellSelected setObject:@"YES" atIndexedSubscript:indexPath.row ];
                
            }
            
        }
        
        
        
        //we need the row and the column
        int base = 9;
        int rowTotal = [indexPath row];
        int row = ([indexPath  row] / base) ;
        int column = ([indexPath  row] % base) ;
        Presupuesto *pr = [arrayPresupuesto objectAtIndex:row];
        Reporte * currentRepor;
        //NSLog(@"%d",indexPath.row);
        for (Reporte *repor1 in Reports) {
            if ((indexPath.row >= repor1.filaIni) && (indexPath.row <= repor1.filaFin)) {
                currentRepor = repor1;
            }
        }
        if (column == 0){
            //myCell.labelCell.frame =  CGRectMake(myCell.labelCell.frame.origin.x, myCell.labelCell.frame.origin.y, 34, 64);
            //myCell.labelCell.textAlignment = NSTextAlignmentRight;
            /*if (segmentedControlSubtotal.selectedSegmentIndex == 1) {
             if (currentRepor.descripcion isEqualToString:@"capitulo") {
             myCell.labelCell.text = [pr.clave stringByAppendingString:@"000"];
             }else{
             myCell.labelCell.text = pr.clave;
             }
             }else if (segmentedControlSubtotal.selectedSegmentIndex == 3) {
             if (currentRepor.descripcion isEqualToString:@"capitulo") {
             myCell.labelCell.text = [pr.clave stringByAppendingString:@"000"];
             }else{
             myCell.labelCell.text = pr.clave;
             }
             }else{
             myCell.labelCell.text = pr.clave;
             }*/
            if ([currentRepor.descripcion isEqualToString:@"capitulo"]) {
                myCell.labelCell.text = [pr.clave stringByAppendingString:@"000"];
            }else if ([currentRepor.descripcion isEqualToString:@"concepto"]){
                myCell.labelCell.text = [pr.clave stringByAppendingString:@"00"];
            }else{
                myCell.labelCell.text = pr.clave;
            }
            myCell.labelCell.text = pr.clave;
            
            myCell.labelCell.textAlignment = NSTextAlignmentCenter;
            
        }else if (column == 1){
            //myCell.labelCell.frame =  CGRectMake(myCell.labelCell.frame.origin.x, myCell.labelCell.frame.origin.y, 240, 64);
            
            if (row == ([arrayPresupuesto count ]-1)) {  //last row
                myCell.labelCell.text = @"TOTAL";
            }else{
                myCell.labelCell.text = pr.descripcion;
            }
            myCell.labelCell.textAlignment = NSTextAlignmentLeft;
            myCell.labelCell.numberOfLines = 5;
            myCell.labelCell.lineBreakMode =  NSLineBreakByWordWrapping; //NSLineBreakByClipping; // NSLineBreakByWordWrapping;
        }else if (column == 2){
            
            //myCell.labelCell.frame =  CGRectMake(myCell.labelCell.frame.origin.x, myCell.labelCell.frame.origin.y, 165, 64);
            //myCell.labelCell.numberOfLines = 1;
            
            myCell.labelCell.textAlignment = NSTextAlignmentRight;
            NSNumber *num1 = [NSNumber numberWithDouble:pr.original];
            NSString *numberStr = [NSNumberFormatter localizedStringFromNumber:num1 numberStyle:NSNumberFormatterCurrencyStyle];
            
            myCell.labelCell.text = numberStr; //[NSString stringWithFormat:@"%f", pr.modificado];
            //    myCell.labelCell.textAlignment = NSTextAlignmentRight;
        }else if (column == 3){
            myCell.labelCell.textAlignment = NSTextAlignmentRight;
            
            NSNumber *num1 = [NSNumber numberWithDouble:pr.modificado];
            NSString *numberStr = [NSNumberFormatter localizedStringFromNumber:num1 numberStyle:NSNumberFormatterCurrencyStyle];
            myCell.labelCell.text = numberStr; //[NSString stringWithFormat:@"%f", pr.modificado];
            myCell.labelCell.numberOfLines = 1;
            
        }else if (column == 4){
            myCell.labelCell.textAlignment = NSTextAlignmentRight;
            
            NSNumber *num1 = [NSNumber numberWithDouble:pr.disponible];
            NSString *numberStr = [NSNumberFormatter localizedStringFromNumber:num1 numberStyle:NSNumberFormatterCurrencyStyle];
            myCell.labelCell.text = numberStr; //[NSString stringWithFormat:@"%f", pr.modificado];
            myCell.labelCell.numberOfLines = 1;
            
        }else if (column == 5){
            //myCell.labelCell.frame =  CGRectMake(myCell.labelCell.frame.origin.x, myCell.labelCell.frame.origin.y, 90, 64);
            myCell.labelCell.textAlignment = NSTextAlignmentRight;
            
            NSNumber *num1 = [NSNumber numberWithDouble:pr.dispo60];
            NSString *numberStr = [NSNumberFormatter localizedStringFromNumber:num1 numberStyle:NSNumberFormatterCurrencyStyle];
            myCell.labelCell.text = numberStr; //[NSString stringWithFormat:@"%f", pr.modificado];
            //myCell.labelCell.textAlignment = NSTextAlignmentCenter;
            //myCell.labelCell.numberOfLines = 1;
            
        }else if (column == 6){
            myCell.labelCell.textAlignment = NSTextAlignmentRight;
            
            NSNumber *num1 = [NSNumber numberWithDouble:pr.modp];
            NSString *numberStr = [NSNumberFormatter localizedStringFromNumber:num1 numberStyle:NSNumberFormatterCurrencyStyle];
            myCell.labelCell.text = numberStr; //[NSString stringWithFormat:@"%f", pr.modificado];
            myCell.labelCell.numberOfLines = 1;
            
        }else if (column == 7){
            myCell.labelCell.textAlignment = NSTextAlignmentRight;
            
            NSNumber *num1 = [NSNumber numberWithDouble:pr.ejercido];
            NSString *numberStr = [NSNumberFormatter localizedStringFromNumber:num1 numberStyle:NSNumberFormatterCurrencyStyle];
            myCell.labelCell.text = numberStr; //[NSString stringWithFormat:@"%f", pr.modificado];
            myCell.labelCell.numberOfLines = 1;
            
        }else if (column == 8){
            myCell.labelCell.textAlignment = NSTextAlignmentRight;
            
            NSNumber *num1 = [NSNumber numberWithDouble:pr.disponiblep];
            NSString *numberStr = [NSNumberFormatter localizedStringFromNumber:num1 numberStyle:NSNumberFormatterCurrencyStyle];
            myCell.labelCell.text = numberStr; //[NSString stringWithFormat:@"%f", pr.modificado];
            myCell.labelCell.numberOfLines = 1;
            
        }else{
            myCell.labelCell.textAlignment = NSTextAlignmentRight;
            
            myCell.labelCell.text = @"";
        }
        //NSLog(@"%d", [indexPath row]);
        
        /*UIImage *image;
         int row = [indexPath row];
         
         image = [UIImage imageNamed:_carImages[row]];
         
         myCell.imageView.image = image;*/
        
        return myCell;
    }else if (collectionView ==collectionViewClave) {
        MyCollectionViewCell  *myCell2 = [collectionView
                                          dequeueReusableCellWithReuseIdentifier:@"MyCell2"
                                          forIndexPath:indexPath];
        Presupuesto *pr = [arrayPresupuesto objectAtIndex:[indexPath row]];
        
        myCell2.labelCell.text = pr.clave;
        
        return myCell2;
        
        
    }else if (collectionView ==collectionViewDescripcion) {
        MyCollectionViewCell  *myCell2 = [collectionView
                                          dequeueReusableCellWithReuseIdentifier:@"MyCell2"
                                          forIndexPath:indexPath];
        Presupuesto *pr = [arrayPresupuesto objectAtIndex:[indexPath row]];
        
        myCell2.labelCell.text = pr.descripcion;
        
        return myCell2;
        
    }else if (collectionView ==collectionViewOriginal) {
        MyCollectionViewCell  *myCell2 = [collectionView
                                          dequeueReusableCellWithReuseIdentifier:@"MyCell2"
                                          forIndexPath:indexPath];
        Presupuesto *pr = [arrayPresupuesto objectAtIndex:[indexPath row]];
        
        NSNumber *num1 = [NSNumber numberWithDouble:pr.original];
        NSString *numberStr = [NSNumberFormatter localizedStringFromNumber:num1 numberStyle:NSNumberFormatterCurrencyStyle];
        
        myCell2.labelCell.text = numberStr; //[NSString stringWithFormat:@"%f", pr.modificado];
        
        
        return myCell2;
    }
    
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath  {
    MyCollectionViewCell *datasetCell = (MyCollectionViewCell*) [collectionView cellForItemAtIndexPath:indexPath];
    UIImage *imageBackground = [UIImage imageNamed:@"blue6.jpg"];
    
    if ([[arrayCellSelected objectAtIndex:(indexPath.row ) ] isEqualToString:@"YES"]) {
        datasetCell.backgroundColor = [UIColor whiteColor]; // highlight selection
        datasetCell.labelCell.textColor = [UIColor blackColor];
        [arrayCellSelected setObject:@"NO" atIndexedSubscript:indexPath.row ];
    }else{
        datasetCell.backgroundColor = [UIColor colorWithPatternImage:imageBackground]; // highlight selection
        datasetCell.labelCell.textColor = [UIColor whiteColor];
        [arrayCellSelected setObject:@"YES" atIndexedSubscript:indexPath.row];
        
    }
    
}

-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *datasetCell =[collectionView cellForItemAtIndexPath:indexPath];
    //datasetCell.backgroundColor = [UIColor whiteColor]; // Default color
}




/*
 - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
 {
 // MyCollectionViewCell *filterCell = (MyCollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"MyCollectionViewCell" forIndexPath:indexPath];
 //UICollectionViewCell *filterCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCollectionViewCell" forIndexPath:indexPath];
 if (collectionView == collectionViewRepor) {
 //MyCollectionViewCell *filterCell = (MyCollectionViewCell*)[collectionView  cellForItemAtIndexPath:indexPath];
 //MyCollectionViewCell *filterCell = (MyCollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
 MyCollectionViewCell *filterCell = (MyCollectionViewCell*)[collectionView   dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
 
 NSLog(@"%d", indexPath.row);
 NSLog(@"%d", indexPath.section);
 //filterCell.window.backgroundColor = [UIColor yellowColor];
 filterCell.backgroundColor = [UIColor blueColor];
 filterCell.labelCell.textColor = [UIColor whiteColor];
 //[[collectionView cellForItemAtIndexPath:indexPath] setBackgroundColor:[UIColor blueColor]];
 }
 
 //NSLog(@"hello");
 }*/

#pragma mark -
#pragma mark UICollectionViewFlowLayoutDelegate

/*-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
 {
 UIImage *image;
 int row = [indexPath row];
 
 image = [UIImage imageNamed:_carImages[row]];
 
 return image.size;
 }*/

#pragma Code for header
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    MySuplementaryView *header = nil;
    
    if ([kind isEqual:UICollectionElementKindSectionHeader])
    {
        header = [collectionView dequeueReusableSupplementaryViewOfKind:kind
                                                    withReuseIdentifier:@"MyHeader"
                                                           forIndexPath:indexPath];
        
        if ([indexPath row] == 1 ) {
            header.headerLabel.text = @"Clave";
            
        }else{
            header.headerLabel.text = @"Descripción";
            
        }
    }
    return header;
    
}


#pragma mark -
#pragma mark UICollectionViewFlowLayoutDelegate

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGPoint pointClave = collectionViewClave.contentOffset;
    [collectionViewDescripcion setContentOffset:CGPointMake(collectionViewDescripcion.contentOffset.x, pointClave.y)];
    
    if ((collectionView == collectionViewRepor) || (collectionView == collectionViewReporPdf)) {
        int base = 9;
        int rowTotal = [indexPath row];
        int row = ([indexPath  row] / base) ;
        int column = ([indexPath  row] % base) ;
        if (column == 1){
            // return CGSizeMake(165, 45);
            return CGSizeMake(102, 65);
        }else if (column == 0) {
            //  return CGSizeMake(46, 45);
            return CGSizeMake(102, 65);
        }else{
            return CGSizeMake(101, 65);
        }
    }else if (collectionView == collectionViewClave) {
        
        return CGSizeMake(58, 50);
        
    }else if (collectionView == collectionViewDescripcion) {
        
        return CGSizeMake(120, 50);
        
    }else{
        
        return CGSizeMake(98, 50);
        
    }
    
    
}

-(IBAction)segmentedControlIndexChanged:(UISegmentedControl *)sender{
    if (sender == segmentedControlSubtotal) {
        [self.segmentedControlSubtotal2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        
    }else if (sender == segmentedControlSubtotal2){
        [self.segmentedControlSubtotal setSelectedSegmentIndex:UISegmentedControlNoSegment];
        
    }else if (sender == segmentedArchivos){
        [self hidePickerViews];
        [self getPeriodosWithLoading];
        [self asignaPeriodo:0];
        
        [self StartWithLoading:buttonSelectFecha];
        [self cleanReportForButton:buttonSelectFecha];
        if (segmentedArchivos.selectedSegmentIndex == 0){
            buttonDownload.hidden = NO;
            //now change the image
            UIImage * imageBackground = [UIImage imageNamed:@"DESCA1.png"];
            [buttonDownload setBackgroundImage:imageBackground forState:UIControlStateNormal];
            
        }else{
            //buttonDownload.hidden = YES;
            buttonDownload.hidden = NO;
            //now change the image
            UIImage * imageBackground = [UIImage imageNamed:@"BORRAR8.png"];
            [buttonDownload setBackgroundImage:imageBackground forState:UIControlStateNormal];
            
            
        }
        
    }
    else{
        
    }
    
}



-(void)transformQueryToHumanReading{
    
    
    
    
}


-(IBAction) switchTapped: (UISwitch*)sender {
    BOOL value = sender.isOn;
    alphaControl = value;
    //if (value) {
    [UIView   animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseOut animations: ^
     {
         //buttonSelectActi.hidden = !buttonSelectActi.hidden;
         buttonSelectActi.alpha = alphaControl;
         /*         buttonSelectGfun.hidden = !buttonSelectGfun.hidden;
          buttonSelectFonc.hidden = !buttonSelectFonc.hidden;
          buttonSelectSfun.hidden = !buttonSelectSfun.hidden;*/
         
         buttonSelectProg.alpha = alphaControl;
         buttonSelectDide.alpha = alphaControl;
         buttonSelectDver.alpha = alphaControl;
         buttonSelectEntidad.alpha = alphaControl;
         buttonSelectProyInv.alpha = alphaControl;
         buttonSelectPred.alpha = alphaControl;
         imageActi.alpha = alphaControl;
         
         imageProg.alpha = alphaControl;
         imageDide.alpha = alphaControl;
         imageDver.alpha = alphaControl;
         imageEntidad.alpha = alphaControl;
         imageProyInv.alpha = alphaControl;
         imagePred.alpha = alphaControl;
         /*segmentedUrCap.alpha = alphaControl;
          segmentedCapPrograma.alpha = alphaControl;
          segmentedProgramaCon.alpha = alphaControl;
          segmentedConPar.alpha = alphaControl;
          segmentedParProg.alpha = alphaControl;*/
         segmentedProgActi.alpha = alphaControl;
         segmentedActiProy.alpha = alphaControl;
         segmentedProyDide.alpha = alphaControl;
         segmentedDideDver.alpha = alphaControl;
         segmentedDverEnt.alpha = alphaControl;
         segmentedEntFin.alpha = alphaControl;
         segmentedPred.alpha = alphaControl;
         
         /*         buttonSelectProg.hidden = !buttonSelectProg.hidden;
          buttonSelectDide.hidden = !buttonSelectDide.hidden;
          buttonSelectDver.hidden = !buttonSelectDver.hidden;
          buttonSelectEntidad.hidden = !buttonSelectEntidad.hidden;
          buttonSelectProyInv.hidden = !buttonSelectProyInv.hidden;
          
          imageActi.hidden = !imageActi.hidden;*/
         /*         imageGfun.hidden = !imageGfun.hidden;
          imageFonc.hidden = !imageFonc.hidden;
          imageSfun.hidden = !imageSfun.hidden;*/
         
         /*imageProg.hidden = !imageProg.hidden;
          imageDide.hidden = !imageDide.hidden;
          imageDver.hidden = !imageDver.hidden;
          imageEntidad.hidden = !imageEntidad.hidden;
          imageProyInv.hidden = !imageProyInv.hidden;*/
         
     }completion:^ (BOOL finished)
     {
         if (alphaControl ==0){
             alphaControl = 1;
         }else{
             alphaControl = 0;
         }
         
     }
     ];
    //}
}



-(IBAction)hideShowButtons:(UIButton*)sender{
    AudioServicesPlaySystemSound(soundBubble);
    
    
    
    
    
    
}
-(IBAction)moveCollectionAndButton:(UIButton *)sender {
    if (sender == buttonMoveCollection) {
        [self moveCollectionAndButton:sender andAnimated:YES];
    }else{
        [self moveCollectionAndButton:sender andAnimated:NO];
    }
    
}



-(IBAction)moveCollectionAndButton:(UIButton *)sender andAnimated:(BOOL)anim{
    if ((isMovedCollection)) {
        
        if (anim) {
            [UIView   animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseOut animations: ^
             {
                 labelTitleRepor.frame = CGRectMake(292, 35, 492, 40);
                 collectionViewRepor.frame = CGRectMake(10, 470, 1000, 230);
                 isMovedCollection = NO;
                 buttonMoveCollection.center = CGPointMake(479, 381);
                 buttonMoveCollection.transform = CGAffineTransformMakeRotation( ( 360 * M_PI ) / 180 );
                 int movey=445;
                 buttonTitleClave.center = CGPointMake(buttonTitleClave.center.x, movey);
                 buttonTitleOriginal.center = CGPointMake(buttonTitleOriginal.center.x, movey);
                 buttonTitleDescripcion.center = CGPointMake(buttonTitleDescripcion.center.x, movey);
                 buttonTitleModificado.center = CGPointMake(buttonTitleModificado.center.x, movey);
                 buttonTitleModp.center = CGPointMake(buttonTitleModp.center.x, movey);
                 buttonTitleEjercido.center = CGPointMake(buttonTitleEjercido.center.x, movey);
                 buttonTitleDisponiblep.center = CGPointMake(buttonTitleDisponiblep.center.x, movey);
                 buttonTitleDispo60.center = CGPointMake(buttonTitleDispo60.center.x, movey);
                 buttonTitleDisponible.center = CGPointMake(buttonTitleDisponible.center.x, movey);
                 //AudioServicesPlaySystemSound(soundDrag);
                 
                 //    UIImage *buttonImage = [UIImage imageNamed:@"double-arrow.png"];
                 //    [buttonMoveCollection setBackgroundImage:buttonImage forState:UIControlStateNormal];
                 
                 
             }completion:^ (BOOL finished)
             {
                 
             }
             ];
        }else{
            
            collectionViewRepor.frame = CGRectMake(10, 470, 1000, 230);
            isMovedCollection = NO;
            buttonMoveCollection.center = CGPointMake(479, 381);
            buttonMoveCollection.transform = CGAffineTransformMakeRotation( ( 360 * M_PI ) / 180 );
            int movey=445;
            buttonTitleClave.center = CGPointMake(buttonTitleClave.center.x, movey);
            buttonTitleOriginal.center = CGPointMake(buttonTitleOriginal.center.x, movey);
            buttonTitleDescripcion.center = CGPointMake(buttonTitleDescripcion.center.x, movey);
            buttonTitleModificado.center = CGPointMake(buttonTitleModificado.center.x, movey);
            buttonTitleModp.center = CGPointMake(buttonTitleModp.center.x, movey);
            buttonTitleEjercido.center = CGPointMake(buttonTitleEjercido.center.x, movey);
            buttonTitleDisponiblep.center = CGPointMake(buttonTitleDisponiblep.center.x, movey);
            buttonTitleDispo60.center = CGPointMake(buttonTitleDispo60.center.x, movey);
            buttonTitleDisponible.center = CGPointMake(buttonTitleDisponible.center.x, movey);
        }
        
    }else{
        
        if (anim) {
            
            [UIView   animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseOut animations: ^
             
             {
                 labelTitleRepor.frame = CGRectMake(112, 35, 492, 40);
                 
                 collectionViewRepor.frame = CGRectMake(10, 125, 1000, 570);
                 isMovedCollection = YES;
                 buttonMoveCollection.center = CGPointMake(479, 51);
                 buttonMoveCollection.transform = CGAffineTransformMakeRotation( ( 180 * M_PI ) / 180 );
                 buttonTitleClave.center = CGPointMake(buttonTitleClave.center.x, 101);
                 buttonTitleOriginal.center = CGPointMake(buttonTitleOriginal.center.x, 101);
                 buttonTitleDescripcion.center = CGPointMake(buttonTitleDescripcion.center.x, 101);
                 buttonTitleModificado.center = CGPointMake(buttonTitleModificado.center.x, 101);
                 buttonTitleModp.center = CGPointMake(buttonTitleModp.center.x, 101);
                 buttonTitleEjercido.center = CGPointMake(buttonTitleEjercido.center.x, 101);
                 buttonTitleDisponiblep.center = CGPointMake(buttonTitleDisponiblep.center.x, 101);
                 buttonTitleDispo60.center = CGPointMake(buttonTitleDispo60.center.x, 101);
                 buttonTitleDisponible.center = CGPointMake(buttonTitleDisponible.center.x, 101);
                 //AudioServicesPlaySystemSound(soundDrag);
                 
                 
             }completion:^ (BOOL finished)
             {
                 
             }
             ];
        }else{
            collectionViewRepor.frame = CGRectMake(10, 125, 1000, 570);
            isMovedCollection = YES;
            buttonMoveCollection.center = CGPointMake(479, 31);
            buttonMoveCollection.transform = CGAffineTransformMakeRotation( ( 180 * M_PI ) / 180 );
            buttonTitleClave.center = CGPointMake(buttonTitleClave.center.x, 101);
            buttonTitleOriginal.center = CGPointMake(buttonTitleOriginal.center.x, 101);
            buttonTitleDescripcion.center = CGPointMake(buttonTitleDescripcion.center.x, 101);
            buttonTitleModificado.center = CGPointMake(buttonTitleModificado.center.x, 101);
            buttonTitleModp.center = CGPointMake(buttonTitleModp.center.x, 101);
            buttonTitleEjercido.center = CGPointMake(buttonTitleEjercido.center.x, 101);
            buttonTitleDisponiblep.center = CGPointMake(buttonTitleDisponiblep.center.x, 101);
            buttonTitleDispo60.center = CGPointMake(buttonTitleDispo60.center.x, 101);
            buttonTitleDisponible.center = CGPointMake(buttonTitleDisponible.center.x, 101);
            
        }
        
        
    }
    
}


#pragma mark - CPTPlotDataSource methods
/*
 -(NSUInteger)numberOfRecordsForPlot:(CPTPlot *)plot {
 //return [arrayPresupuesto count]-1;
 return [arrayPptoSorted count]+1;
 //return [[[CPDStockPriceStore sharedInstance] tickerSymbols] count];
 }
 
 -(NSNumber *)numberForPlot:(CPTPlot *)plot field:(NSUInteger)fieldEnum recordIndex:(NSUInteger)index {
 //return 0;
 // 1 - Define label text style
 static CPTMutableTextStyle *labelText = nil;
 if (!labelText) {
 labelText= [[CPTMutableTextStyle alloc] init];
 labelText.color = [CPTColor grayColor];
 }
 if (CPTPieChartFieldSliceWidth == fieldEnum)
 {
 //return 10;
 if (index < [arrayPptoSorted count]) {
 Presupuesto *ptr = [arrayPptoSorted objectAtIndex:index];
 
 if ([stringGraphSelected isEqualToString:@"Original"]) {
 return  [NSNumber numberWithFloat:ptr.original];
 }else if ([stringGraphSelected isEqualToString:@"Modificado anual"]){
 return  [NSNumber numberWithFloat:ptr.modificado];
 }else if ([stringGraphSelected isEqualToString:@"Disponible anual"]){
 return  [NSNumber numberWithFloat:ptr.disponible];
 }else if ([stringGraphSelected isEqualToString:@"Disponible susceptible recorte"]){
 return  [NSNumber numberWithFloat:ptr.dispo60];
 }else if ([stringGraphSelected isEqualToString:@"Modificado al periodo"]){
 return  [NSNumber numberWithFloat:ptr.modp];
 }else if ([stringGraphSelected isEqualToString:@"Ejercido"]){
 return  [NSNumber numberWithFloat:ptr.ejercido];
 }else if ([stringGraphSelected isEqualToString:@"Disponible al periodo"]){
 return  [NSNumber numberWithFloat:ptr.disponiblep];
 }
 
 }else{
 return  [NSNumber numberWithFloat:sumOthers];
 
 }
 
 
 
 }
 return [NSDecimalNumber zero];
 // return [[CPTTextLayer alloc] initWithText:@"10" style:labelText];
 }
 
 -(CPTLayer *)dataLabelForPlot:(CPTPlot *)plot recordIndex:(NSUInteger)index {
 // 5 - Create and return layer with label text
 static CPTMutableTextStyle *labelText = nil;
 if (!labelText) {
 labelText= [[CPTMutableTextStyle alloc] init];
 labelText.color = [CPTColor blackColor];
 labelText.textAlignment = CPTTextAlignmentCenter;
 }
 
 NSString *stringTitle;
 NSNumber *num1;
 if (index < [arrayPptoSorted count]){
 Presupuesto *ptr = [arrayPptoSorted objectAtIndex:index];
 //NSLog([@"1234567890" substringToIndex:6]);
 stringTitle = [ptr.clave stringByAppendingString: @"\n"];
 if ([ptr.descripcion length] >20) {
 stringTitle = [[stringTitle stringByAppendingString: [ptr.descripcion substringToIndex:20]]stringByAppendingString:@"-\n"] ;
 if ([ptr.descripcion length] > 40) {
 stringTitle = [[stringTitle stringByAppendingString: [ptr.descripcion substringWithRange:NSMakeRange(20, 20)]] stringByAppendingString:@"-\n"] ;
 }else{
 stringTitle = [[stringTitle stringByAppendingString: [ptr.descripcion substringWithRange:NSMakeRange(20, [ptr.descripcion length]-20 )]] stringByAppendingString:@"-\n"] ;
 
 }
 
 }else{
 stringTitle = [[stringTitle stringByAppendingString: ptr.descripcion ]  stringByAppendingString:@". \n"] ;
 }
 if ([stringGraphSelected isEqualToString:@"Original"]) {
 num1 =  [NSNumber numberWithFloat:ptr.original];
 }else if ([stringGraphSelected isEqualToString:@"Modificado anual"]){
 num1 =  [NSNumber numberWithFloat:ptr.modificado];
 }else if ([stringGraphSelected isEqualToString:@"Disponible anual"]){
 num1 =  [NSNumber numberWithFloat:ptr.disponible];
 }else if ([stringGraphSelected isEqualToString:@"Disponible susceptible recorte"]){
 num1 =  [NSNumber numberWithFloat:ptr.dispo60];
 }else if ([stringGraphSelected isEqualToString:@"Modificado al periodo"]){
 num1 =  [NSNumber numberWithFloat:ptr.modp];
 }else if ([stringGraphSelected isEqualToString:@"Ejercido"]){
 num1 =  [NSNumber numberWithFloat:ptr.ejercido];
 }else if ([stringGraphSelected isEqualToString:@"Disponible al periodo"]){
 num1 =  [NSNumber numberWithFloat:ptr.disponiblep];
 }
 
 }else{
 num1 =  [NSNumber numberWithFloat:sumOthers];
 stringTitle = @"Otros \n";
 }
 
 
 //num1= [NSNumber numberWithDouble:pr.modp];
 
 
 NSString *numberStr = [NSNumberFormatter localizedStringFromNumber:num1 numberStyle:NSNumberFormatterCurrencyStyle];
 NSString *stringFinal =[stringTitle stringByAppendingString:numberStr];
 
 //NSString *labelValue = [NSString stringWithFormat:@"%f",ptr.original];
 
 //return [[CPTTextLayer alloc] initWithText:numberStr style:labelText];
 //CPTTextLayer *lay = [CPPTextLayer alloc] initWithText:<#(NSString *)#> style:<#(CPTTextStyle *)#>
 return [[CPTTextLayer alloc] initWithText:stringFinal style:labelText];
 
 //return nil;
 }
 
 -(NSString *)legendTitleForPieChart:(CPTPieChart *)pieChart recordIndex:(NSUInteger)index {
 return @"";
 }
 
 #pragma mark - UIActionSheetDelegate methods
 -(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
 }
 
 
 
 #pragma mark - Chart behavior
 -(void)initPlot {
 [self configureHost];
 [self configureGraph];
 [self configureChart];
 [self configureLegend];
 }
 
 -(void)configureHost {
 // 1 - Set up view frame
 CGRect parentRect = self.view.bounds;
 CGSize toolbarSize =  toolbar.bounds.size; // self.toolbar.bounds.size;
 
 parentRect = CGRectMake(100,
 (35),
 730,
 (680));
 
 // 2 - Create host view
 self.hostView = [(CPTGraphHostingView *) [CPTGraphHostingView alloc] initWithFrame:parentRect];
 self.hostView.allowPinchScaling = NO;
 [self.view addSubview:self.hostView];
 }
 
 -(void)configureGraph {
 // 1 - Create and initialize graph
 CPTGraph *graph = [[CPTXYGraph alloc] initWithFrame:self.hostView.bounds];
 self.hostView.hostedGraph = graph;
 graph.paddingLeft = 0.0f;
 graph.paddingTop = 0.0f;
 graph.paddingRight = 0.0f;
 graph.paddingBottom = 0.0f;
 graph.axisSet = nil;
 // 2 - Set up text style
 CPTMutableTextStyle *textStyle = [CPTMutableTextStyle textStyle];
 textStyle.color = [CPTColor grayColor];
 textStyle.fontName = @"Helvetica-Bold";
 textStyle.fontSize = 13.0f;
 // 3 - Configure title
 NSString *title = @"Estado del ejercicio del presupuesto : \n";
 title = [title stringByAppendingString:stringGraphSelected];
 title = [[title stringByAppendingString:@", por "] stringByAppendingString:reporSelected];
 
 NSString *title2 = stringGraphSelected;
 //graph.titleDisplacement = CGPointMake(0.0, 20.0);
 graph.title = title;
 graph.titleTextStyle = textStyle;
 graph.titlePlotAreaFrameAnchor = CPTRectAnchorTop;
 graph.titleDisplacement = CGPointMake(0.0f, -20.0f);
 // 4 - Set theme
 self.selectedTheme = [CPTTheme themeNamed:kCPTPlainWhiteTheme];
 [graph applyTheme:self.selectedTheme];
 }
 
 -(void)configureChart {
 // 1 - Get reference to graph
 CPTGraph *graph = self.hostView.hostedGraph;
 // 2 - Create chart
 CPTPieChart *pieChart = [[CPTPieChart alloc] init];
 pieChart.dataSource = self;
 pieChart.delegate = self;
 pieChart.pieRadius = (self.hostView.bounds.size.height * 0.7) / 2;
 pieChart.identifier = graph.title;
 pieChart.startAngle = M_PI_4;
 pieChart.sliceDirection = CPTPieDirectionClockwise;
 // 3 - Create gradient
 CPTGradient *overlayGradient = [[CPTGradient alloc] init];
 overlayGradient.gradientType = CPTGradientTypeRadial;
 overlayGradient = [overlayGradient addColorStop:[[CPTColor blackColor] colorWithAlphaComponent:0.0] atPosition:0.9];
 overlayGradient = [overlayGradient addColorStop:[[CPTColor blackColor] colorWithAlphaComponent:0.4] atPosition:1.0];
 pieChart.overlayFill = [CPTFill fillWithGradient:overlayGradient];
 // 4 - Add chart to graph
 [graph addPlot:pieChart];
 }
 
 -(void)configureLegend {
 }
 */

#pragma code here we start with the csv send option





-(void)createPDFfromUIView:(UIView*)aView saveToDocumentsWithFileName:(NSString*)aFilename
{
    // Creates a mutable data object for updating with binary data, like a byte array
    NSMutableData *pdfData = [NSMutableData data];
    
    // Points the pdf converter to the mutable data object and to the UIView to be converted
    UIGraphicsBeginPDFContextToData(pdfData, aView.bounds, nil);
    UIGraphicsBeginPDFPage();
    
    // draws rect to the view and thus this is captured by UIGraphicsBeginPDFContextToData
    [aView.layer renderInContext:UIGraphicsGetCurrentContext()];
    //[aView.layer rend]
    // remove PDF rendering context
    UIGraphicsEndPDFContext();
    
    // Retrieves the document directories from the iOS device
    NSArray* documentDirectories = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask,YES);
    
    NSString* documentDirectory = [documentDirectories objectAtIndex:0];
    NSString* documentDirectoryFilename = [documentDirectory stringByAppendingPathComponent:aFilename];
    
    // instructs the mutable data object to write its context to a file on disk
    [pdfData writeToFile:documentDirectoryFilename atomically:YES];
    //NSLog(@"documentDirectoryFileName: %@",documentDirectoryFilename);
}

-(void)addTitleToRepor:(UIView*)aView andPage:(int)page andReport:(Reporte *) repor{
    NSString *stringPage = [[NSString alloc] initWithFormat:@"%d",page+1];
    //setting page 0 in order to dont have increment in view format, because just one view is used
    page = 0;
    //Secretaria
    
    UILabel *labelForTitle = [[UILabel alloc] initWithFrame:CGRectMake(0,  0+(page*580), 1000, 40)];
    [labelForTitle setTextAlignment:NSTextAlignmentCenter];
    [labelForTitle setFont:[UIFont boldSystemFontOfSize:30]];
    [labelForTitle setText:@"Secretaria de Salud"];
    [aView addSubview:labelForTitle];
    
    //which report was selected
    UILabel *labelForTitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0,  40+(page*580), 1000, 40)];
    [labelForTitle2 setTextAlignment:NSTextAlignmentCenter];
    [labelForTitle2 setFont:[UIFont boldSystemFontOfSize:20]];
    [labelForTitle2 setText:[@"Reporte por " stringByAppendingString: repor.descripcion]];
    [aView addSubview:labelForTitle2];
    
    //date
    UILabel *labelForTitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0,  80+(page*580), 1000, 40)];
    [labelForTitle3 setTextAlignment:NSTextAlignmentRight];
    [labelForTitle3 setFont:[UIFont boldSystemFontOfSize:12]];
    //[labelForTitle3 setText:repor.fecha];
    [labelForTitle3 setText:repor.fechaTotal];
    [aView addSubview:labelForTitle3];
    
    //query
    UILabel *labelForTitle4 = [[UILabel alloc] initWithFrame:CGRectMake(0,  80+(page*580), 1000, 40)];
    [labelForTitle4 setTextAlignment:NSTextAlignmentLeft];
    [labelForTitle4 setFont:[UIFont boldSystemFontOfSize:12]];
    [labelForTitle4 setText:repor.query];
    //[aView addSubview:labelForTitle4];
    
    //date
    UILabel *labelForTitle5 = [[UILabel alloc] initWithFrame:CGRectMake(40,  80+(page*580), 100, 40)];
    [labelForTitle5 setTextAlignment:NSTextAlignmentRight];
    [labelForTitle5 setFont:[UIFont boldSystemFontOfSize:10]];
    [labelForTitle5 setText: [@"Página : " stringByAppendingString: stringPage ]];
    [aView addSubview:labelForTitle5];
    
    int sizeTitles = 120;
    
    labelForSubtitle *labelForTitleClave = [[labelForSubtitle alloc] initWithFrame:CGRectMake(20,  sizeTitles+(page*580), 58, 40)];
    [labelForTitleClave setText:@"Clave"];
    
    labelForSubtitle *labelForTitleDescrip = [[labelForSubtitle alloc] initWithFrame:CGRectMake(90,  sizeTitles+(page*580), 138, 40)];
    [labelForTitleDescrip setText:@"Descripción"];
    
    
    labelForSubtitle *labelForTitleOrig = [[labelForSubtitle alloc] initWithFrame:CGRectMake(230,  sizeTitles+(page*580), 107, 40)];
    [labelForTitleOrig setText:@"Original"];
    
    labelForSubtitle *labelForTitleMod = [[labelForSubtitle alloc] initWithFrame:CGRectMake(340,  sizeTitles+(page*580), 107, 40)];
    [labelForTitleMod setText:@"Modificado"];
    
    labelForSubtitle *labelForTitleDisp = [[labelForSubtitle alloc] initWithFrame:CGRectMake(450,  sizeTitles+(page*580), 107, 40)];
    [labelForTitleDisp setText:@"Disponible"];
    
    labelForSubtitle *labelForTitleDisp60 = [[labelForSubtitle alloc] initWithFrame:CGRectMake(560,  sizeTitles+(page*580), 107, 40)];
    [labelForTitleDisp60 setText:@"Disp 60 dias"];
    
    labelForSubtitle *labelForTitleModp = [[labelForSubtitle alloc] initWithFrame:CGRectMake(670,  sizeTitles+(page*580), 107, 40)];
    [labelForTitleModp setText:@"Mod periodo"];
    
    labelForSubtitle *labelForTitleEje = [[labelForSubtitle alloc] initWithFrame:CGRectMake(780,  sizeTitles+(page*580), 107, 40)];
    [labelForTitleEje setText:@"Ejercido"];
    
    labelForSubtitle *labelForTitleDispop = [[labelForSubtitle alloc] initWithFrame:CGRectMake(890,  sizeTitles+(page*580), 107, 40)];
    [labelForTitleDispop setText:@"Dis periodo"];
    
    [aView addSubview:labelForTitleClave];
    [aView addSubview:labelForTitleDescrip];
    [aView addSubview:labelForTitleOrig];
    [aView addSubview:labelForTitleMod];
    [aView addSubview:labelForTitleDisp];
    [aView addSubview:labelForTitleDisp60];
    [aView addSubview:labelForTitleModp];
    [aView addSubview:labelForTitleEje];
    [aView addSubview:labelForTitleDispop];
    
    
}


-(UIView*) generateViewForReport:(Reporte* )repor{
    
    
    int numberOfLines = [arrayPresupuesto count];
    //UIView *aView  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1000, 5000)];
    UIView *aView  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1000, 480)];
    //UIView *aView  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1000, 40*numberOfLines)];
    int counter = 0;
    int page = 0;
    int sizeTitles = 160;
    
    for (Presupuesto *prep in arrayPresupuesto) {
        if ((counter % 8)==0 ) {
            [self addTitleToRepor:aView andPage:page andReport:repor];
        }
        UIImage *imageForLineChange = [UIImage imageNamed:@"background.jpg"];
        UIImageView *imageLineChange = [[UIImageView alloc] initWithImage:imageForLineChange];
        [imageLineChange setFrame:CGRectMake(10, (40*counter)+sizeTitles+(page*480), 1000, 3)];
        //[aView addSubview:imageLineChange];
        labelForClave *labelClave = [[labelForClave alloc ] initWithFrame:CGRectMake(20, (40*counter)+sizeTitles+(page*480), 58, 40)];
        [labelClave setText:prep.clave];
        
        labelForDescripcion *labelDescripcion = [[labelForDescripcion alloc ] initWithFrame:CGRectMake(90, (40*counter)+sizeTitles+(page*480), 138, 40)];
        
        [labelDescripcion setText:prep.descripcion];
        
        labelForImport *labelOriginal = [[labelForImport alloc ] initWithFrame:CGRectMake(230, (40*counter)+sizeTitles+(page*480), 107, 40)];
        [labelOriginal setTextWithDouble:prep.original];
        
        labelForImport *labelModificado = [[labelForImport alloc ] initWithFrame:CGRectMake(340, (40*counter)+sizeTitles+(page*480), 107, 40)];
        [labelModificado setTextWithDouble:prep.modificado];
        
        labelForImport *labelDisponible = [[labelForImport alloc ] initWithFrame:CGRectMake(450, (40*counter)+sizeTitles+(page*480), 107, 40)];
        [labelDisponible setTextWithDouble:prep.disponible];
        
        labelForImport *labelDispo60 = [[labelForImport alloc ] initWithFrame:CGRectMake(560, (40*counter)+sizeTitles+(page*480), 107, 40)];
        [labelDispo60 setTextWithDouble:prep.dispo60];
        
        labelForImport *labelModp = [[labelForImport alloc ] initWithFrame:CGRectMake(670, (40*counter)+sizeTitles+(page*480), 107, 40)];
        [labelModp setTextWithDouble:prep.modp];
        
        labelForImport *labelEjercido = [[labelForImport alloc ] initWithFrame:CGRectMake(780, (40*counter)+sizeTitles+(page*480), 107, 40)];
        [labelEjercido setTextWithDouble:prep.ejercido];
        
        labelForImport *labelDispop = [[labelForImport alloc ] initWithFrame:CGRectMake(890, (40*counter)+sizeTitles+(page*480), 107, 40)];
        [labelDispop setTextWithDouble:prep.disponiblep];
        
        counter++;
        if (counter == 8) {
            counter = 0;
            page++;
            
            
            
            
        }
        
        [aView addSubview:labelClave];
        [aView addSubview:labelDescripcion];
        [aView addSubview:labelOriginal];
        [aView addSubview:labelModificado];
        [aView addSubview:labelDisponible];
        [aView addSubview:labelDispo60];
        [aView addSubview:labelModp];
        [aView addSubview:labelEjercido];
        [aView addSubview:labelDispop];
    }
    
    // [self createPDFfromUIView:aView saveToDocumentsWithFileName:@"repor.pdf"];
    [self createPDFfromUI:aView saveToDocumentsWithFileName:@"repor.pdf"];
}

-(UIView*) generateViewForReport2:(Reporte* )repor{
    
    
    int numberOfLines = [arrayPresupuesto count];
    //UIView *aView  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1000, 5000)];
    //UIView *aView  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1000, 40*numberOfLines)];
    int counter = 0;
    int page = 0;
    int sizeTitles = 160;
    UIView *aView  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1000, 580)];
    
    NSMutableData *pdfData = [NSMutableData data];
    UIGraphicsBeginPDFContextToData(pdfData, aView.bounds, nil);
    
    for (Presupuesto *prep in arrayPresupuesto) {
        
        if ((counter % 8)==0 ) {
            [self addTitleToRepor:aView andPage:page andReport:repor];
        }
        UIImage *imageForLineChange = [UIImage imageNamed:@"background.jpg"];
        UIImageView *imageLineChange = [[UIImageView alloc] initWithImage:imageForLineChange];
        [imageLineChange setFrame:CGRectMake(10, (40*counter)+sizeTitles, 1000, 3)];
        [aView addSubview:imageLineChange];
        labelForClave *labelClave = [[labelForClave alloc ] initWithFrame:CGRectMake(20, (40*counter)+sizeTitles, 58, 40)];
        [labelClave setText:prep.clave];
        
        labelForDescripcion *labelDescripcion = [[labelForDescripcion alloc ] initWithFrame:CGRectMake(90, (40*counter)+sizeTitles, 138, 40)];
        
        [labelDescripcion setText:prep.descripcion];
        
        labelForImport *labelOriginal = [[labelForImport alloc ] initWithFrame:CGRectMake(230, (40*counter)+sizeTitles, 107, 40)];
        [labelOriginal setTextWithDouble:prep.original];
        
        labelForImport *labelModificado = [[labelForImport alloc ] initWithFrame:CGRectMake(340, (40*counter)+sizeTitles, 107, 40)];
        [labelModificado setTextWithDouble:prep.modificado];
        
        labelForImport *labelDisponible = [[labelForImport alloc ] initWithFrame:CGRectMake(450, (40*counter)+sizeTitles, 107, 40)];
        [labelDisponible setTextWithDouble:prep.disponible];
        
        labelForImport *labelDispo60 = [[labelForImport alloc ] initWithFrame:CGRectMake(560, (40*counter)+sizeTitles, 107, 40)];
        [labelDispo60 setTextWithDouble:prep.dispo60];
        
        labelForImport *labelModp = [[labelForImport alloc ] initWithFrame:CGRectMake(670, (40*counter)+sizeTitles, 107, 40)];
        [labelModp setTextWithDouble:prep.modp];
        
        labelForImport *labelEjercido = [[labelForImport alloc ] initWithFrame:CGRectMake(780, (40*counter)+sizeTitles, 107, 40)];
        [labelEjercido setTextWithDouble:prep.ejercido];
        
        labelForImport *labelDispop = [[labelForImport alloc ] initWithFrame:CGRectMake(890, (40*counter)+sizeTitles, 107, 40)];
        [labelDispop setTextWithDouble:prep.disponiblep];
        
        counter++;
        
        
        [aView addSubview:labelClave];
        [aView addSubview:labelDescripcion];
        [aView addSubview:labelOriginal];
        [aView addSubview:labelModificado];
        [aView addSubview:labelDisponible];
        [aView addSubview:labelDispo60];
        [aView addSubview:labelModp];
        [aView addSubview:labelEjercido];
        [aView addSubview:labelDispop];
        //new page or last register
        if ((counter == 8) || ([arrayPresupuesto lastObject] == prep))  {
            counter = 0;
            page++;
            // Points the pdf converter to the mutable data object and to the UIView to be converted
            UIGraphicsBeginPDFPage();
            
            // draws rect to the view and thus this is captured by UIGraphicsBeginPDFContextToData
            [aView.layer renderInContext:UIGraphicsGetCurrentContext()];
            //after the pdf print aView is initializated
            aView  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1000, 480)];
        }
        
    }
    
    // [self createPDFfromUIView:aView saveToDocumentsWithFileName:@"repor.pdf"];
    // [self createPDFfromUI:aView saveToDocumentsWithFileName:@"repor.pdf"];
    UIGraphicsEndPDFContext();
    
    
    NSArray* documentDirectories = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask,YES);
    
    NSString* documentDirectory = [documentDirectories objectAtIndex:0];
    NSString* documentDirectoryFilename = [documentDirectory stringByAppendingPathComponent:@"repor.pdf"];
    
    // instructs the mutable data object to write its context to a file on disk
    [pdfData writeToFile:documentDirectoryFilename atomically:YES];
    //NSLog(@"documentDirectoryFileName: %@",documentDirectoryFilename);
    return aView;
    
}

-(void) hideComboDownloadPdf:(BOOL) toHide{
    
    buttonOk.hidden = toHide;
    buttonCancelAr.hidden = toHide;
    textFieldName.hidden = toHide;
    
    
}

-(IBAction) descargaPdf: (UIButton*)sender {
    [self hideComboDownloadPdf:NO];
}

-(int)getLastIdInformes{
    
    int lastNumber = 899;
    [mainDelegate.databaseConnection readFromDatabase];
    for(Informe* inf in mainDelegate.databaseConnection.arrayInformes){
        if (lastNumber<inf.id_in){
            lastNumber = inf.id_in;
        }else{
            
        }
        
        
    }
    lastNumber++;
    return lastNumber;
}

-(IBAction) okDescarga: (UISwitch*)sender {
    
    if (textFieldName.text.length > 0 ){
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *fileName = textFieldName.text;
        NSString *fileNameWhole = [textFieldName.text stringByAppendingString:@".pdf"];
        NSString * filePath = [NSString stringWithFormat:@"%@/%@", [paths objectAtIndex:0],@"repor.pdf"];
        NSURL *targetURL = [NSURL fileURLWithPath:filePath];
        NSData *pdfData = [[NSData alloc] initWithContentsOfURL:targetURL];
        
        
        NSArray *pathRec = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *filePathRec = [NSString stringWithFormat:@"%@/%@", [pathRec objectAtIndex:0],fileNameWhole];
        
        BOOL success = [pdfData writeToFile:filePathRec atomically:YES];
        
        int lastN = [self getLastIdInformes];
        if(success){ //se guardo el PDF????
            NSString *stringForSql =  [NSString stringWithFormat:@"Insert into Informes values(\"%d\", \"%@\", \"%@\")",   lastN, fileName, fileNameWhole];
            NSLog(stringForSql);
            success =  [mainDelegate.databaseConnection addElement:stringForSql];
            if (success){  // se agrego en la BD?
                [mainDelegate.databaseConnection readFromDatabase];
                //[self PlayClick];
                [self sendMessage:@"Se guardo el reporte con exito, favor de consultarlo en la seccion de  Informes->Descargados" withTitle:@"Confirmación"];
                [self hideComboDownloadPdf:YES];
                [textFieldName resignFirstResponder ];
                textFieldName.text = @"";
                
            }else {
                [self sendMessage:@"Guardado incorrecto , probablemente un problema con la conexión o ya existia un archivo con el mismo nombre" withTitle:@"Error"];
            }
        }else {
            [self sendMessage:@"Guardado incorrecto , probablemente un problema con la conexión o ya existia un archivo con el mismo nombre" withTitle:@"Error"];
        }
    }else{
        [self sendMessage:@"No se ha especificado ningún nombre de archivo" withTitle:@"Error"];
        
    }
    
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self animateTextField:textField up:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self animateTextField:textField up:NO];
}

-(void)animateTextField:(UITextField*)textField up:(BOOL)up
{
    const int movementDistance = -140; // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    
    int movement = (up ? movementDistance : -movementDistance);
    
    [UIView beginAnimations: @"animateTextField" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}

-(IBAction) cancelDescarga: (UISwitch*)sender {
    [self hideComboDownloadPdf:YES];
    //[ self animateTextField:textFieldName up:NO];
    [textFieldName resignFirstResponder ];
}

-(void) sendMessage:(NSString*) errMessage withTitle:(NSString *) title{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:errMessage delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
}



-(IBAction)viewPdf:(UIButton*)sender{
    
    if (webViewPdf.hidden) {
        
        UIImage *imageForButton = [UIImage imageNamed:@"PDFENCE.png"];
        
        [sender setBackgroundImage:imageForButton forState:UIControlStateNormal];
        UIView *viewToConvert;
        for (Reporte *repor in Reports) {
            //viewToConvert = [self generateViewForReport:repor] ;
            viewToConvert = [self generateViewForReport2:repor] ;
        }
        NSURL *targetURL;
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *filePath = [NSString stringWithFormat:@"%@/%@", [paths objectAtIndex:0],@"repor.pdf"];
        targetURL = [NSURL fileURLWithPath:filePath];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webViewPdf loadRequest:request];
        [self.view addSubview:webViewPdf];
        webViewPdf.hidden = NO;
        buttonDownloadAr.hidden = NO;
        imageViewDescarg.hidden = NO;
        [self.view bringSubviewToFront:imageViewDescarg];
        [self.view bringSubviewToFront:buttonDownloadAr];
        [self.view bringSubviewToFront:textFieldName];
        [self.view bringSubviewToFront:buttonCancelAr];
        [self.view bringSubviewToFront:buttonOk];
        
        
        
    }else{
        UIImage *imageForButton = [UIImage imageNamed:@"PDFAPAG.png"];
        
        [sender setBackgroundImage:imageForButton forState:UIControlStateNormal];
        
        webViewPdf.hidden = YES;
        buttonDownloadAr.hidden = YES;
        imageViewDescarg.hidden = YES;
        [self hideComboDownloadPdf:YES];
        
    }
    
    
    
}



-(void)createPDFfromUI:(UIView  *)aView saveToDocumentsWithFileName:(NSString*)aFilename
{
    
    
    // Creates a mutable data object for updating with binary data, like a byte array
    NSMutableData *pdfData = [NSMutableData data];
    
    // Points the pdf converter to the mutable data object and to the UIView to be converted
    
    UIWebView *myView = [[UIWebView alloc] init];
    
    [myView setBounds:CGRectMake(0,0, 1000, 480)];
    
    UIGraphicsBeginPDFContextToData(pdfData, myView.bounds, nil);
    //UIGRaphic
    //UIGraphicsBeginPDFContextToData(pdfData, aView.bounds, nil);
    
    CGContextRef pdfContext = UIGraphicsGetCurrentContext();
    
    for (int i = 0; i < 6 ; i++) {
        
        UIGraphicsBeginPDFPage();
        //aView.bounds = CGRectMake(0,(480* i)+3080 , 1000, 480);
        [aView setBounds:CGRectMake(0,(480* i) , 1000, 480)];
        //[aView setBounds:CGRectMake(0,0 , 1000, 480)];
        //aView.bounds = CGRectMake(0,(480* i) , 1000, 480);
        
        //aView.layer.bounds  = CGRectMake(0,180* i , 1000, 480);
        UIView *aView2 = [[UIView alloc] initWithFrame:CGRectMake(0,0, 1000, 480)];
        [aView2 addSubview:aView];
        //[aView.layer setBounds:CGRectMake(0,480* -i , 1000, 480)];
        //[aView  setBounds: setContentOffset:CGPointMake(0, 480*i) ];
        
        //[aView.layer  scrollRectToVisible:CGRectMake(0,0,480* i , 1000, 480)];
        //[aView.layer renderInContext:pdfContext];
        //[self.view addSubview:aView2];
        //[self.view bringSubviewToFront:aView2];
        [aView2.layer renderInContext:pdfContext];
    }
    
    //[aView.layer renderInContext:pdfContext];
    
    // remove PDF rendering context
    UIGraphicsEndPDFContext();
    
    // Retrieves the document directories from the iOS device
    NSArray* documentDirectories = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask,YES);
    
    NSString* documentDirectory = [documentDirectories objectAtIndex:0];
    NSString* documentDirectoryFilename = [documentDirectory stringByAppendingPathComponent:aFilename];
    
    // instructs the mutable data object to write its context to a file on disk
    [pdfData writeToFile:documentDirectoryFilename atomically:YES];
}


-(IBAction)sendCsv:(UIButton *)sender{
    
    //[self moveCollectionAndButton:buttonMoveCollection andAnimated:NO];
    
    //UIWebView *viewForRepor = [[UIWebView alloc] initWithFrame:CGRectMake(39, 445, 1000, 2600)];
    /*[viewForRepor addSubview:collectionViewRepor];
     [viewForRepor addSubview:buttonTitleClave];
     [viewForRepor addSubview:buttonTitleDescripcion];
     [viewForRepor addSubview:buttonTitleOriginal];
     [viewForRepor addSubview:buttonTitleModificado];
     [viewForRepor addSubview:buttonTitleDisponible];
     [viewForRepor addSubview:buttonTitleDispo60];
     [viewForRepor addSubview:buttonTitleModp];
     [viewForRepor addSubview:buttonTitleEjercido];
     [viewForRepor addSubview:buttonTitleDisponiblep];*/
    
    
    
    //[collectionViewRepor setFrame:CGRectMake(5, 35, 1000, 2500)];
    //[self createPDFfromUIView:viewForRepor saveToDocumentsWithFileName:@"repor.pdf"];
    //[self createPDFfromUI:collectionViewRepor saveToDocumentsWithFileName:@"repor.pdf"];
    //[self moveCollectionAndButton:buttonMoveCollection andAnimated:NO];
    /*[collectionViewRepor removeFromSuperview ];
     [buttonTitleClave removeFromSuperview ];
     [buttonTitleDescripcion removeFromSuperview ];
     [buttonTitleOriginal removeFromSuperview ];
     [buttonTitleModificado removeFromSuperview ];
     [buttonTitleDisponible removeFromSuperview ];
     [buttonTitleDispo60 removeFromSuperview ];
     [buttonTitleEjercido removeFromSuperview ];
     [buttonTitleDisponiblep removeFromSuperview ];
     
     [self.view addSubview:collectionViewRepor];
     [self.view addSubview:buttonTitleClave];
     [self.view addSubview:buttonTitleDescripcion];
     [self.view addSubview:buttonTitleOriginal];
     [self.view addSubview:buttonTitleModificado];
     [self.view addSubview:buttonTitleDisponiblep];
     [self.view addSubview:buttonTitleDisponible];
     [self.view addSubview:buttonTitleDispo60];
     [self.view addSubview:buttonTitleEjercido];
     [self.view addSubview:buttonTitleModp];*/
    
    //[self viewPdf:[[UIButton alloc ]init]];
    
    
    if ([MFMailComposeViewController canSendMail])
    {
        MFMailComposeViewController *mailer = [[MFMailComposeViewController alloc] init];
        
        mailer.mailComposeDelegate = self;
        
        [mailer setSubject:@"Envío de reporte"];
        
        //NSArray *toRecipients = [NSArray arrayWithObjects:@"fisrtMail@example.com", @"secondMail@example.com", nil];
        //[mailer setToRecipients:toRecipients];
        
        //UIImage *myImage = [UIImage imageNamed:@"mobiletuts-logo.png"];
        // NSData *imageData = UIImagePNGRepresentation(myImage);
        //NSString *archivoEnviar =  [databaseConexion.reportespd     [tableArchivosDescarga  indexPathForSelectedRow] ;
        //Reporte *reporte = (Reporte *)[databaseConexion.reportespd objectAtIndex:[tableArchivosDescarga indexPathForSelectedRow ].row];
        [self viewPdf:buttonSendPdf];
        NSDate *currDate = [NSDate date];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
        [dateFormatter setDateFormat:@"dd_MM_YY_HH_mm_ss"];
        NSString *dateString = [dateFormatter stringFromDate:currDate];
        //NSLog(@"%@",dateString);
        //NSLog(@"%@",@"\"");
        NSMutableString *csvTitle = [NSMutableString stringWithString:[@"Reporte presupuestal al " stringByAppendingString:archivoSeleccionadoDesc]];
        NSMutableString *csv = [NSMutableString stringWithString:@"Clave, Descripcion, Original, Modificado, Disponible, Dispo 60 dias, Mod periodo, Ejercido, Dis periodo"];
        
        NSUInteger count = [arrayPresupuesto count];
        // provided all arrays are of the same length
        
        for (NSString* str in stringQueries) {
            //textFieldQueries.text = [textFieldQueries.text stringByAppendingString:[@"\n" stringByAppendingString:str]];
            [csv appendFormat: @"\n\"%@\"",  str];
        }
        
        
        for (NSUInteger i=0; i<count; i++ ) {
            
            
            Presupuesto *ptr = [arrayPresupuesto objectAtIndex:i];
            //NSLog(@"%@",ptr.clave);
            
            if (i==(count-1)) {
                [csv appendFormat:@"\n\"%@\",%@,\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\" ",
                 ptr.clave,
                 //[[@"'" stringByAppendingString: ptr.descripcion] stringByAppendingString:@"'"],
                 ptr.descripcion,
                 ptr.original,
                 ptr.modificado,
                 ptr.disponible,
                 ptr.dispo60,
                 ptr.modp,
                 ptr.ejercido,
                 ptr.disponiblep
                 ];
                
            }else{
                
                
                [csv appendFormat:@"\n\"%@\",%@,\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\" ",
                 ptr.clave,
                 [[@"\"" stringByAppendingString: ptr.descripcion] stringByAppendingString:@"\""],
                 //ptr.descripcion,
                 ptr.original,
                 ptr.modificado,
                 ptr.disponible,
                 ptr.dispo60,
                 ptr.modp,
                 ptr.ejercido,
                 ptr.disponiblep
                 ];
            }
            // instead of integerValue may be used intValue or other, it depends how array was created
        }
        
        NSString *archivoEnviar =  [[@"CSV_FILE_" stringByAppendingString:dateString] stringByAppendingString:@".csv"] ;
        //NSString *yourFileName = @"your filename";
        NSError *error;
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *filePath = [NSString stringWithFormat:@"%@/%@", [paths objectAtIndex:0],archivoEnviar];
        // BOOL res = [csv writeToFile:archivoEnviar atomically:YES encoding:NSUTF8StringEncoding error:&error];
        BOOL res = [csv writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:&error];
        
        
        if (!res) {
            //NSLog(@"Error %@ while writing to file %@", [error localizedDescription], archivoEnviar );
        }
        
        
        
        //NSData *pdfData = [[NSData alloc] initWithContentsOfURL:targetURL];
        NSData *textFileContentsData = [csv dataUsingEncoding:NSASCIIStringEncoding];
        
        [mailer addAttachmentData:textFileContentsData mimeType:@"csv" fileName:archivoEnviar];
        
        
        archivoEnviar = @"repor.pdf";
        paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        filePath = [NSString stringWithFormat:@"%@/%@", [paths objectAtIndex:0],archivoEnviar];
        // Get the resource path and read the file using NSData
        //filePath = [[NSBundle mainBundle] pathForResource:@"repor" ofType:@"pdf"];
        //NSData *fileData = [NSData dataWithContentsOfFile:filePath];
        
        // resourceDocPath = [[NSString alloc] initWithString:[[[[NSBundle mainBundle]  resourcePath] stringByDeletingLastPathComponent] stringByAppendingPathComponent:archivoEnviar]];
        
        //targetURL = [NSURL fileURLWithPath:resourceDocPath];
        NSURL *targetURL = [NSURL fileURLWithPath:filePath];
        //NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        
        
        
        NSData *pdfData = [[NSData alloc] initWithContentsOfURL:targetURL];
        [mailer addAttachmentData:pdfData mimeType:@"application/pdf" fileName:archivoEnviar];
        //[mailer addAttachmentData:fileData mimeType:@"pdf" fileName:archivoEnviar];
        
        
        
        
        NSString *emailBody = @"Enviado desde mi App Salud";
        [mailer setMessageBody:emailBody isHTML:NO];
        mailer.modalPresentationStyle = UIModalPresentationPageSheet;
        [self presentModalViewController:mailer animated:YES];
    }
    else
    {
        //[self   sendErrorMessage:@"El dispositivo no soporta envio de correo desde la aplicación"];
    }
}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    NSString *resultadoEnvio;
    switch (result)
    {
        case MFMailComposeResultCancelled:
            //NSLog(@"Correo cancelado, ha cancelado el envio y no se ha guardado la información.");
            resultadoEnvio = @"Correo cancelado, ha cancelado el envio y no se ha guardado la información.";
            break;
        case MFMailComposeResultSaved:
            //NSLog(@"Correo guardado en la carpeta de borradores.");
            resultadoEnvio =@"Correo guardado en la carpeta de borradores.";
            break;
        case MFMailComposeResultSent:
            //NSLog(@"Correo generado: el correo se encuentra enviado  en la bandeja de salida.");
            resultadoEnvio = @"Correo generado: el correo se encuentra enviado  en la bandeja de salida.";
            break;
        case MFMailComposeResultFailed:
            // NSLog(@"Error de correo, el correo no se guardo, posiblemente derivado de un error.");
            resultadoEnvio = @"Error de correo, el correo no se guardo, posiblemente derivado de un error.";
            break;
        default:
            //NSLog(@"Correo no enviado");
            resultadoEnvio = @"Correo no enviado";
            
            break;
            
            
            
    }
    [self viewPdf:buttonSendPdf];
    
    //[self sendMessage:resultadoEnvio withTitle:@"Resultado"];
    // Remove the mail view
    [self dismissModalViewControllerAnimated:YES];
}






@end
