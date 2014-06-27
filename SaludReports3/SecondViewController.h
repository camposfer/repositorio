//
//  SecondViewController.h
//  SaludReports3
//
//  Created by Clausulita on 15/01/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Unidad.h"
#import "Capitulo.h"
#import "Programa.h"
#import "Concepto.h"
#import "ALPickerView.h"
#import "buttonWithStyle.h"
#import "LoadingIndicator.h"
#import "ArchivoDesc.h"
#import "MyCollectionViewCell.h"
#import "MySuplementaryView.h"
#import "Presupuesto.h"
#import "PopupMenuTemplate.h"
#import "ElemClave.h"
#import <AudioToolbox/AudioToolbox.h>
//#import "CorePlot-CocoaTouch.h"
//#import "TUTSimpleScatterPlot.h"
#import <MessageUI/MessageUI.h>
#import "AppDelegate.h"
#import "Predefinido.h"
#import "ClaveP.h"
#import "Reporte.h"
#import "labelForClave.h"
#import "labelForDescripcion.h"
#import "labelForImport.h"
#import <QuartzCore/QuartzCore.h>
#import "labelForSubtitle.h"
#import "Informe.h"
//#import "QueryComp.h"


//#import "PieChartViewController.h"
//#import "PieChartViewController2.h"
//#import "LineChartViewController.h"
//#import "HalfPieChartViewController.h"

#import "PCPieChart.h"

#import "ColumnRepor.h"



@interface SecondViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate, ALPickerViewDelegate, UITableViewDataSource, UITableViewDelegate , UICollectionViewDataSource, UICollectionViewDelegate , UIActionSheetDelegate, MFMailComposeViewControllerDelegate,UIAlertViewDelegate, UISearchBarDelegate, UITextFieldDelegate> {
    
    UICollectionView *collectionViewRepor;
    
    
    UIPickerView  *pickerViewUnid;
    UIPickerView  *pickerViewCapitulo;
    UIPickerView  *pickerViewPrograma;
    UIPickerView  *pickerViewConcepto;
    
    UIButton * buttonSelectFecha;
    UIButton * buttonSelectUnidad;
    UIButton * buttonSelectCapitulo;
    UIButton * buttonSelectPrograma;
    UIButton * buttonSelectConcepto;
    /*   UIButton * buttonSelectGfun;
     UIButton * buttonSelectFonc;
     UIButton * buttonSelectSfun;*/
    UIButton * buttonSelectProg;
    UIButton * buttonSelectActi;
    UIButton * buttonSelectDide;
    UIButton * buttonSelectDver;
    UIButton * buttonSelectCcp;
    UIButton * buttonSelectProyInv;
    UIButton * buttonSelectEntidad;
    UIButton * buttonSelectPeriodo;
    
    UIButton * buttonSelectPred;
    
    NSMutableArray *arrayUnid;
    NSMutableArray *arrayCapitulo;
    NSMutableArray *arrayConcepto;
    NSMutableArray *arrayPrograma;
    NSMutableArray *arrayPeriodo;
    NSString *urSelected;
    NSString *capituloSelected;
    NSString *programaSelected;
    NSString *conceptoSelected;
    NSString *periodoSelected;
    BOOL isSelectedUnid;
    BOOL isSelectedCapitulo;
    BOOL isSelectedConcepto;
    BOOL isSelectedPrograma;
    
    NSString *queryToAddUnid;
    NSString *queryToAddCapitulo;
    NSString *queryToAddConcepto;
    NSString *queryToAddPrograma;
    
    ALPickerView *alpickerViewFecha;
    ALPickerView *alpickerViewUnidad;
    ALPickerView *alpickerViewCapitulo;
    ALPickerView *alpickerViewConcepto;
    ALPickerView *alpickerViewPrograma;
    
    /*    ALPickerView  *alpickerViewGfun;
     ALPickerView  *alpickerViewFonc;
     ALPickerView  *alpickerViewSfun;*/
    ALPickerView  *alpickerViewProg;
    ALPickerView  *alpickerViewActi;
    ALPickerView  *alpickerViewDide;
    ALPickerView  *alpickerViewDver;
    ALPickerView  *alpickerViewCcp;
    ALPickerView  *alpickerViewProyInv;
    ALPickerView  *alpickerViewEntidad;
    
