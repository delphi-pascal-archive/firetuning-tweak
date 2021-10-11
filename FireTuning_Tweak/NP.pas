unit NP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, Drawer, ExtCtrls, XpMan, ShellApi, IniFiles, Spin,
  LbSpeedButton, ComCtrls, XPLabel, RyMenus, XPCheckBox, StdCtrls,
  Registry, ExtDlgs, Menus, ImgList, XPEdit, XPButton, Buttons, NB30, 
  ClipBrd, WinInet, jpeg, ActiveX, ShlObj,
  ComObj, DSCollPanel, RASUnit,
  WinSock, DdeMan, Printers, WinsPool, AppEvnts, CommDlg,
  FileCtrl, IdBaseComponent, IdComponent, IdIPWatch, XPGroupBox, OleCtrls,
  SHDocVw, ActnList, StdActns, XPStyleActnCtrls, ActnMan, ToolWin,
  ActnCtrls, ActnMenus, rmBaseEdit, rmBtnEdit;

  function OpenSaveFileDialog(ParentHandle: THandle; const DefExt, Filter, InitialDir,
  Title: string; var FileName: string; IsOpenDialog: Boolean): Boolean;

  const
  AlignCenter = WM_USER + 1024;
  Tray      = Wm_User + 1;
  Cherta    = Wm_User + 2;
  AboutPro  = Wm_User + 3;

  type
   TWmMoving = record
   Msg: Cardinal;
   fwSide: Cardinal;
   lpRect: PRect;
   Result: Integer;
  end;

