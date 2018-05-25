unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql51conn, mysql50conn, sqldb, db, FileUtil, Forms,
  Controls, Graphics, Dialogs, DBGrids, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    MySQL50Connection1: TMySQL50Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure MySQL51Connection1AfterConnect(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
    SQLQuery1.Close;
    SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Add('select * from `informationbiletov` where `Cena bileta`>=400');
    SQLQuery1.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  try
   MySQL50Connection1.Connected:=true;
 except
   ShowMessage('Подключение к БД: ОШИБКА!');
   exit;
 end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   try
   SQLTransaction1.Active:=true;
 except
   ShowMessage('Транзакция: ОШИБКА!');
   exit;
 end;
end;

procedure TForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin

end;

procedure TForm1.MySQL51Connection1AfterConnect(Sender: TObject);
begin

end;

end.