    ALPickerView  *alpickerViewPred;
    ALPickerView  *alpickerViewPeriodo;
    
    NSMutableDictionary *selectionStatesFecha;
    
    NSMutableDictionary *selectionStates;
    NSMutableDictionary *selectionStatesCapitulo;
    NSMutableDictionary *selectionStatesConcepto;
    NSMutableDictionary *selectionStatesPrograma;
    /*    NSMutableDictionary *selectionStatesGfun;
     NSMutableDictionary *selectionStatesFonc;
     NSMutableDictionary *selectionStatesSfun;*/
    NSMutableDictionary *selectionStatesProg;
    NSMutableDictionary *selectionStatesActi;
    NSMutableDictionary *selectionStatesDide;
    NSMutableDictionary *selectionStatesDver;
    NSMutableDictionary *selectionStatesCcp;
    NSMutableDictionary *selectionStatesProyInv;
    NSMutableDictionary *selectionStatesEntidad;
    
    NSMutableDictionary *selectionStatesPred;
    
    NSMutableDictionary *selectionStatesPeriodo;
    
    buttonWithStyle *buttonToHideFecha;
    
    buttonWithStyle *buttonToHideUnidad;
    buttonWithStyle *buttonToHideCapitulo;
    buttonWithStyle *buttonToHideConcepto;
    buttonWithStyle *buttonToHidePrograma;
    /*   buttonWithStyle *buttonToHideGfun;
     buttonWithStyle *buttonToHideFonc;
     buttonWithStyle *buttonToHideSfun;*/
    buttonWithStyle *buttonToHideProg;
    buttonWithStyle *buttonToHideActi;
    buttonWithStyle *buttonToHideDide;
    buttonWithStyle *buttonToHideDver;
    buttonWithStyle *buttonToHideCcp;
    buttonWithStyle *buttonToHideProyInv;
    buttonWithStyle *buttonToHideEntidad;
    
    buttonWithStyle *buttonToHidePred;
    buttonWithStyle *buttonToHidePeriodo;
    
    LoadingIndicator *loadingIndicator;
    
    //para table view
    
    UISegmentedControl *segmentedControlRepor;
    UISegmentedControl *segmentedControlSubtotal2;
    
    NSString *archivoSeleccionado;
    
    NSMutableArray *arrayArchivos;
    
    NSMutableArray *arrayPresupuesto;
    
    UISegmentedControl *segmentedControlSubtotal;
    
    UITableView *tableFechas;
    
    //for saving the queries for each element in clave pptal
    NSString * stringQueryUnidad;
    NSString * stringQueryCapitulo;
    NSString * stringQueryPrograma;
    NSString * stringQueryConcepto;
    /*    NSString * stringQueryGfun;
     NSString * stringQueryFonc;
     NSString * stringQuerySfun;*/
    NSString * stringQueryProg;
    NSString * stringQueryActi;
    NSString * stringQueryCcp;
    NSString * stringQueryDide;
    NSString * stringQueryDver;
    NSString * stringQueryEntidad;
    NSString * stringQueryProyInv;
    NSString * stringQueryPred;
    
    
    NSMutableArray *stringQueries;
    
    PopupMenuTemplate *popMenu;
    
    UICollectionView *collectionViewClave;
    UICollectionView *collectionViewDescripcion;
    UICollectionView *collectionViewOriginal;
    UICollectionView *collectionViewModificado;
    UICollectionView *collectionViewDisponible;
    UICollectionView *collectionViewDispo60;
    UICollectionView *collectionViewModp;
    UICollectionView *collectionViewEjercido;
    UICollectionView *collectionViewDisponiblep;
    
    CGPoint currentPoint;
    int howManyTouches;
    
    SystemSoundID soundDrag;
    SystemSoundID soundBubble;
    
    AppDelegate *mainDelegate;
    DatabaseConnection *preDatabse;
    
    
    //newGraphic
    PCPieChart *pieChart;
    
    
}
//pickerView que muestran los detalles
@property (nonatomic, retain) IBOutlet UIPickerView *pickerViewUnid;
@property (nonatomic, retain) IBOutlet UIPickerView *pickerViewCapitulo;
@property (nonatomic, retain) IBOutlet UIPickerView *pickerViewPrograma;
@property (nonatomic, retain) IBOutlet UIPickerView *pickerViewConcepto;

