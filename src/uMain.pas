unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Clipbrd,
  Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    btnListele: TButton;
    memoList1: TMemo;
    memoList2: TMemo;
    btnKopyala: TButton;
    btnTemizle: TButton;
    timer: TTimer;
    procedure btnListeleClick(Sender: TObject);
    procedure btnKopyalaClick(Sender: TObject);
    procedure timerTimer(Sender: TObject);
    procedure btnTemizleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnKopyalaClick(Sender: TObject);
begin
  timer.Enabled := true;
  Clipboard.AsText := memoList2.Text;
  btnKopyala.Enabled := false;
end;

procedure TfrmMain.btnListeleClick(Sender: TObject);
var
  maillist : TStringBuilder;

begin
  maillist := TStringBuilder.Create;
  var i : integer;
  var flag : Boolean;
  i := 0;
  var data : string;
  memoList1.Text := StringReplace(memoList1.Text, '(', '', [rfReplaceAll, rfIgnoreCase]);
  memoList1.Text := StringReplace(memoList1.Text, ')', '', [rfReplaceAll, rfIgnoreCase]);
  memoList1.Text := StringReplace(memoList1.Text, '-', '', [rfReplaceAll, rfIgnoreCase]);
  memoList1.Text := StringReplace(memoList1.Text, ' ', '', [rfReplaceAll, rfIgnoreCase]);
  memoList1.Text := StringReplace(memoList1.Text, ':', '', [rfReplaceAll, rfIgnoreCase]);    // ' '
  memoList1.Text := StringReplace(memoList1.Text, ' ', '', [rfReplaceAll, rfIgnoreCase]);
  for i := 0 to memoList1.Lines.Count - 1 do begin
    var item : string;
    item := memoList1.Lines[i];
    if (Length(item) > 0) then begin
      if (item.Length = 11) then
        maillist.Append(item.Substring(1) + ',')
      else if (item.Length = 10) then
        maillist.Append(item + ',');
    end;
  end;
  memoList2.Text := maillist.ToString.Substring(0, length(maillist.ToString) - 1);
end;

procedure TfrmMain.btnTemizleClick(Sender: TObject);
begin
  memoList1.Clear;
  memoList2.Clear;
end;

procedure TfrmMain.timerTimer(Sender: TObject);
begin
  timer.Enabled := false;
  btnKopyala.Enabled := true;
end;

end.