type
  TMainForm = class(TForm)
    fr8: TPanel;
    OpenPicDlg: TOpenPictureDialog;
    MainMenu: TMainMenu;
    Notebook: TNotebook;
    PageControl1: TPageControl;
    System: TTabSheet;
    im2: TImage;
    Ch14: TXPCheckBox;
    Ch45: TXPCheckBox;
    Ch46: TXPCheckBox;
    Ch47: TXPCheckBox;
    Printers: TTabSheet;
    im6: TImage;
    Ch52: TXPCheckBox;
    Ch53: TXPCheckBox;
    Explorer: TTabSheet;
    im3: TImage;
    Ch54: TXPCheckBox;
    Ch55: TXPCheckBox;
    Ch56: TXPCheckBox;
    InternetExplorer: TTabSheet;
    im1: TImage;
    Ch60: TXPCheckBox;
    Ch61: TXPCheckBox;
    Ch62: TXPCheckBox;
    Ch63: TXPCheckBox;
    Ch64: TXPCheckBox;
    Ch65: TXPCheckBox;
    Ch66: TXPCheckBox;
    Ch67: TXPCheckBox;
    Ch68: TXPCheckBox;
    Ch69: TXPCheckBox;
    StartMenu: TTabSheet;
    im7: TImage;
    Ch73: TXPCheckBox;
    Ch74: TXPCheckBox;
    Ch76: TXPCheckBox;
    Ch77: TXPCheckBox;
    Ch78: TXPCheckBox;
    Ch79: TXPCheckBox;
    Ch80: TXPCheckBox;
    Ch81: TXPCheckBox;
    Ch82: TXPCheckBox;
    CompactDisk: TTabSheet;
    fr1: TPanel;
    tx37: TXPLabel;
    tx38: TXPLabel;
    fr2: TPanel;
    Magnifier: TSpeedButton;
    fr3: TPanel;
    tx43: TXPLabel;
    tx42: TXPLabel;
    tx41: TXPLabel;
    tx40: TXPLabel;
    tx39: TXPLabel;
    ed5: TXPEdit;
    ed4: TXPEdit;
    ed3: TXPEdit;
    ed2: TXPEdit;
    ed1: TXPEdit;
    PageControl2: TPageControl;
    YourSustem: TTabSheet;
    Im10: TImage;
    Ch83: TXPCheckBox;
    Ch84: TXPCheckBox;
    Ch85: TXPCheckBox;
    Ch86: TXPCheckBox;
    Ch87: TXPCheckBox;
    MenuWin: TTabSheet;
    Im13: TImage;
    tx70: TXPLabel;
    tx73: TXPLabel;
    Ch96: TXPCheckBox;
    Ch91: TXPCheckBox;
    Ch92: TXPCheckBox;
    Ch97: TXPCheckBox;
    Ch94: TXPCheckBox;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Boot: TTabSheet;
    tx48: TXPLabel;
    Ch99: TXPCheckBox;
    Ch98: TXPCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    WinExplorer: TTabSheet;
    Ch109: TXPCheckBox;
    Ch110: TXPCheckBox;
    Ch115: TXPCheckBox;
    Ch116: TXPCheckBox;
    Ch117: TXPCheckBox;
    TaskBar: TTabSheet;
    Ch118: TXPCheckBox;
    Ch119: TXPCheckBox;
    Ch120: TXPCheckBox;
    Ch121: TXPCheckBox;
    PageControl4: TPageControl;
    Desk: TTabSheet;
    Im16: TImage;
    Ch36: TXPCheckBox;
    RecycleBin: TTabSheet;
    Im17: TImage;
    tx90: TXPLabel;
    AddToComputer: TXPCheckBox;
    RecycleBinEd: TEdit;
    DeskIcon: TTabSheet;
    Im18: TImage;
    Ch44: TXPCheckBox;
    Ch42: TXPCheckBox;
    Ch43: TXPCheckBox;
    fr11: TPanel;
    ReadMe: TRichEdit;
    fr12: TPanel;
    Ch71: TXPCheckBox;
    Ch70: TXPCheckBox;
    im4: TImage;
    TweakItem: TMenuItem;
    QuitItem: TMenuItem;
    HelpItem: TMenuItem;
    NavigationItem: TMenuItem;
    SysInfoItem: TMenuItem;
    SendItem: TMenuItem;
    LicItem: TMenuItem;
    AboutItem: TMenuItem;
    InformationItem: TMenuItem;
    sp10: TMenuItem;
    sp12: TMenuItem;
    SavePicDlg: TSavePictureDialog;
    NewWinItem: TMenuItem;
    sp2: TMenuItem;
    WallpaperMenu: TPopupMenu;
    Centered: TMenuItem;
    Stretched: TMenuItem;
    Tiled: TMenuItem;
    Ch57: TXPCheckBox;
    Timer1: TTimer;
    Ch35: TXPCheckBox;
    ShortcutItem: TMenuItem;
    OnFavoritesItem: TMenuItem;
    OnStartupItem: TMenuItem;
    OnMenuProItem: TMenuItem;
    OnStartMenuItem: TMenuItem;
    OnDesktopItem: TMenuItem;
    RunWinItem: TMenuItem;
    ChooseProItem: TMenuItem;
    sp3: TMenuItem;
    PropItem: TMenuItem;
    sp4: TMenuItem;
    Im9: TImage;
    Im11: TImage;
    Im12: TImage;
    tx47: TXPLabel;
    tx46: TXPLabel;
    Ch111: TXPCheckBox;
    XPMenu: TTabSheet;
    Ch122: TXPCheckBox;
    Ch124: TXPCheckBox;
    Ch125: TXPCheckBox;
    Ch131: TXPCheckBox;
    Ch127: TXPCheckBox;
    Ch128: TXPCheckBox;
    Ch132: TXPCheckBox;
    Ch129: TXPCheckBox;
    Ch130: TXPCheckBox;
    Im14: TImage;
    tx50: TXPLabel;
    tx68: TXPLabel;
    tx71: TXPLabel;
    tx44: TXPLabel;
    tx53: TXPLabel;
    tx55: TXPLabel;
    tx57: TXPLabel;
    tx76: TXPLabel;
    tx89: TXPLabel;
    tx87: TXPLabel;
    tx97: TXPLabel;
    tx4: TXPLabel;
    tx19: TXPLabel;
    tx8: TXPLabel;
    tx1: TXPLabel;
    tx25: TXPLabel;
    tx27: TXPLabel;
    tx32: TXPLabel;
    tx12: TXPLabel;
    tx74: TXPLabel;
    tx75: TXPLabel;
    IdIPWatch: TIdIPWatch;
    tx116: TXPLabel;
    Label2: TLabel;
    Edit4: TEdit;
    Edit7: TEdit;
    tx117: TXPLabel;
    tx118: TXPLabel;
    tx119: TXPLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    ed6: TEdit;
    ed7: TEdit;
    ed8: TEdit;
    ed10: TEdit;
    ed9: TEdit;
    ed11: TEdit;
    ed12: TEdit;
    ed13: TEdit;
    ed14: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    tx131: TXPLabel;
    tx130: TXPLabel;
    tx129: TXPLabel;
    tx128: TXPLabel;
    tx127: TXPLabel;
    tx126: TXPLabel;
    tx125: TXPLabel;
    tx124: TXPLabel;
    tx122: TXPLabel;
    tx123: TXPLabel;
    tx121: TXPLabel;
    tx120: TXPLabel;
    tx143: TLabel;
    tx142: TLabel;
    tx141: TLabel;
    tx140: TLabel;
    tx144: TLabel;
    tx145: TLabel;
    tx134: TXPLabel;
    tx135: TXPLabel;
    tx136: TXPLabel;
    tx137: TXPLabel;
    tx138: TXPLabel;
    tx139: TXPLabel;
    tx148: TXPLabel;
    Im22: TImage;
    tx114: TXPLabel;
    Im23: TImage;
    tx132: TXPLabel;
    Im24: TImage;
    tx146: TXPLabel;
    ClassicMenu: TTabSheet;
    Im15: TImage;
    tx85: TXPLabel;
    Ch133: TXPCheckBox;
    Ch134: TXPCheckBox;
    Ch135: TXPCheckBox;
    Ch136: TXPCheckBox;
    Ch137: TXPCheckBox;
    Ch138: TXPCheckBox;
    Ch139: TXPCheckBox;
    Ch140: TXPCheckBox;
    Ch141: TXPCheckBox;
    Ch142: TXPCheckBox;
    Ch143: TXPCheckBox;
    Ch144: TXPCheckBox;
    Ch145: TXPCheckBox;
    Im8: TImage;
    tx35: TXPLabel;
    tx212: TXPLabel;
    fr9: TPanel;
    tx152: TXPLabel;
    tx153: TXPLabel;
    tx170: TXPLabel;
    tx169: TXPLabel;
    tx156: TXPLabel;
    tx162: TXPLabel;
    tx157: TXPLabel;
    tx158: TXPLabel;
    tx160: TXPLabel;
    tx168: TXPLabel;
    tx161: TXPLabel;
    tx155: TXPLabel;
    tx151: TXPLabel;
    tx159: TXPLabel;
    tx172: TXPLabel;
    tx171: TXPLabel;
    tx166: TXPLabel;
    tx165: TXPLabel;
    Ch37: TXPCheckBox;
    tx14: TXPLabel;
    im5: TImage;
    Ch72: TXPCheckBox;
    ComboBox2: TComboBox;
    tx30: TXPLabel;
    tx31: TXPLabel;
    StatusBar: TStatusBar;
    ImageList1: TImageList;
    Ch88: TXPCheckBox;
    tx52: TXPLabel;
    ComboBox9: TComboBox;
    Ch89: TXPCheckBox;
    Ch114: TXPCheckBox;
    Ch113: TXPCheckBox;
    Ch112: TXPCheckBox;
    Ch100: TXPCheckBox;
    Ch101: TXPCheckBox;
    Ch102: TXPCheckBox;
    Ch103: TXPCheckBox;
    Ch104: TXPCheckBox;
    tx49: TXPLabel;
    ComboBox10: TComboBox;
    fr10: TPanel;
    ch1: TXPCheckBox;
    ch2: TXPCheckBox;
    ch3: TXPCheckBox;
    ch4: TXPCheckBox;
    ch5: TXPCheckBox;
    ch6: TXPCheckBox;
    ch7: TXPCheckBox;
    ch9: TXPCheckBox;
    ch10: TXPCheckBox;
    Ch95: TXPCheckBox;
    Ch90: TXPCheckBox;
    Ch93: TXPCheckBox;
    tx59: TXPLabel;
    tx61: TXPLabel;
    SpinEdit3: TSpinEdit;
    tx62: TXPLabel;
    tx63: TXPLabel;
    tx64: TXPLabel;
    tx65: TXPLabel;
    SpinEdit4: TSpinEdit;
    tx66: TXPLabel;
    tx67: TXPLabel;
    tx16: TXPLabel;
    Ch48: TXPCheckBox;
    tx6: TXPLabel;
    Ch50: TXPCheckBox;
    Ch51: TXPCheckBox;
    Ch49: TXPCheckBox;
    Ch58: TXPCheckBox;
    tx10: TXPLabel;
    Ch59: TXPCheckBox;
    Ch75: TXPCheckBox;
    Ch105: TXPCheckBox;
    Ch106: TXPCheckBox;
    Ch107: TXPCheckBox;
    Ch108: TXPCheckBox;
    Im27: TImage;
    tx173: TXPLabel;
    ch11: TXPCheckBox;
    ch12: TXPCheckBox;
    ch13: TXPCheckBox;
    ch15: TXPCheckBox;
    ch16: TXPCheckBox;
    ch17: TXPCheckBox;
    TrayMenu: TPopupMenu;
    ResItem: TMenuItem;
    ClosedItem: TMenuItem;
    ch8: TXPCheckBox;
    ImageList2: TImageList;
    ch18: TXPCheckBox;
    ch19: TXPCheckBox;
    Im25: TImage;
    tx149: TXPLabel;
    Other: TTabSheet;
    fr6: TPanel;
    fr7: TPanel;
    Im20: TImage;
    tx109: TXPLabel;
    Wallpaper: TXPButton;
    Commands: TXPButton;
    OpenDlg: TOpenDialog;
    ImageMenu: TPopupMenu;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    Im21: TImage;
    tx111: TXPLabel;
    N42: TMenuItem;
    tx113: TXPLabel;
    ScreenSaveMenu: TPopupMenu;
    Install: TMenuItem;
    Preview: TMenuItem;
    Energy: TMenuItem;
    N46: TMenuItem;
    SystemItem: TMenuItem;
    ProtectItem: TMenuItem;
    DesktopItem: TMenuItem;
    UtilsItem: TMenuItem;
    ClassHandleItem: TMenuItem;
    InfoItem: TMenuItem;
    SettingItem: TMenuItem;
    sp6: TMenuItem;
    sp7: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    tx167: TXPLabel;
    tx154: TXPLabel;
    tx164: TXPLabel;
    tx163: TXPLabel;
    Ch38: TXPCheckBox;
    Ch39: TXPCheckBox;
    Ch40: TXPCheckBox;
    Ch41: TXPCheckBox;
    Im26: TImage;
    DSCollapsePanel: TDSCollapsePanel;
    SystemBt: TLbSpeedButton;
    ProtectBt: TLbSpeedButton;
    DeskBt: TLbSpeedButton;
    UtilsBt: TLbSpeedButton;
    ClassHandleBt: TLbSpeedButton;
    InfoBt: TLbSpeedButton;
    OptionsBt: TLbSpeedButton;
    LicBt: TLbSpeedButton;
    InetBt: TLbSpeedButton;
    InternetItem: TMenuItem;
    PageControl3: TPageControl;
    ConnectionSetting: TTabSheet;
    IE: TTabSheet;
    LocalNet: TTabSheet;
    Im29: TImage;
    tx185: TXPLabel;
    Ch20: TXPCheckBox;
    Ch21: TXPCheckBox;
    Ch22: TXPCheckBox;
    tx187: TXPLabel;
    tx188: TXPLabel;
    tx189: TXPLabel;
    Im33: TImage;
    tx197: TXPLabel;
    Ch23: TXPCheckBox;
    Ch24: TXPCheckBox;
    Ch25: TXPCheckBox;
    Ch26: TXPCheckBox;
    Ch27: TXPCheckBox;
    Ch28: TXPCheckBox;
    tx199: TXPLabel;
    Ch29: TXPCheckBox;
    Ch30: TXPCheckBox;
    Ch31: TXPCheckBox;
    Ch32: TXPCheckBox;
    Im34: TImage;
    tx206: TXPLabel;
    Ch33: TXPCheckBox;
    Ch34: TXPCheckBox;
    EnergyItem: TMenuItem;
    ShutdownItem: TMenuItem;
    ReloadItem: TMenuItem;
    LoggOffItem: TMenuItem;
    MonitorOffItem: TMenuItem;
    sp9: TMenuItem;
    MyScreen: TTabSheet;
    Im19: TImage;
    tx99: TXPLabel;
    tx101: TXPLabel;
    tx105: TXPLabel;
    tx102: TXPLabel;
    tx106: TXPLabel;
    tx103: TXPLabel;
    tx107: TXPLabel;
    tx104: TXPLabel;
    tx108: TXPLabel;
    ListMode: TXPGroupBox;
    List: TListBox;
    tx192: TXPLabel;
    tx190: TXPLabel;
    ListConnections: TListBox;
    UpdateListButton: TXPButton;
    tx34: TXPLabel;
    tx96: TXPLabel;
    IP: TTabSheet;
    tx193: TXPLabel;
    QuitBt: TLbSpeedButton;
    fr4: TPanel;
    Im28: TImage;
    tx175: TXPLabel;
    tx177: TXPLabel;
    tx178: TXPLabel;
    tx179: TXPLabel;
    Switch: TXPCheckBox;
    InputIP: TXPEdit;
    InputName: TXPEdit;
    fr5: TXPGroupBox;
    tx180: TXPLabel;
    tx181: TXPLabel;
    ComputerEdit: TEdit;
    IpEdit: TEdit;
    tx182: TXPLabel;
    DomenEdit: TEdit;
    tx183: TXPLabel;
    MacEdit: TEdit;
    tx184: TXPLabel;
    Im30: TImage;
    Im31: TImage;
    Im32: TImage;
    tx194: TXPLabel;
    tx195: TXPLabel;
    tx196: TXPLabel;
    Im35: TImage;
    tx208: TXPLabel;
    tx210: TXPLabel;
    tx211: TXPLabel;
    InterfaceItem: TMenuItem;
    RusItem: TMenuItem;
    EngItem: TMenuItem;
    tx21: TXPLabel;
    tx22: TXPLabel;
    ComboBox1: TComboBox;
    tx23: TXPLabel;
    tx24: TXPLabel;
    tx95: TXPLabel;
    tx91: TXPLabel;
    ApplicationEvents: TApplicationEvents;
    tx92: TXPLabel;
    tx93: TXPLabel;
    sp8: TMenuItem;
    tx202: TXPLabel;
    tx203: TXPLabel;
    tx204: TXPLabel;
    tx201: TXPLabel;
    GoToWebAddressEd: TXPEdit;
    GoToAddress: TSpeedButton;
    tx205: TXPLabel;
    tx17: TXPLabel;
    tx18: TXPLabel;
    tx94: TXPLabel;
    tx191: TXPLabel;
    N2: TMenuItem;
    N3: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    UpdateSetItem: TMenuItem;
    sp1: TMenuItem;
    SourceCodeItem: TMenuItem;
    sp13: TMenuItem;
    sp11: TMenuItem;
    sp5: TMenuItem;
    Find2: TLbSpeedButton;
    Find1: TLbSpeedButton;
    fr13: TPanel;
    SaveExitBt: TLbSpeedButton;
    ApplyBt: TLbSpeedButton;
    CancelBt: TLbSpeedButton;
    UndoBt: TLbSpeedButton;
    UpdateListBt: TLbSpeedButton;
    ScreenApplyBt: TLbSpeedButton;
    OtherBt: TLbSpeedButton;
    fr14: TXPGroupBox;
    tx78: TXPLabel;
    MyDocumentsBox: TComboBox;
    tx79: TXPLabel;
    MyComputerBox: TComboBox;
    tx80: TXPLabel;
    MyPictureBox: TComboBox;
    NewConnectionBox: TComboBox;
    tx84: TXPLabel;
    tx83: TXPLabel;
    ControlPanelBox: TComboBox;
    tx82: TXPLabel;
    MyMusicBox: TComboBox;
    UninstallBt: TLbSpeedButton;
    PageControl5: TPageControl;
    InstallPro: TTabSheet;
    Im36: TImage;
    tx215: TXPLabel;
    UninstallList: TListBox;
    RefreshBt: TLbSpeedButton;
    RegistryDelBt: TLbSpeedButton;
    tx176: TBevel;
    tx186: TBevel;
    tx198: TBevel;
    tx200: TBevel;
    tx207: TBevel;
    tx209: TBevel;
    tx216: TBevel;
    tx45: TBevel;
    tx51: TBevel;
    tx54: TBevel;
    tx56: TBevel;
    tx58: TBevel;
    tx60: TBevel;
    tx69: TBevel;
    tx72: TBevel;
    tx77: TBevel;
    tx86: TBevel;
    tx88: TBevel;
    tx214: TBevel;
    tx98: TBevel;
    tx100: TBevel;
    tx110: TBevel;
    tx245: TBevel;
    tx115: TBevel;
    tx133: TBevel;
    tx147: TBevel;
    tx150: TBevel;
    tx174: TBevel;
    tx2: TBevel;
    tx5: TBevel;
    tx7: TBevel;
    tx9: TBevel;
    tx11: TBevel;
    tx13: TBevel;
    tx15: TBevel;
    tx20: TBevel;
    tx26: TBevel;
    tx29: TBevel;
    tx33: TBevel;
    tx36: TBevel;
    tx217: TXPLabel;
    tx218: TBevel;
    ch146: TXPCheckBox;
    ch147: TXPCheckBox;
    ch148: TXPCheckBox;
    tx219: TXPLabel;
    tx220: TBevel;
    NameRecycleContextItem: TEdit;
    tx221: TXPLabel;
    tx222: TXPLabel;
    tx223: TXPLabel;
    AddToRecycleContext: TLbSpeedButton;
    tx224: TXPLabel;
    DeleteBoxFromRecycleContext: TComboBox;
    DelFromRecycleContext: TLbSpeedButton;
    AddFireTuningTweaker: TLbSpeedButton;
    DeleteItem: TMenuItem;
    SettingsControl: TTabSheet;
    tx225: TXPLabel;
    tx226: TBevel;
    Image2: TImage;
    ch149: TXPCheckBox;
    ch150: TXPCheckBox;
    ch152: TXPCheckBox;
    ch153: TXPCheckBox;
    ch154: TXPCheckBox;
    ch155: TXPCheckBox;
    ch156: TXPCheckBox;
    ch151: TXPCheckBox;
    Button5: TButton;
    SetPathToHTMLEditorBt: TLbSpeedButton;
    PathToHTMLEditorEd: TXPEdit;
    tx227: TXPLabel;
    DownLoadPathEd: TXPEdit;
    tx228: TXPLabel;
    LbSpeedButton2: TLbSpeedButton;
    CommandRecycleContextItem: TrmBtnEdit;
    tx246: TXPLabel;
    Button6: TButton;
    LbSpeedButton1: TLbSpeedButton;
    ChangeEditor: TXPEdit;
    HomePageItem: TMenuItem;
    SecondMailItem: TMenuItem;
    FirstMailItem: TMenuItem;
    procedure ProtectBtClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ClassHandleBtClick(Sender: TObject);
    procedure SystemBtClick(Sender: TObject);
    procedure DeskBtClick(Sender: TObject);
    procedure LicBtClick(Sender: TObject);
    procedure InfoBtClick(Sender: TObject);
    procedure AboutItemClick(Sender: TObject);
    procedure SysInfoItemClick(Sender: TObject);
    procedure QuitItemClick(Sender: TObject);
    procedure CenteredClick(Sender: TObject);
    procedure StretchedClick(Sender: TObject);
    procedure TiledClick(Sender: TObject);
    procedure WallpaperClick(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure Ch98Click(Sender: TObject);
    procedure NewWinItemClick(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure MagnifierMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure MagnifierMouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure Ch35Click(Sender: TObject);
    procedure tx48Click(Sender: TObject);
    procedure OptionsBtClick(Sender: TObject);
    procedure UtilsBtClick(Sender: TObject);
    procedure tx152Click(Sender: TObject);
    procedure tx153Click(Sender: TObject);
    procedure tx170Click(Sender: TObject);
    procedure tx169Click(Sender: TObject);
    procedure tx156Click(Sender: TObject);
    procedure tx162Click(Sender: TObject);
    procedure tx157Click(Sender: TObject);
    procedure tx158Click(Sender: TObject);
    procedure tx160Click(Sender: TObject);
    procedure tx168Click(Sender: TObject);
    procedure tx161Click(Sender: TObject);
    procedure tx155Click(Sender: TObject);
    procedure tx151Click(Sender: TObject);
    procedure tx159Click(Sender: TObject);
    procedure tx172Click(Sender: TObject);
    procedure tx171Click(Sender: TObject);
    procedure tx166Click(Sender: TObject);
    procedure tx165Click(Sender: TObject);
    procedure RunWinItemClick(Sender: TObject);
    procedure ChooseProItemClick(Sender: TObject);
    procedure PropItemClick(Sender: TObject);
    procedure OnDesktopItemClick(Sender: TObject);
    procedure OnStartMenuItemClick(Sender: TObject);
    procedure OnMenuProItemClick(Sender: TObject);
    procedure OnStartupItemClick(Sender: TObject);
    procedure OnFavoritesItemClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Ch83ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch84ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch85ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch86ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch87ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch88ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch89ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure ComboBox9ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch96ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch91ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch92ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch97ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch94ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure tx70ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure tx74ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch98ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch99ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch100ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch101ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch102ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch103ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch104ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure ComboBox10ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch109ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch110ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch111ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch112ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch113ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch114ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch115ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch116ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch117ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch118ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch119ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch120ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch121ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch122ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch123ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch124ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch125ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch126ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch127ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch128ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch129ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch130ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch131ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch132ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure MyDocumentsBoxContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure MyComputerBoxContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure MyPictureBoxContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure MyMusicBoxContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure ControlPanelBoxContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure NewConnectionBoxContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch133ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch134ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch135ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch136ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch137ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch138ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch139ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch140ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch141ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch142ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch143ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch144ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch145ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch14ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch45ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch46ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch47ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch52ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch53ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch54ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch55ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch56ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch57ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch60ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch61ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch62ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch63ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch64ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch65ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch66ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch67ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch68ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch69ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch73ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch74ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch76ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch77ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch78ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch79ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch80ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch81ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch82ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch70ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch71ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch72ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure ComboBox2ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch36ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch37ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure AddToComputerContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch42ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure ch2Click(Sender: TObject);
    procedure Ch95ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch90ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch93ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure tx61ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure tx66ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch48ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch50ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch51ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch58ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch59ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch75ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch105ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch108ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch107ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch106ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure ResItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ch4Click(Sender: TObject);
    procedure ch5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure ch8Click(Sender: TObject);
    procedure ch11Click(Sender: TObject);
    procedure ch13Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure ch16Click(Sender: TObject);
    procedure ch18Click(Sender: TObject);
    procedure Im36ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure OpenPicDlgCanClose(Sender: TObject;
    var CanClose: Boolean);
    procedure N34Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure CommandsClick(Sender: TObject);
    procedure EnergyClick(Sender: TObject);
    procedure PreviewClick(Sender: TObject);
    procedure InstallClick(Sender: TObject);
    procedure tx113Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure N55Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure tx167Click(Sender: TObject);
    procedure tx154Click(Sender: TObject);
    procedure tx164Click(Sender: TObject);
    procedure tx163Click(Sender: TObject);
    procedure tx151MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx152MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx153MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx154MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx155MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx156MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx157MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx158MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx159MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx160MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx161MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx162MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx163MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx164MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx165MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx166MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx167MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx168MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx169MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx170MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx171MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx172MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure Ch38ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch39ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch40ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch41ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure InetBtClick(Sender: TObject);
    procedure Ch34ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch33ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch20ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch21ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch22ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch23ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch24ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch25ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch26ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch27ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch28ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch30ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch31ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch32ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure Ch29ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure CommandsContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure WallpaperContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure ShutdownItemClick(Sender: TObject);
    procedure ReloadItemClick(Sender: TObject);
    procedure LoggOffItemClick(Sender: TObject);
    procedure MonitorOffItemClick(Sender: TObject);
    procedure ListEnter(Sender: TObject);
    procedure ListDblClick(Sender: TObject);
    procedure tx192Click(Sender: TObject);
    procedure UpdateListButtonClick(Sender: TObject);
    procedure tx202Click(Sender: TObject);
    procedure tx203Click(Sender: TObject);
    procedure tx34Click(Sender: TObject);
    procedure tx96Click(Sender: TObject);
    procedure tx113ContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure SwitchClick(Sender: TObject);
    procedure tx184Click(Sender: TObject);
    procedure Find1Click(Sender: TObject);
    procedure Find2Click(Sender: TObject);
    procedure tx194Click(Sender: TObject);
    procedure tx195Click(Sender: TObject);
    procedure tx196Click(Sender: TObject);
    procedure fr9MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx210Click(Sender: TObject);
    procedure tx211Click(Sender: TObject);
    procedure RusItemClick(Sender: TObject);
    procedure EngItemClick(Sender: TObject);
    procedure tx22Click(Sender: TObject);
    procedure tx24Click(Sender: TObject);
    procedure tx23Click(Sender: TObject);
    procedure tx95Click(Sender: TObject);
    procedure ApplicationEventsIdle(Sender: TObject; var Done: Boolean);
    procedure tx92Click(Sender: TObject);
    procedure tx93Click(Sender: TObject);
    procedure OpenDlgShow(Sender: TObject);
    procedure tx204Click(Sender: TObject);
    procedure GoToAddressClick(Sender: TObject);
    procedure tx17Click(Sender: TObject);
    procedure tx18Click(Sender: TObject);
    procedure tx94Click(Sender: TObject);
    procedure tx191Click(Sender: TObject);
    procedure SavePicDlgShow(Sender: TObject);
    procedure OpenPicDlgShow(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure UpdateSetItemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SourceCodeItemClick(Sender: TObject);
    procedure ApplyBtClick(Sender: TObject);
    procedure SaveExitBtClick(Sender: TObject);
    procedure UndoBtClick(Sender: TObject);
    procedure UpdateListBtClick(Sender: TObject);
    procedure ScreenApplyBtClick(Sender: TObject);
    procedure OtherBtClick(Sender: TObject);
    procedure UninstallBtClick(Sender: TObject);
    procedure RegistryDelBtClick(Sender: TObject);
    procedure UninstallListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RefreshBtClick(Sender: TObject);
    procedure GoToWebAddressEdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ch146ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure AddToRecycleContextClick(Sender: TObject);
    procedure NameRecycleContextItemChange(Sender: TObject);
    procedure CommandRecycleContextItemChange(Sender: TObject);
    procedure DelFromRecycleContextClick(Sender: TObject);
    procedure DeleteBoxFromRecycleContextCloseUp(Sender: TObject);
    procedure AddFireTuningTweakerClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ch149ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure SetPathToHTMLEditorBtClick(Sender: TObject);
    procedure tx227ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure DeleteBoxFromRecycleContextContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure LbSpeedButton2Click(Sender: TObject);
    procedure CommandRecycleContextItemBtn1Click(Sender: TObject);
    procedure UninstallListClick(Sender: TObject);
    procedure LbSpeedButton1Click(Sender: TObject);
    procedure HomePageItemClick(Sender: TObject);
    procedure SecondMailItemClick(Sender: TObject);
    procedure FirstMailItemClick(Sender: TObject);
  private
    { Private declarations }
    r: Tregistry;
    LinkFile:IPersistFile;
    ShellObject:IUnknown;
    ShellLink:IShellLink;
    FileName,ShortcutPosition:string;
    WShortcutPosition:WideString;
    P:PItemIDList;
    S: string;
    DC : hDC;
    Ini: TIniFile;
    capture: Boolean;
    Icon: TNotifyIconData;
    hMutex, SM: HWND;
    reg:TRegistry;
    C:array[0..1000] of char;
    i: integer;
    Sc: array[0..255] of TdevMode;
    NameUser: array[0..255] of char;
    Size: DWord;
    procedure ShowHint(Sender: TObject);
    procedure ShowHwndAndClassName(CrPos: TPoint);
    procedure ChangeMessageBoxPosition(var Msg: TMessage);
    message AlignCenter;
    procedure JumpToKey(Key: string);
    procedure ApplicationMinimized(Sender: TObject);
    procedure MySystemTray(var MySysTray: TMessage);
    message Tray;
    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;
    procedure MySystemMenu(var MySysMenu: TWmSysCommand);
    message Wm_SysCommand;
    procedure CMMouseLeave(var msg: TMessage);
    message CM_MOUSELEAVE;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  msgCaption: PChar;

implementation

uses AP, WP;

 type
   POpenFilenameA = ^TOpenFilenameA;
   POpenFilename = POpenFilenameA;
   tagOFNA = packed record
   lStructSize: DWORD;
   hWndOwner: HWND;
   hInstance: HINST;
   lpstrFilter: PAnsiChar;
   lpstrCustomFilter: PAnsiChar;
   nMaxCustFilter: DWORD;
   nFilterIndex: DWORD;
   lpstrFile: PAnsiChar;
   nMaxFile: DWORD;
   lpstrFileTitle: PAnsiChar;
   nMaxFileTitle: DWORD;
   lpstrInitialDir: PAnsiChar;
   lpstrTitle: PAnsiChar;
   Flags: DWORD;
   nFileOffset: Word;
   nFileExtension: Word;
   lpstrDefExt: PAnsiChar;
   lCustData: LPARAM;
   lpfnHook: function(Wnd: HWND; Msg: UINT; wParam: WPARAM; lParam: LPARAM): UINT stdcall;
   lpTemplateName: PAnsiChar;
   end;
   TOpenFilenameA = tagOFNA;
   TOpenFilename = TOpenFilenameA;

   function GetOpenFileName(var OpenFile: TOpenFilename): Bool; stdcall; external 'comdlg32.dll'
   name 'GetOpenFileNameA';
   function GetSaveFileName(var OpenFile: TOpenFilename): Bool; stdcall; external 'comdlg32.dll'
   name 'GetSaveFileNameA';

  const
   OFN_DONTADDTORECENT = $02000000;
   OFN_FILEMUSTEXIST = $00001000;
   OFN_HIDEREADONLY = $00000004;
   OFN_PATHMUSTEXIST = $00000800;

 function CharReplace(const Source: string; oldChar, newChar: Char): string;
 var
 i: Integer;
 begin
 Result := Source;
 for i := 1 to Length(Result) do
 if Result[i] = oldChar then
 Result[i] := newChar;
 end;

{$R *.dfm}

type
PSHQueryRBInfo = ^TSHQueryRBInfo;
TSHQueryRBInfo = packed record
cbSize: DWORD;
i64Size: Int64;
i64NumItems: Int64;
end;
const
shell32 = 'shell32.dll';

function SHQueryRecycleBin(szRootPath: PChar; SHQueryRBInfo: PSHQueryRBInfo): HResult;
stdcall; external shell32 Name 'SHQueryRecycleBinA';

function GetDllVersion(FileName: string): Integer;
var
InfoSize, Wnd: DWORD;
VerBuf: Pointer;
FI: PVSFixedFileInfo;
VerSize: DWORD;
begin
Result   := 0;
InfoSize := GetFileVersionInfoSize(PChar(FileName), Wnd);
if InfoSize <> 0 then
begin
GetMem(VerBuf, InfoSize);
try
if GetFileVersionInfo(PChar(FileName), Wnd, InfoSize, VerBuf) then
if VerQueryValue(VerBuf, '\', Pointer(FI), VerSize) then
Result := FI.dwFileVersionMS;
finally
FreeMem(VerBuf);
end;
end;
end;

function OpenSaveFileDialog(ParentHandle: THandle; const DefExt, Filter, InitialDir, Title: string; var FileName: string; IsOpenDialog: Boolean): Boolean;
var
ofn: TOpenFileName;
szFile: array[0..MAX_PATH] of Char;
begin
Result := False;
FillChar(ofn, SizeOf(TOpenFileName), 0);
with ofn do
begin
lStructSize := SizeOf(TOpenFileName);
hwndOwner := ParentHandle;
lpstrFile := szFile;
nMaxFile := SizeOf(szFile);
if (Title <> '') then
lpstrTitle := PChar(Title);
if (InitialDir <> '') then
lpstrInitialDir := PChar(InitialDir);
StrPCopy(lpstrFile, FileName);
lpstrFilter := PChar(CharReplace(Filter, '|', #0)+#0#0);
if DefExt <> '' then
lpstrDefExt := PChar(DefExt);
end;
if IsOpenDialog then
begin
if GetOpenFileName(ofn) then
begin
Result := True;
FileName := StrPas(szFile);
end;
end else
begin
if GetSaveFileName(ofn) then
begin
Result := True;
FileName := StrPas(szFile);
end;
end
end;

function NTor9x: boolean;
begin
Result := GetVersion < $80000000;
end;

function GetIEVersion(Key: string): string;
var
R: TRegistry;
begin
R := TRegistry.Create;
try
R.RootKey := HKEY_LOCAL_MACHINE;
R.OpenKey('Software\Microsoft\Internet Explorer', False);
try
Result := R.ReadString(Key);
except
Result := '';
end;
R.CloseKey;
finally
R.Free;
end;
end;

procedure CleanerListRecycleBinContextMenu;
var
r: Tregistry;
begin
R:=TRegistry.Create;
R.RootKey:=HKEY_CLASSES_ROOT;
R.OpenKey('\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\Shell\', False);
R.GetKeyNames(MainForm.DeleteBoxFromRecycleContext.Items);
MainForm.DeleteBoxFromRecycleContext.Sorted:=true;
end;

function GetMACAdress: string;
var
NCB: PNCB;
Adapter: PAdapterStatus;
RetCode: char;
I: integer;
Lenum: PlanaEnum;
SystemID: string;
begin
Result := '';
SystemID := '';
Getmem(NCB, SizeOf(TNCB));
Fillchar(NCB^, SizeOf(TNCB), 0);
Getmem(Lenum, SizeOf(TLanaEnum));
Fillchar(Lenum^, SizeOf(TLanaEnum), 0);
Getmem(Adapter, SizeOf(TAdapterStatus));
Fillchar(Adapter^, SizeOf(TAdapterStatus), 0);
Lenum.Length := chr(0);
NCB.ncb_command := chr(NCBENUM);
NCB.ncb_buffer := Pointer(Lenum);
NCB.ncb_length := SizeOf(Lenum);
RetCode := Netbios(NCB);
i := 0;
repeat
Fillchar(NCB^, SizeOf(TNCB), 0);
Ncb.ncb_command  := chr(NCBRESET);
Ncb.ncb_lana_num := lenum.lana[I];
RetCode          := Netbios(Ncb);
Fillchar(NCB^, SizeOf(TNCB), 0);
Ncb.ncb_command  := chr(NCBASTAT);
Ncb.ncb_lana_num := lenum.lana[I];
Ncb.ncb_callname := '*               ';
Ncb.ncb_buffer := Pointer(Adapter);
Ncb.ncb_length := SizeOf(TAdapterStatus);
RetCode        := Netbios(Ncb);
if (RetCode = chr(0)) or (RetCode = chr(6)) then
begin
SystemId := IntToHex(Ord(Adapter.adapter_address[0]), 2) + '-' +
IntToHex(Ord(Adapter.adapter_address[1]), 2) + '-' +
IntToHex(Ord(Adapter.adapter_address[2]), 2) + '-' +
IntToHex(Ord(Adapter.adapter_address[3]), 2) + '-' +
IntToHex(Ord(Adapter.adapter_address[4]), 2) + '-' +
IntToHex(Ord(Adapter.adapter_address[5]), 2);
end;
Inc(i);
until (I >= Ord(Lenum.Length)) or (SystemID <> '00-00-00-00-00-00');
FreeMem(NCB);
FreeMem(Adapter);
FreeMem(Lenum);
GetMacAdress := SystemID;
end;

function MyExitWindows(RebootParam: Longword): Boolean;
var 
TTokenHd: THandle;
TTokenPvg: TTokenPrivileges;
cbtpPrevious: DWORD;
rTTokenPvg: TTokenPrivileges;
pcbtpPreviousRequired: DWORD;
tpResult: Boolean;
const 
SE_SHUTDOWN_NAME = 'SeShutdownPrivilege';
begin 
if Win32Platform = VER_PLATFORM_WIN32_NT then
begin
tpResult := OpenProcessToken(GetCurrentProcess(),
TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY,
TTokenHd);
if tpResult then
begin
tpResult := LookupPrivilegeValue(nil,
SE_SHUTDOWN_NAME,
TTokenPvg.Privileges[0].Luid);
TTokenPvg.PrivilegeCount := 1;
TTokenPvg.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;
cbtpPrevious := SizeOf(rTTokenPvg);
pcbtpPreviousRequired := 0;
if tpResult then
Windows.AdjustTokenPrivileges(TTokenHd, False,
TTokenPvg, cbtpPrevious, rTTokenPvg, pcbtpPreviousRequired);
end;
end;
Result := ExitWindowsEx(RebootParam, 0);
end;

procedure TMainForm.JumpToKey(Key: string);
var
i, n: Integer;
hWin: HWND;
ExecInfo: ShellExecuteInfoA;
begin
hWin := FindWindowA(PChar('RegEdit_RegEdit'), nil);
if hWin = 0 then
begin
FillChar(ExecInfo, 60, #0);
with ExecInfo do
begin
cbSize := 60;
fMask  := SEE_MASK_NOCLOSEPROCESS;
lpVerb := PChar('open');
lpFile := PChar('regedit.exe');
nShow  := 1;
end;
ShellExecuteExA(@ExecInfo);
WaitForInputIdle(ExecInfo.hProcess, 200);
hWin := FindWindowA(PChar('RegEdit_RegEdit'), nil);
end;
ShowWindow(hWin, SW_SHOWNORMAL);
hWin := FindWindowExA(hWin, 0, PChar('SysTreeView32'), nil);
SetForegroundWindow(hWin);
i := 30;
repeat
SendMessageA(hWin, WM_KEYDOWN, VK_LEFT, 0);
Dec(i);
until i = 0;
SendMessageA(hWin, WM_KEYDOWN, VK_RIGHT, 0);
i := 1;
n := Length(Key);
repeat
if Key[i] = '\' then
begin
SendMessageA(hWin, WM_KEYDOWN, VK_RIGHT, 0);
end
else
SendMessageA(hWin, WM_CHAR, Integer(Key[i]), 0);
i := i + 1;
until i = n;
end;

procedure TMainForm.ChangeMessageBoxPosition(var Msg: TMessage);
var
MbHwnd: longword;
MbRect: TRect;
x, y, w, h: integer;
begin
MbHwnd := FindWindow(MAKEINTRESOURCE(WC_DIALOG), msgCaption);
if (MbHwnd <> 0) then
begin
GetWindowRect(MBHWnd, MBRect);
with MbRect do
begin
w := Right - Left;
h := Bottom - Top;
end;
x := MainForm.Left + ((MainForm.Width - w) div 2);
if x < 0 then
x := 0
else if x + w > Screen.Width then x := Screen.Width - w;
y := MainForm.Top + ((MainForm.Height - h) div 2);
if y < 0 then y := 0
else if y + h > Screen.Height then y := Screen.Height - h;
SetWindowPos(MBHWnd, 0, x, y, 0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);
end;
end;

function WhichLanguage:string;
var
ID: LangID;
Language: array [0..100] of char;
begin
ID := GetSystemDefaultLangID;
VerLanguageName(ID, Language, 100);
Result := string(Language);
end;

procedure ShowPropertiesDialog(FName: string);
var
SExInfo: TSHELLEXECUTEINFO;
begin
ZeroMemory(Addr(SExInfo),SizeOf(SExInfo));
SExInfo.cbSize := SizeOf(SExInfo);
SExInfo.lpFile := PChar(FName);
SExInfo.lpVerb := 'properties';
SExInfo.fMask  := SEE_MASK_INVOKEIDLIST;
ShellExecuteEx(Addr(SExInfo));
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
var 
rPos: TPoint; var
Cursor: TPoint;
begin
if Boolean(GetCursorPos(rPos)) then ShowHwndAndClassName(rPos);
GetCursorPos(Cursor);
ed1.Text :=
'X= ' + IntToStr(Cursor.X) + ', Y='+ IntToStr(Cursor.Y);
end;

procedure TMainForm.ProtectBtClick(Sender: TObject);
begin
NoteBook.ActivePage := 'ProtectPage';
if RusItem.Checked then
tx212.Caption := 'Текущая группа: ' + 'Защита';
if EngItem.Checked then
tx212.Caption := 'Current group: ' + 'Protect';
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
Res: word;
PRes: PChar;
nchar, i: integer;
buf: array[0..255] of char;
s, c:string;
Memory: TMemoryStatus;
BuffSize: Integer;
Entries: Integer;
Entry: Array[1..MaxEntries] of TRasEntryName;
X,Result_: Integer;
AllEntries: TStrings;
Name: array[0..255] of char;
size: dword;
begin
CleanerListRecycleBinContextMenu;
Combobox1.Items := Printer.Printers;
Combobox1.ItemIndex := 0;
AllEntries:=TStringList.Create;
ListConnections.Clear;
Entry[1].dwSize:=SizeOf(TRasEntryName);
BuffSize:=SizeOf(TRasEntryName)*MaxEntries;
Result_:=RasEnumEntries(nil, nil, @Entry[1], BuffSize, Entries);
If (Result_=0) and (Entries>0) then
Begin
For X:=1 To Entries Do
Begin
ListConnections.Items.Add(Entry[x].szEntryName);
AllEntries.Add(Entry[x].szEntryName);
End;
End;
AllEntries.Free;
try
Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.Ini'));
Left := Ini.ReadInteger('Parameters', 'Left', 100);
Top := Ini.ReadInteger('Parameters', 'Top', 100);
ch1.Checked := Ini.ReadBool('Parameters', 'Open key in RegEdit', ch1.Checked);
ch2.Checked := Ini.ReadBool('Parameters', 'Always on top', ch2.Checked);
ch3.Checked := Ini.ReadBool('Parameters', 'Save window position', ch3.Checked);
ch4.Checked := Ini.ReadBool('Parameters', 'Forbid multiple', ch4.Checked);
ch5.Checked := Ini.ReadBool('Parameters', 'Main menu', ch5.Checked);
ch6.Checked := Ini.ReadBool('Parameters', 'Minimized to system tray', ch6.Checked);
ch7.Checked := Ini.ReadBool('Parameters', 'Minimized on pressing Escape', ch7.Checked);
ch8.Checked := Ini.ReadBool('Parameters', 'Use of XP menu', ch8.Checked);
ch9.Checked := Ini.ReadBool('Parameters', 'Animate window on opening and closing', ch9.Checked);
ch10.Checked := Ini.ReadBool('Parameters', 'Confirmation exit', ch10.Checked);
ch11.Checked := Ini.ReadBool('Parameters', 'Run with Windows OS startup', ch11.Checked);
ch12.Checked := Ini.ReadBool('Parameters', 'Show other windows in the Task Bar', ch12.Checked);
ch13.Checked := Ini.ReadBool('Parameters', 'Images in the menu', ch13.Checked);
ch15.Checked := Ini.ReadBool('Parameters', 'Move window of area', ch15.Checked);
ch16.Checked := Ini.ReadBool('Parameters', 'Screen snap', ch16.Checked);
ch17.Checked := Ini.ReadBool('Parameters', 'Windows only area', ch17.Checked);
ch18.Checked := Ini.ReadBool('Parameters', 'Status bar', ch18.Checked);
ch19.Checked := Ini.ReadBool('Parameters', 'Show hint in the status bar', ch19.Checked);
RusItem.Checked := Ini.ReadBool('Parameters', 'Russian interface', RusItem.Checked);
EngItem.Checked := Ini.ReadBool('Parameters', 'English interface', EngItem.Checked);
except;
end;
with Icon do begin
wnd := Handle;
szTip := 'FireTuning Tweaker v 1.0';
hIcon := Application.Icon.Handle;
uCallBackMessage := Tray;
uFlags := nif_Tip + nif_Message + nif_Icon;
end;
Application.OnMinimize := ApplicationMinimized; 
Application.OnHint := ShowHint;
hMutex := CreateMutex(nil, true , 'FireTuning Tweaker v 1.0');
if GetLastError = ERROR_ALREADY_EXISTS then
if ch4.Checked then
halt;
GlobalMemoryStatus(Memory);
tx140.Caption :=
FormatFloat('#,###" kb"', Memory.dwTotalPhys / 1024);
tx141.Caption :=
Format('%d %%', [Memory.dwMemoryLoad]);
tx142.Caption :=
Format('%0.0f mb',[Memory.dwAvailPageFile div 1024 / 1024]);
tx143.Caption :=
Format('%0.0f mb',[Memory.dwTotalPageFile div 1024 / 1024]);
tx144.Caption :=
Format('%0.0f mb',[Memory.dwTotalPhys div 1024 / 1024]);
tx145.Caption :=
Format('%0.3f mb',[Memory.dwAvailPhys div 1024 / 1024]);
//User Name
Size := 55;
if GetUserName(Name, size) then
Edit4.Text := Name;
//Organization
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion',false)then
edit7.Text := reg.ReadString('RegisteredOrganization') else
edit7.Text := '';
//Operation system
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion',false)then
edit5.Text := reg.ReadString('ProductName') else
edit5.Text := '';
//Build
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion',false)then
edit6.Text := reg.ReadString('BuildLab') else
edit6.Text := '';
//Serial number of product
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion',false)then
ed6.Text := reg.ReadString('ProductId') else
ed6.Text := '';
//System folder
PRes := StrAlloc(255);
Res := GetWindowsDirectory(PRes, 255);
if Res > 0 then ed7.Text := StrPas(PRes);
//System dictionary
Res := GetSystemDirectory(PRes, 255);
if Res > 0 then ed8.Text := StrPas(PRes);
//type of core
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion',false) then
ed9.Text := reg.ReadString('CurrentType') else
ed9.Text := '';
//Version of BIOS
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('HARDWARE\DESCRIPTION\System',false) then
nchar := reg.ReadBinaryData('SystemBiosVersion', buf, 256) - 1;
S := '';
for i:=0 to nchar do begin
if buf[i] = #0
then S := S + ' '
else S := S + buf[i];
ed10.Text := (S);
//Date of BIOS
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('HARDWARE\DESCRIPTION\System',false)then
ed11.Text := (reg.ReadString('SystemBiosDate')) else
ed11.Text := '';
//Processor and model of processor
reg := TRegistry.Create;
reg.RootKey := HKEY_LOCAL_MACHINE;
if reg.OpenKey('HARDWARE\DESCRIPTION\System\CentralProcessor\0',false)then
ed12.Text := reg.ReadString('ProcessorNameString');
ed13.Text := reg.ReadString('Identifier');
ed14.Text := WhichLanguage;
end;
List.Items.clear;
i := 0;
while EnumDisplaySettings(nil, i, Sc[i]) do
begin
List.Items.add(inttostr(Sc[i].dmBitsperpel)+' Bit(s) '+
Inttostr(Sc[i].dmPelsWidth)+'  '+
inttostr(Sc[i].dmPelsHeight)+ ' - Gh '+
inttostr(Sc[i].dmDisplayFrequency));
inc(i);
if RusItem.Checked then
tx105.Caption := IntToStr(Screen.Width) + ' на ' + IntToStr(Screen.Height) + ' точек';
if EngItem.Checked then
tx105.Caption := IntToStr(Screen.Width) + ' on ' + IntToStr(Screen.Height) + ' points';
DC := CreateDC('DISPLAY',nil,nil,nil);
tx107.Caption := IntToStr(GetDeviceCaps(DC,BITSPIXEL));
tx108.Caption := IntToStr(GetDeviceCaps(DC,PLANES));
if RusItem.Checked then
begin
case GetDeviceCaps(DC,BITSPIXEL) of
8  : c := '256 цветов';
15 : c := 'Hi-Color/32768 цветов';
16 : c := 'Hi-Color/65536 цветов';
24 : c := 'True-Color/16 млн цветов';
32 : c := 'True-Color/32 бит';
end;
end;
if EngItem.Checked then
begin
case GetDeviceCaps(DC,BITSPIXEL) of
8  : c := '256 colours';
15 : c := 'Hi-Color/32768 colours';
16 : c := 'Hi-Color/65536 colours';
24 : c := 'True-Color/16 mil colours';
32 : c := 'True-Color/32 bit';
end;
end;
if RusItem.Checked then
tx106.Caption := c;
if EngItem.Checked then
tx106.Caption := c;
DeleteDC(DC);
end;
// Загрузка списка установленных программы
R:=TRegistry.Create;
R.RootKey:=HKEY_LOCAL_MACHINE;
R.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Uninstall', False);
R.GetKeyNames(UninstallList.Items);
UninstallList.Sorted := True;
R.CloseKey;
R.Free;
end;

procedure TMainForm.ClassHandleBtClick(Sender: TObject);
begin
NoteBook.ActivePage := 'ClassHandlePage';
if RusItem.Checked then
tx212.Caption := 'Текущая группа: ' + 'Class Handle';
if EngItem.Checked then
tx212.Caption := 'Current group: ' + 'Class Handle';
end;

procedure TMainForm.SystemBtClick(Sender: TObject);
begin
NoteBook.ActivePage := 'SystemPage';
if RusItem.Checked then
tx212.Caption := 'Текущая группа: ' + 'Система';
if EngItem.Checked then
tx212.Caption := 'Current group: ' + 'System';
end;

procedure TMainForm.DeskBtClick(Sender: TObject);
begin
NoteBook.ActivePage := 'DesktopPage';
if RusItem.Checked then
tx212.Caption := 'Текущая группа: ' + 'Рабочий стол';
if EngItem.Checked then
tx212.Caption := 'Current group: ' + 'Desktop';
end;

procedure TMainForm.LicBtClick(Sender: TObject);
begin
NoteBook.ActivePage := 'LicensePage';
if RusItem.Checked then
tx212.Caption := 'Текущая группа: ' + 'Лицензионное соглашение';
if EngItem.Checked then
tx212.Caption := 'Current group: ' + 'License Agreement';
end;

procedure TMainForm.InfoBtClick(Sender: TObject);
begin
NoteBook.ActivePage := 'InfoPage';
if RusItem.Checked then
tx212.Caption := 'Текущая группа: ' + 'Информация о компьютере';
if EngItem.Checked then
tx212.Caption := 'Current group: ' + 'Information of computer';
end;

procedure TMainForm.AboutItemClick(Sender: TObject);
begin
AboutForm.Position := poMainFormCenter;
AboutForm.ShowModal;
end;

procedure TMainForm.SysInfoItemClick(Sender: TObject);
begin
ShellExecute(handle, nil, 'msInfo32', nil,nil, Sw_ShowNormal);
end;

procedure TMainForm.QuitItemClick(Sender: TObject);
begin
Close;
end;

function GetDomainName: AnsiString;
type
WKSTA_INFO_100 = record
wki100_platform_id: Integer;
wki100_computername: PWideChar;
wki100_langroup: PWideChar;
wki100_ver_major: Integer;
wki100_ver_minor: Integer;
end;
WKSTA_USER_INFO_1 = record
wkui1_username: PChar;
wkui1_logon_domain: PChar;
wkui1_logon_server: PChar;
wkui1_oth_domains: PChar;
end;
type
TWin95_NetUserGetInfo = function(ServerName, UserName: PChar; Level: DWORD; var
BfrPtr: Pointer): Integer;
stdcall;
TWin95_NetApiBufferFree = function(BufPtr: Pointer): Integer;
stdcall;
TWin95_NetWkstaUserGetInfo = function(Reserved: PChar; Level: Integer; var
BufPtr: Pointer): Integer;
stdcall;
TWinNT_NetWkstaGetInfo = function(ServerName: PWideChar; level: Integer; var
BufPtr: Pointer): Integer;
stdcall;
TWinNT_NetApiBufferFree = function(BufPtr: Pointer): Integer;
stdcall;

function IsWinNT: Boolean;
var
VersionInfo: TOSVersionInfo;
begin
VersionInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
Result := GetVersionEx(VersionInfo);
if Result then
Result := VersionInfo.dwPlatformID = VER_PLATFORM_WIN32_NT;
end;
var
Win95_NetUserGetInfo: TWin95_NetUserGetInfo;
Win95_NetWkstaUserGetInfo: TWin95_NetWkstaUserGetInfo;
Win95_NetApiBufferFree: TWin95_NetApiBufferFree;
WinNT_NetWkstaGetInfo: TWinNT_NetWkstaGetInfo;
WinNT_NetApiBufferFree: TWinNT_NetApiBufferFree;
WSNT: ^WKSTA_INFO_100;
WS95: ^WKSTA_USER_INFO_1;
EC: DWORD;
hNETAPI: THandle;
begin
try
Result := '';
if IsWinNT then
begin
hNETAPI := LoadLibrary('NETAPI32.DLL');
if hNETAPI <> 0 then
begin @WinNT_NetWkstaGetInfo := GetProcAddress(hNETAPI, 'NetWkstaGetInfo');
@WinNT_NetApiBufferFree  := GetProcAddress(hNETAPI, 'NetApiBufferFree');
EC := WinNT_NetWkstaGetInfo(nil, 100, Pointer(WSNT));
if EC = 0 then
begin
Result := WideCharToString(WSNT^.wki100_langroup);
WinNT_NetApiBufferFree(Pointer(WSNT));
end;
end;
end
else
begin
hNETAPI := LoadLibrary('RADMIN32.DLL');
if hNETAPI <> 0 then
begin @Win95_NetApiBufferFree := GetProcAddress(hNETAPI, 'NetApiBufferFree');
@Win95_NetUserGetInfo := GetProcAddress(hNETAPI, 'NetUserGetInfoA');
EC := Win95_NetWkstaUserGetInfo(nil, 1, Pointer(WS95));
if EC = 0 then
begin
Result := WS95^.wkui1_logon_domain;
Win95_NetApiBufferFree(Pointer(WS95));
end;
end;
end;
finally
if hNETAPI <> 0 then
FreeLibrary(hNETAPI);
end;
end;

procedure TMainForm.CenteredClick(Sender: TObject);
var
Update: Cardinal;
TileWallpaper, WallpaperStyle: string;
begin
reg.RootKey := HKEY_CURRENT_USER;
Update := SPIF_UPDATEINIFILE;
TileWallpaper := '0';
WallpaperStyle := '0';
reg.OpenKey('Control Panel\Desktop',false);
reg.WriteString('TileWallpaper', TileWallpaper);
reg.WriteString('WallpaperStyle', WallpaperStyle);
reg.CloseKey;
SystemParametersInfo(SPI_SETDESKWALLPAPER, 0,
PChar(OpenPicDlg.FileName), Update);
end;

procedure TMainForm.StretchedClick(Sender: TObject);
var
Update: Cardinal;
TileWallpaper, WallpaperStyle: string;
begin
reg := reg.Create;
reg.RootKey := HKEY_CURRENT_USER;
Update := SPIF_UPDATEINIFILE;
TileWallpaper := '0';
WallpaperStyle := '2';
reg.OpenKey('Control Panel\Desktop',false);
reg.WriteString('TileWallpaper', TileWallpaper);
reg.WriteString('WallpaperStyle', WallpaperStyle);
reg.CloseKey;
SystemParametersInfo(SPI_SETDESKWALLPAPER, 0,
PChar(OpenPicDlg.FileName), Update);
end;

procedure TMainForm.TiledClick(Sender: TObject);
var
Update: Cardinal;
TileWallpaper, WallpaperStyle: string;
begin
reg.RootKey := HKEY_CURRENT_USER;
Update := SPIF_UPDATEINIFILE;
TileWallpaper := '1';
WallpaperStyle := '0';
reg.OpenKey('Control Panel\Desktop',false);
reg.WriteString('TileWallpaper', TileWallpaper);
reg.WriteString('WallpaperStyle', WallpaperStyle);
reg.CloseKey;
SystemParametersInfo(SPI_SETDESKWALLPAPER, 0,
PChar(OpenPicDlg.FileName), Update);
end;

procedure TMainForm.WallpaperClick(Sender: TObject);
begin
WallpaperMenu.Popup(MainForm.Left + 3, MainForm.Top + 22);
end;

procedure TMainForm.N9Click(Sender: TObject);
begin
NoteBook.ActivePage := '9';
end;

procedure TMainForm.Ch98Click(Sender: TObject);
begin
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon', False);
if Ch98.Checked then
begin
Edit1.Enabled := True;
Edit2.Enabled := True;
R.WriteString('LegalNoticeCaption', Edit1.Text);
R.WriteString('LegalNoticeText', Edit2.Text);
end else
begin
Edit1.Enabled := False;
Edit2.Enabled := False;
R.DeleteValue('LegalNoticeCaption');
R.DeleteValue('LegalNoticeText');
end;
CloseKey;
Free;
end;
end;

procedure TMainForm.NewWinItemClick(Sender: TObject);
var
PC: array[0..255] of char;
S: String;
begin
{$ifdef Windows}
WinExec(StrPCopy(PC, ParamStr(0)+' '+S), Sw_Show);
{$else}
WinExec(StrPCopy(PC, ParamStr(0)+' "'+S+'"'), Sw_Show);
{$endif}
end;

procedure TMainForm.Edit7Change(Sender: TObject);
begin
r := TRegistry.Create;
r.RootKey := HKEY_LOCAL_MACHINE;
if r.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion',True)then
r.WriteString('RegisteredOrganization', Edit7.Text);
end;

procedure TMainForm.MagnifierMouseDown(Sender: TObject;
Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
MouseCapture := True;
Capture := True;
Timer1.Enabled := True;
end;

procedure TMainForm.MagnifierMouseUp(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
MouseCapture := False;
Capture := False;
Timer1.Enabled := False;
end;

procedure TMainForm.ShowHwndAndClassName(CrPos: TPoint);
var
hWnd: THandle;
aName: array [0..255] of Char;
Title: string;
begin
hWnd := WindowFromPoint(CrPos);
ed5.Text := IntToStr(hWnd);
if Boolean(GetClassName(hWnd, aName, 256)) then
ed4.Text := string(aName)
else
ed4.Text := 'Class not found';
SetLength (Title, 100);
GetWindowText (hWnd, PChar (Title), 100);
ed3.Text := string(PChar(Title));
ed2.Text := IntToHex (hWnd, 8);
end;

procedure TMainForm.FormMouseUp(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
Magnifier.Perform (
wm_LButtonUp, mk_LButton, 0);
end;

procedure TMainForm.Ch35Click(Sender: TObject);
begin
Timer1.Enabled := not Timer1.Enabled;
end;

procedure TMainForm.tx48Click(Sender: TObject);
begin
WinExec('CONTROL.EXE nusrmgr.cpl',sw_ShowNormal);
end;

procedure TMainForm.OptionsBtClick(Sender: TObject);
begin
NoteBook.ActivePage := 'SettingsPage';
if RusItem.Checked then
tx212.Caption := 'Текущая группа: ' + 'Настройки';
if EngItem.Checked then
tx212.Caption := 'Current group: ' + 'Preferences';
end;

procedure TMainForm.UtilsBtClick(Sender: TObject);
begin
NoteBook.ActivePage := 'UtilsPage';
if RusItem.Checked then
tx212.Caption := 'Текущая группа: ' + 'Утилиты';
if EngItem.Checked then
tx212.Caption := 'Current group: ' + 'Utils';
end;

procedure TMainForm.tx152Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'taskschd.msc', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx153Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'DxDiag.exe', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx170Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'msInfo32.exe', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx169Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'RegEdit.exe', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx156Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'MsConfig.exe', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx162Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'cleanmgr.exe', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx157Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'dfrgui.exe', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx158Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'compmgmt.msc', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx160Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'Control.exe', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx168Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'colorcpl.exe', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx161Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'devmgmt.msc', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx155Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'hdwwiz.exe', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx151Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'perfmon.msc', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx159Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'rstrui.exe', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx172Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'taskmgr.exe', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx171Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'charmap.exe', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx166Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'MsPaint.exe', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx165Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'wordpad.exe', nil, nil, Sw_Restore);
end;

procedure RunFileDlgW(OwnerWnd: HWND; Icon: HICON; lpstrDirectory: PWideChar;
lpstrTitle: PWideChar; lpstrDescription: PWideChar; Flags: Longint); stdcall;
external 'Shell32.dll' Index 61;
procedure RunFileDlg(OwnerWnd: HWND; Icon: HICON; lpstrDirectory: PChar;
lpstrTitle: PChar; lpstrDescription: PChar; Flags: Longint); stdcall;
external 'Shell32.dll' Index 61;
const
RFF_NOBROWSE = 1; 
RFF_NODEFAULT = 2;
RFF_CALCDIRECTORY = 4;
RFF_NOLABEL = 8;
RFF_NOSEPARATEMEM = 14;
function ShowRunFileDialg(OwnerWnd: HWND; InitialDir, Title, Description: PChar;
flags: Integer; StandardCaptions: Boolean): Boolean;
var
TitleWideChar, InitialDirWideChar, DescriptionWideChar: PWideChar;
Size: Integer;
begin
if (Win32Platform = VER_PLATFORM_WIN32_NT) and not StandardCaptions then
begin
Size := SizeOf(WideChar) * MAX_PATH;
InitialDirWideChar := nil;
TitleWideChar := nil;
DescriptionWideChar := nil;
GetMem(InitialDirWideChar, Size);
GetMem(TitleWideChar, Size);
GetMem(DescriptionWideChar, Size);
StringToWideChar(InitialDir, InitialDirWideChar, MAX_PATH);
StringToWideChar(Title, TitleWideChar, MAX_PATH);
StringToWideChar(Description, DescriptionWideChar, MAX_PATH);
try
RunFileDlgW(OwnerWnd, 0, InitialDirWideChar, TitleWideChar, DescriptionWideChar, Flags);
finally
FreeMem(InitialDirWideChar);
FreeMem(TitleWideChar);
FreeMem(DescriptionWideChar);
end;
end else
RunFileDlg(OwnerWnd, 0, PChar(InitialDir), PChar(Title), PChar(Description), Flags);
end;

procedure TMainForm.ResItemClick(Sender: TObject);
begin
ShowWindow(Application.Handle, Sw_Show);
Application.Restore;
Shell_NotifyIcon(Nim_Delete, @Icon);
end;

procedure TMainForm.RunWinItemClick(Sender: TObject);
begin
ShowRunFileDialg(FindWindow('Shell_TrayWnd', nil), nil, nil, nil, RFF_NOBROWSE, True);
end;

procedure TMainForm.ChooseProItemClick(Sender: TObject);
begin
WinExec(Pchar('rundll32 shell32,OpenAs_RunDLL'),sw_Show);
end;

procedure TMainForm.PropItemClick(Sender: TObject);
begin
ShowPropertiesDialog(ParamStr(0));
end;

procedure TMainForm.OnDesktopItemClick(Sender: TObject);
begin
ShellObject:=CreateComObject(CLSID_ShellLink);
LinkFile:=ShellObject as IPersistFile;
ShellLink:=ShellObject as IShellLink;
FileName:=ParamStr(0);
ShellLink.SetPath(pchar(FileName));
ShellLink.SetWorkingDirectory(pchar(ExtractFilePath(FileName)));
if SHGetSpecialFolderLocation(Handle,CSIDL_DESKTOP,P)=NOERROR then begin
SHGetPathFromIDList(P,C);
ShortcutPosition:=StrPas(C);
s:= 'FireTuning Tweaker';
if RusItem.Checked then
begin
if not InputQuery('FireTuning Tweaker v 1.0',
'Вы хотите разместить ярлык на Рабочем Столе?', s)
then s := 'FireTuning Tweaker' else
ShortcutPosition:=ShortcutPosition+'\'+ S + '.lnk';
end;
if EngItem.Checked then
begin
if not InputQuery('FireTuning Tweaker v 1.0',
'Do you want a shortcut to your Desktop?', s)
then s := 'FireTuning Tweaker' else
ShortcutPosition:=ShortcutPosition+'\'+ S + '.lnk';
end;
WShortcutPosition:=ShortcutPosition;
LinkFile.Save(PWChar(WShortcutPosition),False);
end;
end;

procedure TMainForm.OnStartMenuItemClick(Sender: TObject);
begin
ShellObject:=CreateComObject(CLSID_ShellLink);
LinkFile:=ShellObject as IPersistFile;
ShellLink:=ShellObject as IShellLink;
FileName:=ParamStr(0);
ShellLink.SetPath(pchar(FileName));
ShellLink.SetWorkingDirectory(pchar(ExtractFilePath(FileName)));
if SHGetSpecialFolderLocation(Handle,CSIDL_STARTMENU,P)=NOERROR then begin
SHGetPathFromIDList(P,C);
ShortcutPosition:=StrPas(C);
s:= 'FireTuning Tweaker';
if RusItem.Checked then
begin
if not InputQuery('FireTuning Tweaker v 1.0',
'Вы хотите разместить ярлык в Главном Меню?', s)
then s := 'FireTuning Tweaker' else
ShortcutPosition:=ShortcutPosition+'\'+ S + '.lnk';
end;
if EngItem.Checked then
begin
if not InputQuery('FireTuning Tweaker',
'Do you want a shortcut to your Start Menu?', s)
then s := 'FireTuning Tweaker' else
ShortcutPosition:=ShortcutPosition+'\'+ S + '.lnk';
end;
WShortcutPosition:=ShortcutPosition;
LinkFile.Save(PWChar(WShortcutPosition),False);
end;
end;

procedure TMainForm.OnMenuProItemClick(Sender: TObject);
begin
ShellObject:=CreateComObject(CLSID_ShellLink);
LinkFile:=ShellObject as IPersistFile;
ShellLink:=ShellObject as IShellLink;
FileName:=ParamStr(0);
ShellLink.SetPath(pchar(FileName));
ShellLink.SetWorkingDirectory(pchar(ExtractFilePath(FileName)));
if SHGetSpecialFolderLocation(Handle,CSIDL_PROGRAMS,P)=NOERROR then begin
SHGetPathFromIDList(P,C);
ShortcutPosition:=StrPas(C);
s:= 'FireTuning Tweaker';
if RusItem.Checked then
begin
if not InputQuery('FireTuning Tweaker v 1.0',
'Вы хотите разместить ярлык в Меню Программы?', s)
then s := 'FireTuning Tweaker' else
ShortcutPosition:=ShortcutPosition+'\'+ S + '.lnk';
end;
if EngItem.Checked then
begin
if not InputQuery('FireTuning Tweaker v 1.0',
'Do you want a shortcut to your Programs Menu?', s)
then s := 'FireTuning Tweaker' else
ShortcutPosition:=ShortcutPosition+'\'+ S + '.lnk';
end;
WShortcutPosition:=ShortcutPosition;
LinkFile.Save(PWChar(WShortcutPosition),False);
end;
end;

procedure TMainForm.OnStartupItemClick(Sender: TObject);
begin
ShellObject:=CreateComObject(CLSID_ShellLink);
LinkFile:=ShellObject as IPersistFile;
ShellLink:=ShellObject as IShellLink;
FileName:=ParamStr(0);
ShellLink.SetPath(pchar(FileName));
ShellLink.SetWorkingDirectory(pchar(ExtractFilePath(FileName)));
if SHGetSpecialFolderLocation(Handle,CSIDL_STARTUP,P)=NOERROR then begin
SHGetPathFromIDList(P,C);
ShortcutPosition:=StrPas(C);
s:= 'FireTuning Tweaker';
if RusItem.Checked then
begin
if not InputQuery('FireTuning Tweaker v 1.0',
'Вы хотите разместить ярлык в папке Автозагрузки?', s)
then s := 'FireTuning Tweaker' else
ShortcutPosition:=ShortcutPosition+'\'+ S + '.lnk';
end;
if EngItem.Checked then
begin
if not InputQuery('FireTuning Tweaker v 1.0',
'Do you want a shortcut to your Startup folder?', s)
then s := 'FireTuning Tweaker' else
ShortcutPosition:=ShortcutPosition+'\'+ S + '.lnk';
end;
WShortcutPosition:=ShortcutPosition;
LinkFile.Save(PWChar(WShortcutPosition),False);
end;
end;

procedure TMainForm.OnFavoritesItemClick(Sender: TObject);
begin
ShellObject:=CreateComObject(CLSID_ShellLink);
LinkFile:=ShellObject as IPersistFile;
ShellLink:=ShellObject as IShellLink;
FileName:=ParamStr(0);
ShellLink.SetPath(pchar(FileName));
ShellLink.SetWorkingDirectory(pchar(ExtractFilePath(FileName)));
if SHGetSpecialFolderLocation(Handle,CSIDL_FAVORITES,P)=NOERROR then begin
SHGetPathFromIDList(P,C);
ShortcutPosition:=StrPas(C);
s:= 'FireTuning Tweaker';
if RusItem.Checked then
begin
if not InputQuery('FireTuning Tweaker v 1.0',
'Вы хотите разместить ярлык в Избранном?', s)
then s := 'FireTuning Tweaker' else
ShortcutPosition:=ShortcutPosition+'\'+ S + '.lnk';
end;
if EngItem.Checked then
begin
if not InputQuery('FireTuning Tweaker v 1.0',
'Do you want a shortcut to your Favorites?', s)
then s := 'FireTuning Tweaker' else
ShortcutPosition:=ShortcutPosition+'\'+ S + '.lnk';
end;
WShortcutPosition:=ShortcutPosition;
LinkFile.Save(PWChar(WShortcutPosition),False);
end;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if RusItem.Checked then
if Ch10.Checked then
CanClose :=
Application.MessageBox('Вы уверены, что хотите выйти из FireTuning Tweaker?',
'Подтверждение',
mb_IconQuestion + mb_YesNo) = mrYes;
if EngItem.Checked then
if Ch10.Checked then
CanClose :=
Application.MessageBox('Are you sure, what do you want to exit FireTuning Tweaker?',
'Confirmation',
mb_IconQuestion + mb_YesNo) = mrYes;
end;

procedure TMainForm.Edit1Change(Sender: TObject);
begin
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon', False);
R.WriteString('LegalNoticeCaption', Edit1.Text);
CloseKey;
Free;
end;
end;

procedure TMainForm.Edit2Change(Sender: TObject);
begin
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon', False);
if Ch98.Checked then
R.WriteString('LegalNoticeText', Edit2.Text);
CloseKey;
Free;
end;
end;

procedure TMainForm.Ch83ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug');
end;

procedure TMainForm.Ch84ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch85ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PCHealth\ErrorReporting');
end;

procedure TMainForm.Ch86ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Reliability');
end;

procedure TMainForm.Ch87ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management');
end;

procedure TMainForm.Ch88ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WOW');
end;

procedure TMainForm.Ch89ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters');
end;

procedure TMainForm.ComboBox9ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Windows');
end;

procedure TMainForm.Ch96ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch91ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch92ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch97ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch94ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.tx70ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.tx74ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Control Panel\Desktop');
end;

procedure TMainForm.Ch98ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon');
end;

procedure TMainForm.Ch99ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon');
end;

procedure TMainForm.Ch100ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System');
end;

procedure TMainForm.Ch101ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon');
end;

procedure TMainForm.Ch102ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System');
end;

procedure TMainForm.Ch103ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System');
end;

procedure TMainForm.Ch104ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_USERS\.DEFAULT\Control Panel\Keyboard');
end;

procedure TMainForm.ComboBox10ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_USERS\.DEFAULT\Keyboard Layout\Preload');
end;

procedure TMainForm.Ch109ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics');
end;

procedure TMainForm.Ch110ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Control Panel\Desktop');
end;

procedure TMainForm.Ch111ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch112ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch113ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon');
end;

procedure TMainForm.Ch114ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch115ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To');
end;

procedure TMainForm.Ch116ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To');
end;

procedure TMainForm.Ch117ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\Send To');
end;

procedure TMainForm.Ch118ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch119ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer');
end;

procedure TMainForm.Ch120ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch121ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch122ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch123ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch124ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch125ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch126ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch127ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch128ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch129ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch130ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch131ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch132ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.MyDocumentsBoxContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.MyComputerBoxContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.MyPictureBoxContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.MyMusicBoxContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.ControlPanelBoxContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.NewConnectionBoxContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch133ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch134ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch135ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch136ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch137ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch138ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch139ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch140ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch141ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch142ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch143ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch144ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch145ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
end;

procedure TMainForm.Ch14ContextPopup(Sender: TObject; MousePos: TPoint;
var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System');
end;

procedure TMainForm.Ch45ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System');
end;

procedure TMainForm.Ch46ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch47ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System');
end;

procedure TMainForm.Ch52ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch53ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch54ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch55ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch56ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch57ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch60ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Restrictions');
end;

procedure TMainForm.Ch61ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel');
end;

procedure TMainForm.Ch62ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel');
end;

procedure TMainForm.Ch63ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel');
end;

procedure TMainForm.Ch64ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel');
end;

procedure TMainForm.Ch65ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel');
end;

procedure TMainForm.Ch66ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel');
end;

procedure TMainForm.Ch67ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel');
end;

procedure TMainForm.Ch68ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel');
end;

procedure TMainForm.Ch69ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel');
end;

procedure TMainForm.Ch73ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch74ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch76ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch77ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch78ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch79ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch80ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch81ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch82ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch70ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Cdrom');
end;

procedure TMainForm.Ch71ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch72ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\SOFTWARE\Microsoft\MediaPlayer\Preferences');
end;

procedure TMainForm.ComboBox2ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\SOFTWARE\Microsoft\MediaPlayer\Preferences');
end;

procedure TMainForm.Ch36ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Control Panel\Desktop');
end;

procedure TMainForm.Ch37ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.AddToComputerContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey
('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{645FF040-5081-101B-9F08-00AA002F954E}');
end;

procedure TMainForm.Ch42ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu');
end;

procedure TMainForm.ch2Click(Sender: TObject);
begin
if ch2.Checked = False
then begin
SetWindowPos(Handle, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE+SWP_NOSIZE);
end else begin
SetWindowPos(Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE+SWP_NOSIZE);
ch2.Checked := true;
end;
end;

procedure TMainForm.Ch95ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch90ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch93ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.tx61ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Control Panel\Desktop\ForegroundLockTimeout');
end;

procedure TMainForm.tx66ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Control Panel\Desktop\ForegroundFlashCount');
end;

procedure TMainForm.Ch48ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch50ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa');
end;

procedure TMainForm.Ch51ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters');
end;

procedure TMainForm.Ch58ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch59ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch75ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
end;

procedure TMainForm.Ch105ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer');
end;

procedure TMainForm.Ch108ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer');
end;

procedure TMainForm.Ch107ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer');
end;

procedure TMainForm.Ch106ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer');
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
Shell_NotifyIcon(Nim_Delete, @Icon);
SM := GetSystemMenu(Handle, True);
MainForm.OnActivate := nil;
ApplicationEvents.Free;
ScreenSaveMenu.Free;
ImageMenu.Free;
WallpaperMenu.Free;
SavePicDlg.Free;
Timer1.Free;
IdIPWatch.Free;
ImageList1.Free;
ImageList2.Free;
DSCollapsePanel.Free;
NoteBook.Free;
OpenDlg.Free;
OpenPicDlg.Free;
MainMenu.Free;
TrayMenu.Free;
StatusBar.Free;
PageControl1.Free;
PageControl2.Free;
PageControl3.Free;
PageControl4.Free;
Ini.Free;
DeleteFile('iphist.dat');
end;

procedure TMainForm.ApplicationMinimized(Sender: TObject);
begin
if ch6.Checked then
begin
ShowWindow(Application.Handle, Sw_Hide);
Shell_NotifyIcon(Nim_Add, @Icon);
end;
end;

procedure TMainForm.MySystemTray(var MySysTray: TMessage);
var
Ico: TPoint;
begin
case MySysTray.LParam of
wm_LButtonDblClk:
begin
ShowWindow(Application.Handle, Sw_Show);
Application.Restore;
Shell_NotifyIcon(Nim_Delete, @Icon);
end;
wm_RButtonDown:
begin
SetForegroundWindow(Handle);
GetCursorPos(Ico);
TrayMenu.Popup(Ico.X, Ico.Y);
end;
end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Ini.WriteBool('Parameters', 'Open key in RegEdit', ch1.Checked);
Ini.WriteBool('Parameters', 'Always on top', ch2.Checked);
Ini.WriteBool('Parameters', 'Save window position', ch3.Checked);
Ini.WriteBool('Parameters', 'Forbid multiple', ch4.Checked);
Ini.WriteBool('Parameters', 'Main menu', ch5.Checked);
Ini.WriteBool('Parameters', 'Minimized to system tray', ch6.Checked);
Ini.WriteBool('Parameters', 'Minimized on pressing Escape', ch7.Checked);
Ini.WriteBool('Parameters', 'Use of XP menu', ch8.Checked);
Ini.WriteBool('Parameters', 'Animate window on opening and closing', ch9.Checked);
Ini.WriteBool('Parameters', 'Confirmation exit', ch10.Checked);
Ini.WriteBool('Parameters', 'Run with Windows OS startup', ch11.Checked);
Ini.WriteBool('Parameters', 'Show other windows in the Task Bar', ch12.Checked);
Ini.WriteBool('Parameters', 'Images in the menu', ch13.Checked);
Ini.WriteBool('Parameters', 'Move window of area', ch15.Checked);
Ini.WriteBool('Parameters', 'Screen snap', ch16.Checked);
Ini.WriteBool('Parameters', 'Windows only area', ch17.Checked);
Ini.WriteBool('Parameters', 'Status bar', ch18.Checked);
Ini.WriteBool('Parameters', 'Show hint in the status bar', ch19.Checked);
Ini.WriteBool('Parameters', 'Russian interface', RusItem.Checked);
Ini.WriteBool('Parameters', 'English interface', EngItem.Checked);
if ch3.Checked then
begin
Ini.WriteInteger('Parameters', 'Left', Left);
Ini.WriteInteger('Parameters', 'Top', Top);
end;
if ch9.Checked then
AnimateWindow(Handle, 500, AW_BLEND or AW_HIDE);
end;

procedure TMainForm.ch4Click(Sender: TObject);
begin
Ini.WriteBool('Parameters', 'Forbid multiple', ch4.Checked);
end;

procedure TMainForm.ch5Click(Sender: TObject);
begin
if ch5.Checked then
begin
TweakItem.Visible := True;
NavigationItem.Visible := True;
EnergyItem.Visible := True;
InterfaceItem.Visible := True;
HelpItem.Visible := True;
end;
if not ch5.Checked then
begin
TweakItem.Visible := False;
NavigationItem.Visible := False;
EnergyItem.Visible := False;
InterfaceItem.Visible := False;
HelpItem.Visible := False;
end;
end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if ch7.Checked then
begin
if Key = vk_Escape then
Application.Minimize;
end;
end;

procedure TMainForm.ch8Click(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if MainForm.RusItem.Checked then
Application.MessageBox('Изменения темы вступят в силу, когда Вы перезапустите FireTuning Tweaker!',
'Применение Темы',
mb_IconExclamation + mb_OK);
if MainForm.EngItem.Checked then
Application.MessageBox('Theme changes will take effect when you restart System FireTuning Tweaker!',
'Apply Theme',
mb_IconExclamation + mb_OK);
end;

procedure TMainForm.ch11Click(Sender: TObject);
begin
R := TRegistry.Create;
R.RootKey := HKEY_LOCAL_MACHINE;
R.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', false);
if ch11.Checked then
R.WriteString(Application.Title, ParamStr(0)) else
R.DeleteValue(Application.Title);
R.Free;
end;

procedure TMainForm.ch13Click(Sender: TObject);
begin
if ch13.Checked then
begin
MainMenu.Images := MainForm.ImageList2;
TrayMenu.Images := MainForm.ImageList2;
ImageMenu.Images := MainForm.ImageList2;
end else
begin
MainMenu.Images := MainForm.ImageList1;
TrayMenu.Images := MainForm.ImageList1;
ImageMenu.Images := MainForm.ImageList1;
end;
end;

procedure TMainForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if ch15.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TMainForm.ch16Click(Sender: TObject);
begin
if ch16.Checked then
MainForm.ScreenSnap := True else
MainForm.ScreenSnap := False;
if ch16.Checked then
AboutForm.ScreenSnap := True else
AboutForm.ScreenSnap := False;
if ch16.Checked then
OpenForm.ScreenSnap := True else
OpenForm.ScreenSnap := False;
end;

procedure TMainForm.WMMoving(var msg: TWMMoving);
var
r: TRect;
begin
if ch17.Checked then begin
r := Screen.WorkareaRect;
if msg.lprect^.left < r.left then
OffsetRect(msg.lprect^, r.left - msg.lprect^.left, 0);
if msg.lprect^.top < r.top then
OffsetRect(msg.lprect^, 0, r.top - msg.lprect^.top);
if msg.lprect^.right > r.right then
OffsetRect(msg.lprect^, r.right - msg.lprect^.right, 0);
if msg.lprect^.bottom > r.bottom then
OffsetRect(msg.lprect^, 0, r.bottom - msg.lprect^.bottom);
end;
inherited;
end;

procedure TMainForm.ch18Click(Sender: TObject);
begin
if ch18.Checked then
StatusBar.Visible := True else
StatusBar.Visible := False;
end;

procedure TMainForm.ShowHint(Sender: TObject);
begin
if ch19.Checked then
if Length(Application.Hint) > 0 then
begin
StatusBar.SimplePanel := True;
StatusBar.SimpleText := Application.Hint;
end
else
StatusBar.SimplePanel := False;
end;

procedure TMainForm.Im36ContextPopup(Sender: TObject; MousePos: TPoint;
var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Control Panel\Desktop');
end;

procedure TMainForm.OpenPicDlgCanClose(Sender: TObject;
var CanClose: Boolean);
begin
Centered.Enabled := True;
Tiled.Enabled := True;
Stretched.Enabled := True;
N34.Enabled := True;
N37.Enabled := True;
N42.Enabled := True;
N50.Enabled := True;
end;

procedure InstallScreenSaver(const FileName: string);
begin
ShellExecute(Application.Handle, 'open', PChar('rundll32.exe'),
PChar('desk.cpl,InstallScreenSaver ' + FileName), nil, SW_SHOWNORMAL);
end;

procedure TMainForm.N34Click(Sender: TObject);
begin
ShowPropertiesDialog(OpenPicDlg.FileName);
end;

procedure TMainForm.N41Click(Sender: TObject);
begin
WinExec('Control.exe desk.cpl', Sw_Restore);
end;

procedure TMainForm.N35Click(Sender: TObject);
var
Line: pByteArray;
i, j: integer;
begin
(*Im36.Refresh;
for i := 0 to Im36.Picture.Bitmap.Height - 1 do
begin
Line := Im36.Picture.Bitmap.ScanLine[i];
for j := 0 to Im36.Picture.Bitmap.Width * 3 - 1 do
Line^[j] := 255 - Line^[j];
end;
Im36.Refresh; *)
end;

procedure TMainForm.CommandsClick(Sender: TObject);
begin
ImageMenu.Popup(MainForm.Left + 3, MainForm.Top + 22);
end;

procedure TMainForm.EnergyClick(Sender: TObject);
begin
WinExec('CONTROL.EXE powercfg.cpl', sw_ShowNormal);
end;

procedure TMainForm.PreviewClick(Sender: TObject);
begin
SendMessage(Handle, Wm_SysCommand, Sc_ScreenSave, 0);
end;

procedure TMainForm.InstallClick(Sender: TObject);
begin
if OpenDlg.Execute then
InstallScreenSaver(OpenDlg.FileName);
end;

procedure TMainForm.tx113Click(Sender: TObject);
begin
ScreenSaveMenu.Popup(MainForm.Left + 3, MainForm.Top + 22);
end;

procedure TMainForm.N50Click(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if Application.MessageBox('Вы уверены в том, что хотите удалить открытый файл?',
'FireTuning Tweaker v 1.0', mb_IconQuestion + Mb_YesNo) = idYes then
begin
N50.Enabled := False;
DeleteFile(OpenPicDlg.FileName);
end
end;

procedure TMainForm.N55Click(Sender: TObject);
begin
ClipBoard.Clear;
end;

procedure TMainForm.N42Click(Sender: TObject);
begin
ShowMessage(OpenPicDlg.FileName);
end;

procedure TMainForm.tx167Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'services.msc', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx154Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'fsmgmt.msc', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx164Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'lusrmgr.msc', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx163Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'diskmgmt.msc', nil, nil, Sw_Restore);
end;

procedure TMainForm.tx151MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx151.ForegroundColor := clRed;
end;

procedure TMainForm.tx152MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx152.ForegroundColor := clRed;
end;

procedure TMainForm.tx153MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx153.ForegroundColor := clRed;
end;

procedure TMainForm.tx154MouseMove(Sender: TObject;
Shift: TShiftState; X, Y: Integer);
begin
tx154.ForegroundColor := clRed;
end;

procedure TMainForm.tx155MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx155.ForegroundColor := clRed;
end;

procedure TMainForm.tx156MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx156.ForegroundColor := clRed;
end;

procedure TMainForm.tx157MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx157.ForegroundColor := clRed;
end;

procedure TMainForm.tx158MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx158.ForegroundColor := clRed;
end;

procedure TMainForm.tx159MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx159.ForegroundColor := clRed;
end;

procedure TMainForm.tx160MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx160.ForegroundColor := clRed;
end;

procedure TMainForm.tx161MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx161.ForegroundColor := clRed;
end;

procedure TMainForm.tx162MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx162.ForegroundColor := clRed;
end;

procedure TMainForm.tx163MouseMove(Sender: TObject;
Shift: TShiftState; X, Y: Integer);
begin
tx163.ForegroundColor := clRed;
end;

procedure TMainForm.tx164MouseMove(Sender: TObject;
Shift: TShiftState; X, Y: Integer);
begin
tx164.ForegroundColor := clRed;
end;

procedure TMainForm.tx165MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx165.ForegroundColor := clRed;
end;

procedure TMainForm.tx166MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx166.ForegroundColor := clRed;
end;

procedure TMainForm.tx167MouseMove(Sender: TObject;
Shift: TShiftState; X, Y: Integer);
begin
tx167.ForegroundColor := clRed;
end;

procedure TMainForm.tx168MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx168.ForegroundColor := clRed;
end;

procedure TMainForm.tx169MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx169.ForegroundColor := clRed;
end;

procedure TMainForm.tx170MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx170.ForegroundColor := clRed;
end;

procedure TMainForm.tx171MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx171.ForegroundColor := clRed;
end;

procedure TMainForm.tx172MouseMove(Sender: TObject; Shift: TShiftState;
X, Y: Integer);
begin
tx172.ForegroundColor := clRed;
end;

procedure TMainForm.Ch38ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System');
end;

procedure TMainForm.Ch39ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System');
end;

procedure TMainForm.Ch40ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System');
end;

procedure TMainForm.Ch41ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System');
end;

procedure TMainForm.CMMouseLeave(var msg: TMessage);
begin
tx151.ForegroundColor := $00FF8000;
tx152.ForegroundColor := $00FF8000;
tx153.ForegroundColor := $00FF8000;
tx154.ForegroundColor := $00FF8000;
tx155.ForegroundColor := $00FF8000;
tx156.ForegroundColor := $00FF8000;
tx157.ForegroundColor := $00FF8000;
tx158.ForegroundColor := $00FF8000;
tx159.ForegroundColor := $00FF8000;
tx160.ForegroundColor := $00FF8000;
tx161.ForegroundColor := $00FF8000;
tx162.ForegroundColor := $00FF8000;
tx163.ForegroundColor := $00FF8000;
tx164.ForegroundColor := $00FF8000;
tx165.ForegroundColor := $00FF8000;
tx166.ForegroundColor := $00FF8000;
tx167.ForegroundColor := $00FF8000;
tx168.ForegroundColor := $00FF8000;
tx169.ForegroundColor := $00FF8000;
tx170.ForegroundColor := $00FF8000;
tx171.ForegroundColor := $00FF8000;
tx172.ForegroundColor := $00FF8000;
end;

procedure TMainForm.InetBtClick(Sender: TObject);
begin
NoteBook.ActivePage := 'InetPage';
if RusItem.Checked then
tx212.Caption := 'Текущая группа: ' + 'Интернет';
if EngItem.Checked then
tx212.Caption := 'Current group: ' + 'Internet';
end;

procedure TMainForm.Ch34ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{D6277990-4C6A-11CF-8D87-00AA0060F5BF}');
end;

procedure TMainForm.Ch33ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{2227A280-3AEA-1069-A2DE-08002B30309D}');
end;

procedure TMainForm.Ch20ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters');
end;

procedure TMainForm.Ch21ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters');
end;

procedure TMainForm.Ch22ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters');
end;

procedure TMainForm.Ch23ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main');
end;

procedure TMainForm.Ch24ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main');
end;

procedure TMainForm.Ch25ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main');
end;

procedure TMainForm.Ch26ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings');
end;

procedure TMainForm.Ch27ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main');
end;

procedure TMainForm.Ch28ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main');
end;

procedure TMainForm.Ch30ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main');
end;

procedure TMainForm.Ch31ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main');
end;

procedure TMainForm.Ch32ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main');
end;

procedure TMainForm.Ch29ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete');
end;

procedure TMainForm.CommandsContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
Commands.OnClick(Self);
end;

procedure TMainForm.WallpaperContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
Wallpaper.OnClick(Self);
end;

procedure TMainForm.ShutdownItemClick(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if RusItem.Checked then
begin
if MessageBox(Handle,
'Вы уверены, что хотите отключить питание компьютера?',
'Подтверждение на выполнение операции',
Mb_IconQuestion + Mb_YesNo) = idYes then
MyExitWindows(EWX_POWEROFF or EWX_FORCE);
end;
if EngItem.Checked then
begin
if MessageBox(Handle,
'Are you sure, what do you want to shutdown computer?',
'Confirmation',
Mb_IconQuestion + Mb_YesNo) = idYes then
MyExitWindows(EWX_POWEROFF or EWX_FORCE);
end;
end;

procedure TMainForm.ReloadItemClick(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if RusItem.Checked then
begin
if MessageBox(Handle,
'Вы уверены, что хотите перезагрузить компьютер?',
'Подтверждение на выполнение операции',
Mb_IconQuestion + Mb_YesNo) = idYes then
MyExitWindows(EWX_REBOOT or EWX_FORCE);
end;
if EngItem.Checked then
begin
if MessageBox(Handle,
'Are you sure, what do you want to restart computer?',
'Confirmation',
Mb_IconQuestion + Mb_YesNo) = idYes then
MyExitWindows(EWX_REBOOT or EWX_FORCE);
end;
end;

procedure TMainForm.LoggOffItemClick(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if RusItem.Checked then
begin
if MessageBox(Handle,
'Вы уверены, что хотите завершить текущий сеанс?',
'Подтверждение на выполнение операции',
Mb_IconQuestion + Mb_YesNo) = idYes then
ExitWindowsEx(EWX_Force, 0);
end;
if EngItem.Checked then
begin
if MessageBox(Handle,
'Are you sure, what do you want to log off?',
'Confirmation',
Mb_IconQuestion + Mb_YesNo) = idYes then
ExitWindowsEx(EWX_Force, 0);
end;
end;

procedure TMainForm.MonitorOffItemClick(Sender: TObject);
begin
SendMessage(Handle, Wm_SysCommand, Sc_MonitorPower, 2);
end;

procedure TMainForm.MySystemMenu(var MySysMenu: TWmSysCommand);
begin
if MySysMenu.CmdType = AboutPro then
begin
AboutForm.Position := poMainFormCenter;
AboutForm.ShowModal;
end;
Inherited;
end;

procedure TMainForm.ListEnter(Sender: TObject);
begin
ScreenApplyBt.Enabled := True;
end;

procedure TMainForm.ListDblClick(Sender: TObject);
begin
ScreenApplyBt.OnClick(Self);
end;

function DUNDialDefault(Hide: Boolean): Boolean;
var
Reg: TRegistry;
TempResult: Boolean;
name, con: string;
ASW: Integer;
begin
Reg := TRegistry.Create;
Reg.RootKey := HKEY_CURRENT_USER;
if Reg.OpenKey('\RemoteAccess', False) then
begin
TempResult := True;
name := Reg.ReadString('Default');
end
else
tempresult := False;
Reg.Free;
if TempResult = True then
begin
if Hide = True then
ASW := SW_HIDE
else
ASW := SW_SHOWDEFAULT;
con := 'rnaui.dll,RnaDial ' + name;
ShellExecute(0, nil, 'rundll32.exe' , PChar(con), 'C:\windows\', ASW);
end;
Result := tempResult;
end;

procedure TMainForm.tx192Click(Sender: TObject);
begin
InternetAutoDial(INTERNET_AUTODIAL_FORCE_ONLINE, handle);
end;

procedure TMainForm.UpdateListButtonClick(Sender: TObject);
var
BuffSize: Integer;
Entries: Integer;
Entry: Array[1..MaxEntries] of TRasEntryName;
X,Result_: Integer;
AllEntries: TStrings;
begin
AllEntries:=TStringList.Create;
ListConnections.Clear;
Entry[1].dwSize:=SizeOf(TRasEntryName);
BuffSize:=SizeOf(TRasEntryName)*MaxEntries;
Result_:=RasEnumEntries(nil, nil, @Entry[1], BuffSize, Entries);
If (Result_=0) and (Entries>0) then
Begin
For X:=1 To Entries Do
Begin
ListConnections.Items.Add(Entry[x].szEntryName);
AllEntries.Add(Entry[x].szEntryName);
End;
End;
AllEntries.Free;
end;

procedure TMainForm.tx202Click(Sender: TObject);
begin
ShellExecute(handle, nil, 'iexplore.exe', nil,nil, Sw_ShowNormal);
end;

procedure TMainForm.tx203Click(Sender: TObject);
begin
WinExec('CONTROL.EXE inetcpl.cpl',sw_ShowNormal);
end;

procedure TMainForm.tx34Click(Sender: TObject);
begin
SendMessage(Handle, Wm_SysCommand, Sc_TaskList, 0);
end;

procedure TMainForm.tx96Click(Sender: TObject);
procedure FreePidl(pidl: PItemIDList);
var
allocator: IMalloc;
begin
if Succeeded(shlobj.SHGetMalloc(allocator)) then
begin
allocator.Free(pidl);
{$IFDEF VER90}
allocator.Release;
{$ENDIF}
end;
end;
var
exInfo: TShellExecuteInfo;
begin
FillChar(exInfo, SizeOf(exInfo), 0);
with exInfo do
begin
cbSize := SizeOf(exInfo);
fMask := SEE_MASK_FLAG_DDEWAIT or SEE_MASK_IDLIST;
Wnd := Handle;
nShow := SW_SHOWNORMAL;
lpVerb := 'open';
ShGetSpecialFolderLocation(Handle, CSIDL_BITBUCKET, PItemIDLIst(lpIDList));
end;
ShellExecuteEx(@exInfo);
FreePIDL(exinfo.lpIDList);
end;

procedure TMainForm.tx113ContextPopup(Sender: TObject;
MousePos: TPoint; var Handled: Boolean);
begin
ScreenSaveMenu.Popup(MainForm.Left + 3, MainForm.Top + 22);
end;

procedure TMainForm.SwitchClick(Sender: TObject);
begin
if Switch.Checked then
InputName.Enabled := True;
if Switch.Checked then
Find1.Visible := True;
if Switch.Checked then
InputIP.Enabled := False;
if Switch.Checked then
Find2.Visible := False;
if not Switch.Checked then
InputName.Enabled := False;
if not Switch.Checked then
Find1.Visible := False;
if not Switch.Checked then
InputIP.Enabled := True;
if not Switch.Checked then
Find2.Visible := True;
end;

function IPAddrToName(IPAddr : string): string;
var
SockAddrIn: TSockAddrIn;
HostEnt: PHostEnt;
WSAData: TWSAData;
begin
WSAStartup($101, WSAData);
SockAddrIn.sin_addr.s_addr:= inet_addr(PChar(IPAddr));
HostEnt:= gethostbyaddr(@SockAddrIn.sin_addr.S_addr, 4, AF_INET);
if HostEnt <> nil then
result := StrPas(Hostent^.h_name)
else
result:='';
end;

function HostToIP(name: string; var Ip: string): Boolean;
var
wsdata : TWSAData;
hostName : array [0..255] of char;
hostEnt : PHostEnt;
addr : PChar;
begin
WSAStartup ($0101, wsdata);
try
gethostname (hostName, sizeof (hostName));
StrPCopy(hostName, name);
hostEnt := gethostbyname (hostName);
if Assigned (hostEnt) then
if Assigned (hostEnt^.h_addr_list) then begin
addr := hostEnt^.h_addr_list^;
if Assigned (addr) then begin
IP := Format ('%d.%d.%d.%d', [byte (addr [0]),
byte (addr [1]), byte (addr [2]), byte (addr [3])]);
Result := True;
end
else
Result := False;
end
else
Result := False
else begin
Result := False;
end;
finally
WSACleanup;
end
end;

procedure TMainForm.tx184Click(Sender: TObject);
const
INTERNET_CONNECTION_MODEM = 1;
INTERNET_CONNECTION_LAN   = 2;
INTERNET_CONNECTdState = 3;
var
dwConnectionTypes: DWORD;
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
dwConnectionTypes:=INTERNET_CONNECTION_MODEM+INTERNET_CONNECTION_LAN+INTERNET_CONNECTdState;
if RusItem.Checked then
if InternetGetConnectedState(@dwConnectionTypes,0) then
Application.MessageBox('Есть соединение.',
'Проверка соединения',
mb_IconAsterisk + mb_Ok)
else
Application.MessageBox('Нет соединения.',
'Проверка соединения',
mb_IconAsterisk + mb_Ok);
if EngItem.Checked then
if InternetGetConnectedState(@dwConnectionTypes,0) then
Application.MessageBox('There is a connection.',
'Check connection',
mb_IconAsterisk + mb_Ok)
else
Application.MessageBox('There is no connection.',
'Check connection',
mb_IconAsterisk + mb_Ok);
end;

procedure TMainForm.Find1Click(Sender: TObject);
var
IP: String;
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if HostToIp(InputName.Text, IP) then
InputIP.Text := IP else
if RusItem.Checked then
Application.MessageBox('IP-адрес не найден!',
'FireTuning Tweaker',
mb_IconAsterisk + mb_Ok);
if EngItem.Checked then
Application.MessageBox('IP-address not found!',
'FireTuning Tweaker',
mb_IconAsterisk + mb_Ok);
end;

procedure TMainForm.Find2Click(Sender: TObject);
begin
InputName.Text := IPAddrToName(InputIP.Text);
end;

procedure TMainForm.tx194Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'mozilla.exe', nil,nil, Sw_ShowNormal);
end;

procedure TMainForm.tx195Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'firefox.exe', nil,nil, Sw_ShowNormal);
end;

procedure TMainForm.tx196Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'ICQ.exe', nil,nil, Sw_ShowNormal);
end;

procedure TMainForm.fr9MouseMove(Sender: TObject; Shift: TShiftState; X,
Y: Integer);
begin
tx151.ForegroundColor := $00FF8000;
tx152.ForegroundColor := $00FF8000;
tx153.ForegroundColor := $00FF8000;
tx154.ForegroundColor := $00FF8000;
tx155.ForegroundColor := $00FF8000;
tx156.ForegroundColor := $00FF8000;
tx157.ForegroundColor := $00FF8000;
tx158.ForegroundColor := $00FF8000;
tx159.ForegroundColor := $00FF8000;
tx160.ForegroundColor := $00FF8000;
tx161.ForegroundColor := $00FF8000;
tx162.ForegroundColor := $00FF8000;
tx163.ForegroundColor := $00FF8000;
tx164.ForegroundColor := $00FF8000;
tx165.ForegroundColor := $00FF8000;
tx166.ForegroundColor := $00FF8000;
tx167.ForegroundColor := $00FF8000;
tx168.ForegroundColor := $00FF8000;
tx169.ForegroundColor := $00FF8000;
tx170.ForegroundColor := $00FF8000;
tx171.ForegroundColor := $00FF8000;
tx172.ForegroundColor := $00FF8000;
end;

procedure TMainForm.tx210Click(Sender: TObject);
begin
WNetConnectionDialog(Handle, ResourceType_Disk);
end;

procedure TMainForm.tx211Click(Sender: TObject);
begin
WNetDisConnectDialog(Handle, ResourceType_Disk);
end;

procedure TMainForm.RusItemClick(Sender: TObject);
begin
RusItem.Checked := True;
EngItem.Checked := False;

//Act of Tabs
if tx212.Caption = 'Current group: ' + 'Internet' then
tx212.Caption := 'Текущая группа: ' + 'Интернет';
if tx212.Caption = 'Current group: ' + 'Desktop' then
tx212.Caption := 'Текущая группа: ' + 'Рабочий стол';
if tx212.Caption = 'Current group: ' + 'System' then
tx212.Caption := 'Текущая группа: ' + 'Система';
if tx212.Caption = 'Current group: ' + 'Protect' then
tx212.Caption := 'Текущая группа: ' + 'Защита';
if tx212.Caption = 'Current group: ' + 'Utils' then
tx212.Caption := 'Текущая группа: ' + 'Утилиты';
if tx212.Caption = 'Current group: ' + 'Class Handle' then
tx212.Caption := 'Текущая группа: ' + 'Class Handle';
if tx212.Caption = 'Current group: ' + 'Information of computer' then
tx212.Caption := 'Текущая группа: ' + 'Информация о компьютере';
if tx212.Caption = 'Current group: ' + 'Preferences' then
tx212.Caption := 'Текущая группа: ' + 'Настройки';
if tx212.Caption = 'Current group: ' + 'License agreement' then
tx212.Caption := 'Текущая группа: ' + 'Лицензионное соглашение';
if tx212.Caption = 'Current group: ' + 'Uninstall' then
tx212.Caption := 'Текущая группа: ' + 'Удаление программ';

//Components

OpenDlg.Title := 'Экранная заставка';
OpenDlg.Filter := 'Экранная заставка (*.scr)|*.scr';

OpenPicDlg.Title := 'Выбрать';
SavePicDlg.Title := 'Сохранить';

UpdateListBt.OnClick(Self);

//System Menu
SM := GetSystemMenu(Handle, True);
SM := GetSystemMenu(Handle, False);
InsertMenu(SM, Word(-1), Mf_Separator, Cherta, '');
InsertMenu(SM, Word(-2), Mf_ByPosition, AboutPro, 'О программе...');

//Main Menu
UpdateSetItem.Caption := 'Обновить';
NewWinItem.Caption := 'Новое окно';
ShortcutItem.Caption := 'Создать ярлык';
OnDesktopItem.Caption := 'На Рабочем столе';
OnStartMenuItem.Caption := 'В Меню Пуск';
OnMenuProItem.Caption := 'В Меню Программы';
OnStartupItem.Caption := 'В Автозагрузку';
OnFavoritesItem.Caption := 'В Избранное';
RunWinItem.Caption := 'Выполнить...';
ChooseProItem.Caption := 'Выбрать программу...';
PropItem.Caption := 'Свойства Tweaker...';
QuitItem.Caption := 'Выход';
NavigationItem.Caption := 'Навигация';
SystemItem.Caption := 'Система';
ProtectItem.Caption := 'Защита';
DesktopItem.Caption := 'Рабочий стол';
InternetItem.Caption := 'Интернет';
UtilsItem.Caption := 'Утилиты Windows';
InfoItem.Caption := 'Информация о компьютере';
DeleteItem.Caption := 'Удаление';
SettingItem.Caption := 'Настройка';
EnergyItem.Caption := 'Питание';
ShutdownItem.Caption := 'Отключить питание';
ReloadItem.Caption := 'Перезагрузка';
LoggOffItem.Caption := 'Завершение сеанса';
MonitorOffItem.Caption := 'Выключить монитор';
InterfaceItem.Caption := 'Интерфейс';
RusItem.Caption := 'Русский';
EngItem.Caption := 'Английский';
HelpItem.Caption := 'Помощь';
SysInfoItem.Caption := 'Сведения о системе...';
HomePageItem.Caption := 'Домашняя страница...';
InformationItem.Caption := 'Информация....';
LicItem.Caption := 'Лицензия';
SendItem.Caption := 'Обратная связь';
SourceCodeItem.Caption := 'Исходный код';
AboutItem.Caption := 'О программе...';
ResItem.Caption := 'Открыть';
ClosedItem.Caption := 'Выход';

//Main Menu Hints
UpdateSetItem.Hint := 'Обновить настройки';
NewWinItem.Hint := 'Создание нового окна';
ShortcutItem.Hint := 'Создание ярлыка FireTuning Tweaker';
OnDesktopItem.Hint := 'Создание ярлыка FireTuning Tweaker на рабочем столе';
OnStartMenuItem.Hint := 'Создание ярлыка FireTuning Tweaker в меню пуск';
OnMenuProItem.Hint := 'Создание ярлыка FireTuning Tweaker в меню программы';
OnStartupItem.Hint := 'Создание ярлыка FireTuning Tweaker в папке автозагрузки';
OnFavoritesItem.Hint := 'Создание ярлыка FireTuning Tweaker в папке избранное';
RunWinItem.Hint := 'Выполнить запуск программы средствами Windows';
ChooseProItem.Hint := 'Выбрать файл с последующим запуском';
PropItem.Hint := 'Отобразить свойства FireTuning Tweaker';
QuitItem.Hint := 'Завершение работы программы';
SystemItem.Hint := 'Перейти на вкладку "Система"';
ProtectItem.Hint := 'Перейти на вкладку "Защита"';
DesktopItem.Hint := 'Перейти на вкладку "Рабочий стол"';
InternetItem.Hint := 'Перейти на вкладку "Интернет"';
UtilsItem.Hint := 'Перейти на вкладку "Утилиты"';
ClassHandleItem.Hint := 'Перейти на вкладку "Class Handle"';
InfoItem.Hint := 'Перейти на вкладку "Информация о компьютере"';
DeleteItem.Hint := 'Перейти на вкладку "Удаление"';
SettingItem.Hint := 'Перейти на вкладку "Настройка"';
ShutdownItem.Hint := 'Выключить компьютер';
ReloadItem.Hint := 'Перезагрузка компьютера';
LoggOffItem.Hint := 'Завершение сеанса';
MonitorOffItem.Hint := 'Выключить монитор';
RusItem.Hint := 'Установить русский интерфейс';
EngItem.Hint := 'Установить английский интерфейс';
SysInfoItem.Hint := 'Отобразить текущие сведения о системе';
HomePageItem.Hint := 'Перейти на web-сайт проекта';
InformationItem.Hint := 'Отобразить информацию о компьютере';
LicItem.Hint := 'Прочитать лицензионное соглашение';
SendItem.Hint := 'Написать письмо автору программы';
SourceCodeItem.Hint := 'Получить исходный код FireTuning Tweaker';
AboutItem.Hint := 'Отображение сведений о программе, номере версии и авторских правах';

//Navigation Panel
SystemBt.Caption := 'Система';
ProtectBt.Caption := 'Защита';
DeskBt.Caption := 'Рабочий стол';
InetBt.Caption := 'Интернет';
UtilsBt.Caption := 'Утилиты';
ClassHandleBt.Caption := 'Class Handle';
InfoBt.Caption := 'Инфо';
UninstallBt.Caption := 'Удаление';
OptionsBt.Caption := 'Настройки';
LicBt.Caption := 'Лицензия';
QuitBt.Caption := 'Выход';

//Saving Panel
SaveExitBt.Caption := 'Сохранить и выйти';
ApplyBt.Caption := 'Применить';
UndoBt.Caption := 'Отменить';
CancelBt.Caption := 'Отмена';

//Open Window
OpenForm.Caption := 'Открыть';
OpenForm.txt1.Caption := 'Введите путь к изображению.';
OpenForm.txt2.Caption := 'Открыть:';
OpenForm.txt3.Caption := 'Также можете воспользоваться кнопкой "Обзор..",';
OpenForm.txt4.Caption := 'для ручного выбора изображения из диалогового окна.';
OpenForm.Closed.Caption := 'Отмена';
OpenForm.Choose.Caption := 'Обзор...';

//About Window
AboutForm.Caption := 'О программе "FireTuning Tweaker"';
AboutForm.tx1.Caption := 'FireTuning Tweaker v 1.0';
AboutForm.tx2.Caption := 'Copyright © 2009 Домани Олег (aka ?КТО_Я?)';
AboutForm.License.Clear;
AboutForm.License.Lines.Append('Внимание! Данный программный продукт защищен');
AboutForm.License.Lines.Append('законами об авторских правах и международными');
AboutForm.License.Lines.Append('соглашениями. Незаконное воспроизведение или');
AboutForm.License.Lines.Append('распространение данной программы или ее части');
AboutForm.License.Lines.Append('влечет гражданскую и уголовную ответственность.');
AboutForm.tx3.Caption := 'Пермская область, г. Чайковский';
AboutForm.SendMail.Text := '<Написать письмо автору';
AboutForm.tx9.Caption := 'GNU Open Source Code';
AboutForm.Closed.Caption := 'Закрыть';

//Settings Page
tx173.Caption := 'Настройки:';
ch1.Caption := 'Открывать ветвь в Registry Editor после правого щелчка по настройке';
ch2.Caption := 'Всегда впереди';
ch3.Caption := 'Запомнить позицию окна';
ch4.Caption := 'Запуск одной копии';
ch5.Caption := 'Главное меню';
ch6.Caption := 'Сворачивать в системный лоток';
ch7.Caption := 'Сворачивать при нажатии Escape';
ch8.Caption := 'Использовать XP меню';
ch9.Caption := 'Анимация при открытии и закрытии главного окна';
ch10.Caption := 'Подтверждать выход';
ch11.Caption := 'Запускать вместе с Windows OС';
ch12.Caption := 'Отображать модальные окна на Панели Задач';
ch13.Caption := 'Убрать рисунки из меню';
ch15.Caption := 'Перемещать за клиетскую область';
ch16.Caption := 'Приклеивать к краям экрана';
ch17.Caption := 'Окно только в области клиента';
ch18.Caption := 'Строка состояния';
ch19.Caption := 'Показывать подсказки в строке состояния';

//Protected Page
StartMenu.Caption := 'Меню Пуск и Панель задач';
tx25.Caption := 'Меню Пуск:';
tx27.Caption := 'Настройка меню классического вида:';
Ch73.Caption := 'Сделать недоступным свойства Панели задач и меню Пуск';
Ch74.Caption := 'Запретить модификацию меню Пуск';
Ch75.Caption := 'Запретить переключать меню в стиль XP';
Ch76.Caption := 'Запретить пункт меню Поиск';
Ch77.Caption := 'Запретить пункт меню Выполнить';
Ch78.Caption := 'Запретить пункт меню Справка и поддержка';
Ch79.Caption := 'Запретить пункт меню Все программы (Стиль XP)';
Ch80.Caption := 'Запретить пункт меню Недавние документы';
Ch81.Caption := 'Запретить пункты меню Настройка';
tx30.Caption := 'Данная опция убирает пункты "Панель управления",';
tx31.Caption := '"Сетевые подключения", "Принтеры и факсы" из меню Настройка.';
tx32.Caption := 'Панель задач:';
Ch82.Caption := 'Запретить контекстное меню Панели задач';
tx34.Caption := 'Открыть меню Пуск';
CompactDisk.Caption := 'Компакт диски';
tx12.Caption := 'Компакт диски:';
Ch70.Caption := 'Отключить автозапуск компакт дисков';
Ch71.Caption := 'Отключить встроенные средства WinXP для записи компакт-дисков';
Ch72.Caption := 'Автоматически загружать кодеки из Интернета';
tx16.Caption := 'Автоматические обновления. Проверять обновления:';
tx18.Caption := 'Аплет: Звуки';
ComboBox2.Clear;
ComboBox2.Items.Add('Один раз в день');
ComboBox2.Items.Add('Один раз в неделю');
ComboBox2.Items.Add('Один раз в месяц');
Ch60.Caption := 'Запретить доступ к свойствам Internet Explorer';
Ch61.Caption := 'Скрыть вкладку "Общие" в свойствах обозревателя';
Ch62.Caption := 'Скрыть вкладку "Безопасность"';
Ch63.Caption := 'Скрыть вкладку "Конфиденциальность"';
Ch64.Caption := 'Скрыть вкладку "Содержание"';
Ch65.Caption := 'Скрыть вкладку "Подключения"';
Ch66.Caption := 'Скрыть вкладку "Программы"';
Ch67.Caption := 'Скрыть вкладку "Дополнительно"';
Ch68.Caption := 'Запретить изменения на вкладке "Дополнительно"';
Ch69.Caption := 'Запретить доступ к настройке параметров временных файлов';
tx203.Caption := 'Свойства обозревателя';
tx204.Caption := 'Очистить временные файлы Internet Explorer';
tx201.Caption :=  'Версия Internet Explorer: ' + GetIEVersion('Version');
tx205.Caption := 'Введите имя сайта или IP-адрес сервера:';
Explorer.Caption := 'Проводник';
tx8.Caption := 'Проводник:';
tx10.Caption := 'Запретить доступ к дискам:';
Ch54.Caption := 'Сделать недоступным контекстное меню Проводника';
Ch55.Caption := 'Удалить меню Файл из Проводника';
Ch56.Caption := 'Удалить кнопку поиск с панели инструментов';
Ch57.Caption := 'Использовать классический вид Проводника';
Ch58.Caption := 'Запретить доступ и открытие к дискам и папкам';
Ch59.Caption := 'Скрыть диски в проводнике';
Printers.Caption := 'Принтеры';
tx19.Caption := 'Принтеры:';
Ch52.Caption := 'Запретить установку принтеров';
Ch53.Caption := 'Запретить удаление принтеров';
tx21.Caption := 'Установленные принтеры в системе:';
tx22.Caption := 'Свойства принтера';
tx23.Caption := 'Установка принтера';
tx24.Caption := 'Папка принтеры';
System.Caption := 'Система';
tx4.Caption := 'Система:';
tx6.Caption := 'Сетевая безопасность:';
Ch14.Caption := 'Запретить вызов диспетчера задач';
Ch45.Caption := 'Запретить редактирование реестра';
Ch46.Caption := 'Запретить запуск аплетов панели управления';
Ch47.Caption := 'Запретить изменение свойств Экрана';
Ch48.Caption := 'Запретить завершения сеанса ';
Ch49.Caption := 'Запретить использование командной строки';
Ch50.Caption := 'Запретить анонимным пользователям просматривать ресурсы';
Ch51.Caption := 'Полностью отключить общие ресурсы (ADMIN$, C$ и т.д.)';

//Uninstall Page
tx215.Caption := 'Список установленных программ:';
InstallPro.Caption := 'Информация об установленных программах';
RefreshBt.Caption := 'Обновить';
RegistryDelBt.Caption := 'Удалить из реестра';
SettingsControl.Caption := 'Настройки';
tx225.Caption := 'Параметры защиты:';
ch149.Caption := 'Запретить установку и удаление программ';
ch150.Caption := 'Скрыть вкладку Изменение и удаление программ';
ch151.Caption := 'Скрыть вкладку Установка программ';
ch152.Caption := 'Скрыть вкладку Установка компонентов Windows';
ch153.Caption := 'Скрыть раздел Установка программы с CD-ROM или дискеты';
ch154.Caption := 'Скрыть раздел Установка программ от Microsoft';
ch155.Caption := 'Скрыть раздел Установка программ из сети';
ch156.Caption := 'Скрыть сведения о поддержке';

//Class Information Studio Page
tx37.Caption := 'Перетащите лупу на окно, чтобы получить ее';
tx38.Caption := 'описание (включая Internet Explorer).';
tx39.Caption := 'Позиция мыши:';
tx40.Caption := 'Декриптор:';
tx41.Caption := 'Заголовок окна:';
tx42.Caption := 'Класс окна:';
tx43.Caption := 'Handle окна:';
Ch35.Caption:= 'Определять под курсором';

//System Page
ClassicMenu.Caption := 'Классическое меню';
tx85.Caption := 'Классический вид меню Пуск:';
Ch133.Caption := 'Использовать прокрутку для меню "Программы"';
Ch134.Caption := 'Использовать сокращенное меню';
Ch135.Caption := 'Мелкие значки в главном меню';
Ch136.Caption := 'Отображать команду  "Выполнить"';
Ch137.Caption := 'Отображать команду  "Завершение сеанса"';
Ch138.Caption := 'Отображать меню "Администрирование"';
Ch139.Caption := 'Отображать папку "Избранное"';
Ch140.Caption := 'Разрешить перетаскивание объектов';
Ch141.Caption := 'Раскрыть "Панель управления"';
Ch142.Caption := 'Раскрыть папку "Мои документы"';
Ch143.Caption := 'Раскрыть папку "Мои рисунки"';
Ch144.Caption := 'Раскрыть папку "Принтеры"';
Ch145.Caption := 'Раскрыть "Сетевые подключения"';
XPMenu.Caption := 'Элементы XP меню';
tx76.Caption := 'Элементы в стиле Windows XP:';
Ch122.Caption := 'Администрирование в меню "Пуск"';
Ch124.Caption := 'Использовать прокрутку для меню Программы  ';
Ch125.Caption := 'Команда "Выполнить"';
Ch127.Caption := 'Поиск';
Ch128.Caption := 'Разрешить перетаскивание объектов';
Ch129.Caption := 'Сетевое окружение';
Ch130.Caption := 'Справка и поддержка';
Ch131.Caption := 'Отображать пункт меню Недавние документы';
Ch132.Caption := 'Большие значки в главном меню';
tx78.Caption := 'Мои документы';
MyDocumentsBox.Clear;
MyDocumentsBox.Items.Add('Не отображать этот элемент');
MyDocumentsBox.Items.Add('Отображать как меню');
MyDocumentsBox.Items.Add('Отображать как ссылку');
tx79.Caption := 'Мой компьютер';
MyComputerBox.Clear;
MyComputerBox.Items.Add('Не отображать этот элемент');
MyComputerBox.Items.Add('Отображать как меню');
MyComputerBox.Items.Add('Отображать как ссылку');
tx80.Caption := 'Мои рисунки';
MyPictureBox.Clear;
MyPictureBox.Items.Add('Не отображать этот элемент');
MyPictureBox.Items.Add('Отображать как меню');
MyPictureBox.Items.Add('Отображать как ссылку');
tx82.Caption := 'Моя музыка';
MyMusicBox.Clear;
MyMusicBox.Items.Add('Не отображать этот элемент');
MyMusicBox.Items.Add('Отображать как меню');
MyMusicBox.Items.Add('Отображать как ссылку');
tx83.Caption := 'Панель управления';
ControlPanelBox.Clear;
ControlPanelBox.Items.Add('Не отображать этот элемент');
ControlPanelBox.Items.Add('Отображать как меню');
ControlPanelBox.Items.Add('Отображать как ссылку');
tx84.Caption := 'Сетевые подключения';
NewConnectionBox.Clear;
NewConnectionBox.Items.Add('Не отображать этот элемент');
NewConnectionBox.Items.Add('Отображать как меню');
NewConnectionBox.Items.Add('Отображать как ссылку');
TaskBar.Caption := 'Панель задач';
tx57.Caption := 'Панель задач:';
tx59.Caption := 'Мигание кнопок на панели задач:';
Ch118.Caption := 'Показывать всплывающие подсказки';
Ch119.Caption := 'Автоматически скрывать иконки в трее';
Ch120.Caption := 'Скрыть все значки в трее';
Ch121.Caption := 'Группировать сходные кнопки на панели задач';
tx61.Caption := 'Когда программа требует ввода данных, она может либо';
tx62.Caption := 'выскочить на передний план, либоначать мигать кнопкой';
tx63.Caption := 'на панели задач. Вы можете установить время, в течении';
tx64.Caption := 'которого программа будет сигнализировать перед этим';
tx65.Caption := 'выходом.';
tx66.Caption := 'Количество миганий кнопки. Значение 0 заставляет';
tx67.Caption := 'мигать кнопку бесконечно.';
WinExplorer.Caption := 'Проводник';
tx53.Caption := 'Проводник:';
tx55.Caption := 'Контекстное меню проводника:';
Ch109.Caption := 'Анимация при сворачивании и разворачивании окон';
Ch110.Caption := 'Отображать содержимое окна при перетаскивании';
Ch111.Caption := 'Запретить кэширование изображений (thumbnails)';
Ch112.Caption := 'Запускать окна Проводника в отдельном процессе';
Ch113.Caption := 'Автоматически перезапускать Проводник при ошибках';
Ch114.Caption := 'Отключить сообщение о недостатке свободного места на диске';
Ch115.Caption := 'Добавить пункт меню "Копировать в папку..."';
Ch116.Caption := 'Добавить пункт меню "Переместить в папку..."';
Ch117.Caption := 'Добавить пункт меню "Отправить"';
Boot.Caption := 'Загрузка системы';
tx44.Caption := 'Вход в систему:';
Ch98.Caption := 'Показывает сообщение перед вводом пароля для входа в систему';
tx46.Caption := 'Заголовок:';
tx47.Caption := 'Сообщение:';
tx48.Caption := 'Учетные записи пользователей';
Ch99.Caption := 'Использовать страницу приветствия';
Ch100.Caption := 'Не показывать имя последнего пользователя';
Ch101.Caption := 'Использовать быстрое переключение пользователей';
Ch102.Caption := 'Не показывать сообщения при запуске и выходе из системы';
Ch103.Caption := 'Показывать выполняемые команды при запуске и выходе из системы';
Ch104.Caption := 'Включать Num Lock при загрузке';
tx49.Caption := 'Раскладка клавиатуры при входе в систему:';
ComboBox10.Clear;
ComboBox10.Items.Add('Русский');
ComboBox10.Items.Add('Английский');
Ch105.Caption := 'Запретить автозапуск программ Local Machine Run';
Ch106.Caption := 'Запретить автозапуск программ Local Machine Run Once';
Ch107.Caption := 'Запретить автозапуск программ Current User Run';
Ch108.Caption := 'Запретить автозапуск программ Current User Run Once';
MenuWin.Caption := 'Меню Пуск';
tx68.Caption := 'Меню Пуск:';
Ch90.Caption := 'Убрать имя пользователя из меню Пуск';
Ch91.Caption := 'Не вести историю открытия документов';
Ch92.Caption := 'Очистка списка недавно использовавших программ';
Ch93.Caption := 'Удалить пункт меню Выход из системы';
Ch94.Caption := 'Выделять недавно установленные программы';
Ch95.Caption := 'Не показывать общие ярлыки (All Users)';
Ch96.Caption := 'Удалить список часто используемых программ';
Ch97.Caption := 'Раскрывать меню при наведении и задержке указателя';
tx70.Caption := 'Количество ярлыков в меню "Пуск - Документы"';
tx71.Caption := 'Задержка выпадения меню:';
tx73.Caption := 'мс';
tx74.Caption := 'Установите 0, чтобы убрать задержку. Данный параметр';
tx75.Caption := 'влияет на скорость выпадания меню в проводнике.';
YourSustem.Caption := 'Система';
tx50.Caption := 'Система:';
Ch83.Caption := 'Отключить встроенный отладчик Dr. Watson';
Ch84.Caption := 'Отключить слежение Windows за пользователем';
Ch85.Caption := 'Не отсылать в Microsoft отчеты об ошибках';
Ch86.Caption := 'Выводить окно для ввода причины завершения работы';
Ch87.Caption := 'Очистка файла подкачки перед перезагрузкой системы';
Ch88.Caption := 'Запускать 16-битные программы в отдельных процессах';
Ch89.Caption := 'Принудительный вызов "стоп-ошибки" при нажатии Ctrl+Scroll Lock';
tx52.Caption := 'Сообщения об ошибках:';
ComboBox9.Clear;
ComboBox9.Items.Add('Показывать все ошибки (по умолчанию)');
ComboBox9.Items.Add('Только ошибки приложений, системные отключены');
ComboBox9.Items.Add('Отключить все сообщения об ошибках');

//Desktop Page
Other.Caption := 'Разное';
tx109.Caption := 'Обои рабочего стола:';
tx111.Caption := 'Экранная заставка:';
tx113.Caption := 'Параметры и настройки';
Commands.Caption := 'Команды...';
Wallpaper.Caption := 'Фоновой рисунок';
N36.Caption := 'Выбрать...';
N37.Caption := 'Сохранить...';
N2.Caption := 'Открыть как...';
N52.Caption := 'Правка';
N51.Caption := 'Копировать в буфер обмена';
N50.Caption := 'Удалить файл';
N55.Caption := 'Очистить буфер обмена';
N42.Caption := 'Директория...';
N34.Caption := 'Свойства файла...';
N35.Caption := 'Негатив';
N41.Caption := 'Параметры дисплея';
Centered.Caption := 'По центру';
Stretched.Caption := 'Растянуть';
Tiled.Caption := 'Замостить';
Install.Caption := 'Установить';
Preview.Caption := 'Просмотр';
Energy.Caption := 'Электропитание';
tx101.Caption := 'Разрешение:';
tx102.Caption := 'Качество цветопередачи:';
tx103.Caption := 'Число бит:';
tx104.Caption := 'Плоскость:';
MyScreen.Caption := 'Разрешение экрана';
tx99.Caption := 'Разрешение экрана:';
ListMode.Caption := 'Список всех доступных режимов';
UpdateListBt.Caption := 'Обновить';
ScreenApplyBt.Caption := 'Применить';
DeskIcon.Caption := 'Иконки';
tx97.Caption := 'Иконки на рабочем столе (Классический стиль):';
Ch42.Caption := 'Мой компьютер';
Ch43.Caption := 'Корзина';
tx217.Caption := 'Иконки на рабочем столе (XP стиль):';
ch146.Caption := 'Мой компьютер';
ch147.Caption := 'Корзина';
RecycleBin.Caption := 'Корзина';
tx89.Caption := 'Корзина:';
tx90.Caption := 'Название корзины:';
AddToComputer.Caption := 'Добавить значок корзины в Мой Компьютер';
tx96.Caption := 'Корзина';
tx92.Caption := 'Удалить файл в корзину';
tx93.Caption := 'Безопасная очистка';
tx94.Caption := 'Удалить каталог';
tx95.Caption := 'Очистить корзину';
tx219.Caption := 'Контекстное меню Корзины:';
tx221.Caption := 'Добавить новый пункт в контекстное меню корзины:';
tx222.Caption := 'Название:';
tx223.Caption := 'Команда:';
tx224.Caption := 'c:\windows\notepad.exe или notepad.exe';
DelFromRecycleContext.Caption := 'Удалить';
AddToRecycleContext.Caption := 'Добавить';
AddFireTuningTweaker.Caption := 'Добавить FireTuning Tweaker';
Desk.Caption := 'Рабочий стол';
tx87.Caption := 'Настройка рабочего стола:';
Ch36.Caption := 'Версия Windows на Рабочем столе';
Ch37.Caption := 'Запретить рабочий стол';
Ch38.Caption := 'Скрыть вкладки "Тема" и "Оформление" в свойствах экрана';
Ch39.Caption := 'Скрыть вкладку "Рабочий стол"';
Ch40.Caption := 'Скрыть вкладку "Заставка"';
Ch41.Caption := 'Скрыть вкладку "Параметры"';

//Internet Page
LocalNet.Caption := 'Локальные сети';
tx206.Caption := 'Локальные сети:';
Ch33.Caption := 'Не сканировать сеть на наличие сетевых принтеров';
Ch34.Caption := 'Не сканировать сеть на наличие назначенных заданий (Scheduled Tasks)';
tx208.Caption := 'Сетевые диски:';
tx210.Caption := 'Сетевые подключения';
tx211.Caption := 'Отключить сетевые диски';
Ch23.Caption := 'Автоматически подгонять размеры рисунка';
Ch24.Caption := 'Запретить автоматические обновления IE';
Ch25.Caption := 'Скрывать редко используемые пункты в Избранном';
Ch26.Caption := 'Не выводить окно "Подключение удаленного доступа" при автономной работе';
Ch27.Caption := 'Открывать ярлыки в новом окне IE';
Ch28.Caption := 'Запретить фоновые звуки';
tx227.Caption := 'Редактор для просмотра исходного кода HTML страниц:';
tx228.Caption := 'Путь к папке закачек по умолчанию:';
tx199.Caption := 'Использовать автозаполнение для:';
Ch29.Caption := 'Веб-адресов';
Ch30.Caption := 'Форм';
Ch31.Caption := 'Автозаполнение имен пользователей и паролей в формах';
Ch32.Caption := 'Запрос на сохранение пароля';
ConnectionSetting.Caption := 'Настройка соединения';
tx185.Caption := 'Настройка соединения:';
ch20.Caption := 'Автоматически определять MTU';
ch21.Caption := 'Включить поддержку TCP окон больше 64Кб';
ch22.Caption := 'Выборочная передача поврежденных данных';
UpdateListButton.Caption := 'Обновить список';
tx187.Caption := 'Данная настройка включает поддержку Selective Acknowledgement (SACK). Если пакет';
tx188.Caption := 'или ряд пакетов TCP потеряны, то получатель может сообщить отправителю, какие';
tx189.Caption := 'данные были получены, а какие нет.';
tx192.Caption := 'Вызвать подключение удаленного доступа установленного по умолчанию';
tx193.Caption := 'Сторонние программы:';
tx190.Caption := 'Список установленных подключений';
tx191.Caption := 'Аплет: Телефон и модем';
tx177.Caption := 'Введите имя компьютера, адрес сайта или IP-адрес сервера';
tx178.Caption := 'Имя:';
tx179.Caption := 'IP-адрес:';
Find1.Caption := 'Найти';
Find2.Caption := 'Найти';
fr5.Caption := 'Ваши данные';
tx180.Caption := 'IP-адрес:';
tx181.Caption := 'Имя компьютера:';
tx182.Caption := 'Рабочая группа:';
tx183.Caption := 'MAC-адрес:';
tx184.Caption := 'Проверить соединение с Интернетом';

//System Information Page
tx114.Caption := 'Системная информация:';
tx132.Caption := 'Информация о памяти:';
tx146.Caption := 'Время запуска:';
tx116.Caption := 'Время и дата:';
tx117.Caption := 'Имя пользователя:';
tx118.Caption := 'Организация:';
tx119.Caption := 'Операционная система:';
tx120.Caption := 'Сборка:';
tx121.Caption := 'Продукт ID:';
tx122.Caption := 'Системная папка:';
tx123.Caption := 'Системный каталог:';
tx124.Caption := 'Тип ядра:';
tx125.Caption := 'Версия BIOS:';
tx126.Caption := 'Дата BIOS:';
tx127.Caption := 'Процессор:';
tx128.Caption := 'Модель процессора:';
tx129.Caption := 'Язык:';
tx130.Caption := 'IP-адрес:';
tx131.Caption := 'Имя компьютера:';
tx134.Caption := 'Физическая память:';
tx135.Caption := 'Использовано:';
tx136.Caption := 'Доступно страничной памяти:';
tx137.Caption := 'Всего страничной памяти:';
tx138.Caption := 'Общее количество:';
tx139.Caption := 'Доступная память:';
tx140.Left := 192;
tx141.Left := 192;
tx142.Left := 192;
tx143.Left := 192;
tx144.Left := 192;
tx145.Left := 192;

//Utils Page
tx149.Caption := 'Утилиты Windows OS:';
tx151.Caption := 'Монитор надежности и производительности';
tx152.Caption := 'Планировщик заданий';
tx153.Caption := 'Средство диагностики DirectX';
tx154.Caption := 'Общие папки (расшаренные ресурсы)';
tx155.Caption := 'Мастер установки оборудования';
tx156.Caption := 'Конфигурация системы';
tx157.Caption := 'Дефрагментация диска';
tx158.Caption := 'Управление компьютером';
tx159.Caption := 'Восстановление системы';
tx160.Caption := 'Панель управления';
tx161.Caption := 'Диспетчер устройств';
tx162.Caption := 'Очистка диска';
tx163.Caption := 'Управление дисками';
tx164.Caption := 'Локальные пользователи и группы';
tx167.Caption := 'Службы Windows';
tx168.Caption := 'Управление цветом';
tx169.Caption := 'Редактор реестра';
tx170.Caption := 'Сведения о системе';
tx171.Caption := 'Таблица символов';
tx172.Caption := 'Диспетчер задач';
tx170.Left := 272;
tx171.Left := 272;
tx172.Left := 272;

Size:= 55;
if GetUserName(NameUser, Size) then
LoggOffItem.Caption := 'Завершение сеанса ' + NameUser + '...' else
LoggOffItem.Caption := 'Завершение сеанса';

UpdateSetItem.Click;
end;

procedure TMainForm.EngItemClick(Sender: TObject);
begin
EngItem.Checked := True;
RusItem.Checked := False;

//Act of Tabs
if tx212.Caption = 'Текущая группа: ' + 'Интернет' then
tx212.Caption := 'Current group: ' + 'Internet';
if tx212.Caption = 'Текущая группа: ' + 'Рабочий стол' then
tx212.Caption := 'Current group: ' + 'Desktop';
if tx212.Caption = 'Текущая группа: ' + 'Система' then
tx212.Caption := 'Current group: ' + 'System';
if tx212.Caption = 'Текущая группа: ' + 'Защита' then
tx212.Caption := 'Current group: ' + 'Protect';
if tx212.Caption = 'Текущая группа: ' + 'Утилиты'then
tx212.Caption := 'Current group: ' + 'Utils';
if tx212.Caption = 'Текущая группа: ' + 'Class Handle' then
tx212.Caption := 'Current group: ' + 'Class Handle';
if tx212.Caption = 'Текущая группа: ' + 'Информация о компьютере'then
tx212.Caption := 'Current group: ' + 'Information of Computer';
if tx212.Caption = 'Текущая группа: ' + 'Настройки' then
tx212.Caption := 'Current group: ' + 'Preferences';
if tx212.Caption = 'Текущая группа: ' + 'Лицензионное соглашение' then
tx212.Caption := 'Current group: ' + 'License Agreement';
if tx212.Caption = 'Текущая группа: ' + 'Удаление программ' then
tx212.Caption := 'Current group: ' + 'Uninstall';

//Components

OpenDlg.Title := 'Screen saver';
OpenDlg.Filter := 'Screen saver (*.scr)|*.scr';

OpenPicDlg.Title := 'Choose';
SavePicDlg.Title := 'Save';

UpdateListBt.OnClick(Self);

//System Menu
SM := GetSystemMenu(Handle, True);
SM := GetSystemMenu(Handle, False);
InsertMenu(SM, Word(-1), Mf_Separator, Cherta, '');
InsertMenu(SM, Word(-2), Mf_ByPosition, AboutPro, 'About Tweaker...');

//Main Menu
UpdateSetItem.Caption := 'Update';
NewWinItem.Caption := 'New Window';
ShortcutItem.Caption := 'Create of Shortcut';
OnDesktopItem.Caption := 'Add to Desktop';
OnStartMenuItem.Caption := 'Add to Start Menu';
OnMenuProItem.Caption := 'Add to Programs Menu';
OnStartupItem.Caption := 'Add to Startup';
OnFavoritesItem.Caption := 'Add to Favorites';
RunWinItem.Caption := 'Run (Windows)...';
ChooseProItem.Caption := 'Choose Program...';
PropItem.Caption := 'Properties Tweaker...';
QuitItem.Caption := 'Quit';
NavigationItem.Caption := 'Navigation';
SystemItem.Caption := 'System';
ProtectItem.Caption := 'Protect';
DesktopItem.Caption := 'Desktop';
InternetItem.Caption := 'Internet';
UtilsItem.Caption := 'Utils';
InfoItem.Caption := 'Information of Computer';
DeleteItem.Caption := 'Uninstall';
SettingItem.Caption := 'Preferences';
EnergyItem.Caption := 'Energy';
ShutdownItem.Caption := 'Shutdown PC';
ReloadItem.Caption := 'Reload PC';
LoggOffItem.Caption := 'Log off';
MonitorOffItem.Caption := 'Monitor off';
InterfaceItem.Caption := 'Interface';
RusItem.Caption := 'Russian';
EngItem.Caption := 'English';
HelpItem.Caption := 'Help';
SysInfoItem.Caption := 'System Information...';
HomePageItem.Caption := 'Home Page...';
InformationItem.Caption := 'Information...';
LicItem.Caption := 'License';
SendItem.Caption := 'Send feedback';
SourceCodeItem.Caption := 'Give of Source Code';
AboutItem.Caption := 'About Tweaker...';
ResItem.Caption := 'Open';
ClosedItem.Caption := 'Quit';

//Main Menu Hints
UpdateSetItem.Hint := 'Update settings';
NewWinItem.Hint := 'Create of new window';
ShortcutItem.Hint := 'Create a shortcut';
OnDesktopItem.Hint := 'Create a shortcut to your Desktop';
OnStartMenuItem.Hint := 'Create a shortcut to your Start Menu';
OnMenuProItem.Hint := 'Create a shortcut to your Programs Menu';
OnStartupItem.Hint := 'Create a shortcut to your Startup';
OnFavoritesItem.Hint := 'Create a shortcut to your Favorites';
RunWinItem.Hint := 'The run start of program by means of Windows';
ChooseProItem.Hint := 'Choose a file with the subsequent run';
PropItem.Hint := 'Show properties of FireTuning Tweaker';
QuitItem.Hint := 'Closed application';
SystemItem.Hint := 'Go to the "System" tab';
ProtectItem.Hint := 'Go to the "Protect" tab';
DesktopItem.Hint := 'Go to the "Desktop" tab';
InternetItem.Hint := 'Go to the "Internet" tab';
UtilsItem.Hint := 'Go to the "Utils" tab';
ClassHandleItem.Hint := 'Go to the "Class Handle" tab';
InfoItem.Hint := 'Go to the "Information of computer" tab';
DeleteItem.Hint := 'Go to the "Uninstall" tab';
SettingItem.Hint := 'Go to the "Preferences" tab';
ShutdownItem.Hint := 'Shutdown PC';
ReloadItem.Hint := 'Reloading PC';
LoggOffItem.Hint := 'Log off';
MonitorOffItem.Hint := 'Monitor off';
RusItem.Hint := 'Choose of russian interface';
EngItem.Hint := 'Choose of english interface';
SysInfoItem.Hint := 'Show of system information';
HomePageItem.Hint := 'Go to FireTuning Tweaker home page';
InformationItem.Hint := 'Show information of computer';
LicItem.Hint := 'Read the license agreement of program';
SendItem.Hint := 'Send the letter to the author';
SourceCodeItem.Hint := 'Give of Source Code the FireTuning Tweaker';
AboutItem.Hint := 'About application';

//Navigation Panel
SystemBt.Caption := 'System';
ProtectBt.Caption := 'Protect';
DeskBt.Caption := 'Desktop';
InetBt.Caption := 'Internet';
UtilsBt.Caption := 'Utils';
ClassHandleBt.Caption := 'Class Handle';
InfoBt.Caption := 'Information';
UninstallBt.Caption := 'Uninstall';
OptionsBt.Caption := 'Preferences';
LicBt.Caption := 'License';
QuitBt.Caption := 'Quit';

//Svaing Panel
SaveExitBt.Caption := 'Save and Exit';
ApplyBt.Caption := 'Apply';
UndoBt.Caption := 'Undo';
CancelBt.Caption := 'Cancel';

//Open Window
OpenForm.Caption := 'Open';
OpenForm.txt1.Caption := 'Input of path to the graphical image.';
OpenForm.txt2.Caption := 'Open:';
OpenForm.txt3.Caption := 'Also you can use of button "Browse...", for the handing';
OpenForm.txt4.Caption := 'selection of image from window dialog.';
OpenForm.Closed.Caption := 'Cancel';
OpenForm.Choose.Caption := 'Browse...';

//About Window
AboutForm.Caption := 'About "FireTuning Tweaker"';
AboutForm.tx1.Caption := 'FireTuning Tweaker v 1.0';
AboutForm.tx2.Caption := 'Copyright © 2009 Domani Oleh (aka ?КТО_Я?)';
AboutForm.License.Clear;
AboutForm.License.Lines.Append('Attention! The Given Software is Protected');
AboutForm.License.Lines.Append('Laws on Copyrights and International');
AboutForm.License.Lines.Append('Agreements. Illegal Reproduction or');
AboutForm.License.Lines.Append('Distribution Given Programs or her Parts');
AboutForm.License.Lines.Append('Attracts Civil and the Criminal Liability.');
AboutForm.tx3.Caption := 'Perm Region, Chaykovskiy city';
AboutForm.SendMail.Text := '<Write the letter to the author';
AboutForm.tx9.Caption := 'GNU Open Source Code';
AboutForm.Closed.Caption := 'Close';

//Uninstall Page
tx215.Caption := 'List of the programs installed:';
InstallPro.Caption := 'Installed programs information';
RefreshBt.Caption := 'Refresh list';
RegistryDelBt.Caption := 'Delete form Registry';
SettingsControl.Caption := 'Settings';
tx225.Caption := 'Security Options:';
ch149.Caption := 'Disable the ability to change/remove programs';
ch150.Caption := 'Hide "Change/Remove programs" tab';
ch151.Caption := 'Hide "Installing programs" tab';
ch152.Caption := 'Hide "Installing Windows components" tab';
ch153.Caption := 'Hide Installing program from floppy or CD section';
ch154.Caption := 'Hide Install Microsoft programs section';
ch155.Caption := 'Hide install programs section from the network';
ch156.Caption := 'Hide compatibility information';

//Settings Page
tx173.Caption := 'Prefrences:';
ch1.Caption := 'Open of branch in the Registry Editor after right click on the setting';
ch2.Caption := 'Always on top';
ch3.Caption := 'Remember last window position';
ch4.Caption := 'Forbid multiple';
ch5.Caption := 'Main menu';
ch6.Caption := 'Minimized to system tray';
ch7.Caption := 'Minimized on pressing Escape';
ch8.Caption := 'Use of XP menu';
ch9.Caption := 'Animation on opening and closing main window';
ch10.Caption := 'Confirmation exit';
ch11.Caption := 'Run program with Windows OS startup';
ch12.Caption := 'Show modal windows in the Task Bar';
ch13.Caption := 'Invisible images in the menu';
ch15.Caption := 'Move window of client area';
ch16.Caption := 'Screen snap';
ch17.Caption := 'Window only of client area';
ch18.Caption := 'Status bar';
ch19.Caption := 'Show hint in the status bar';

//Protected Page
StartMenu.Caption := 'Start Menu and Task Bar';
tx25.Caption := 'Start menu:';
tx27.Caption := 'Customizing Classic Start Menu:';
Ch73.Caption := 'Make unavailable Task Bar and Start Menu properties';
Ch74.Caption := 'Disable the ability to modify Start Menu';
Ch75.Caption := 'Disable switching to the XP style of the Start Menu';
Ch76.Caption := 'Remove "Search" item from the Start Menu';
Ch77.Caption := 'Remove "Run..." item from the Start Menu';
Ch78.Caption := 'Remove "Help and Support" item from the Start Menu';
Ch79.Caption := 'Remove "Allprograms" item (XP style of Start Menu)';
Ch80.Caption := 'Remove "Recent documents" item from the Start Menu';
Ch81.Caption := 'Disable items in the "Settings" menu';
tx30.Caption := 'This option removes menu item, such as "Control Panel",';
tx31.Caption := '"Network Connections", "Printers and Faxes".';
tx32.Caption := 'TaskBar:';
Ch82.Caption := 'Disable context menu for the Task Bar';
tx34.Caption := 'Open Start Menu';
CompactDisk.Caption := 'Compact disks';
tx12.Caption := 'Compact disks:';
Ch70.Caption := 'Disable CD autoplay feature';
Ch71.Caption := 'Disable Windows XP CD-burning tools';
Ch72.Caption := 'Automatically download codecs from the Internet';
tx16.Caption := 'Automatic updates. Check for updates:';
tx18.Caption := 'Applet: Sounds';
ComboBox2.Clear;
ComboBox2.Items.Add('Once a day');
ComboBox2.Items.Add('Once a week');
ComboBox2.Items.Add('Once a month');
Ch60.Caption := 'Disable access to the Internet Options dialog';
Ch61.Caption := 'Remove "General" tab from the Internet options dialog';
Ch62.Caption := 'Remove "Security" tab from the Internet options dialog';
Ch63.Caption := 'Remove "Privacy" tab from the Internet options dialog';
Ch64.Caption := 'Remove "Content" tab from the Internet options dialog';
Ch65.Caption := 'Remove "Connections" tab from the Internet options dialog';
Ch66.Caption := 'Remove "Programs" tab from the Internet options dialog';
Ch67.Caption := 'Remove "Advanced" tab from the Internet options dialog';
Ch68.Caption := 'Do not allow changes on the "Advanced" tab in the Internet options dialog';
Ch69.Caption := 'Disable access to the Temporary Internet files settings';
tx203.Caption := 'Internet options';
tx204.Caption := 'Delete temporary files Internet Explorer';
tx201.Caption := 'Version Internet Explorer: ' + GetIEVersion('Version');
tx205.Caption := 'Input a name of site or IP-address of a server:';
Explorer.Caption := 'Windows Explorer';
tx8.Caption := 'Windows Explorer:';
tx10.Caption := 'Disable access to drivers:';
Ch54.Caption := 'Disable access to Windows Explorer context menu';
Ch55.Caption := 'Remove File menu';
Ch56.Caption := 'Remove Search button from Toolbar';
Ch57.Caption := 'Use Classic style of Windows Explorer';
Ch58.Caption := 'Disable access and opening drivers and folder';
Ch59.Caption := 'Hide alldrivers in the Windows Explorer';
Printers.Caption := 'Printers';
tx19.Caption := 'Printers:';
Ch52.Caption := 'Disable the ability to install new printers';
Ch53.Caption := 'Disable the ability to remove printers';
tx21.Caption := 'Installation printers of system:';
tx22.Caption := 'Properties of printer';
tx23.Caption := 'Install printer';
tx24.Caption := 'Printers folder';
System.Caption := 'System';
tx4.Caption := 'System:';
tx6.Caption := 'Network security:';
Ch14.Caption := 'Disable access to the task manager';
Ch45.Caption := 'Disable the ability to edit registry';
Ch46.Caption := 'Disable running aplets in control panel';
Ch47.Caption := 'Disable the ability to change display properties';
Ch48.Caption := 'Disable log off';
Ch49.Caption := 'Do not allow useing command prompt';
Ch50.Caption := 'Do not allow anonymous users to viewshared resources';
Ch51.Caption := 'Disable all resources shared by default (ADMIN$, C$, etc)';

//Class Information Studio Page
tx37.Caption := 'Drag the magnifying glass over the window to get it';
tx38.Caption := 'description (including Internet Explorer).';
tx39.Caption := 'Mouse position:';
tx40.Caption := 'ID:';
tx41.Caption := 'Window caption:';
tx42.Caption := 'Window class:';
tx43.Caption := 'Window handle:';
Ch35.Caption:= 'Under cursor';

//System Page
ClassicMenu.Caption := 'Classic menu';
tx85.Caption := 'Classic style of menus:';
Ch133.Caption := 'Scroll the Programs menu';
Ch134.Caption := 'Use pesonalized menus';
Ch135.Caption := 'Show small items in "Start" Menu';
Ch136.Caption := 'Display "Run..." command in the "Start" menu';
Ch137.Caption := 'Display "Logoff..." item in the "Start" menu';
Ch138.Caption := 'Display "Administrative tools" command in the "Start" menu';
Ch139.Caption := 'Display "Favorites" in the "Start" menu';
Ch140.Caption := 'Enable drug-and-drop of the "Start" menu';
Ch141.Caption := 'Expand "Control Panel" in the "Start" menu';
Ch142.Caption := 'Expand "My documents" folder in the "Start" menu';
Ch143.Caption := 'Expand "My picture" folder in the "Start" menu';
Ch144.Caption := 'Expand "Printers" folder in the "Start" menu';
Ch145.Caption := 'Expand "Network Connections" folder in the "Start" menu';
XPMenu.Caption := 'Elements of XP menu';
tx76.Caption := 'XP style of menus:';
Ch122.Caption := 'Administaring in Start Menu';
Ch124.Caption := 'Use scrolling for Programs menu';
Ch125.Caption := '"Run..." command';
Ch127.Caption := 'Search';
Ch128.Caption := 'Allow item dragging';
Ch129.Caption := 'My Network Places';
Ch130.Caption := 'Help and support';
Ch131.Caption := 'Display "Recent documents" menu item';
Ch132.Caption := 'Large icons in Start Menu';
tx78.Caption := 'My documents';
MyDocumentsBox.Clear;
MyDocumentsBox.Items.Add('Do not display this item');
MyDocumentsBox.Items.Add('Display folder as menu');
MyDocumentsBox.Items.Add('Display folder as link');
tx79.Caption := 'My computer';
MyComputerBox.Clear;
MyComputerBox.Items.Add('Do not display this item');
MyComputerBox.Items.Add('Display folder as menu');
MyComputerBox.Items.Add('Display folder as link');
tx80.Caption := 'My picture';
MyPictureBox.Clear;
MyPictureBox.Items.Add('Do not display this item');
MyPictureBox.Items.Add('Display folder as menu');
MyPictureBox.Items.Add('Display folder as link');
tx82.Caption := 'My music';
MyMusicBox.Clear;
MyMusicBox.Items.Add('Do not display this item');
MyMusicBox.Items.Add('Display folder as menu');
MyMusicBox.Items.Add('Display folder as link');
tx83.Caption := 'Control panel';
ControlPanelBox.Clear;
ControlPanelBox.Items.Add('Do not display this item');
ControlPanelBox.Items.Add('Display folder as menu');
ControlPanelBox.Items.Add('Display folder as link');
tx84.Caption := 'Network connection';
NewConnectionBox.Clear;
NewConnectionBox.Items.Add('Do not display this item');
NewConnectionBox.Items.Add('Display folder as menu');
NewConnectionBox.Items.Add('Display folder as link');
TaskBar.Caption := 'Task Bar';
tx57.Caption := 'Task Bar:';
tx59.Caption := 'Flashing of Task Bar buttons:';
Ch118.Caption := 'Show pop-up descriptionsfor files and folders';
Ch119.Caption := 'Hide inactive icons in system tray';
Ch120.Caption := 'Hide all icons in system tray';
Ch121.Caption := 'Group simular Task Bar buttons';
tx61.Caption := 'If program requires your attention, its window may either pop up on';
tx62.Caption := 'top of others or just turn to a flashing button on Task Bar. You can set';
tx63.Caption := 'the amount of time the program will signalize you before popping up.';
tx64.Caption := '';
tx65.Caption := '';
tx66.Caption := 'Set how many times the button will flash (parameters 0 will';
tx67.Caption := 'make button flash forever).';
WinExplorer.Caption := 'Windows Explorer';
tx53.Caption := 'Windows Explorer:';
tx55.Caption := 'Windows Explorer context menu:';
Ch109.Caption := 'Animate windows when minimizing and maximizing';
Ch110.Caption := 'Display to contents of the window while dragging';
Ch111.Caption := 'Disable image caching (thumbnails)';
Ch112.Caption := 'Open Explorer windows as a separate process';
Ch113.Caption := 'Automatically restart Windows Explorer when it crashes';
Ch114.Caption := 'Disable low disk space warning';
Ch115.Caption := 'Add "Copy to folder..." menu item';
Ch116.Caption := 'Add "Move to folder..." menu item';
Ch117.Caption := '"Send to" menu item';
Boot.Caption := 'System boot-up';
tx44.Caption := 'System logon:';
Ch98.Caption := 'Display welcome message at logon';
tx46.Caption := 'Heading:';
tx47.Caption := 'Message:';
tx48.Caption := 'User accounts';
Ch99.Caption := 'Use Welcome screen at logon';
Ch100.Caption := 'Do not display last user name';
Ch101.Caption := 'Use Fast User Switching interface to logon and logoff';
Ch102.Caption := 'Do not display status messages at system logon and logoff';
Ch103.Caption := 'Show commands executed at system logon and logoff';
Ch104.Caption := 'Switch Num Lock on when Windows startes';
tx49.Caption := 'Default input language:';
ComboBox10.Clear;
ComboBox10.Items.Add('Russian');
ComboBox10.Items.Add('English');
Ch105.Caption := 'Disable autorun for Local Machine Run programs';
Ch106.Caption := 'Disable autorun for Local Machine Run Once programs';
Ch107.Caption := 'Disable autorun for Current User Run programs';
Ch108.Caption := 'Disable autorun for Current User Run Once programs';
MenuWin.Caption := 'Start Menu';
tx68.Caption := 'Start Menu:';
Ch90.Caption := 'Remove users name form Start Menu';
Ch91.Caption := 'Disabled recent documents history';
Ch92.Caption := 'Empty Recent Document folder';
Ch93.Caption := 'Remove "Logoff..." from Start Menu';
Ch94.Caption := 'Select recently installed programs';
Ch95.Caption := 'Do not show common groupesin folders (All users)';
Ch96.Caption := 'Remove Friquently Used Program list';
Ch97.Caption := 'Open menu when pointing at it with the mouse cursor';
tx70.Caption := 'Number of links in "Documents" folder';
tx71.Caption := 'Menu show delay:';
tx73.Caption := 'ms';
tx74.Caption := 'Parameter 0 removes delay. This setting also influences the speed';
tx75.Caption := 'with which items in Windows Explorer are being selected.';
YourSustem.Caption := 'System';
tx50.Caption := 'System:';
Ch83.Caption := 'Disable system debugger Dr. Watson';
Ch84.Caption := 'Disable Windows tracking features';
Ch85.Caption := 'Do not send to Microsoft error reports';
Ch86.Caption := 'Display a window for explaining the reason for shutdown';
Ch87.Caption := 'Enable clear page file at shutdown';
Ch88.Caption := 'Run 16-bit applications as separate processes';
Ch89.Caption := 'Forced "Stop-on-Crash" when pressing <Ctrl+Scroll Lock>';
tx52.Caption := 'Error reporting:';
ComboBox9.Clear;
ComboBox9.Items.Add('Show all error messages (default setting)');
ComboBox9.Items.Add('Only application errors, no system error messages');
ComboBox9.Items.Add('Disable allerror messages');

//Desktop Page
Other.Caption := 'Other';
tx109.Caption := 'Wallpaper:';
tx111.Caption := 'Screen saver:';
tx113.Caption := 'Parameters and settings';
Commands.Caption := 'Commands';
Wallpaper.Caption := 'Set as wallpaper';
N36.Caption := 'Choose...';
N37.Caption := 'Save...';
N2.Caption := 'Open as...';
N52.Caption := 'Edit';
N51.Caption := 'Copy to Clipboard';
N50.Caption := 'Delete';
N55.Caption := 'Clear Clipboard';
N42.Caption := 'Directory...';
N34.Caption := 'Properties...';
N35.Caption := 'Negative';
N41.Caption := 'Diaplay settings';
Centered.Caption := 'Centered';
Stretched.Caption := 'Stretched';
Tiled.Caption := 'Tiled';
Install.Caption := 'Install';
Preview.Caption := 'Preview';
Energy.Caption := 'Energy';
tx101.Caption := 'Allow:';
tx102.Caption := 'Quality:';
tx103.Caption := 'Number bits:';
tx104.Caption := 'Flats:';
MyScreen.Caption := 'Screen';
tx99.Caption := 'Screen:';
ListMode.Caption := 'List of all access modes';
UpdateListBt.Caption := 'Update';
ScreenApplyBt.Caption := 'Apply';
DeskIcon.Caption := 'Icons';
tx97.Caption := 'Icons on your Desktop (Classic Style):';
Ch42.Caption := 'My computer';
Ch43.Caption := 'Recycle Bin';
tx217.Caption := 'Icons on your Desktop (XP Style):';
ch146.Caption := 'My computer';
ch147.Caption := 'Recycle Bin';
RecycleBin.Caption := 'Recycle Bin';
tx89.Caption := 'Recycle Bin:';
tx90.Caption := 'Rename Recycle Bin:';
AddToComputer.Caption := 'Add Recycle Bin icon to My Computer';
tx96.Caption := 'Recycle Bin';
tx92.Caption := 'Remove file to Recycle Bin';
tx93.Caption := 'Wipe securely';
tx94.Caption := 'Remove catalog';
tx95.Caption := 'Clean of Recycle Bin';
tx219.Caption := 'Recycle Bin context menu item:';
tx221.Caption := 'Add a new item to the Recycle Bin context menu:';
tx222.Caption := 'Item:';
tx223.Caption := 'Command:';
tx224.Caption := 'c:\windows\notepad.exe or notepad.exe';
DelFromRecycleContext.Caption := 'Remove';
AddToRecycleContext.Caption := 'Add';
AddFireTuningTweaker.Caption := 'Add a FireTuning Tweaker';
Desk.Caption := 'Desktop';
tx87.Caption := 'Customizing your Desktop:';
Ch36.Caption := 'Windows version viewed on Desktop';
Ch37.Caption := 'Disabled Desktop';
Ch38.Caption := 'Remove "Themes" and "Appearance" tabs from the display properties dialog';
Ch39.Caption := 'Remove "Desktop" tab';
Ch40.Caption := 'Remove "Screen Saver" tab from the display properties dialog';
Ch41.Caption := 'Remove "Settings" tab from the display properties dialog';

//Internet Page
LocalNet.Caption := 'Local Networks';
tx206.Caption := 'Local Area Networks:';
Ch33.Caption := 'Do not perform a Network scann for shared printers';
Ch34.Caption := 'Do not perform a Network scann for Scheduled Tasks';
tx208.Caption := 'Net disks:';
tx210.Caption := 'Network connections';
tx211.Caption := 'Disconnect network drivers';
Ch23.Caption := 'Automatically resize images to fit on the page';
Ch24.Caption := 'Turn off automatic updates for Internet Explorer';
Ch25.Caption := 'Hide infrequently used items in "Favorites" folder';
Ch26.Caption := 'Do not show "Page unabailable offline" window while working offline';
Ch27.Caption := 'Open links in new Internet Explorer windows';
Ch28.Caption := 'Disable background sound';
tx227.Caption := 'Editor to view HTML sources:';
tx228.Caption := 'Path to the folder to store my download files in:';
tx199.Caption := 'Enable autocomplete feature for:';
Ch29.Caption := 'WEB addresses';
Ch30.Caption := 'Forms';
Ch31.Caption := 'User names and psswords in edit forms';
Ch32.Caption := 'Confirm saving passwords';
ConnectionSetting.Caption := 'Connection settings';
tx185.Caption := 'Connection settings:';
ch20.Caption := 'Automatically determine MTU';
ch21.Caption := 'Enable greater than 64 Kb TCP window support';
ch22.Caption := 'Selective Acknowledgement data transfer';
UpdateListButton.Caption := 'Update list';
tx187.Caption := 'This option enables Selective Acknowledgement (SACK) support. If one more TCP';
tx188.Caption := 'packets were lost, recipient can notify sender what data was transferred successfully';
tx189.Caption := '';
tx192.Caption := 'Call connection of remote access by default';
tx193.Caption := 'Adherent program:';
tx190.Caption := 'List of connections';
tx191.Caption := 'Applet: Telephone and modem';
tx177.Caption := 'Input computer name, address of site or IP-address of a server';
tx178.Caption := 'Name:';
tx179.Caption := 'IP-address:';
Find1.Caption := 'Find';
Find2.Caption := 'Find';
fr5.Caption := 'Your dates';
tx180.Caption := 'IP-address:';
tx181.Caption := 'Compuer name:';
tx182.Caption := 'Work Group:';
tx183.Caption := 'Mac-address:';
tx184.Caption := 'Check connection';

//System Information Page
tx114.Caption := 'System information:';
tx132.Caption := 'System memory:';
tx146.Caption := 'Running time:';
tx116.Caption := 'Time and date:';
tx117.Caption := 'User name:';
tx118.Caption := 'Organization:';
tx119.Caption := 'Operation system:';
tx120.Caption := 'Build:';
tx121.Caption := 'Serial number of product:';
tx122.Caption := 'System folder:';
tx123.Caption := 'System directory:';
tx124.Caption := 'Type of core:';
tx125.Caption := 'Version of BIOS:';
tx126.Caption := 'Date of BIOS:';
tx127.Caption := 'Processor:';
tx128.Caption := 'Model of processor:';
tx129.Caption := 'Language:';
tx130.Caption := 'IP-address:';
tx131.Caption := 'Computer name:';
tx134.Caption := 'Physical memory:';
tx135.Caption := 'Use:';
tx136.Caption := 'Available page memory:';
tx137.Caption := 'Total of page memory:';
tx138.Caption := 'Total memory:';
tx139.Caption := 'Available memory:';
tx140.Left := 145;
tx141.Left := 145;
tx142.Left := 145;
tx143.Left := 145;
tx144.Left := 145;
tx145.Left := 145;

//Utils Page
tx149.Caption := 'Windows OS utilities:';
tx151.Caption := 'System perfomance';
tx152.Caption := 'Planing tasks';
tx153.Caption := 'Checking DirectX';
tx154.Caption := 'Shared folders';
tx155.Caption := 'Master of installation equipment';
tx156.Caption := 'Configuration';
tx157.Caption := 'Defragmentation';
tx158.Caption := 'Computer managment';
tx159.Caption := 'Restore system';
tx160.Caption := 'Control panel';
tx161.Caption := 'Device management';
tx162.Caption := 'Clear disks';
tx163.Caption := 'Disk management';
tx164.Caption := 'Local users anf groups';
tx167.Caption := 'Windows services';
tx168.Caption := 'Colour management';
tx169.Caption := 'Registry editor';
tx170.Caption := 'System information';
tx171.Caption := 'Table symbols';
tx172.Caption := 'Task manager';
tx170.Left := 200;
tx171.Left := 200;
tx172.Left := 200;

Size:= 55;
if GetUserName(NameUser, Size) then
LoggOffItem.Caption := 'Log off ' + NameUser + '...' else
LoggOffItem.Caption := 'Log off';

UpdateSetItem.Click;
end;

procedure TMainForm.tx22Click(Sender: TObject);
const
Defaults: TPrinterDefaults = (pDatatype: nil;
pDevMode: nil;
DesiredAccess: STANDARD_RIGHTS_REQUIRED or PRINTER_ACCESS_USE);
var
hPrinter: THandle;
Device: array[0..255] of char;
Driver: array[0..255] of char;
Port: array[0..255] of char;
hDeviceMode: THandle;
begin
Printer.PrinterIndex := Combobox1.ItemIndex;
Printer.GetPrinter(Device, Driver, Port, hDeviceMode);
if not OpenPrinter(@Device, hPrinter, @Defaults) then
RaiseLastWin32Error;
try
PrinterProperties(Handle, hPrinter);
finally
ClosePrinter(hPrinter);
end;
end;

procedure TMainForm.tx24Click(Sender: TObject);
begin
WinExec('Control printers', Sw_restore);
end;

procedure TMainForm.tx23Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'rundll32.exe',
'shell32.dll,SHHelpShortcuts_RunDLL AddPrinter',
'', Sw_ShowNormal);
end;

procedure EmptyRecycleBin;
const
SHERB_NOCONFIRMATION = $00000001;
SHERB_NOPROGRESSUI = $00000002;
SHERB_NOSOUND = $00000004;
type
TSHEmptyRecycleBin = function(Wnd: HWND;
pszRootPath: PChar; dwFlags: DWORD): HRESULT;  stdcall;
var
SHEmptyRecycleBin: TSHEmptyRecycleBin;
LibHandle: THandle;
begin
LibHandle := LoadLibrary(PChar('Shell32.dll'));
if LibHandle <> 0 then @SHEmptyRecycleBin :=
GetProcAddress(LibHandle, 'SHEmptyRecycleBinA')
else
begin
MessageDlg('Failed to load Shell32.dll.', mtError, [mbOK], 0);
Exit;
end;
if @SHEmptyRecycleBin <> nil then
SHEmptyRecycleBin(Application.Handle, nil,
SHERB_NOCONFIRMATION or SHERB_NOPROGRESSUI or SHERB_NOSOUND);
FreeLibrary(LibHandle); @SHEmptyRecycleBin := nil;
end;

procedure TMainForm.tx95Click(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if RusItem.Checked then
begin
if MessageBox(Handle,
'Вы уверены, что хотите очистить корзину?',
'Подтверждение на выполнение операции',
Mb_IconQuestion + Mb_YesNo) = idYes then
EmptyRecycleBin;
end;
if EngItem.Checked then
begin
if MessageBox(Handle,
'Are you sure, what do you want to clean of Recycle Bin?',
'Confirmation',
Mb_IconQuestion + Mb_YesNo) = idYes then
EmptyRecycleBin;
end;
end;

procedure TMainForm.ApplicationEventsIdle(Sender: TObject;
var Done: Boolean);
var
DllVersion: integer;
SHQueryRBInfo: TSHQueryRBInfo;
r: HResult;
count, days, min, hours, seconds  : longint;
begin
DllVersion := GetDllVersion(PChar(shell32));
if DllVersion >= $00040048 then
begin
FillChar(SHQueryRBInfo, SizeOf(TSHQueryRBInfo), #0);
SHQueryRBInfo.cbSize := SizeOf(TSHQueryRBInfo);
R := SHQueryRecycleBin(nil, @SHQueryRBInfo);
if r = s_OK then
begin
if EngItem.Checked then
tx91.Caption := Format('Size: %d' + ' Kb ' + 'Elements: %d',
[SHQueryRBInfo.i64Size, SHQueryRBInfo.i64NumItems]);
if RusItem.Checked then
tx91.Caption := Format('Размер: %d' + ' Kb ' + 'Элементов: %d',
[SHQueryRBInfo.i64Size, SHQueryRBInfo.i64NumItems]);
end;
IpEdit.Text := IdIPWatch.LocalIP;
end;
Label2.Caption := DateToStr(Date) + ', ' + TimeToStr(Time);
Count := GetTickCount();
Count := Count div 1000;
Days := Count div (24 * 3600);
If Days > 0 Then
Count := Count - (24 * 3600 * Days);
Hours := Count div 3600;
If Hours > 0 Then
Count := Count - (3600 * Hours);
Min := Count div 60;
Seconds := Count Mod 60;
if MainForm.RusItem.Checked then
begin
tx148.caption := IntToStr(Days) +
' Дней ' + IntToStr(Hours) + ' часов ' + IntToStr(Min) +' минут '
+ inttostr(seconds) +' секунд ';
end;
if MainForm.EngItem.Checked then
begin
tx148.caption := IntToStr(Days) +
' Days ' + IntToStr(Hours) + ' hours ' + IntToStr(Min) +' minutes '
+ inttostr(seconds) +' seconds ';
end;
Edit8.Text := IdIPWatch.LocalIP;
Edit9.Text := IdIPWatch.LocalName;
ComputerEdit.Text := IdIPWatch.LocalName;
DomenEdit.Text := GetDomainName;
MacEdit.Text := GetMACAdress;
end;

function Recycle(const FileName: string; Wnd: HWND = 0): Boolean;
var
FileOp: TSHFileOpStruct;
begin
FillChar(FileOp, SizeOf(FileOp), 0);
if Wnd = 0 then
Wnd := Application.Handle;
FileOp.Wnd := Wnd;
FileOp.wFunc := FO_DELETE;
FileOp.pFrom := PChar(FileName);
FileOp.fFlags := FOF_ALLOWUNDO or FOF_NOERRORUI or FOF_SILENT;
Result := (SHFileOperation(FileOp) = 0) and (not
FileOp.fAnyOperationsAborted);
end;

procedure TMainForm.tx92Click(Sender: TObject);
var
s: String;
begin
if RusItem.Checked then
begin
if OpenSaveFileDialog(MainForm.Handle,
'*.exe', 'Все файлы (*.*)|*.*|Программы (*.exe)|*.exe|Библиотеки (*.dll)|*.dll', ParamStr(1),
'Удалить файл в корзину', s, True) then
begin
Recycle(s, Handle);
end;
end;

if EngItem.Checked then
begin
if OpenSaveFileDialog(MainForm.Handle,
'*.exe', 'All files (*.*)|*.*|Executable files (*.exe)|*.exe|Libraries (*.dll)|*.dll', ParamStr(1),
'Remove file to Recycle Bin', s, True) then
begin
Recycle(s, Handle);
end;
end;
end;

procedure TMainForm.tx93Click(Sender: TObject);
var
s: String;
begin
if RusItem.Checked then
begin
if OpenSaveFileDialog(MainForm.Handle,
'*.exe', 'Все файлы (*.*)|*.*|Программы (*.exe)|*.exe|Библиотеки (*.dll)|*.dll', ParamStr(1),
'Удалить файл НАМЕРТВО', s, True) then
begin
DeleteFile(s);
end;
end;
if EngItem.Checked then
begin
if OpenSaveFileDialog(MainForm.Handle,
'*.exe', 'All files (*.*)|*.*|Executable files (*.exe)|*.exe|Libraries (*.dll)|*.dll', ParamStr(1),
'Remove file IRREVERSIBLY', s, True) then
begin
DeleteFile(s);
end;
end;
end;

procedure TMainForm.OpenDlgShow(Sender: TObject);
const
LB_FILETYPES_ID = 1089;
LB_FILENAME_ID = 1090;
LB_DRIVES_ID = 1091;
Str1 = 'Установить';
Str2 = 'Отмена';
Str3 = 'Тип:';
Str4 = 'Имя:';
Str5 = 'Tweaker';
Str6 = 'Install';
Str7 = 'Cancel';
Str8 = 'Type:';
Str9 = 'Name:';
var
hOpenDialog: HWND;
begin
hOpenDialog := GetParent(OpenDlg.Handle);
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idOk, Longint(PChar(Str1))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idOk, Longint(PChar(Str6)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idCancel, Longint(PChar(Str2))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idCancel, Longint(PChar(Str7)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILETYPES_ID, Longint(PChar(Str3))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILETYPES_ID, Longint(PChar(Str8)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILENAME_ID, Longint(PChar(Str4))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILENAME_ID, Longint(PChar(Str9)));
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_DRIVES_ID, Longint(PChar(Str5)));
end;

procedure DeleteIeTempFiles;
var
lpEntryInfo: PInternetCacheEntryInfo;
hCacheDir: LongWord;
dwEntrySize: LongWord;
begin
dwEntrySize := 0;
FindFirstUrlCacheEntry(nil, TInternetCacheEntryInfo(nil^), dwEntrySize);
GetMem(lpEntryInfo, dwEntrySize);
if dwEntrySize > 0 then lpEntryInfo^.dwStructSize := dwEntrySize;
hCacheDir := FindFirstUrlCacheEntry(nil, lpEntryInfo^, dwEntrySize);
if hCacheDir <> 0 then
begin
repeat
DeleteUrlCacheEntry(lpEntryInfo^.lpszSourceUrlName);
FreeMem(lpEntryInfo, dwEntrySize);
dwEntrySize := 0;
FindNextUrlCacheEntry(hCacheDir, TInternetCacheEntryInfo(nil^), dwEntrySize);
GetMem(lpEntryInfo, dwEntrySize);
if dwEntrySize > 0 then lpEntryInfo^.dwStructSize := dwEntrySize;
until not FindNextUrlCacheEntry(hCacheDir, lpEntryInfo^, dwEntrySize);
end;
FreeMem(lpEntryInfo, dwEntrySize);
FindCloseUrlCache(hCacheDir);
end;

procedure TMainForm.tx204Click(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if RusItem.Checked then
begin
if Messagebox(Handle,
'Удалить временные файлы Microsoft Internet Explorer?',
'Подтверждение на выполнение операции',
Mb_IconQuestion + Mb_YesNo) = idYes then
DeleteIeTempFiles;
end;
if EngItem.Checked then
begin
if Messagebox(Handle,
'Delete temporary files Microsoft Internet Explorer?',
'Confirmation',
Mb_IconQuestion + Mb_YesNo) = idYes then
DeleteIeTempFiles;
end;
end;

procedure OpenURL(Url: string);
var
ts: string;
begin
with TRegistry.Create do
try
rootkey := HKEY_CLASSES_ROOT;
OpenKey('\htmlfile\shell\open\command', False);
try
ts := ReadString('');
except
ts := '';
end;
CloseKey;
finally
Free;
end;
if ts = '' then Exit;
ts := Copy(ts, Pos('"', ts) + 1, Length(ts));
ts := Copy(ts, 1, Pos('"', ts) - 1);
ShellExecute(0, 'open', PChar(ts), PChar(url), nil, SW_SHOW);
end;

procedure TMainForm.GoToAddressClick(Sender: TObject);
begin
if GoToWebAddressEd.Text = '' then
Exit else
OpenURL(GoToWebAddressEd.Text);
end;

procedure TMainForm.tx17Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'wmplayer', nil,nil, Sw_ShowNormal);
end;

procedure TMainForm.tx18Click(Sender: TObject);
begin
WinExec('Control mmsys.cpl', Sw_Restore);
end;

procedure RemoveAll(path: string);
var
Sr: TSearchRec;
begin
if FindFirst(Path + '\*.*', faAnyFile, Sr) = 0 then
begin
repeat
if Sr.Attr and faDirectory = 0 then
begin
DeleteFile(Path + '\' + Sr.Name);
end else begin
if Pos('.', Sr.Name) <= 0 then
RemoveAll(path + '\' + Sr.name);
end;
until
FindNext(Sr) <> 0;
end;
FindClose(Sr);
RemoveDirectory(PChar(Path));
end;

procedure TMainForm.tx94Click(Sender: TObject);
var
Dir: String;
begin
if RusItem.Checked then
begin
if SelectDirectory('Удалить каталог НАМЕРТВО:', '', Dir) then
RemoveAll(Dir);
end;
if EngItem.Checked then
begin
if SelectDirectory('Remove catalog IRREVERSIBLY:', '', Dir) then
RemoveAll(Dir);
end;
end;

procedure TMainForm.tx191Click(Sender: TObject);
begin
WinExec('CONTROL.EXE telephon.cpl', Sw_ShowNormal);
end;

procedure TMainForm.SavePicDlgShow(Sender: TObject);
const
LB_FILETYPES_ID = 1089;
LB_FILENAME_ID = 1090;
LB_DRIVES_ID = 1091;
Str1 = 'Спаси';
Str2 = 'Отмена';
Str3 = 'Тип:';
Str4 = 'Имя:';
Str5 = 'Tweaker';
Str6 = 'Save';
Str7 = 'Cancel';
Str8 = 'Type:';
Str9 = 'Name:';
var
hOpenDialog: HWND;
begin
hOpenDialog := GetParent(SavePicDlg.Handle);
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idOk, Longint(PChar(Str1))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idOk, Longint(PChar(Str6)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idCancel, Longint(PChar(Str2))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idCancel, Longint(PChar(Str7)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILETYPES_ID, Longint(PChar(Str3))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILETYPES_ID, Longint(PChar(Str8)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILENAME_ID, Longint(PChar(Str4))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILENAME_ID, Longint(PChar(Str9)));
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_DRIVES_ID, Longint(PChar(Str5)));
end;

procedure TMainForm.OpenPicDlgShow(Sender: TObject);
const
LB_FILETYPES_ID = 1089;
LB_FILENAME_ID = 1090;
LB_DRIVES_ID = 1091;
Str1 = 'Загрузить';
Str2 = 'Отмена';
Str3 = 'Тип:';
Str4 = 'Имя:';
Str5 = 'Tweaker';
Str6 = 'Open';
Str7 = 'Cancel';
Str8 = 'Type:';
Str9 = 'Name:';
var
hOpenDialog: HWND;
begin
hOpenDialog := GetParent(OpenPicDlg.Handle);
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idOk, Longint(PChar(Str1))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idOk, Longint(PChar(Str6)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idCancel, Longint(PChar(Str2))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, idCancel, Longint(PChar(Str7)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILETYPES_ID, Longint(PChar(Str3))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILETYPES_ID, Longint(PChar(Str8)));
if RusItem.Checked then
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILENAME_ID, Longint(PChar(Str4))) else
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_FILENAME_ID, Longint(PChar(Str9)));
SendMessage(hOpenDialog, CDM_SETCONTROLTEXT, LB_DRIVES_ID, Longint(PChar(Str5)));
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
OpenForm.Position := poMainFormCenter;
OpenForm.TextList.Clear;
OpenForm.ShowModal;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
try
/////////////////////////////////////
//Вкладка СИСТЕМА  - загрузка системы
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Использовать страницу приветствия
R.OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon');
if r.ValueExists('LogonType')
then i:=r.ReadInteger('LogonType');
if i=0 then
Ch99.Checked:=False else
Ch99.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Не показывать имя последнего пользователя
R.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\System');
if r.ValueExists('DontDisplayLastUserName')
then i:=r.ReadInteger('DontDisplayLastUserName');
if i=0 then
Ch100.Checked:=False else
Ch100.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Использовать быстрое переключение пользователей
R.OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon');
if r.ValueExists('AllowMultipleTSSessions')
then i:=r.ReadInteger('AllowMultipleTSSessions');
if i=0 then
Ch101.Checked:=False else
Ch101.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Не показывать сообщения при запуске и выходе из системы
R.OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System');
if r.ValueExists('DisableStatusMessages')
then i:=r.ReadInteger('DisableStatusMessages');
if i=0 then
Ch102.Checked:=False else
Ch102.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Показывать выполняемые команды при запуске и выходе из системы
R.OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System');
if r.ValueExists('verbosestatus')
then i:=r.ReadInteger('verbosestatus');
if i=0 then
Ch103.Checked:=False else
Ch103.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_USERS;
r.OpenKeyReadOnly('.DEFAULT\Control Panel\Keyboard');
if r.ValueExists('InitialKeyboardIndicators')
then s:=r.ReadString('InitialKeyboardIndicators');
if s='2' then
Ch104.Checked := True else
Ch104.Checked := False;

r:=TRegistry.Create;
r.RootKey:=HKEY_USERS;
//Раскладка клавиатуры при входе в систему:
r.OpenKeyReadOnly('\.DEFAULT\Keyboard Layout\Preload');
if r.ValueExists('2')
then s:=r.ReadString('2');
if s='00000409' then
ComboBox10.ItemIndex := 0;
if s='00000419' then
ComboBox10.ItemIndex := 1;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Запретить автозапуск программ Local Machine Run
R.OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer');
if r.ValueExists('DisableLocalMachineRun')
then i:=r.ReadInteger('DisableLocalMachineRun');
if i=0 then
Ch105.Checked:=False else
Ch105.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Запретить автозапуск программ Local Machine Run Once
R.OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer');
if r.ValueExists('DisableLocalMachineRunOnce')
then i:=r.ReadInteger('DisableLocalMachineRunOnce');
if i=0 then
Ch106.Checked:=False else
Ch106.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Запретить автозапуск программ Current User Run
R.OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer');
if r.ValueExists('DisableCurrentUserRun')
then i:=r.ReadInteger('DisableCurrentUserRun');
if i=0 then
Ch107.Checked:=False else
Ch107.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Запретить автозапуск программ Current User Run Once
R.OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer');
if r.ValueExists('DisableCurrentUserRunOnce')
then i:=r.ReadInteger('DisableCurrentUserRunOnce');
if i=0 then
Ch108.Checked:=False else
Ch108.Checked:=True;

/////////////////////////////////////
//Вкладка СИСТЕМА  - система
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Отключить встроенный отладчик Dr. Watson
R.OpenKeyReadOnly('\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug');
if r.ValueExists('Auto')
then s:=r.ReadString('Auto');
if s='1' then
Ch83.Checked:=False else
Ch83.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Отключить слежение Windows за пользователем
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoInstrumentation')
then i:=r.ReadInteger('NoInstrumentation');
if i=0 then
Ch84.Checked:=False else
Ch84.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Не отсылать в Microsoft отчеты об ошибках
R.OpenKeyReadOnly('\SOFTWARE\Microsoft\PCHealth\ErrorReporting');
if r.ValueExists('DoReport')
then i:=r.ReadInteger('DoReport');
if i=0 then
Ch85.Checked:=True else
Ch85.Checked:=False;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Выводить окно для ввода причины завершения работы
R.OpenKeyReadOnly('\Software\Policies\Microsoft\Windows NT\Reliability');
if r.ValueExists('ShutdownReasonUI')
then i:=r.ReadInteger('ShutdownReasonUI');
if i=0 then
Ch86.Checked:=False else
Ch86.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Очистка файла подкачки перед перезагрузкой системы
R.OpenKeyReadOnly('\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management');
if r.ValueExists('ClearPageFileAtShutdown')
then i:=r.ReadInteger('ClearPageFileAtShutdown');
if i=0 then
Ch87.Checked:=False else
Ch87.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Запускать 16-битные программы в отдельных процессах
r.OpenKeyReadOnly('\SYSTEM\CurrentControlSet\Control\WOW');
if r.ValueExists('DefaultSeparateVDM')
then s:=r.ReadString('DefaultSeparateVDM');
if s='yes' then
Ch88.Checked:=True else
Ch88.Checked:=False;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Принудительный вызов "стоп-ошибки" при нажатии Ctrl+Scroll Lock
R.OpenKeyReadOnly('\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters');
if r.ValueExists('CrashOnCtrlScroll')
then i:=r.ReadInteger('CrashOnCtrlScroll');
if i=0 then
Ch89.Checked:=False else
Ch89.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Сообщения об ошибках
R.OpenKeyReadOnly('\SYSTEM\CurrentControlSet\Control\Windows');
if r.ValueExists('ErrorMode')
then i:=r.ReadInteger('ErrorMode');
if i=0 then
ComboBox9.ItemIndex := 0;
if i=1 then
ComboBox9.ItemIndex := 1;
if i=2 then
ComboBox9.ItemIndex := 2;  

/////////////////////////////////////
//Вкладка СИСТЕМА  - Проводник
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Анимация при сворачивании и разворачивании окон
r.OpenKeyReadOnly('\Control Panel\Desktop\WindowMetrics');
if r.ValueExists('MinAnimate')
then s:=r.ReadString('MinAnimate');
if s='0' then
Ch109.Checked:=False else
Ch109.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Отображать содержимое окна при перетаскивании
r.OpenKeyReadOnly('\Control Panel\Desktop');
if r.ValueExists('DragFullWindows')
then s:=r.ReadString('DragFullWindows');
if s='0' then
Ch110.Checked:=False else
Ch110.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить кэширование изображений (thumbnails)
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('DisableThumbnailCache')
then i:=r.ReadInteger('DisableThumbnailCache');
if i=0 then
Ch111.Checked:=False else
Ch111.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запускать окна Проводника в отдельном процессе
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('SeparateProcess')
then i:=r.ReadInteger('SeparateProcess');
if i=0 then
Ch112.Checked:=False else
Ch112.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Автоматически перезапускать Проводник при ошибках
R.OpenKeyReadOnly('\Software\Microsoft\Windows NT\CurrentVersion\Winlogon');
if r.ValueExists('AutoRestartShell')
then i:=r.ReadInteger('AutoRestartShell');
if i=0 then
Ch113.Checked:=False else
Ch113.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Отключить сообщение о недостатке свободного места на диске
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoLowDiskSpaceChecks')
then i:=r.ReadInteger('NoLowDiskSpaceChecks');
if i=0 then
Ch114.Checked:=False else
Ch114.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CLASSES_ROOT;
//Добавить пункт меню "Копировать в папку..."
if r.KeyExists('\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To') then
Ch115.Checked := True else
Ch115.Checked := False;

r:=TRegistry.Create;
reg.RootKey:=HKEY_CLASSES_ROOT;
//Добавить пункт меню "Переместить в папку..."
if reg.KeyExists('\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To') then
Ch116.Checked := True else
Ch116.Checked := False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CLASSES_ROOT;
//Добавить пункт меню "Отправить"
if r.KeyExists('\AllFilesystemObjects\shellex\ContextMenuHandlers\Send To') then
Ch117.Checked := True else
Ch117.Checked := False;

/////////////////////////////////////
//Вкладка СИСТЕМА  - Панель Задач
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Показывать всплывающие подсказки
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('EnableBalloonTips')
then i:=r.ReadInteger('EnableBalloonTips');
if i=0 then
Ch118.Checked:=False else
Ch118.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Автоматически скрывать иконки в трее
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer');
if r.ValueExists('EnableAutoTray')
then i:=r.ReadInteger('EnableAutoTray');
if i=0 then
Ch119.Checked:=False else
Ch119.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Скрыть все значки в трее
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoTrayItemsDisplay')
then i:=r.ReadInteger('NoTrayItemsDisplay');
if i=0 then
Ch120.Checked:=False else
Ch120.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Группировать сходные кнопки на панели задач
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('TaskbarGlomming')
then i:=r.ReadInteger('TaskbarGlomming');
if i=0 then
Ch121.Checked:=False else
Ch121.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Мигание кнопок на панели задач:
r.OpenKeyReadOnly('\Control Panel\Desktop');
if r.ValueExists('ForegroundLockTimeout')
then i:=r.ReadInteger('ForegroundLockTimeout');
SpinEdit3.Value := r.ReadInteger('ForegroundLockTimeout');

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Количество мигание кнопки на панели задач:
r.OpenKeyReadOnly('\Control Panel\Desktop');
if r.ValueExists('ForegroundLockTimeout')
then i:=r.ReadInteger('ForegroundLockTimeout');
SpinEdit4.Value := r.ReadInteger('ForegroundFlashCount');

/////////////////////////////////////
//Вкладка СИСТЕМА  - Меню Пуск
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Убрать имя пользователя из меню Пуск
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoUserNameInStartMenu')
then i:=r.ReadInteger('NoUserNameInStartMenu');
if i=0 then
Ch90.Checked:=False else
Ch90.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Не вести историю открытия документов
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoRecentDocsHistory')
then i:=r.ReadInteger('NoRecentDocsHistory');
if i=0 then
Ch91.Checked:=False else
Ch91.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Очистка списка недавно использовавших программ
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('ClearRecentDocsOnExit')
then i:=r.ReadInteger('ClearRecentDocsOnExit');
if i=0 then
Ch92.Checked:=False else
Ch92.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Удалить пункт меню Выход из системы
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('StartMenuLogoff')
then i:=r.ReadInteger('StartMenuLogoff');
if i=0 then
Ch93.Checked:=False else
Ch93.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Выделять недавно установленные программы
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_NotifyNewApps')
then i:=r.ReadInteger('Start_NotifyNewApps');
if i=0 then
Ch94.Checked:=False else
Ch94.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Не показывать общие ярлыки (All Users)
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoCommonGroups')
then i:=r.ReadInteger('NoCommonGroups');
if i=0 then
Ch95.Checked:=False else
Ch95.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Удалить список часто используемых программ
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoStartMenuMFUprogramsList')
then i:=r.ReadInteger('NoStartMenuMFUprogramsList');
if i=0 then
Ch96.Checked:=False else
Ch96.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Раскрывать меню при наведении и задержке указателя
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_AutoCascade')
then i:=r.ReadInteger('Start_AutoCascade');
if i=0 then
Ch97.Checked:=False else
Ch97.Checked:=True;

r := TRegistry.Create;
r.RootKey := HKEY_CURRENT_USER;
//Количество ярлыков в меню "Пуск - Документы"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
SpinEdit1.Value := r.ReadInteger('MaxRecentDocs');

r := TRegistry.Create;
r.RootKey := HKEY_CURRENT_USER;
//Количество ярлыков в меню "Пуск - Документы"
r.OpenKeyReadOnly('\Control Panel\Desktop');
SpinEdit2.Value := StrToInt(r.ReadString('MenuShowDelay'));


/////////////////////////////////////
//Вкладка СИСТЕМА  - Элементы XP меню
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Администрирование в меню "Пуск"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_AdminToolsRoot')
then i:=r.ReadInteger('Start_AdminToolsRoot');
if i=2 then
Ch122.Checked:=True else
Ch122.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Использовать прокрутку для меню Программы
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_ScrollPrograms')
then i:=r.ReadInteger('Start_ScrollPrograms');
if i=0 then
Ch124.Checked:=False else
Ch124.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Команда "Выполнить"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_ShowRun')
then i:=r.ReadInteger('Start_ShowRun');
if i=0 then
Ch125.Checked:=False else
Ch125.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Меню "Поиск"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_ShowSearch')
then i:=r.ReadInteger('Start_ShowSearch');
if i=1 then
Ch127.Checked:=True else
Ch127.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Разрешить перетаскивание объектов
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_EnableDragDrop')
then i:=r.ReadInteger('Start_EnableDragDrop');
if i=1 then
Ch128.Checked:=True else
Ch128.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Сетевое окружение
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_ShowNetPlaces')
then i:=r.ReadInteger('Start_ShowNetPlaces');
if i=1 then
Ch129.Checked:=True else
Ch129.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Справка и поддержка
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_ShowHelp')
then i:=r.ReadInteger('Start_ShowHelp');
if i=1 then
Ch130.Checked:=True else
Ch130.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Отображать пункт меню Недавние документы
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_ShowRecentDocs')
then i:=r.ReadInteger('Start_ShowRecentDocs');
if i=2 then
Ch131.Checked:=True else
Ch131.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Большие значки в главном меню
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_LargeMFUIcons')
then i:=r.ReadInteger('Start_LargeMFUIcons');
if i=1 then
Ch132.Checked:=True else
Ch132.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Мои документы
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_ShowMyDocs')
then i:=r.ReadInteger('Start_ShowMyDocs');
if i=0 then
MyDocumentsBox.ItemIndex := 0;
if i=1 then
MyDocumentsBox.ItemIndex := 2;
if i=2 then
MyDocumentsBox.ItemIndex := 1;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Мой компьютер
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_ShowMyComputer')
then i:=r.ReadInteger('Start_ShowMyComputer');
if i=0 then
MyComputerBox.ItemIndex := 0;
if i=1 then
MyComputerBox.ItemIndex := 2;
if i=2 then
MyComputerBox.ItemIndex := 1;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Мои Рисунки
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_ShowMyPics')
then i:=r.ReadInteger('Start_ShowMyPics');
if i=0 then
MyPictureBox.ItemIndex := 0;
if i=1 then
MyPictureBox.ItemIndex := 2;
if i=2 then
MyPictureBox.ItemIndex := 1;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Мои музыка
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_ShowMyMusic')
then i:=r.ReadInteger('Start_ShowMyMusic');
if i=0 then
MyMusicBox.ItemIndex := 0;
if i=1 then
MyMusicBox.ItemIndex := 2;
if i=2 then
MyMusicBox.ItemIndex := 1;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Панель Управления
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_ShowControlPanel')
then i:=r.ReadInteger('Start_ShowControlPanel');
if i=0 then
ControlPanelBox.ItemIndex := 0;
if i=1 then
ControlPanelBox.ItemIndex := 2;
if i=2 then
ControlPanelBox.ItemIndex := 1;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Сетевые подключения
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_ShowNetConn')
then i:=r.ReadInteger('Start_ShowNetConn');
if i=0 then
NewConnectionBox.ItemIndex := 0;
if i=1 then
NewConnectionBox.ItemIndex := 2;
if i=2 then
NewConnectionBox.ItemIndex := 1;

/////////////////////////////////////
//Вкладка СИСТЕМА  - Классическое меню
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Использовать прокрутку для меню "Программы"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('StartMenuScrollPrograms')
then s:=r.ReadString('StartMenuScrollPrograms');
if s = 'YES' then
Ch133.Checked:=True else
Ch133.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Использовать сокращенное меню
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('IntelliMenus')
then i:=r.ReadInteger('IntelliMenus');
if i = 1 then
Ch134.Checked:=True else
Ch134.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Мелкие значки в главном меню
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('Start_LargeIcons')
then i:=r.ReadInteger('Start_LargeIcons');
if i=1 then
Ch135.Checked:=False else
Ch135.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Отображать команду "Выполнить"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('StartMenuRun')
then i:=r.ReadInteger('StartMenuRun');
if i=1 then
Ch136.Checked:=True else
Ch136.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Отображать команду  "Завершение сеанса"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('StartMenuLogoff')
then i:=r.ReadInteger('StartMenuLogoff');
if i = 1 then
Ch137.Checked:=True else
Ch137.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Отображать меню "Администрирование"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('StartMenuAdminTools')
then s:=r.ReadString('StartMenuAdminTools');
if s = 'YES' then
Ch138.Checked:=True else
Ch138.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Отображать папку "Избранное"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('StartMenuFavorites')
then i:=r.ReadInteger('StartMenuFavorites');
if i = 1 then
Ch139.Checked:=True else
Ch139.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Разрешить перетаскивание объектов
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('StartMenuChange')
then i:=r.ReadInteger('StartMenuChange');
if i = 1 then
Ch140.Checked:=True else
Ch140.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Раскрыть "Панель управления"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('CascadeControlPanel')
then s:=r.ReadString('CascadeControlPanel');
if s = 'YES' then
Ch141.Checked:=True else
Ch141.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Раскрыть папку "Мои документы"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('CascadeMyDocuments')
then s:=r.ReadString('CascadeMyDocuments');
if s = 'YES' then
Ch142.Checked:=True else
Ch142.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Раскрыть папку "Мои рисунки"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('CascadeMyPictures')
then s:=r.ReadString('CascadeMyPictures');
if s = 'YES' then
Ch143.Checked:=True else
Ch143.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Раскрыть папку "Принтеры"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('CascadePrinters')
then s:=r.ReadString('CascadePrinters');
if s = 'YES' then
Ch144.Checked:=True else
Ch144.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Раскрыть "Сетевые подключения"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced');
if r.ValueExists('CascadeNetworkConnections')
then s:=r.ReadString('CascadeNetworkConnections');
if s = 'YES' then
Ch145.Checked:=True else
Ch145.Checked:=False;
except
end;
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
try
/////////////////////////////////////
//Вкладка ЗАЩИТА  - Internet Explorer
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить доступ к свойствам Internet Explorer
r.OpenKeyReadOnly('\Software\Policies\Microsoft\Internet Explorer\Restrictions');
if r.ValueExists('NoBrowserOptions')
then i:=r.ReadInteger('NoBrowserOptions');
if i=0 then
Ch60.Checked:=False else
Ch60.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Скрыть вкладку "Общие" в свойствах обозревателя
r.OpenKeyReadOnly('\Software\Policies\Microsoft\Internet Explorer\Control Panel');
if r.ValueExists('GeneralTab')
then i:=r.ReadInteger('GeneralTab');
if i=0 then
Ch61.Checked:=False else
Ch61.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Скрыть вкладку "Безопасность" в свойствах обозревателя
r.OpenKeyReadOnly('\Software\Policies\Microsoft\Internet Explorer\Control Panel');
if r.ValueExists('SecurityTab')
then i:=r.ReadInteger('SecurityTab');
if i=0 then
Ch62.Checked:=False else
Ch62.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Скрыть вкладку "Конфиденциальность" в свойствах обозревателя
r.OpenKeyReadOnly('\Software\Policies\Microsoft\Internet Explorer\Control Panel');
if r.ValueExists('PrivacyTab')
then i:=r.ReadInteger('PrivacyTab');
if i=0 then
Ch63.Checked:=False else
Ch63.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Скрыть вкладку "Содержание" в свойствах обозревателя
r.OpenKeyReadOnly('\Software\Policies\Microsoft\Internet Explorer\Control Panel');
if r.ValueExists('ContentTab')
then i:=r.ReadInteger('ContentTab');
if i=0 then
Ch64.Checked:=False else
Ch64.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Скрыть вкладку "Подключения" в свойствах обозревателя
r.OpenKeyReadOnly('\Software\Policies\Microsoft\Internet Explorer\Control Panel');
if r.ValueExists('ConnectionsTab')
then i:=r.ReadInteger('ConnectionsTab');
if i=0 then
Ch65.Checked:=False else
Ch65.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Скрыть вкладку "Программы" в свойствах обозревателя
r.OpenKeyReadOnly('\Software\Policies\Microsoft\Internet Explorer\Control Panel');
if r.ValueExists('ProgramsTab')
then i:=r.ReadInteger('ProgramsTab');
if i=0 then
Ch66.Checked:=False else
Ch66.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Скрыть вкладку "Дополнительно" в свойствах обозревателя
r.OpenKeyReadOnly('\Software\Policies\Microsoft\Internet Explorer\Control Panel');
if r.ValueExists('AdvancedTab')
then i:=r.ReadInteger('AdvancedTab');
if i=0 then
Ch67.Checked:=False else
Ch67.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить изменения на вкладке "Дополнительно" в свойствах обозревателя
r.OpenKeyReadOnly('\Software\Policies\Microsoft\Internet Explorer\Control Panel');
if r.ValueExists('Advanced')
then i:=r.ReadInteger('Advanced');
if i=0 then
Ch68.Checked:=False else
Ch68.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить доступ к настройке параметров временных файлов
r.OpenKeyReadOnly('\Software\Policies\Microsoft\Internet Explorer\Control Panel');
if r.ValueExists('Settings')
then i:=r.ReadInteger('Settings');
if i=0 then
Ch69.Checked:=False else
Ch69.Checked:=True;

/////////////////////////////////////
//Вкладка ЗАЩИТА  - система
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Вызов Диспетчера Задач
R.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\System');
if r.ValueExists('DisableTaskMgr')
then i:=r.ReadInteger('DisableTaskMgr');
if i=1 then
Ch14.Checked:=True else
Ch14.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Редактирование реестра
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\System');
if r.ValueExists('DisableRegistryTools')
then i:=r.ReadInteger('DisableRegistryTools');
if i=0 then
Ch45.Checked:=False else
Ch45.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запуск аплетов Панели Управления
R.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoControlPanel')
then i:=r.ReadInteger('NoControlPanel');
if i=0 then
Ch46.Checked:=False else
Ch46.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить изменение свойств Экрана
R.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\System');
if r.ValueExists('NoDispCPL')
then i:=r.ReadInteger('NoDispCPL');
if i=0 then
Ch47.Checked:=False else
Ch47.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить завершения сеанса
R.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoLogOff')
then i:=r.ReadInteger('NoLogOff');
if i=0 then
Ch48.Checked:=False else
Ch48.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить использование командной строки
R.OpenKeyReadOnly('\Software\Policies\Microsoft\Windows\System');
if r.ValueExists('DisableCMD')
then i:=r.ReadInteger('DisableCMD');
if i=0 then
Ch49.Checked:=False else
Ch49.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Запретить анонимным пользователям просматривать ресурсы
R.OpenKeyReadOnly('\System\CurrentControlSet\Control\Lsa');
if r.ValueExists('RestrictAnonymous')
then i:=r.ReadInteger('RestrictAnonymous');
if i=0 then
Ch50.Checked:=False else
Ch50.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Полностью отключить общие ресурсы (ADMIN$, C$ и т.д.)
R.OpenKeyReadOnly('\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters');
if r.ValueExists('AutoShareWks')
then i:=r.ReadInteger('AutoShareWks');
if i=0 then
Ch51.Checked:=True else
Ch51.Checked:=False;


/////////////////////////////////////
//Вкладка ЗАЩИТА  - Проводник
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Сделать недоступным контекстное меню Проводника
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoViewContextMenu')
then i:=r.ReadInteger('NoViewContextMenu');
if i=0 then
Ch54.Checked:=False else
Ch54.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Удалить меню Файл из Проводника
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoFileMenu')
then i:=r.ReadInteger('NoFileMenu');
if i=0 then
Ch55.Checked:=False else
Ch55.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Удалить кнопку поиск с панели инструментов
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoShellSearchButton')
then i:=r.ReadInteger('NoShellSearchButton');
if i=0 then
Ch56.Checked:=False else
Ch56.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Использовать классический вид Проводника
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('ClassicShell')
then i:=r.ReadInteger('ClassicShell');
if i=0 then
Ch57.Checked:=False else
Ch57.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить доступ и открытие к дискам и папкам
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoViewOnDrive')
then i:=r.ReadInteger('NoViewOnDrive');
if i=0 then
Ch58.Checked:=False else
Ch58.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Скрыть диски в проводнике
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoDrives')
then i:=r.ReadInteger('NoDrives');
if i=0 then
Ch59.Checked:=False else
Ch59.Checked:=True;

/////////////////////////////////////
//Вкладка ЗАЩИТА  - Компакт диски
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Отключить автозапуск компакт дисков
R.OpenKeyReadOnly('\SYSTEM\CurrentControlSet\Services\Cdrom');
if r.ValueExists('AutoRun')
then i:=r.ReadInteger('AutoRun');
if i=0 then
Ch70.Checked:=True else
Ch70.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Отключить встроенные средства WinXP для записи компакт-дисков
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoCDBurning')
then i:=r.ReadInteger('NoCDBurning');
if i=0 then
Ch71.Checked:=False else
Ch71.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Автоматически загружать кодеки из Интернета
r.OpenKeyReadOnly('\SOFTWARE\Microsoft\MediaPlayer\Preferences');
if r.ValueExists('UpgradeCodecPrompt')
then i:=r.ReadInteger('UpgradeCodecPrompt');
if i=0 then
Ch72.Checked:=False else
Ch72.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Автоматические обновления. Проверять обновления:
r.OpenKeyReadOnly('\SOFTWARE\Microsoft\MediaPlayer\Preferences');
if r.ValueExists('UpgradeCheckFrequency')
then i:=r.ReadInteger('UpgradeCheckFrequency');
if i=0 then
ComboBox2.ItemIndex := 0;
if i=1 then
ComboBox2.ItemIndex := 1;
if i=2 then
ComboBox2.ItemIndex := 2; 

/////////////////////////////////////
//Вкладка ЗАЩИТА  - Принтеры
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить установку принтеров
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoAddPrinter')
then i:=r.ReadInteger('NoAddPrinter');
if i=0 then
Ch52.Checked:=False else
Ch52.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить удаление принтеров
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoDeletePrinter')
then i:=r.ReadInteger('NoDeletePrinter');
if i=0 then
Ch53.Checked:=False else
Ch53.Checked:=True;

/////////////////////////////////////
//Вкладка ЗАЩИТА  - Меню Пуск и Панель задач
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Сделать недоступным свойства Панели задач и меню Пуск
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoSetTaskbar')
then i:=r.ReadInteger('NoSetTaskbar');
if i=0 then
Ch73.Checked:=False else
Ch73.Checked:=True;



r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить модификацию меню Пуск
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoChangeStartMenu')
then i:=r.ReadInteger('NoChangeStartMenu');
if i=0 then
Ch74.Checked:=False else
Ch74.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить переключать меню в стиль XP
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoSimpleStartMenu')
then i:=r.ReadInteger('NoSimpleStartMenu');
if i=0 then
Ch75.Checked:=False else
Ch75.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить пункт меню Поиск
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoFind')
then i:=r.ReadInteger('NoFind');
if i=0 then
Ch76.Checked:=False else
Ch76.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить пункт меню Выполнить
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoRun')
then i:=r.ReadInteger('NoRun');
if i=0 then
Ch77.Checked:=False else
Ch77.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить пункт меню Справка и поддержка
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoSMHelp')
then i:=r.ReadInteger('NoSMHelp');
if i=0 then
Ch78.Checked:=False else
Ch78.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить пункт меню Все программы (Стиль XP)
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoStartMenuMorePrograms')
then i:=r.ReadInteger('NoStartMenuMorePrograms');
if i=0 then
Ch79.Checked:=False else
Ch79.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить пункт меню Недавние документы
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoRecentDocsMenu')
then i:=r.ReadInteger('NoRecentDocsMenu');
if i=0 then
Ch80.Checked:=False else
Ch80.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить пункты меню Настройка
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoSetFolders')
then i:=r.ReadInteger('NoSetFolders');
if i=0 then
Ch81.Checked:=False else
Ch81.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить контекстное меню Панели задач
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoTrayContextMenu')
then i:=r.ReadInteger('NoTrayContextMenu');
if i=0 then
Ch82.Checked:=False else
Ch82.Checked:=True;



except
end;

end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
try
/////////////////////////////////////
//Вкладка Рабочий стол  - Рабочий стол
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Версия Windows на Рабочем столе
r.OpenKeyReadOnly('\Control Panel\Desktop');
if r.ValueExists('PaintDesktopVersion')
then i:=r.ReadInteger('PaintDesktopVersion');
if i=0 then
Ch36.Checked:=False else
Ch36.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить рабочий стол
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer');
if r.ValueExists('NoDesktop')
then i:=r.ReadInteger('NoDesktop');
if i=0 then
Ch37.Checked:=False else
Ch37.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Скрыть вкладки "Тема" и "Оформление" в свойствах экрана
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\System');
if r.ValueExists('NoDispAppearancePage')
then i:=r.ReadInteger('NoDispAppearancePage');
if i=0 then
Ch38.Checked:=False else
Ch38.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Скрыть вкладку "Рабочий стол"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\System');
if r.ValueExists('NoDispBackgroundPage')
then i:=r.ReadInteger('NoDispBackgroundPage');
if i=0 then
Ch39.Checked:=False else
Ch39.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Скрыть вкладку "Заставка"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\System');
if r.ValueExists('NoDispScrSavPage')
then i:=r.ReadInteger('NoDispScrSavPage');
if i=0 then
Ch40.Checked:=False else
Ch40.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Скрыть вкладку "Параметры"
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\System');
if r.ValueExists('NoDispSettingsPage')
then i:=r.ReadInteger('NoDispSettingsPage');
if i=0 then
Ch41.Checked:=False else
Ch41.Checked:=True;

/////////////////////////////////////
//Вкладка Рабочий стол  - Корзина
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey := HKEY_LOCAL_MACHINE;
//Добавить значок корзины в Мой Компьютер
if r.KeyExists
('\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{645FF040-5081-101B-9F08-00AA002F954E}') then
AddToComputer.Checked := True else
AddToComputer.Checked := False;

//Текущее имя корзины
r:=TRegistry.Create;
r.RootKey := HKEY_CLASSES_ROOT;
r.OpenKeyReadOnly('\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}');
RecycleBinEd.Text := R.ReadString('',);

/////////////////////////////////////
//Вкладка Рабочий стол  - Иконки
/////////////////////////////////////

//Иконки на рабочем столе: Мой компьютер (Classic Style)
r := TRegistry.Create;
r.RootKey := HKEY_CURRENT_USER;
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu');
if r.ValueExists('{20D04FE0-3AEA-1069-A2D8-08002B30309D}')
then i:=r.ReadInteger('{20D04FE0-3AEA-1069-A2D8-08002B30309D}');
if i=1 then
Ch42.Checked:=False else
Ch42.Checked:=True;

//Иконки на рабочем столе: Корзина (Classic Style)
r := TRegistry.Create;
r.RootKey := HKEY_CURRENT_USER;
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu');
if r.ValueExists('{645FF040-5081-101B-9F08-00AA002F954E}')
then i:=r.ReadInteger('{645FF040-5081-101B-9F08-00AA002F954E}');
if i=1 then
Ch43.Checked:=False else
Ch43.Checked:=True;

//Иконки на рабочем столе: Internet Explorer (Classic Style)
r := TRegistry.Create;
r.RootKey := HKEY_CURRENT_USER;
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu');
if r.ValueExists('{871C5380-42A0-1069-A2EA-08002B30309D}')
then i:=r.ReadInteger('{871C5380-42A0-1069-A2EA-08002B30309D}');
if i=1 then
Ch44.Checked:=False else
Ch44.Checked:=True;


//Иконки на рабочем столе: Мой компьютер (XP Style)
r := TRegistry.Create;
r.RootKey := HKEY_CURRENT_USER;
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel');
if r.ValueExists('{20D04FE0-3AEA-1069-A2D8-08002B30309D}')
then i:=r.ReadInteger('{20D04FE0-3AEA-1069-A2D8-08002B30309D}');
if i=1 then
ch146.Checked:=False else
ch146.Checked:=True;

//Иконки на рабочем столе: Корзина (XP Style)
r := TRegistry.Create;
r.RootKey := HKEY_CURRENT_USER;
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel');
if r.ValueExists('{645FF040-5081-101B-9F08-00AA002F954E}')
then i:=r.ReadInteger('{645FF040-5081-101B-9F08-00AA002F954E}');
if i=1 then
ch147.Checked:=False else
ch147.Checked:=True;


//Иконки на рабочем столе: Internet Explorer (XP Style)
r := TRegistry.Create;
r.RootKey := HKEY_CURRENT_USER;
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel');
if r.ValueExists('{871C5380-42A0-1069-A2EA-08002B30309D}')
then i:=r.ReadInteger('{871C5380-42A0-1069-A2EA-08002B30309D}');
if i=1 then
ch148.Checked:=False else
ch148.Checked:=True;

except
end;
end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
try
/////////////////////////////////////
//Вкладка Интернет  - Настройка соединения
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Автоматически определять MTU
r.OpenKeyReadOnly('\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters');
if r.ValueExists('EnablePMTUDiscovery')
then i:=r.ReadInteger('EnablePMTUDiscovery');
if i=0 then
Ch20.Checked:=False else
Ch20.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Включить поддержку TCP окон больше 64Кб
r.OpenKeyReadOnly('\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters');
if r.ValueExists('Tcp1323Opts')
then i:=r.ReadInteger('Tcp1323Opts');
if i=0 then
Ch21.Checked:=False else
Ch21.Checked:=True;

r:=TRegistry.Create;
r.RootKey:= HKEY_LOCAL_MACHINE;
//Выборочная передача поврежденных данных
r.OpenKeyReadOnly('\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters');
if r.ValueExists('SackOpts')
then i:=r.ReadInteger('SackOpts');
if i=0 then
Ch22.Checked:=False else
Ch22.Checked:=True;

/////////////////////////////////////
//Вкладка Интернет  - Internet Explorer
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Автоматически подгонять размеры рисунка
r.OpenKeyReadOnly('\Software\Microsoft\Internet Explorer\Main');
if r.ValueExists('Enable AutoImageResize')
then s:=r.ReadString('Enable AutoImageResize');
if s = 'yes' then
Ch23.Checked:=True else
Ch23.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить автоматические обновления IE
r.OpenKeyReadOnly('\Software\Microsoft\Internet Explorer\Main');
if r.ValueExists('NoUpdateCheck')
then i:=r.ReadInteger('NoUpdateCheck');
if i=0 then
Ch24.Checked:=False else
Ch24.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Скрывать редко используемые пункты в Избранном
r.OpenKeyReadOnly('\Software\Microsoft\Internet Explorer\Main');
if r.ValueExists('FavIntelliMenus')
then s:=r.ReadString('FavIntelliMenus');
if s = 'yes' then
Ch25.Checked:=True else
Ch25.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Не выводить окно "Подключение удаленного доступа" при автономной работе
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Internet Settings');
if r.ValueExists('EnableAutodial')
then i:=r.ReadInteger('EnableAutodial');
if i=1 then
Ch26.Checked:=False else
Ch26.Checked:=True;


r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Открывать ярлыки в новом окне IE
r.OpenKeyReadOnly('\Software\Microsoft\Internet Explorer\Main');
if r.ValueExists('AllowWindowReuse')
then i:=r.ReadInteger('AllowWindowReuse');
if i=1 then
Ch27.Checked:=False else
Ch27.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Запретить фоновые звуки
r.OpenKeyReadOnly('\Software\Microsoft\Internet Explorer\Main');
if r.ValueExists('Play_Background_Sounds')
then s:=r.ReadString('Play_Background_Sounds');
if s = 'yes' then
Ch28.Checked:=False else
Ch28.Checked:=True;

r:=TRegistry.Create;
r.RootKey:=HKEY_LOCAL_MACHINE;
//Редактор для просмотра исходного кода HTML страниц
r.OpenKeyReadOnly('\SOFTWARE\Microsoft\Internet Explorer\View Source Editor\Editor Name');
PathToHTMLEditorEd.Text := r.ReadString('');

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Путь к папке закачек по умолчанию
r.OpenKeyReadOnly('\Software\Microsoft\Internet Explorer');
DownLoadPathEd.Text := r.ReadString('Download Directory');

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Использовать автозаполнение для Веб-адресов
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete');
if r.ValueExists('AutoSuggest')
then s:=r.ReadString('AutoSuggest');
if s = 'yes' then
Ch29.Checked:=True else
Ch29.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Использовать автозаполнение для Веб-Форм
r.OpenKeyReadOnly('\Software\Microsoft\Internet Explorer\Main');
if r.ValueExists('Use FormSuggest')
then s:=r.ReadString('Use FormSuggest');
if s = 'yes' then
Ch30.Checked:=True else
Ch30.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Автозаполнение имен пользователей и паролей в формах
r.OpenKeyReadOnly('\Software\Microsoft\Internet Explorer\Main');
if r.ValueExists('FormSuggest Passwords')
then s:=r.ReadString('FormSuggest Passwords');
if s = 'yes' then
Ch31.Checked:=True else
Ch31.Checked:=False;

r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
//Автозаполнение на Запрос сохранение пароля
r.OpenKeyReadOnly('\Software\Microsoft\Internet Explorer\Main');
if r.ValueExists('FormSuggest PW Ask')
then s:=r.ReadString('FormSuggest PW Ask');
if s = 'yes' then
Ch32.Checked:=True else
Ch32.Checked:=False;


/////////////////////////////////////
//Вкладка Интернет  - Локальные сети
/////////////////////////////////////

r:=TRegistry.Create;
r.RootKey := HKEY_LOCAL_MACHINE;
//Не сканировать сеть на наличие сетевых принтеров
if r.KeyExists
('\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{2227A280-3AEA-1069-A2DE-08002B30309D}') then
Ch33.Checked := False else
Ch33.Checked := True;

r:=TRegistry.Create;
r.RootKey := HKEY_LOCAL_MACHINE;
//Не сканировать сеть на наличие назначенных заданий (Scheduled Tasks)
if r.KeyExists
('\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{D6277990-4C6A-11CF-8D87-00AA0060F5BF}') then
Ch34.Checked := False else
Ch34.Checked := True;

except
end;
end;

procedure TMainForm.UpdateSetItemClick(Sender: TObject);
begin
try
Button1.Click;
Button2.Click;
Button3.Click;
Button4.Click;
Button5.Click;
Button6.Click;
except
end;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
try
if RusItem.Checked = False then
if EngItem.Checked = False then
RusItem.Click;
if RusItem.Checked = True then
RusItem.Click;
if EngItem.Checked = True then
EngItem.Click;
if ch8.Checked then
begin
RyMenu.Add(MainMenu, nil);
RyMenu.Add(TrayMenu, nil);
RyMenu.Add(WallpaperMenu, nil);
RyMenu.Add(ImageMenu, nil);
RyMenu.Add(ScreenSaveMenu, nil);
end;
if ch18.Checked then
StatusBar.Visible := True else
StatusBar.Visible := False;
if ch16.Checked then
MainForm.ScreenSnap := True else
MainForm.ScreenSnap := False;
if ch16.Checked then
AboutForm.ScreenSnap := True else
AboutForm.ScreenSnap := False;
if ch16.Checked then
OpenForm.ScreenSnap := True else
OpenForm.ScreenSnap := False;
if ch2.Checked = False
then begin
SetWindowPos(Handle, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE+SWP_NOSIZE);
end else begin
SetWindowPos(Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE+SWP_NOSIZE);
ch2.Checked := true;
end;
if ch5.Checked then
begin
TweakItem.Visible := True;
NavigationItem.Visible := True;
EnergyItem.Visible := True;
InterfaceItem.Visible := True;
HelpItem.Visible := True;
end;
if not ch5.Checked then
begin
TweakItem.Visible := False;
NavigationItem.Visible := False;
EnergyItem.Visible := False;
InterfaceItem.Visible := False;
HelpItem.Visible := False;
end;
ed1.Height := 19;
ed2.Height := 19;
ed3.Height := 19;
ed4.Height := 19;
ed5.Height := 19;
InputName.Height := 19;
InputIP.Height := 19;
if ch9.Checked then
AnimateWindow(Handle, 500, AW_BLEND or AW_SLIDE or AW_ACTIVATE);
r := TRegistry.Create;
R.RootKey := HKEY_LOCAL_MACHINE;
R.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', false);
if ch11.Checked then
R.WriteString(Application.Title, ParamStr(0)) else
R.DeleteValue(Application.Title);
if ch13.Checked then
begin
MainMenu.Images := MainForm.ImageList2;
TrayMenu.Images := MainForm.ImageList2;
ImageMenu.Images := MainForm.ImageList2;
end else
begin
MainMenu.Images := MainForm.ImageList1;
TrayMenu.Images := MainForm.ImageList1;
ImageMenu.Images := MainForm.ImageList1;
end;
UpdateSetItem.Click;
LicBt.OnClick(Self);
if NTor9x then
begin
Exit;
end else
begin
if RusItem.Checked then
begin
MessageBox(Handle,
'Возможно у Вас на компьютере установлена одна' + #13 +
'из ниже перечисленных операционных систем:'
+ #13
+ #13 +
'Windows 95' + #13 + '' + #13 +  'Windows 98' + #13 + '' + #13 +  'Windows ME' +
#13 + #13 + 'FireTuning Tweaker не совместима с этими версиями' +
#13 + 'Windows и работать не будет.' + #13,
'FireTuning Tweaker',
Mb_IconAsterisk + Mb_OK);
end;


if EngItem.Checked then
begin
MessageBox(Handle,
'Возможно у Вас на компьютере установлена одна' + #13 +
'из ниже перечисленных операционных систем:'
+ #13
+ #13 +
'Windows 95' + #13 + '' + #13 +  'Windows 98' + #13 + '' + #13 +  'Windows ME' +
#13 + #13 + 'FireTuning Tweaker не совместима с этими версиями' +
#13 + 'Windows и работать не будет.' + #13,
'FireTuning Tweaker',
Mb_IconAsterisk + Mb_OK);
end;
end;
except
end;
end;

procedure TMainForm.SourceCodeItemClick(Sender: TObject);
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if EngItem.Checked then
begin
if Application.MessageBox(
'Copyright @2009 Domani Oleh (aka ?КТО_Я?)' + #13 +
'======================================' + #13 + #13 + '' +
'If you want to give of Source Code of FireTuning Tweaker' + #13
+ '(archives with components library by wish user) and'
+ #13 + 'also all next new version then send e-mail to the author.' + #13 +
'' +  #13 + '======================================' +  #13 +
'' +  #13 +
'Send mail now?',
'FireTuning Tweaker',
mb_IconAsterisk + mb_YesNo) = idYes then
begin
ShellExecute(Handle, 'open',
'mailto:GoodWinNix@mail.ru?Subject=FireTuning Tweaker Project' +
'&Body=Hello, please send me the source code program. Thanks!',
'', '', SW_SHOW);
end;
end;
if RusItem.Checked then
begin
if Application.MessageBox(
'Copyright @2009 Домани Олег (aka ?КТО_Я?)' + #13 +
'======================================' + #13 + #13 + '' +
'Если Вы хотите получить исходный код проекта (архив ' + #13
+ 'с компонентами по желанию пользователя), а также'
+ #13 + 'все последующие новые версии программы, то' + #13 +
'отправьте электронное письмо автору.' + #13 +
'' +  #13 + '======================================' +  #13 +
'' +  #13 +
'Отправить письмо сейчас?',
'FireTuning Tweaker',
mb_IconAsterisk + mb_YesNo) = idYes then
begin
ShellExecute(Handle, 'open',
'mailto:GoodWinNix@mail.ru?Subject=FireTuning Tweaker Project' +
'&Body=Hello, please send me the source code program. Thanks!',
'', '', SW_SHOW);
end;
end;
end;

procedure TMainForm.ApplyBtClick(Sender: TObject);
begin
try

//Автоматически определять MTU
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters', True);
if Ch20.Checked then
WriteInteger('EnablePMTUDiscovery', 1) else
WriteInteger('EnablePMTUDiscovery', 0);
CloseKey;
Free;
end;

//Включить поддержку TCP окон больше 64Кб
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters', True);
if Ch21.Checked then
WriteInteger('Tcp1323Opts', 1) else
WriteInteger('Tcp1323Opts', 0);
CloseKey;
Free;
end;

//Выборочная передача поврежденных данных
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters', True);
if Ch22.Checked then
WriteInteger('SackOpts', 1) else
WriteInteger('SackOpts', 0);
CloseKey;
Free;
end;

//Автоматически подгонять размеры рисунка
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Internet Explorer\Main', True);
if Ch23.Checked then
r.WriteString('Enable AutoImageResize', 'yes') else
r.WriteString('Enable AutoImageResize', 'no');
CloseKey;
Free;
end;

//Запретить автоматические обновления IE
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Internet Explorer\Main', True);
if Ch24.Checked then
r.WriteInteger('NoUpdateCheck', 1) else
r.WriteInteger('NoUpdateCheck', 0);
CloseKey;
Free;
end;

//Скрывать редко используемые пункты в Избранном
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Internet Explorer\Main', True);
if Ch25.Checked then
r.WriteString('FavIntelliMenus', 'yes') else
r.WriteString('FavIntelliMenus', 'no');
CloseKey;
Free;
end;

//Не выводить окно "Подключение удаленного доступа" при автономной работе
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Internet Settings', True);
if Ch26.Checked then
r.WriteInteger('EnableAutodial', 0) else
r.WriteInteger('EnableAutodial', 1);
CloseKey;
Free;
end;

//Открывать ярлыки в новом окне IE
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Internet Explorer\Main', True);
if Ch27.Checked then
r.WriteInteger('AllowWindowReuse', 0) else
r.WriteInteger('AllowWindowReuse', 1);
CloseKey;
Free;
end;

//Запретить фоновые звуки
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Internet Explorer\Main', True);
if Ch28.Checked then
r.WriteString('Play_Background_Sounds', 'no') else
r.WriteString('Play_Background_Sounds', 'yes');
CloseKey;
Free;
end;

//Редактор для просмотра исходного кода HTML страниц
R := TRegistry.Create;
with R do
begin
RootKey:=HKEY_LOCAL_MACHINE;
if OpenKey('\SOFTWARE\Microsoft\Internet Explorer\View Source Editor\Editor Name', True) then
begin
WriteString('', PathToHTMLEditorEd.Text);
CloseKey;
Free;
end;
end;

//Путь к папке закачек по умолчанию
R := TRegistry.Create;
with R do
begin
RootKey:=HKEY_CURRENT_USER;
if OpenKey('\Software\Microsoft\Internet Explorer', True) then
begin
WriteString('Download Directory', DownLoadPathEd.Text);
CloseKey;
Free;
end;
end;

//Запрос на сохранение пароля
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Internet Explorer\Main', True);
if Ch32.Checked then
r.WriteString('FormSuggest PW Ask', 'yes') else
r.WriteString('FormSuggest PW Ask', 'no');
CloseKey;
Free;
end;

//Использовать автозаполнение для Веб-адресов
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete', True);
if Ch29.Checked then
r.WriteString('AutoSuggest', 'yes') else
r.WriteString('AutoSuggest', 'no');
CloseKey;
Free;
end;

//Использовать автозаполнение для Форм
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Internet Explorer\Main', True);
if Ch30.Checked then
r.WriteString('Use FormSuggest', 'yes') else
r.WriteString('Use FormSuggest', 'no');
CloseKey;
Free;
end;

//Автозаполнение имен пользователей и паролей в формах
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Internet Explorer\Main', True);
if Ch31.Checked then
r.WriteString('FormSuggest Passwords', 'yes') else
r.WriteString('FormSuggest Passwords', 'no');
CloseKey;
Free;
end;

//Запрос на сохранение пароля
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Internet Explorer\Main', True);
if Ch32.Checked then
r.WriteString('FormSuggest PW Ask', 'yes') else
r.WriteString('FormSuggest PW Ask', 'no');
CloseKey;
Free;
end;

//Не сканировать сеть на наличие сетевых принтеров
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
if Ch33.Checked then
DeleteKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{2227A280-3AEA-1069-A2DE-08002B30309D}') else
OpenKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{2227A280-3AEA-1069-A2DE-08002B30309D}', True);
CloseKey;
Free;
end;

//Не сканировать сеть на наличие назначенных заданий (Scheduled Tasks)
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
if Ch34.Checked then
DeleteKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{D6277990-4C6A-11CF-8D87-00AA0060F5BF}') else
OpenKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{D6277990-4C6A-11CF-8D87-00AA0060F5BF}', True);
CloseKey;
Free;
end;

//Запретить доступ к свойствам Internet Explorer
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Policies\Microsoft\Internet Explorer\Restrictions', True);
if Ch60.Checked then
WriteInteger('NoBrowserOptions', 1) else
WriteInteger('NoBrowserOptions', 0);
CloseKey;
Free;
end;

//Скрыть вкладку "Общие" в свойствах обозревателя
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Policies\Microsoft\Internet Explorer\Control Panel', True);
if Ch61.Checked then
WriteInteger('GeneralTab', 1) else
WriteInteger('GeneralTab', 0);
CloseKey;
Free;
end;

//Скрыть вкладку "Безопасность"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Policies\Microsoft\Internet Explorer\Control Panel', True);
if Ch62.Checked then
WriteInteger('SecurityTab', 1) else
WriteInteger('SecurityTab', 0);
CloseKey;
Free;
end;

//Скрыть вкладку "Конфиденциальность"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Policies\Microsoft\Internet Explorer\Control Panel', True);
if Ch63.Checked then
WriteInteger('PrivacyTab', 1) else
WriteInteger('PrivacyTab', 0);
CloseKey;
Free;
end;

//Скрыть вкладку "Содержание"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Policies\Microsoft\Internet Explorer\Control Panel', True);
if Ch64.Checked then
WriteInteger('ContentTab', 1) else
WriteInteger('ContentTab', 0);
CloseKey;
Free;
end;

//Скрыть вкладку "Подключения"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Policies\Microsoft\Internet Explorer\Control Panel', True);
if Ch65.Checked then
WriteInteger('ConnectionsTab', 1) else
WriteInteger('ConnectionsTab', 0);
CloseKey;
Free;
end;

//Скрыть вкладку "Программы"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Policies\Microsoft\Internet Explorer\Control Panel', True);
if Ch66.Checked then
WriteInteger('ProgramsTab', 1) else
WriteInteger('ProgramsTab', 0);
CloseKey;
Free;
end;

//Скрыть вкладку "Дополнительно"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Policies\Microsoft\Internet Explorer\Control Panel', True);
if Ch67.Checked then
WriteInteger('AdvancedTab', 1) else
WriteInteger('AdvancedTab', 0);
CloseKey;
Free;
end;

//Запретить изменения на вкладке "Дополнительно"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Policies\Microsoft\Internet Explorer\Control Panel', True);
if Ch68.Checked then
WriteInteger('Advanced', 1) else
WriteInteger('Advanced', 0);
CloseKey;
Free;
end;

//Запретить доступ к настройке параметров временных файлов
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Policies\Microsoft\Internet Explorer\Control Panel', True);
if Ch69.Checked then
WriteInteger('Settings', 1) else
WriteInteger('Settings', 0);
CloseKey;
Free;
end;

//Запретить вызов диспетчера задач
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
R.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System', True);
if Ch14.Checked=true
then R.WriteInteger('DisableTaskMgr', 1)
else R.WriteInteger('DisableTaskMgr', 0);
end;

//Запретить редактирование реестра
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System', True);
if Ch45.Checked then
WriteInteger('DisableRegistryTools', 1)
else
WriteInteger('DisableRegistryTools', 0);
CloseKey;
Free;
end;

//Запретить запуск аплетов панели управления
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
R.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch46.Checked=true
then R.WriteInteger('NoControlPanel', 1)
else R.WriteInteger('NoControlPanel', 0);
end;

//Запретить изменение свойств Экрана
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System', True);
if Ch47.Checked then
WriteInteger('NoDispCPL', 1) else
WriteInteger('NoDispCPL', 0);
CloseKey;
Free;
end;

//Запретить завершения сеанса 
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch48.Checked then
WriteInteger('NoLogOff', 1) else
WriteInteger('NoLogOff', 0);
CloseKey;
Free;
end;

//Запретить использование командной строки
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Policies\Microsoft\Windows\System', True);
if Ch49.Checked then
WriteInteger('DisableCMD', 1) else
WriteInteger('DisableCMD', 0);
CloseKey;
Free;
end;

//Запретить анонимным пользователям просматривать ресурсы
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\System\CurrentControlSet\Control\Lsa', True);
if Ch50.Checked then
WriteInteger('RestrictAnonymous', 1) else
WriteInteger('RestrictAnonymous', 0);
CloseKey;
Free;
end;

//Полностью отключить общие ресурсы (ADMIN$, C$ и т.д.)
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters', True);
if Ch51.Checked then
WriteInteger('AutoShareWks', 0) else
WriteInteger('AutoShareWks', 1);
CloseKey;
Free;
end;

//Сделать недоступным контекстное меню Проводника
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch54.Checked then
WriteInteger('NoViewContextMenu', 1) else
WriteInteger('NoViewContextMenu', 0);
CloseKey;
Free;
end;

//Удалить меню Файл из Проводника
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch55.Checked then
WriteInteger('NoFileMenu', 1) else
WriteInteger('NoFileMenu', 0);
CloseKey;
Free;
end;

//Удалить кнопку поиск с панели инструментов
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch56.Checked then
WriteInteger('NoShellSearchButton', 1) else
WriteInteger('NoShellSearchButton', 0);
CloseKey;
Free;
end;

//Использовать классический вид Проводника
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch57.Checked then
WriteInteger('ClassicShell', 1) else
WriteInteger('ClassicShell', 0);
CloseKey;
Free;
end;

//Запретить доступ и открытие к дискам и папкам
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch58.Checked then
WriteInteger('NoViewOnDrive', 67108863) else
WriteInteger('NoViewOnDrive', 0);
CloseKey;
Free;
end;

//Скрыть диски в проводнике
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch59.Checked then
WriteInteger('NoDrives', 67108863) else
WriteInteger('NoDrives', 0);
CloseKey;
Free;
end;

//Отключить автозапуск компакт дисков
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SYSTEM\CurrentControlSet\Services\Cdrom', True);
if Ch70.Checked then
WriteInteger('AutoRun', 0) else
WriteInteger('AutoRun', 1);
CloseKey;
Free;
end;

//Отключить встроенные средства WinXP для записи компакт-дисков
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch71.Checked then
WriteInteger('NoCDBurning', 1) else
WriteInteger('NoCDBurning', 0);
CloseKey;
Free;
end;

//Автоматически загружать кодеки из Интернета
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\SOFTWARE\Microsoft\MediaPlayer\Preferences', True);
if Ch72.Checked then
WriteInteger('UpgradeCodecPrompt', 1) else
WriteInteger('UpgradeCodecPrompt', 0);
CloseKey;
Free;
end;

//Windows Media Player - Автоматические обновления. Проверять обновления:
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\SOFTWARE\Microsoft\MediaPlayer\Preferences', True);
if ComboBox2.ItemIndex = 0 then
WriteInteger('UpgradeCheckFrequency', 0);
if ComboBox2.ItemIndex = 1 then
WriteInteger('UpgradeCheckFrequency', 1);
if ComboBox2.ItemIndex = 2 then
WriteInteger('UpgradeCheckFrequency', 2);
CloseKey;
Free;
end;

//Запретить установку принтеров
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch52.Checked then
WriteInteger('NoAddPrinter', 1) else
WriteInteger('NoAddPrinter', 0);
CloseKey;
Free;
end;

//Запретить удаление принтеров
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch53.Checked then
WriteInteger('NoDeletePrinter', 1) else
WriteInteger('NoDeletePrinter', 0);
CloseKey;
Free;
end;

//Сделать недоступным свойства Панели задач и меню Пуск
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch73.Checked then
WriteInteger('NoSetTaskbar', 1) else
WriteInteger('NoSetTaskbar', 0);
CloseKey;
Free;
end;

//Запретить модификацию меню Пуск
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch74.Checked then
WriteInteger('NoChangeStartMenu', 1) else
WriteInteger('NoChangeStartMenu', 0);
CloseKey;
Free;
end;

//Запретить переключать меню в стиль XP
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch75.Checked then
WriteInteger('NoSimpleStartMenu', 1) else
WriteInteger('NoSimpleStartMenu', 0);
CloseKey;
Free;
end;

//Запретить пункт меню Поиск
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch76.Checked then
WriteInteger('NoFind', 1) else
WriteInteger('NoFind', 0);
CloseKey;
Free;
end;

//Запретить пункт меню Выполнить
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch77.Checked then
WriteInteger('NoRun', 1) else
WriteInteger('NoRun', 0);
CloseKey;
Free;
end;

//Запретить пункт меню Справка и поддержка
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch78.Checked then
WriteInteger('NoSMHelp', 1) else
WriteInteger('NoSMHelp', 0);
CloseKey;
Free;
end;

//Запретить пункт меню Все программы (Стиль XP)
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch79.Checked then
WriteInteger('NoStartMenuMorePrograms', 1) else
WriteInteger('NoStartMenuMorePrograms', 0);
CloseKey;
Free;
end;

//Запретить пункт меню Недавние документы
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch80.Checked then
WriteInteger('NoRecentDocsMenu', 1) else
WriteInteger('NoRecentDocsMenu', 0);
CloseKey;
Free;
end;

//Запретить пункты меню Настройка
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch81.Checked then
WriteInteger('NoSetFolders', 1) else
WriteInteger('NoSetFolders', 0);
CloseKey;
Free;
end;

//Запретить контекстное меню Панели задач
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
R.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch82.Checked=true then
R.WriteInteger('NoTrayContextMenu', 1) else
R.WriteInteger('NoTrayContextMenu', 0);
end;

/////////////////////////////////////////////////////// Message on Entrance


//Использовать страницу приветствия
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon', True);
if Ch99.Checked then
WriteInteger('LogonType', 1) else
WriteInteger('LogonType', 0);
CloseKey;
Free;
end;

//Не показывать имя последнего пользователя
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System', True);
if Ch100.Checked then
R.WriteInteger('DontDisplayLastUserName', 1) else
R.WriteInteger('DontDisplayLastUserName', 0);
CloseKey;
Free;
end;

//Использовать быстрое переключение пользователей
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon', True);
if Ch101.Checked then
R.WriteInteger('AllowMultipleTSSessions', 1) else
R.WriteInteger('AllowMultipleTSSessions', 0);
CloseKey;
Free;
end;

//Не показывать сообщения при запуске и выходе из системы
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System', True);
if Ch102.Checked then
R.WriteInteger('DisableStatusMessages', 1) else
R.WriteInteger('DisableStatusMessages', 0);
CloseKey;
Free;
end;

//Показывать выполняемые команды при запуске и выходе из системы
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System', True);
if Ch103.Checked then
R.WriteInteger('verbosestatus', 1) else
R.WriteInteger('verbosestatus', 0);
CloseKey;
Free;
end;

//Включать Num Lock при загрузке
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_USERS;
OpenKey('\.DEFAULT\Control Panel\Keyboard', True);
if Ch104.Checked then
R.WriteString('InitialKeyboardIndicators', '2') else
R.WriteString('InitialKeyboardIndicators', '0');
CloseKey;
Free;
end;

//Раскладка клавиатуры при входе в систему:
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_USERS;
OpenKey('\.DEFAULT\Keyboard Layout\Preload', True);
if ComboBox10.ItemIndex = 0 then
begin
r.WriteString('1', '00000419');
r.WriteString('2', '00000409');
end else
if ComboBox10.ItemIndex = 1 then
begin
r.WriteString('1', '00000409');
r.WriteString('2', '00000419');
CloseKey;
Free;
end;
end;

//Запретить автозапуск программ Local Machine Run
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer', True);
if Ch105.Checked then
WriteInteger('DisableLocalMachineRun', 1) else
WriteInteger('DisableLocalMachineRun', 0);
CloseKey;
Free;
end;

//Запретить автозапуск программ Local Machine Run Once
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer', True);
if Ch106.Checked then
WriteInteger('DisableLocalMachineRunOnce', 1) else
WriteInteger('DisableLocalMachineRunOnce', 0);
CloseKey;
Free;
end;

//Запретить автозапуск программ Current User Run
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer', True);
if Ch107.Checked then
WriteInteger('DisableCurrentUserRun', 1) else
WriteInteger('DisableCurrentUserRun', 0);
CloseKey;
Free;
end;

//Запретить автозапуск программ Current User Run Once
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer', True);
if Ch108.Checked then
WriteInteger('DisableCurrentUserRunOnce', 1) else
WriteInteger('DisableCurrentUserRunOnce', 0);
CloseKey;
Free;
end;

//Отключить встроенный отладчик Dr. Watson
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug', True);
if Ch83.Checked then
r.WriteString('Auto','0') else
r.WriteString('Auto', '1');
CloseKey;
Free;
end;

//Отключить слежение Windows за пользователем
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch84.Checked then
WriteInteger('NoInstrumentation', 1) else
WriteInteger('NoInstrumentation', 0);
CloseKey;
Free;
end;

//Не отсылать в Microsoft отчеты об ошибках
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SOFTWARE\Microsoft\PCHealth\ErrorReporting', True);
if Ch85.Checked then
WriteInteger('DoReport', 0) else
WriteInteger('DoReport', 1);
CloseKey;
Free;
end;

//Выводить окно для ввода причины завершения работы
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\Software\Policies\Microsoft\Windows NT\Reliability', True);
if Ch86.Checked then
WriteInteger('ShutdownReasonUI', 1) else
WriteInteger('ShutdownReasonUI', 0);
CloseKey;
Free;
end;

//Очистка файла подкачки перед перезагрузкой системы
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management', True);
if Ch87.Checked then
WriteInteger('ClearPageFileAtShutdown', 1) else
WriteInteger('ClearPageFileAtShutdown', 0);
CloseKey;
Free;
end;

//Запускать 16-битные программы в отдельных процессах
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SYSTEM\CurrentControlSet\Control\WOW', True);
if Ch88.Checked then
r.WriteString('DefaultSeparateVDM', 'yes') else
r.WriteString('DefaultSeparateVDM', 'no');
CloseKey;
Free;
end;

//Принудительный вызов "стоп-ошибки" при нажатии Ctrl+Scroll Lock
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters', True);
if Ch89.Checked then
r.WriteInteger('CrashOnCtrlScroll', 1) else
r.WriteInteger('CrashOnCtrlScroll', 0);
CloseKey;
Free;
end;

//Сообщения об ошибках:
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\SYSTEM\CurrentControlSet\Control\Windows', True);
if ComboBox9.ItemIndex = 0 then
WriteInteger('ErrorMode', 0);
if ComboBox9.ItemIndex = 1 then
WriteInteger('ErrorMode', 1);
if ComboBox9.ItemIndex = 2 then
WriteInteger('ErrorMode', 2);
CloseKey;
Free;
end;

//Анимация при сворачивании и разворачивании окон
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Control Panel\Desktop\WindowMetrics', True);
if Ch109.Checked then
r.WriteString('MinAnimate', '1') else
r.WriteString('MinAnimate', '0');
CloseKey;
Free;
end;

//Отображать содержимое окна при перетаскивании
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Control Panel\Desktop', True);
if Ch110.Checked then
r.WriteString('DragFullWindows', '1') else
r.WriteString('DragFullWindows', '0');
CloseKey;
Free;
end;

//Запретить кэширование изображений (thumbnails)
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch111.Checked then
r.WriteInteger('DisableThumbnailCache', 1) else
r.WriteInteger('DisableThumbnailCache', 0);
CloseKey;
Free;
end;

//Запускать окна Проводника в отдельном процессе
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch112.Checked then
r.WriteInteger('SeparateProcess', 1) else
r.WriteInteger('SeparateProcess', 0);
CloseKey;
Free;
end;

//Автоматически перезапускать Проводник при ошибках
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
OpenKey('\Software\Microsoft\Windows NT\CurrentVersion\Winlogon', True);
if Ch113.Checked then
r.WriteInteger('AutoRestartShell', 1) else
r.WriteInteger('AutoRestartShell', 0);
CloseKey;
Free;
end;

//Отключить сообщение о недостатке свободного места на диске
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch114.Checked then
r.WriteInteger('NoLowDiskSpaceChecks', 1) else
r.WriteInteger('NoLowDiskSpaceChecks', 0);
CloseKey;
Free;
end;

//Добавить пункт меню "Копировать в папку..."
R := TRegistry.Create;
with R do
begin
R.RootKey:=HKEY_CLASSES_ROOT;
R.OpenKey('\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To', True);
if Ch115.Checked then
R.WriteString('', '{C2FBB630-2971-11D1-A18C-00C04FD75D13}') else
R.DeleteKey('\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To');
end;

//Добавить пункт меню "Переместить в папку..."
R := TRegistry.Create;
with R do
begin
R.RootKey:=HKEY_CLASSES_ROOT;
R.OpenKey('\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To', True);
if Ch116.Checked then
R.WriteString('', '{C2FBB631-2971-11D1-A18C-00C04FD75D13}') else
R.DeleteKey('\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To');
end;

//Добавить пункт меню "Отправить"
R := TRegistry.Create;
with R do
begin
R.RootKey:=HKEY_CLASSES_ROOT;
R.OpenKey('\AllFilesystemObjects\shellex\ContextMenuHandlers\Send To', True);
if Ch117.Checked then
R.WriteString('', '{7BA4C740-9E81-11CF-99D3-00AA004AE837}') else
R.DeleteKey('\AllFilesystemObjects\shellex\ContextMenuHandlers\Send To');
end;

//Панель задач: Показывать всплывающие подсказки
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch118.Checked then
WriteInteger('EnableBalloonTips', 1) else
WriteInteger('EnableBalloonTips', 0);
CloseKey;
Free;
end;

//Панель задач: Автоматически скрывать иконки в трее
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer', True);
if Ch119.Checked then
WriteInteger('EnableAutoTray', 1) else
WriteInteger('EnableAutoTray', 0);
CloseKey;
Free;
end;

//Панель задач: Скрыть все значки в трее
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch120.Checked then
WriteInteger('NoTrayItemsDisplay', 1) else
WriteInteger('NoTrayItemsDisplay', 0);
CloseKey;
Free;
end;

//Панель задач: Группировать сходные кнопки на панели задач
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch121.Checked then
WriteInteger('TaskbarGlomming', 1) else
WriteInteger('TaskbarGlomming', 0);
CloseKey;
Free;
end;

//Мигание кнопок на панели задач
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Control Panel\Desktop', True);
WriteInteger('ForegroundLockTimeout', SpinEdit3.Value);
CloseKey;
Free;
end;

//Количество миганий кнопки
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Control Panel\Desktop', True);
WriteInteger('ForegroundFlashCount', SpinEdit4.Value);
CloseKey;
Free;
end;

//Меню Пуск: Убрать имя пользователя из меню Пуск
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch90.Checked then
R.WriteInteger('NoUserNameInStartMenu', 1) else
R.WriteInteger('NoUserNameInStartMenu', 0);
CloseKey;
Free;
end;

//Меню Пуск: Не вести историю открытия документов
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch91.Checked then
R.WriteInteger('NoRecentDocsHistory', 1) else
R.WriteInteger('NoRecentDocsHistory', 0);
CloseKey;
Free;
end;

//Меню Пуск: Очистка списка недавно использовавших программ
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch92.Checked then
R.WriteInteger('ClearRecentDocsOnExit', 1) else
R.WriteInteger('ClearRecentDocsOnExit', 0);
CloseKey;
Free;
end;

//Меню Пуск: Удалить пункт меню Выход из системы
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch93.Checked then
R.WriteInteger('StartMenuLogoff', 1) else
R.WriteInteger('StartMenuLogoff', 0);
CloseKey;
Free;
end;

//Меню Пуск: Выделять недавно установленные программы
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch94.Checked then
R.WriteInteger('Start_NotifyNewApps', 1) else
R.WriteInteger('Start_NotifyNewApps', 0);
CloseKey;
Free;
end;

//Меню Пуск: Не показывать общие ярлыки (All Users)
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch95.Checked then
R.WriteInteger('NoCommonGroups', 1) else
R.WriteInteger('NoCommonGroups', 0);
CloseKey;
Free;
end;

//Меню Пуск: Удалить список часто используемых программ
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch96.Checked then
R.WriteInteger('NoStartMenuMFUprogramsList', 1) else
R.WriteInteger('NoStartMenuMFUprogramsList', 0);
CloseKey;
Free;
end;

//Меню Пуск: Раскрывать меню при наведении и задержке указателя
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch97.Checked then
R.WriteInteger('Start_AutoCascade', 1) else
R.WriteInteger('Start_AutoCascade', 0);
CloseKey;
Free;
end;

//Количество ярлыков в меню "Пуск - Документы"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
r.WriteInteger('MaxRecentDocs', SpinEdit1.Value);
CloseKey;
Free;
end;

//Задержка выпадения меню
R := TRegistry.Create;
with R do
begin
r.RootKey := HKEY_CURRENT_USER;
r.OpenKey('Control Panel\Desktop', True);
r.WriteString('MenuShowDelay', SpinEdit2.Text);
end;

//XP: Администрирование в меню "Пуск"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch122.Checked then
WriteInteger('Start_AdminToolsRoot', 2) else
WriteInteger('Start_AdminToolsRoot', 0);
CloseKey;
Free;
end;

//XP: Использовать прокрутку для меню Программы
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch124.Checked then
WriteInteger('Start_ScrollPrograms', 1) else
WriteInteger('Start_ScrollPrograms', 0);
CloseKey;
Free;
end;

//XP: Команда "Выполнить"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch125.Checked then
WriteInteger('Start_ShowRun', 1) else
WriteInteger('Start_ShowRun', 0);
CloseKey;
Free;
end;

//XP: Поиск
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch127.Checked then
WriteInteger('Start_ShowSearch', 1) else
WriteInteger('Start_ShowSearch', 0);
CloseKey;
Free;
end;

//XP: Разрешить перетаскивание объектов
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch128.Checked then
WriteInteger('Start_EnableDragDrop', 1) else
WriteInteger('Start_EnableDragDrop', 0);
CloseKey;
Free;
end;

//XP: Сетевое окружение
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch129.Checked then
WriteInteger('Start_ShowNetPlaces', 1) else
WriteInteger('Start_ShowNetPlaces', 0);
CloseKey;
Free;
end;

//XP: Справка и поддержка
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch130.Checked then
WriteInteger('Start_ShowHelp', 1) else
WriteInteger('Start_ShowHelp', 0);
CloseKey;
Free;
end;

//XP: Отображать пункт меню Недавние документы
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch131.Checked then
WriteInteger('Start_ShowRecentDocs', 2) else
WriteInteger('Start_ShowRecentDocs', 0);
CloseKey;
Free;
end;

//XP: Большие значки в главном меню
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch132.Checked then
WriteInteger('Start_LargeMFUIcons', 1) else
WriteInteger('Start_LargeMFUIcons', 0);
CloseKey;
Free;
end;

//XP: Мои документы
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if MyDocumentsBox.ItemIndex = 0 then
WriteInteger('Start_ShowMyDocs', 0);
if MyDocumentsBox.ItemIndex = 1 then
WriteInteger('Start_ShowMyDocs', 2);
if MyDocumentsBox.ItemIndex = 2 then
WriteInteger('Start_ShowMyDocs', 1);
CloseKey;
Free;
end;

//XP: Мой компьютер
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if MyComputerBox.ItemIndex = 0 then
WriteInteger('Start_ShowMyComputer', 0);
if MyComputerBox.ItemIndex = 1 then
WriteInteger('Start_ShowMyComputer', 2);
if MyComputerBox.ItemIndex = 2 then
WriteInteger('Start_ShowMyComputer', 1);
CloseKey;
Free;
end;

//XP: Мои рисунки
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if MyPictureBox.ItemIndex = 0 then
WriteInteger('Start_ShowMyPics', 0);
if MyPictureBox.ItemIndex = 1 then
WriteInteger('Start_ShowMyPics', 2);
if MyPictureBox.ItemIndex = 2 then
WriteInteger('Start_ShowMyPics', 1);
CloseKey;
Free;
end;

//XP: Моя музыка
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if MyMusicBox.ItemIndex = 0 then
WriteInteger('Start_ShowMyMusic', 0);
if MyMusicBox.ItemIndex = 1 then
WriteInteger('Start_ShowMyMusic', 2);
if MyMusicBox.ItemIndex = 2 then
WriteInteger('Start_ShowMyMusic', 1);
CloseKey;
Free;
end;

//XP: Панель управления
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if ControlPanelBox.ItemIndex = 0 then
WriteInteger('Start_ShowControlPanel', 0);
if ControlPanelBox.ItemIndex = 1 then
WriteInteger('Start_ShowControlPanel', 2);
if ControlPanelBox.ItemIndex = 2 then
WriteInteger('Start_ShowControlPanel', 1);
CloseKey;
Free;
end;

//XP: Сетевые подключения
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if NewConnectionBox.ItemIndex = 0 then
WriteInteger('Start_ShowNetConn', 0);
if NewConnectionBox.ItemIndex = 1 then
WriteInteger('Start_ShowNetConn', 2);
if NewConnectionBox.ItemIndex = 2 then
WriteInteger('Start_ShowNetConn', 1);
CloseKey;
Free;
end;

//Классический вид меню Пуск: Использовать прокрутку для меню "Программы"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch133.Checked then
R.WriteString('StartMenuScrollPrograms', 'YES') else
R.WriteString('StartMenuScrollPrograms', 'NO');
CloseKey;
Free;
end;

//Классический вид меню Пуск: Использовать сокращенное меню
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch134.Checked then
R.WriteInteger('IntelliMenus', 1) else
R.WriteInteger('IntelliMenus', 0);
CloseKey;
Free;
end;

//Классический вид меню Пуск: Мелкие значки в главном меню
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch135.Checked then
WriteInteger('Start_LargeIcons', 0) else
WriteInteger('Start_LargeIcons', 1);
CloseKey;
Free;
end;

//Классический вид меню Пуск: Отображать команду  "Выполнить"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch136.Checked then
WriteInteger('StartMenuRun', 1) else
WriteInteger('StartMenuRun', 0);
CloseKey;
Free;
end;

//Классический вид меню Пуск: Отображать команду  "Завершение сеанса"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch137.Checked then
WriteInteger('StartMenuLogoff', 1) else
WriteInteger('StartMenuLogoff', 0);
CloseKey;
Free;
end;

//Классический вид меню Пуск: Отображать меню "Администрирование"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch138.Checked then
R.WriteString('StartMenuAdminTools', 'YES') else
R.WriteString('StartMenuAdminTools', 'NO');
CloseKey;
Free;
end;

//Классический вид меню Пуск: Отображать папку "Избранное"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch139.Checked then
WriteInteger('StartMenuFavorites', 1) else
WriteInteger('StartMenuFavorites', 0);
CloseKey;
Free;
end;

//Классический вид меню Пуск: Разрешить перетаскивание объектов
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch140.Checked then
WriteInteger('StartMenuChange', 1) else
WriteInteger('StartMenuChange', 0);
CloseKey;
Free;
end;

//Классический вид меню Пуск: Раскрыть "Панель управления"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch141.Checked then
R.WriteString('CascadeControlPanel', 'YES') else
R.WriteString('CascadeControlPanel', 'NO');
CloseKey;
Free;
end;

//Классический вид меню Пуск: Раскрыть папку "Мои документы"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch142.Checked then
R.WriteString('CascadeMyDocuments', 'YES') else
R.WriteString('CascadeMyDocuments', 'NO');
CloseKey;
Free;
end;

//Классический вид меню Пуск: Раскрыть папку "Мои рисунки"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch143.Checked then
R.WriteString('CascadeMyPictures', 'YES') else
R.WriteString('CascadeMyPictures', 'NO');
CloseKey;
Free;
end;

//Классический вид меню Пуск: Раскрыть папку "Принтеры"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch144.Checked then
R.WriteString('CascadePrinters', 'YES') else
R.WriteString('CascadePrinters', 'NO');
CloseKey;
Free;
end;

//Классический вид меню Пуск: Раскрыть "Сетевые подключения"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced', True);
if Ch145.Checked then
R.WriteString('CascadeNetworkConnections', 'YES') else
R.WriteString('CascadeNetworkConnections', 'NO');
CloseKey;
Free;
end;

//Версия Windows на Рабочем столе
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Control Panel\Desktop', True);
if Ch36.Checked then
WriteInteger('PaintDesktopVersion', 1) else
WriteInteger('PaintDesktopVersion', 0);
CloseKey;
Free;
end;

//Запретить рабочий стол
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer', True);
if Ch37.Checked then
WriteInteger('NoDesktop', 1) else
WriteInteger('NoDesktop', 0);
CloseKey;
Free;
end;

//Скрыть вкладки "Тема" и "Оформление" в свойствах экрана
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System', True);
if Ch38.Checked then
WriteInteger('NoDispAppearancePage', 1) else
WriteInteger('NoDispAppearancePage', 0);
CloseKey;
Free;
end;

//Скрыть вкладку "Рабочий стол"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System', True);
if Ch39.Checked then
WriteInteger('NoDispBackgroundPage', 1) else
WriteInteger('NoDispBackgroundPage', 0);
CloseKey;
Free;
end;

//Скрыть вкладку "Заставка"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System', True);
if Ch40.Checked then
WriteInteger('NoDispScrSavPage', 1) else
WriteInteger('NoDispScrSavPage', 0);
CloseKey;
Free;
end;

//Скрыть вкладку "Параметры"
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\System', True);
if Ch41.Checked then
WriteInteger('NoDispSettingsPage', 1) else
WriteInteger('NoDispSettingsPage', 0);
CloseKey;
Free;
end;

//Имя Корзины
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CLASSES_ROOT;
OpenKey('\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}', True);
R.WriteString('', RecycleBinEd.Text);
end;

//Добавить значок корзины в Мой Компьютер
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_LOCAL_MACHINE;
if AddToComputer.Checked then
OpenKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{645FF040-5081-101B-9F08-00AA002F954E}', True) else
DeleteKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{645FF040-5081-101B-9F08-00AA002F954E}');
CloseKey;
Free;
end;

//Иконки на рабочем столе: Мой компьютер (Classic Style)
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu', True);
if Ch42.Checked then
WriteInteger('{20D04FE0-3AEA-1069-A2D8-08002B30309D}', 0) else
WriteInteger('{20D04FE0-3AEA-1069-A2D8-08002B30309D}', 1);
CloseKey;
Free;
end;

//Иконки на рабочем столе: Корзина (Classic Style)
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu', True);
if Ch43.Checked then
WriteInteger('{645FF040-5081-101B-9F08-00AA002F954E}', 0) else
WriteInteger('{645FF040-5081-101B-9F08-00AA002F954E}', 1);
CloseKey;
Free;
end;

//Иконки на рабочем столе: Internet Explorer (Classic Style)
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu', True);
if Ch44.Checked then
WriteInteger('{871C5380-42A0-1069-A2EA-08002B30309D}', 0) else
WriteInteger('{871C5380-42A0-1069-A2EA-08002B30309D}', 1);
CloseKey;
Free;
end;

//Иконки на рабочем столе: Мой компьютер (XP Style)
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel', True);
if ch146.Checked then
WriteInteger('{20D04FE0-3AEA-1069-A2D8-08002B30309D}', 0) else
WriteInteger('{20D04FE0-3AEA-1069-A2D8-08002B30309D}', 1);
CloseKey;
Free;
end;

//Иконки на рабочем столе: Корзина (XP Style)
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel', True);
if ch147.Checked then
WriteInteger('{645FF040-5081-101B-9F08-00AA002F954E}', 0) else
WriteInteger('{645FF040-5081-101B-9F08-00AA002F954E}', 1);
CloseKey;
Free;
end;

//Иконки на рабочем столе: Internet Explorer (XP Style)
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel', True);
if ch148.Checked then
WriteInteger('{871C5380-42A0-1069-A2EA-08002B30309D}', 0) else
WriteInteger('{871C5380-42A0-1069-A2EA-08002B30309D}', 1);
CloseKey;
Free;
end;

//Запретить установку и удаление программ
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall', True);
if ch149.Checked then
WriteInteger('NoAddRemovePrograms', 1) else
WriteInteger('NoAddRemovePrograms', 0);
CloseKey;
Free;
end;

//Скрыть вкладку Изменение и удаление программ
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall', True);
if ch150.Checked then
WriteInteger('NoRemovePage', 1) else
WriteInteger('NoRemovePage', 0);
CloseKey;
Free;
end;

//Скрыть вкладку Установка программ
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall', True);
if ch151.Checked then
WriteInteger('NoAddPage', 1) else
WriteInteger('NoAddPage', 0);
CloseKey;
Free;
end;

//Скрыть вкладку Установка компонентов Windows
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall', True);
if ch152.Checked then
WriteInteger('NoWindowsSetupPage', 1) else
WriteInteger('NoWindowsSetupPage', 0);
CloseKey;
Free;
end;

//Скрыть раздел Установка программы с CD-ROM или дискеты
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall', True);
if ch153.Checked then
WriteInteger('NoAddFromCDorFloppy', 1) else
WriteInteger('NoAddFromCDorFloppy', 0);
CloseKey;
Free;
end;

//Скрыть раздел Установка программ от Microsoft
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall', True);
if ch154.Checked then
WriteInteger('NoAddFromInternet', 1) else
WriteInteger('NoAddFromInternet', 0);
CloseKey;
Free;
end;

//Скрыть раздел Установка программ из сети
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall', True);
if ch155.Checked then
WriteInteger('NoAddFromNetwork', 1) else
WriteInteger('NoAddFromNetwork', 0);
CloseKey;
Free;
end;

//Скрыть сведения о поддержке
R := TRegistry.Create;
with R do
begin
RootKey := HKEY_CURRENT_USER;
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall', True);
if ch156.Checked then
WriteInteger('NoSupportInfo', 1) else
WriteInteger('NoSupportInfo', 0);
CloseKey;
Free;
end;

except
end;
end;


procedure TMainForm.SaveExitBtClick(Sender: TObject);
begin
ApplyBt.OnClick(Self);
Close;
end;

procedure TMainForm.UndoBtClick(Sender: TObject);
begin
UpdateSetItem.Click;
end;

procedure TMainForm.UpdateListBtClick(Sender: TObject);
begin
OtherBt.OnClick(Self);
ScreenApplyBt.Enabled := False;
List.Items.clear;
i := 0;
while EnumDisplaySettings(nil, i, Sc[i]) do
begin
List.Items.add(inttostr(Sc[i].dmBitsperpel)+' Bit(s) '+
Inttostr(Sc[i].dmPelsWidth)+'  '+
inttostr(Sc[i].dmPelsHeight)+ ' - Gh '+
inttostr(Sc[i].dmDisplayFrequency));
inc(i);
end;
end;

procedure TMainForm.ScreenApplyBtClick(Sender: TObject);
begin
try
PostMessage(Handle, WM_USER + 1024, 0, 0);
if RusItem.Checked then
begin
if Application.MessageBox('Применить выбранное вами разрешение экрана?',
'Подтверждение на выполнение операции',
Mb_IconQuestion + mb_YesNo) = idYes then
begin
Sc[list.itemIndex].dmFields := dm_bitsperpel or
dm_pelswidth or dm_pelsHeight or dm_displayflags or
dm_displayfrequency;
changeDisplaysettings(Sc[list.itemindex], cds_updateregistry);
OtherBt.OnClick(Self);
ScreenApplyBt.Enabled := False;
end;
end;

if EngItem.Checked then
begin
if Application.MessageBox('Apply changes in your screen?',
'Confirmation',
Mb_IconQuestion + mb_YesNo) = idYes then
begin
Sc[list.itemIndex].dmFields := dm_bitsperpel or
dm_pelswidth or dm_pelsHeight or dm_displayflags or
dm_displayfrequency;
changeDisplaysettings(Sc[list.itemindex], cds_updateregistry);
OtherBt.OnClick(Self);
ScreenApplyBt.Enabled := False;
end;
end;
except
end;
end;

procedure TMainForm.OtherBtClick(Sender: TObject);
var
c: string;
begin
if RusItem.Checked then
tx105.Caption := IntToStr(Screen.Width) + ' на ' + IntToStr(Screen.Height) + ' точек';
if EngItem.Checked then
tx105.Caption := IntToStr(Screen.Width) + ' on ' + IntToStr(Screen.Height) + ' points';
DC := CreateDC('DISPLAY',nil,nil,nil);
tx107.Caption := IntToStr(GetDeviceCaps(DC,BITSPIXEL));
tx108.Caption := IntToStr(GetDeviceCaps(DC,PLANES));
if RusItem.Checked then
case GetDeviceCaps(DC,BITSPIXEL) of
8  : c := '256 цветов';
15 : c := 'Hi-Color/32768 цветов';
16 : c := 'Hi-Color/65536 цветов';
24 : c := 'True-Color/16 млн цветов';
32 : c := 'True-Color/32 бит';
end;
if EngItem.Checked then
case GetDeviceCaps(DC,BITSPIXEL) of
8  : c := '256 colours';
15 : c := 'Hi-Color/32768 colours';
16 : c := 'Hi-Color/65536 colours';
24 : c := 'True-Color/16 mil colours';
32 : c := 'True-Color/32 bit';
end;
if RusItem.Checked then
tx106.Caption := c;
if EngItem.Checked then
tx106.Caption := c;
DeleteDC(DC);

end;

procedure TMainForm.UninstallBtClick(Sender: TObject);
begin
NoteBook.ActivePage := 'UninstallPage';
if RusItem.Checked then
tx212.Caption := 'Текущая группа: ' + 'Удаление программ';
if EngItem.Checked then
tx212.Caption := 'Current group: ' + 'Uninstall';
R:=TRegistry.Create;
R.RootKey:=HKEY_LOCAL_MACHINE;
R.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Uninstall', False);
R.GetKeyNames(UninstallList.Items);
UninstallList.Sorted := True;
UninstallList.SetFocus;
end;

procedure TMainForm.RegistryDelBtClick(Sender: TObject);
var
i: Integer;
begin  
try
i := UninstallList.ItemIndex;
PostMessage(Handle, WM_USER + 1024, 0, 0);
if MainForm.RusItem.Checked then
begin
if UninstallList.Selected[i] = False then
Exit else
if Application.MessageBox('Вы уверены, что хотите удалить информацию о программе из реестра?',
'FireTuning Tweaker',
mb_IconAsterisk + mb_YesNo) = idYes then
begin
r.DeleteKey('\Software\Microsoft\Windows\CurrentVersion\Uninstall'+'\'+UninstallList.Items[UninstallList.itemindex]);
R.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Uninstall', False);
R.GetKeyNames(UninstallList.Items);
end;
end;
if MainForm.EngItem.Checked then
begin
if UninstallList.Selected[i] = False then
Exit else
if Application.MessageBox('Are you sure, what do you want to permanently remove program from the registry?',
'FireTuning Tweaker',
mb_IconAsterisk + mb_YesNo) = idYes then
begin
r.DeleteKey('\Software\Microsoft\Windows\CurrentVersion\Uninstall'+'\'+UninstallList.Items[UninstallList.itemindex]);
R.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Uninstall', False);
R.GetKeyNames(UninstallList.Items);
end;
end;
except
end;
end;

procedure TMainForm.UninstallListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
try
if Key = VK_DELETE then
RegistryDelBt.OnClick(Self);
if ch7.Checked then
begin
if Key = vk_Escape then
Application.Minimize;
end;
except
end;
end;

procedure TMainForm.RefreshBtClick(Sender: TObject);
begin
R:=TRegistry.Create;
R.RootKey:=HKEY_LOCAL_MACHINE;
R.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Uninstall', False);
R.GetKeyNames(UninstallList.Items);
ChangeEditor.Text := '';
end;

procedure TMainForm.GoToWebAddressEdKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if ch7.Checked then
begin
if Key = vk_Escape then
Application.Minimize;
end;
if Key= vk_Return then
GoToAddress.Click;
end;

procedure TMainForm.ch146ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel');
end;

procedure TMainForm.AddToRecycleContextClick(Sender: TObject);
begin
try
Reg:=TRegistry.Create;
Reg.RootKey:=HKEY_CLASSES_ROOT;
if Reg.OpenKey('\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\Shell\' + NameRecycleContextItem.Text + '\Command',true) then
begin
Reg.WriteString('',CommandRecycleContextItem.Text);
end;
DelFromRecycleContext.Enabled := False;
NameRecycleContextItem.Clear;
CommandRecycleContextItem.Clear;
CleanerListRecycleBinContextMenu;
except
end;
end;

procedure TMainForm.NameRecycleContextItemChange(Sender: TObject);
begin
if Length(CommandRecycleContextItem.Text) > 0 then
if Length(NameRecycleContextItem.Text) = 0 then
AddToRecycleContext.Enabled := False else
AddToRecycleContext.Enabled := True;
end;

procedure TMainForm.CommandRecycleContextItemChange(Sender: TObject);
begin
if Length(NameRecycleContextItem.Text) > 0 then
if Length(CommandRecycleContextItem.Text) = 0 then
AddToRecycleContext.Enabled := False else
AddToRecycleContext.Enabled := True;
end;

procedure TMainForm.DelFromRecycleContextClick(Sender: TObject);
begin
try
if DeleteBoxFromRecycleContext.ItemIndex = -1 then
Exit else
begin
i := DeleteBoxFromRecycleContext.ItemIndex;
if DeleteBoxFromRecycleContext.ItemIndex  = -1 then
Exit else
PostMessage(Handle, WM_USER + 1024, 0, 0);
if MainForm.RusItem.Checked then
begin
if Application.MessageBox('Вы уверены, что хотите удалить информацию о программе из реестра?',
'FireTuning Tweaker',
mb_IconAsterisk + mb_YesNo) = idYes then
begin
R:=TRegistry.Create;
R.RootKey:=HKEY_CLASSES_ROOT;
r.DeleteKey('\\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\Shell\'+'\'+DeleteBoxFromRecycleContext.Items[DeleteBoxFromRecycleContext.itemindex]);
R.OpenKey('\\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\Shell\', False);
R.GetKeyNames(DeleteBoxFromRecycleContext.Items);
DelFromRecycleContext.Enabled := False;
CleanerListRecycleBinContextMenu;
DeleteBoxFromRecycleContext.Sorted := True;
end;
end;
if MainForm.EngItem.Checked then
begin
if Application.MessageBox('Are you sure, what do you want to permanently remove program from the registry?',
'FireTuning Tweaker',
mb_IconAsterisk + mb_YesNo) = idYes then
begin
R:=TRegistry.Create;
R.RootKey:=HKEY_CLASSES_ROOT;
r.DeleteKey('\\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\Shell\'+'\'+DeleteBoxFromRecycleContext.Items[DeleteBoxFromRecycleContext.itemindex]);
R.OpenKey('\\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\Shell\', False);
R.GetKeyNames(DeleteBoxFromRecycleContext.Items);
DelFromRecycleContext.Enabled := False;
CleanerListRecycleBinContextMenu;
DeleteBoxFromRecycleContext.Sorted := True;
end;
end;
end;
except
end;
end;

procedure TMainForm.DeleteBoxFromRecycleContextCloseUp(Sender: TObject);
begin
if DeleteBoxFromRecycleContext.ItemIndex  = -1 then
DelFromRecycleContext.Enabled := False else
DelFromRecycleContext.Enabled := True;
end;

procedure TMainForm.AddFireTuningTweakerClick(Sender: TObject);
begin
try
Reg:=TRegistry.Create;
Reg.RootKey:=HKEY_CLASSES_ROOT;
if Reg.OpenKey('\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\Shell\FireTuning Tweaker\Command',true) then
begin
Reg.WriteString('',ParamStr(0));
end;
DelFromRecycleContext.Enabled := False;
CleanerListRecycleBinContextMenu;
except
end;
end;

procedure TMainForm.Button5Click(Sender: TObject);
begin
try
/////////////////////////////////////
//Вкладка ЗАЩИТА  - Internet Explorer
/////////////////////////////////////

//Запретить установку и удаление программ
r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall');
if r.ValueExists('NoAddRemovePrograms')
then i:=r.ReadInteger('NoAddRemovePrograms');
if i=0 then
ch149.Checked:=False else
ch149.Checked:=True;
r.CloseKey;
r.Free;

//Скрыть вкладку Изменение и удаление программ
r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall');
if r.ValueExists('NoRemovePage')
then i:=r.ReadInteger('NoRemovePage');
if i=0 then
ch150.Checked:=False else
ch150.Checked:=True;
r.CloseKey;
r.Free;

//Скрыть вкладку Установка программ
r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall');
if r.ValueExists('NoAddPage')
then i:=r.ReadInteger('NoAddPage');
if i=0 then
ch151.Checked:=False else
ch151.Checked:=True;
r.CloseKey;
r.Free;

//Скрыть вкладку Установка компонентов Windows
r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall');
if r.ValueExists('NoWindowsSetupPage')
then i:=r.ReadInteger('NoWindowsSetupPage');
if i=0 then
ch152.Checked:=False else
ch152.Checked:=True;
r.CloseKey;
r.Free;

//Скрыть раздел Установка программы с CD-ROM или дискеты
r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall');
if r.ValueExists('NoAddFromCDorFloppy')
then i:=r.ReadInteger('NoAddFromCDorFloppy');
if i=0 then
ch153.Checked:=False else
ch153.Checked:=True;
r.CloseKey;
r.Free;

//Скрыть раздел Установка программ от Microsoft
r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall');
if r.ValueExists('NoAddFromInternet')
then i:=r.ReadInteger('NoAddFromInternet');
if i=0 then
ch154.Checked:=False else
ch154.Checked:=True;
r.CloseKey;
r.Free;

//Скрыть раздел Установка программ из сети
r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall');
if r.ValueExists('NoAddFromNetwork')
then i:=r.ReadInteger('NoAddFromNetwork');
if i=0 then
ch155.Checked:=False else
ch155.Checked:=True;
r.CloseKey;
r.Free;

//Скрыть сведения о поддержке
r:=TRegistry.Create;
r.RootKey:=HKEY_CURRENT_USER;
r.OpenKeyReadOnly('\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall');
if r.ValueExists('NoSupportInfo')
then i:=r.ReadInteger('NoSupportInfo');
if i=0 then
ch156.Checked:=False else
ch156.Checked:=True;
r.CloseKey;
r.Free;

except
end;
end;

procedure TMainForm.ch149ContextPopup(Sender: TObject; MousePos: TPoint;
var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall');
end;

procedure TMainForm.SetPathToHTMLEditorBtClick(Sender: TObject);
var
s: String;
begin
if OpenSaveFileDialog(MainForm.Handle,
'*.exe', 'OS (*.exe; *.bat; *.cmd; *.com)|*.exe; *.bat; *.cmd; *.com;|All files (*.*)|*.*', ParamStr(1),
'FireTuning Tweaker', s, True) then
begin
PathToHTMLEditorEd.Text := s;
end;
end;

procedure TMainForm.tx227ContextPopup(Sender: TObject; MousePos: TPoint;
var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\View Source Editor\Editor Name');
end;

procedure TMainForm.DeleteBoxFromRecycleContextContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
if ch1.Checked then
JumpToKey('HKEY_CLASSES_ROOT\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\Shell\');
end;

procedure TMainForm.LbSpeedButton2Click(Sender: TObject);
var
Dir: String;
begin
if RusItem.Checked then
begin
if SelectDirectory('Выберите папку закачек по умолчанию:', '', Dir) then
DownLoadPathEd.Text := Dir;
end;
if EngItem.Checked then
begin
if SelectDirectory('Select your default downloads folder:', '', Dir) then
DownLoadPathEd.Text := Dir;
end;
end;

procedure TMainForm.CommandRecycleContextItemBtn1Click(Sender: TObject);
var
s: String;
begin
if OpenSaveFileDialog(MainForm.Handle,
'*.exe', 'OS (*.exe; *.bat; *.cmd; *.com)|*.exe; *.bat; *.cmd; *.com;|All files (*.*)|*.*', ParamStr(1),
'FireTuning Tweaker', s, True) then
begin
CommandRecycleContextItem.Text := s;
end;
end;

procedure TMainForm.UninstallListClick(Sender: TObject);
begin
R:=TRegistry.Create;
R.RootKey:=HKEY_LOCAL_MACHINE;
r.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Uninstall'+'\' + UninstallList.Items[UninstallList.itemindex], true);
ChangeEditor.Text := r.ReadString('UninstallString');
end;

procedure TMainForm.LbSpeedButton1Click(Sender: TObject);
var
w1: Word;
p1, p2: array[0..255] of Char;
begin
StrPcopy(p1, ChangeEditor.Text);
if GetModuleHandle(p1) = 0 then
begin
StrPcopy(p2, ChangeEditor.Text);
w1 := WinExec(p2, SW_Restore);
end;
end;

procedure TMainForm.HomePageItemClick(Sender: TObject);
begin
ShellExecute(Handle, nil, 'http://www.viacoding.mylivepage.ru/', nil,nil, Sw_ShowNormal);
end;

procedure TMainForm.SecondMailItemClick(Sender: TObject);
begin
ShellExecute(Handle,'open',
'mailto:viacoding@mail.ru?Subject=FireTuning Tweaker Project'+
'',
'','',SW_SHOW);
end;

procedure TMainForm.FirstMailItemClick(Sender: TObject);
begin
ShellExecute(Handle,'open',
'mailto:GoodWinNix@mail.ru?Subject=FireTuning Tweaker Project'+
'',
'','',SW_SHOW);
end;

end.