//botones que muestran los pickerView
@property (nonatomic, retain) IBOutlet UIButton *buttonSelectUnidad;
@property (nonatomic, retain) IBOutlet UIButton *buttonSelectCapitulo;
@property (nonatomic, retain) IBOutlet UIButton *buttonSelectConcepto;
@property (nonatomic, retain) IBOutlet UIButton *buttonSelectPrograma;

@property (nonatomic, retain) IBOutlet UIButton * buttonSelectFecha;
/*@property (nonatomic, retain) IBOutlet UIButton * buttonSelectGfun;
 @property (nonatomic, retain) IBOutlet UIButton * buttonSelectFonc;
 @property (nonatomic, retain) IBOutlet UIButton * buttonSelectSfun;*/
@property (nonatomic, retain) IBOutlet UIButton * buttonSelectProg;
@property (nonatomic, retain) IBOutlet UIButton * buttonSelectActi;
@property (nonatomic, retain) IBOutlet UIButton * buttonSelectDide;
@property (nonatomic, retain) IBOutlet UIButton * buttonSelectDver;
@property (nonatomic, retain) IBOutlet UIButton * buttonSelectCcp;
@property (nonatomic, retain) IBOutlet UIButton * buttonSelectProyInv;
@property (nonatomic, retain) IBOutlet UIButton * buttonSelectEntidad;

@property (nonatomic, retain) IBOutlet UIButton * buttonSelectPred;

@property (nonatomic, retain) IBOutlet UIButton * buttonUpdate;

@property (nonatomic, retain) IBOutlet UIButton * buttonSelectPeriodo;

@property (nonatomic, retain) NSMutableDictionary *selectionStatesFecha;
/*@property (nonatomic, retain) NSMutableDictionary *selectionStatesGfun;
 @property (nonatomic, retain) NSMutableDictionary *selectionStatesFonc;
 @property (nonatomic, retain) NSMutableDictionary *selectionStatesSfun;*/
@property (nonatomic, retain) NSMutableDictionary *selectionStatesProg;
@property (nonatomic, retain) NSMutableDictionary *selectionStatesActi;
@property (nonatomic, retain) NSMutableDictionary *selectionStatesDide;
@property (nonatomic, retain) NSMutableDictionary *selectionStatesDver;
@property (nonatomic, retain) NSMutableDictionary *selectionStatesCcp;
@property (nonatomic, retain) NSMutableDictionary *selectionStatesProyInv;
@property (nonatomic, retain) NSMutableDictionary *selectionStatesEntidad;

@property (nonatomic, retain) NSMutableDictionary *selectionStatesPred;
@property (nonatomic, retain) NSMutableDictionary *selectionStatesPeriodo;

@property (nonatomic, retain) IBOutlet UIButton *buttonHideShowOtherButtons;



@property (nonatomic, retain) IBOutlet NSMutableArray *arrayUnid;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayCapitulo;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayConcepto;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayPrograma;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayPeriodo;
/*@property (nonatomic, retain) IBOutlet NSMutableArray *arrayGfun;
 @property (nonatomic, retain) IBOutlet NSMutableArray *arrayFonc;
 @property (nonatomic, retain) IBOutlet NSMutableArray *arraySfun;*/
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayProg;

@property (nonatomic, retain) IBOutlet NSMutableArray *arrayActi;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayDide;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayDver;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayCcp;

//in order to search internal in all array
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayCcpAll;
@property (retain) IBOutlet UISearchBar *searchBar;
@property (nonatomic) BOOL  isFiltered;

