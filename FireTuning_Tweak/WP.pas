unit WP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPButton, StdCtrls, ExtCtrls, XPLabel;

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
  TOpenForm = class(TForm)
    Frame1: TPanel;
    Logo: TImage;
    TextList: TComboBox;
    OK: TXPButton;
    Closed: TXPButton;
    Choose: TXPButton;
    txt1: TXPLabel;
    txt2: TXPLabel;
    txt3: TXPLabel;
    txt4: TXPLabel;
    procedure FormShow(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ChooseClick(Sender: TObject);
    procedure ClosedClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
        procedure WMMoving(var msg: TWMMoving);
    message WM_MOVING;
    procedure ChangeMessageBoxPosition(var Msg: TMessage);
    message AlignCenter;
  public
    { Public declarations }
  end;

var
  OpenForm: TOpenForm;

implementation

uses NP;

{$R *.dfm}

procedure TOpenForm.ChangeMessageBoxPosition(var Msg: TMessage);
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
x := OpenForm.Left + ((OpenForm.Width - w) div 2);
if x < 0 then
x := 0
else if x + w > Screen.Width then x := Screen.Width - w;
y := OpenForm.Top + ((OpenForm.Height - h) div 2);
if y < 0 then y := 0
else if y + h > Screen.Height then y := Screen.Height - h;
SetWindowPos(MBHWnd, 0, x, y, 0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);
end;

end;

procedure TOpenForm.WMMoving(var msg: TWMMoving);
var
r: TRect;
begin
if MainForm.ch17.Checked then
begin
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

procedure TOpenForm.FormShow(Sender: TObject);
begin
if MainForm.ch12.Checked then
SetWindowLong(OpenForm.Handle, GWL_EXSTYLE,
GetWindowLOng(OpenForm.Handle, GWL_EXSTYLE) or WS_EX_APPWINDOW);
end;

procedure TOpenForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if MainForm.ch15.Checked then
begin
ReleaseCapture;
Perform(Wm_SysCommand, $f012, 0);
end;
end;

procedure TOpenForm.ChooseClick(Sender: TObject);
begin
if MainForm.OpenPicDlg.Execute then
TextList.Text := MainForm.OpenPicDlg.FileName;
end;

procedure TOpenForm.ClosedClick(Sender: TObject);
begin
OpenForm.Close;
end;

procedure TOpenForm.FormDestroy(Sender: TObject);
begin
OpenForm.OnActivate := nil;
TextList.Free;
Choose.Free;
Frame1.Free;
Closed.Free;
Logo.Free;
txt1.Free;
txt2.Free;
txt3.Free;
txt4.Free;
OK.Free;
end;

procedure TOpenForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = vk_Escape then
Closed.OnClick(Self);
if Key = vk_Return then
OK.OnClick(self);
end;

end.
