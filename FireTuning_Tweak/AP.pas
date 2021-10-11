unit AP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, XPButton, jpeg, ExtCtrls, XPLabel, Drawer,
  Registry, ShellApi;

  const
   AlignCenter = WM_USER + 1024;

  type
   TWmMoving = record
   Msg: Cardinal;
   fwSide: Cardinal;
   lpRect: PRect;
   Result: Integer;
  end;

type
  TAboutForm = class(TForm)
    fr1: TPanel;
    Logo: TImage;
    tx1: TXPLabel;
    tx2: TXPLabel;
    tx5: TXPLabel;
    tx4: TXPLabel;
    tx3: TXPLabel;
    spr1: TBevel;
    spr2: TBevel;
    tx9: TXPLabel;
    License: TRichEdit;
    fr2: TPanel;
    Closed: TXPButton;
    SendMail: TEdit;
    Drawer: TDrawer;
    tx8: TXPLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tx9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure tx8MouseLeave(Sender: TObject);
    procedure tx8MouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure tx9MouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure tx9MouseLeave(Sender: TObject);
    procedure tx9MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx8MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
    procedure tx8Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SendMailClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ClosedClick(Sender: TObject);

  private

    SM: HWND;

    r: TRegistry;

    MS: TMemoryStatus;

    procedure ChangeMessageBoxPosition(var Msg: TMessage);
    message AlignCenter;

    procedure wmNCLButtonDown(var Msg: TWMNCLButtonDown);
    message WM_NCLBUTTONDOWN;

    procedure wmNCLButtonUp(var Msg: TWMNCLButtonUp);
    message WM_NCLBUTTONUP;

    procedure CMMouseLeave(var msg: TMessage);
    message CM_MOUSELEAVE;

    procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;

  public

  end;

var
  AboutForm: TAboutForm;
  msgCaption: PChar;

implementation

uses NP;

{$R *.dfm}

procedure TAboutForm.ChangeMessageBoxPosition(var Msg: TMessage);
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
x := AboutForm.Left + ((AboutForm.Width - w) div 2);
if x < 0 then
x := 0
else if x + w > Screen.Width then x := Screen.Width - w;
y := AboutForm.Top + ((AboutForm.Height - h) div 2);
if y < 0 then y := 0
else if y + h > Screen.Height then y := Screen.Height - h;
SetWindowPos(MBHWnd, 0, x, y, 0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);
end;
end;

procedure TAboutForm.CMMouseLeave(var msg: TMessage);
begin
tx8.ForegroundColor := $00FF8000;
tx9.ForegroundColor := $00FF8000;
end;

procedure TAboutForm.FormCreate(Sender: TObject);
begin
r:=TRegistry.Create;
r.RootKey:=HKEY_LOCAL_MACHINE;
r.OpenKey('\Software\Microsoft\Windows NT\CurrentVersion', True);
tx4.Caption := r.ReadString('ProductName');
GlobalMemoryStatus(MS);
tx5.Caption := 'Memory Available to Windows: ' + FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
end;

procedure TAboutForm.wmNCLButtonDown(var Msg: TWMNCLButtonDown);
begin
if Msg.HitTest = HTHELP then
begin
Msg.Result := 0;
end else
inherited;
end;

procedure TAboutForm.wmNCLButtonUp(var Msg: TWMNCLButtonUp);
begin
if Msg.HitTest = HTHELP then
begin
PostMessage(Handle, WM_USER + 1024, 0, 0);
if MainForm.RusItem.Checked then
Application.MessageBox('Вы имеете право распространять и использовать эту программу' +
#13 + 'в любых целях при условии целостности оригинального' + #13 + 'дистрибутива.',
'FireTuning Tweaker',
mb_IconAsterisk + mb_OK);
if MainForm.EngItem.Checked then
Application.MessageBox('You have the right to distribute and use this program in any' +
#13 + 'purposes under condition of integrity of the original' + #13 + 'distribution kit.',
'FireTuning Tweaker',
mb_IconAsterisk + mb_OK);
end
else
inherited;
end;

procedure TAboutForm.FormActivate(Sender: TObject);
begin
SM := GetSystemMenu(Handle, False);
DeleteMenu(SM, Sc_Restore, Mf_String);
DeleteMenu(SM, Sc_Size, Mf_String);
DeleteMenu(SM, Sc_Minimize, Mf_String);
DeleteMenu(SM, Sc_Maximize, Mf_String);
end;

procedure TAboutForm.FormDestroy(Sender: TObject);
begin
SM := GetSystemMenu(Handle, True);
AboutForm.OnActivate := nil;
SendMail.Free;
License.Free;
Drawer.Free;
Closed.Free;
Logo.Free;
spr1.Free;
spr2.Free;
fr1.Free;
fr2.Free;
tx1.Free;
tx2.Free;
tx3.Free;
tx4.Free;
tx5.Free;
tx8.Free;
tx9.Free;
end;

procedure TAboutForm.tx9Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'http://www.viacoding.mylivepage.ru/', nil,nil, Sw_ShowNormal);
end;

procedure TAboutForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Closed.SetFocus;
end;

procedure TAboutForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if MainForm.ch15.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TAboutForm.WMMoving(var msg: TWMMoving);
var
r: TRect;
begin
if MainForm.ch17.Checked then begin
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

procedure TAboutForm.tx8MouseLeave(Sender: TObject);
begin
tx8.ForegroundColor := $00FF8000;
end;

procedure TAboutForm.tx8MouseUp(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
tx8.ForegroundColor := $00FF8000;
end;

procedure TAboutForm.tx9MouseUp(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
tx9.ForegroundColor := $00FF8000;
end;

procedure TAboutForm.tx9MouseLeave(Sender: TObject);
begin
tx9.ForegroundColor := $00FF8000;
end;

procedure TAboutForm.tx9MouseMove(Sender: TObject; Shift: TShiftState; X,
Y: Integer);
begin
tx9.ForegroundColor := clRed;
end;

procedure TAboutForm.tx8MouseMove(Sender: TObject; Shift: TShiftState; X,
Y: Integer);
begin
tx8.ForegroundColor := clRed;
end;

procedure TAboutForm.tx8Click(Sender: TObject);
begin
ShellExecute(Handle,'open',
'mailto:GoodWinNix@mail.ru?Subject=FlashCore Project'+
'',
'','',SW_SHOW);
end;

procedure TAboutForm.FormKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
if Key = vk_Escape then
Close;
end;

procedure TAboutForm.SendMailClick(Sender: TObject);
begin
Drawer.Open;
end;

procedure TAboutForm.FormShow(Sender: TObject);
begin
if MainForm.ch12.Checked then
SetWindowLong(AboutForm.Handle, GWL_EXSTYLE,
GetWindowLOng(AboutForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

procedure TAboutForm.ClosedClick(Sender: TObject);
begin
AboutForm.Close;
end;

end.