@property (nonatomic, retain) IBOutlet NSMutableArray *arrayUnidAll;
@property (nonatomic) BOOL  isFilteredUnid;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayCapituloAll;
@property (nonatomic) BOOL  isFilteredCapitulo;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayConceptoAll;
@property (nonatomic) BOOL  isFilteredConcepto;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayProgramaAll;
@property (nonatomic) BOOL  isFilteredPrograma;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayPeriodoAll;
@property (nonatomic) BOOL  isFilteredPeriodo;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayProgAll;
@property (nonatomic) BOOL  isFilteredProg;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayActiAll;
@property (nonatomic) BOOL  isFilteredActi;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayDideAll;
@property (nonatomic) BOOL  isFilteredDide;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayDverAll;
@property (nonatomic) BOOL  isFilteredDver;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayProyInvAll;
@property (nonatomic) BOOL  isFilteredProyInv;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayEntidadAll;
@property (nonatomic) BOOL  isFilteredEntidad;



@property (nonatomic, retain) IBOutlet NSMutableArray *arrayProyInv;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayEntidad;

@property (nonatomic, retain) IBOutlet NSMutableArray *arrayPred;

@property (nonatomic, retain) IBOutlet NSMutableArray *arrayColumnRepor;


@property (nonatomic) NSString *urSelected;
@property (nonatomic) NSString *capituloSelected;
@property (nonatomic) NSString *programaSelected;
@property (nonatomic) NSString *conceptoSelected;

@property (nonatomic) BOOL isSelectedUnid;
@property (nonatomic) BOOL isSelectedCapitulo;
@property (nonatomic) BOOL isSelectedConcepto;
@property (nonatomic) BOOL isSelectedPrograma;

@property (retain ) NSString *queryToAddUnid;
@property (retain ) NSString *queryToAddCapitulo;
@property (retain ) NSString *queryToAddPrograma;
@property (retain ) NSString *queryToAddConcepto;

@property (retain) NSString *periodoSelected;

@property (retain) ALPickerView *alpickerviewUnidad;

@property (retain) ALPickerView  *alpickerViewFecha;
/*@property (retain) ALPickerView  *alpickerViewGfun;
 @property (retain) ALPickerView  *alpickerViewFonc;
 @property (retain) ALPickerView  *alpickerViewSfun;*/
@property (retain) ALPickerView  *alpickerViewProg;
@property (retain) ALPickerView  *alpickerViewActi;
@property (retain) ALPickerView  *alpickerViewDide;
@property (retain) ALPickerView  *alpickerViewDver;
@property (retain) ALPickerView  *alpickerViewCcp;
@property (retain) ALPickerView  *alpickerViewProyInv;
@property (retain) ALPickerView  *alpickerViewEntidad;

@property (retain) ALPickerView  *alpickerViewPred;
@property (retain) ALPickerView  *alpickerViewPeriodo;

@property (retain) NSDictionary *selectionStates;

@property (retain) buttonWithStyle *buttonToHideFecha;
@property (retain) buttonWithStyle *buttonToHideCapitulo;
@property (retain) buttonWithStyle *buttonToHideConcepto;
@property (retain) buttonWithStyle *buttonToHidePrograma;
@property (retain) buttonWithStyle *buttonToHideUnidad;
/*@property (retain) buttonWithStyle *buttonToHideGfun;
 @property (retain) buttonWithStyle *buttonToHideFonc;
 @property (retain) buttonWithStyle *buttonToHideSfun;*/
@property (retain) buttonWithStyle *buttonToHideProg;
@property (retain) buttonWithStyle *buttonToHideActi;
@property (retain) buttonWithStyle *buttonToHideDide;
@property (retain) buttonWithStyle *buttonToHideDver;
@property (retain) buttonWithStyle *buttonToHideCcp;
@property (retain) buttonWithStyle *buttonToHideProyInv;
@property (retain) buttonWithStyle *buttonToHideEntidad;

@property (retain) buttonWithStyle *buttonToHidePred;

@property (retain) buttonWithStyle *buttonToHidePeriodo;

@property (retain) LoadingIndicator *loadingIndicator;

@property (retain) IBOutlet UISegmentedControl *segmentedControlRepor;
@property (retain) IBOutlet UISegmentedControl *segmentedControlSubtotal;
@property (retain) IBOutlet UISegmentedControl *segmentedControlSubtotal2;

@property (retain) NSString * archivoSeleccionado;
@property (retain) NSString * archivoSeleccionadoDesc;

@property (retain) NSMutableArray *arrayArchivos;
@property (retain) IBOutlet UICollectionView *collectionViewRepor;
@property (retain) IBOutlet UICollectionView *collectionViewReporPdf;

@property (retain) NSMutableArray *arrayPresupuesto;
@property (retain) NSMutableArray *arrayPptoSorted;

@property (retain) IBOutlet UITableView *tableFechas;

-(IBAction)muestraUnidad    :(UIButton*)sender;
-(IBAction)muestraCapitulo    :(UIButton*)sender;
-(IBAction)muestraConcepto    :(UIButton*)sender;
-(IBAction)muestraPrograma    :(UIButton*)sender;
/*-(IBAction)muestraGfun    :(UIButton*)sender;
 -(IBAction)muestraFonc    :(UIButton*)sender;
 -(IBAction)muestraSfun    :(UIButton*)sender;*/
-(IBAction)muestraProg     :(UIButton*)sender;
-(IBAction)muestraActi    :(UIButton*)sender;
-(IBAction)muestraDide    :(UIButton*)sender;
-(IBAction)muestraDver    :(UIButton*)sender;
-(IBAction)muestraCcp    :(UIButton*)sender;
-(IBAction)muestraEntidad    :(UIButton*)sender;
-(IBAction)muestraProyInv    :(UIButton*)sender;

-(IBAction)muestraPred    :(UIButton*)sender;


-(void) hidePickerViews;
-(void) hidePickerViewsforButton: (buttonWithStyle*)buttonHide ;
-(IBAction)cleanSelectorsForButton:(UIButton *)sender;
-(IBAction)cleanReportForButton:(UIButton *)sender;

-(IBAction)generaPresupuesto    :(UIButton*)sender;
-(IBAction)muestraFecha:(UIButton*)sender;

-(IBAction)muestraPeriodo:(UIButton*)sender;


//for saving the queries for each element in clave pptal
@property (retain) NSString * stringQueryUnidad;
@property (retain) NSString * stringQueryCapitulo;
@property (retain) NSString * stringQueryPrograma;
@property (retain) NSString * stringQueryConcepto;
/*@property (retain) NSString * stringQueryGfun;
 @property (retain) NSString * stringQueryFonc;
 @property (retain) NSString * stringQuerySfun;*/
@property (retain) NSString * stringQueryProg;
@property (retain) NSString * stringQueryActi;
@property (retain) NSString * stringQueryCcp;
@property (retain) NSString * stringQueryDide;
@property (retain) NSString * stringQueryDver;
@property (retain) NSString * stringQueryEntidad;
@property (retain) NSString * stringQueryProyInv;
@property (retain) NSMutableArray * stringQueries;
@property (retain) NSMutableArray * stringQueriesDesc;
@property (retain) NSMutableArray * stringQueriesAlways;

@property (retain) NSString * stringQueryPred;

//popup to send Messages

@property (retain) PopupMenuTemplate *popMenu;


@property (retain) NSMutableArray * Reports;


@property (retain) IBOutlet UICollectionView *collectionViewClave;
@property (retain) IBOutlet UICollectionView *collectionViewDescripcion;
@property (retain) IBOutlet UICollectionView *collectionViewOriginal;
@property (retain) IBOutlet UICollectionView *collectionViewModificado;
@property (retain) IBOutlet UICollectionView *collectionViewDisponible;
@property (retain) IBOutlet UICollectionView *collectionViewDispo60;
@property (retain) IBOutlet UICollectionView *collectionViewModp;
@property (retain) IBOutlet UICollectionView *collectionViewEjercido;
@property (retain) IBOutlet UICollectionView *collectionViewDisponiblep;

@property (nonatomic) CGPoint currentPoint;
@property (nonatomic) int  howManyTouches;



@property (nonatomic) BOOL  isActive2014;

-(IBAction)segmentedControlIndexChanged:(UISegmentedControl *)sender;
-(IBAction)hideShowButtons:(UIButton*)sender;
-(IBAction)moveCollectionAndButton:(UIButton*)sender;

/*@property (retain) IBOutlet UIImageView *imageGfun;
 @property (retain) IBOutlet UIImageView *imageFonc;
 @property (retain) IBOutlet UIImageView *imageSfun;*/
@property (retain) IBOutlet UIImageView *imageProg;
@property (retain) IBOutlet UIImageView *imageActi;
@property (retain) IBOutlet UIImageView *imageDide;
@property (retain) IBOutlet UIImageView *imageDver;
@property (retain) IBOutlet UIImageView *imageEntidad;
@property (retain) IBOutlet UIImageView *imageProyInv;

@property (retain) IBOutlet UIImageView *imagePred;

@property (retain) IBOutlet UIImageView *imageFecha;

@property (retain) IBOutlet UIButton *buttonMoveCollection;
@property (nonatomic) BOOL isMovedCollection;


@property (retain) IBOutlet UIButton *buttonTitleClave;
@property (retain) IBOutlet UIButton *buttonTitleDescripcion;
@property (retain) IBOutlet UIButton *buttonTitleOriginal;
@property (retain) IBOutlet UIButton *buttonTitleModificado;
@property (retain) IBOutlet UIButton *buttonTitleModp;
@property (retain) IBOutlet UIButton *buttonTitleDisponible;
@property (retain) IBOutlet UIButton *buttonTitleDispo60;
@property (retain) IBOutlet UIButton *buttonTitleEjercido;
@property (retain) IBOutlet UIButton *buttonTitleDisponiblep;

//new calendar buttons
@property (retain) IBOutlet UIButton *buttonTitleAugust;
@property (retain) IBOutlet UIButton *buttonTitleSeptember;
@property (retain) IBOutlet UIButton *buttonTitleOctober;
@property (retain) IBOutlet UIButton *buttonTitleNovember;
@property (retain) IBOutlet UIButton *buttonTitleDecember;

@property (retain) IBOutlet UIScrollView *scrollReports;
@property (retain) IBOutlet UIButton *buttonGrafica;


@property (retain) IBOutlet UIButton *buttonActiveOnline;

/*@property (retain) IBOutlet CPTGraphHostingView * hostView;
 @property (nonatomic, strong) CPTTheme *selectedTheme;
 @property (retain) TUTSimpleScatterPlot *scatterPlot;*/

@property (retain) IBOutlet UIToolbar * toolbar;

@property (nonatomic) SystemSoundID soundDrag;
@property (nonatomic) SystemSoundID soundBubble;

@property (nonatomic) IBOutlet UITextView *textFieldQueries;

@property (nonatomic) int alphaControl;
-(IBAction)Start:(UIButton*)buttonUpdate;
-(IBAction)StartWithLoading:(UIButton*)buttonUpda;
-(IBAction)generaPresupuestoWithLoading:(UIButton *)sender;
-(IBAction)generaGraficaWithLoading:(UIButton *)sender;
-(IBAction)showSearchBar :(UIButton*)sender;

@property (retain) IBOutlet UISegmentedControl *segmentedUrCap;
@property (retain) IBOutlet UISegmentedControl *segmentedCapPrograma;
@property (retain) IBOutlet UISegmentedControl *segmentedProgramaCon;
@property (retain) IBOutlet UISegmentedControl *segmentedConPar;
@property (retain) IBOutlet UISegmentedControl *segmentedParProg;
@property (retain) IBOutlet UISegmentedControl *segmentedProgActi;
@property (retain) IBOutlet UISegmentedControl *segmentedActiProy;
@property (retain) IBOutlet UISegmentedControl *segmentedProyDide;
@property (retain) IBOutlet UISegmentedControl *segmentedDideDver;
@property (retain) IBOutlet UISegmentedControl *segmentedDverEnt;
@property (retain) IBOutlet UISegmentedControl *segmentedEntFin;

@property (retain) IBOutlet UISegmentedControl *segmentedPred;

@property (retain) IBOutlet UISegmentedControl *segmentedAnualAcumula;


@property (retain) IBOutlet NSString *stringUrCap;
@property (retain) IBOutlet NSString *stringCapPrograma;
@property (retain) IBOutlet NSString *stringProgramaCon;
@property (retain) IBOutlet NSString *stringConPar;
@property (retain) IBOutlet NSString *stringParProg;
@property (retain) IBOutlet NSString *stringProgActi;
@property (retain) IBOutlet NSString *stringActiProy;
@property (retain) IBOutlet NSString *stringProyDide;
@property (retain) IBOutlet NSString *stringDideDver;
@property (retain) IBOutlet NSString *stringDverEnt;

@property (retain) IBOutlet NSMutableArray *arraySegmented;

@property (retain) IBOutlet UISegmentedControl *segmentedArchivos;
@property (retain) IBOutlet UILabel  *labelSubtotales;
@property (retain) IBOutlet UIButton  *buttonOriGraf;
@property (retain) IBOutlet UIButton  *buttonModGraf;
@property (retain) IBOutlet UIButton  *buttonDisGraf;
@property (retain) IBOutlet UIButton  *buttonDis60Graf;
@property (retain) IBOutlet UIButton  *buttonModpGraf;
@property (retain) IBOutlet UIButton  *buttonEjeGraf;
@property (retain) IBOutlet UIButton  *buttonDispGraf;

@property (retain) IBOutlet UILabel  *labelTitleRepor;


@property (retain) IBOutlet UIButton  *buttonSendCsv;

@property (retain) IBOutlet UIButton  *buttonSendPdf;

@property (retain ) IBOutlet UIView *viewHideElements;

@property (retain) NSString *stringGraphSelected;

@property (nonatomic) double sumOthers;

@property (nonatomic) int  dateSelected;


@property (nonatomic) BOOL  sortClave;
@property (nonatomic) BOOL  sortOriginal;
@property (nonatomic) BOOL  sortModificado;
@property (nonatomic) BOOL  sortDisponible;
@property (nonatomic) BOOL  sortDispo60;
@property (nonatomic) BOOL  sortModp;
@property (nonatomic) BOOL  sortEjercido;
@property (nonatomic) BOOL  sortDispop;

@property (retain) NSString * finalQuery;


@property (retain) IBOutlet UIButton  *buttonDownload;
-(IBAction)downloadWithLoading:(UIButton *)sender;

@property (retain, nonatomic) AppDelegate *mainDelegate;

@property (retain, nonatomic) DatabaseConnection *preDatabase;

@property (retain, nonatomic) NSMutableArray *arrayDownload;

@property (retain, nonatomic) NSMutableArray *arrayQueryComp;

@property (retain) NSString * reporSelected;

@property (retain) UIAlertView *message;
@property (retain) UIAlertView *message2;
@property (retain) NSString *filPredWhere;

@property (nonatomic) int yaUnid ;


@property (retain) UIWebView *webViewPdf;

@property (retain) NSMutableArray *arrayCellSelected;

-(IBAction)viewPdf:(UIButton*)sender;

-(IBAction)activeDeactiveOnline:(UIButton *)sender;

@property (nonatomic) BOOL  activeOnline;
@property (nonatomic) BOOL  activeGraphic;
@property (nonatomic) BOOL  activeSend;

//combo to download pdf in informes
@property (retain) IBOutlet UIImageView *imageViewDescarg;
@property (retain) IBOutlet UITextField *textFieldName;
@property (retain) IBOutlet UIButton *buttonDownloadAr;
@property (retain) IBOutlet UIButton *buttonOk;
@property (retain) IBOutlet UIButton *buttonCancelAr;

-(IBAction) descargaPdf: (UIButton*)sender ;
-(IBAction) okDescarga: (UIButton*)sender ;
-(IBAction) cancelDescarga: (UIButton*)sender ;

-(IBAction)changeSegmentedAnual:(UISegmentedControl*)sender;


-(IBAction) switchTapped: (UISwitch*)sender ;

@property (nonatomic) ArchivoDesc *archivoCurrent;

//newGraphic
@property (retain) PCPieChart *pieChart;


@property (retain) IBOutlet UIButton *buttonHighlight1;
@property (retain) IBOutlet UIButton *buttonHighlight2;
@property (retain) IBOutlet UIButton *buttonHighlight3;

//touching and moving
@property (retain) ColumnRepor *currentColumnMovable;

- (IBAction) yourBtnInScrollViewPressed : (id) sender;


//charts

-(void)initPlot;
-(void)configureHost;
-(void)configureGraph;
-(void)configureChart;
-(void)configureLegend;

-(IBAction)selectGraph:(UIButton *)sender;
-(IBAction)sendCsv:(UIButton *)sender;
-(IBAction)sortPpto:(UIButton*)sender;




@end
