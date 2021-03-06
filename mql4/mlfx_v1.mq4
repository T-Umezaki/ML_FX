//+------------------------------------------------------------------+
//|                                                      mlfx_v1.mq4 |
//|                        Copyright 2016, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2016, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//true = 使用する false =使用しない
extern bool useShellExec = true;

//ヘッダー部分に以下を記入
#import "shell32.dll"
int ShellExecuteW(int hWnd,int lpVerb,string lpFile,string lpParameters,int lpDirectory,int nCmdShow);
#import
#define SW_SHOW 5
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
    const string filename = "GBPJPY_REAL.csv";  // ファイル名
           int    filehandle;             // ファイルハンドラ
    
    filehandle = FileOpen( filename , FILE_READ | FILE_WRITE | FILE_CSV );
  
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
  }
//+------------------------------------------------------------------+
//| Tester function                                                  |
//+------------------------------------------------------------------+
double OnTester()
  {
//---
   double ret=0.0;
//---

//---
   return(ret);
  }
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
//---
//---
    const string filename = "GBPJPY_REAL2.csv";  // ファイル名
//           int    filehandle;             // ファイルハンドラ
//           uint   f;
           string filename1 = "GBPJPY_REAL3.csv";
           int    fh1;
           string csvh = "V1,V2,V3,V4,V5,V6,V7,V1.1,V2.1,V3.1,V4.1,V5.1,V6.1,V7.1,V1.2,V2.2,V3.2,V4.2,V5.2,V6.2,V7.2,V1.3,V2.3,V3.3,V4.3,V5.3,V6.3,V7.3,V1.4,V2.4,V3.4,V4.4,V5.4,V6.4,V7.4,V1.5,V2.5,V3.5,V4.5,V5.5,V6.5,V7.5,V1.6,V2.6,V3.6,V4.6,V5.6,V6.6,V7.6,V1.7,V2.7,V3.7,V4.7,V5.7,V6.7,V7.7,V1.8,V2.8,V3.8,V4.8,V5.8,V6.8,V7.8,V1.9,V2.9,V3.9,V4.9,V5.9,V6.9,V7.9,V1.10,V2.10,V3.10,V4.10,V5.10,V6.10,V7.10,V1.11,V2.11,V3.11,V4.11,V5.11,V6.11,V7.11,V1.12,V2.12,V3.12,V4.12,V5.12,V6.12,V7.12,V1.13,V2.13,V3.13,V4.13,V5.13,V6.13,V7.13,V1.14,V2.14,V3.14,V4.14,V5.14,V6.14,V7.14";
           string csvm ;
   // filehandle = FileOpen( filename , FILE_READ | FILE_WRITE | FILE_CSV );
   //printf("%s:%g:%g:%g:%g","--",iClose( "GBPJPY",PERIOD_M15,3),iClose( "GBPJPY",PERIOD_M15,2),iClose( "GBPJPY",PERIOD_M15,1),iClose( "GBPJPY",PERIOD_M15,0));
   //printf("%s:%g:%g:%g:%g","--",iClose( "GBPJPY",PERIOD_H1,3),iClose( "GBPJPY",PERIOD_H1,2),iClose( "GBPJPY",PERIOD_H1,1),iClose( "GBPJPY",PERIOD_H1,0));
   //printf("%s:%g:%g:%g:%g","--",iClose( "GBPJPY",PERIOD_D1,3),iClose( "GBPJPY",PERIOD_D1,2),iClose( "GBPJPY",PERIOD_D1,1),iClose( "GBPJPY",PERIOD_D1,0));
   //f= FileWrite(filehandle,"aaa");
   //FileClose(filehandle);

fh1=FileOpen(filename1,FILE_READ | FILE_WRITE | FILE_TXT);
FileWrite(fh1,csvh);
csvm=StringFormat("%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_M15,3),iHigh( "GBPJPY",PERIOD_M15,3),iLow( "GBPJPY",PERIOD_M15,3),iClose( "GBPJPY",PERIOD_M15,3),"433");
csvm+=StringFormat(",%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_M15,2),iHigh( "GBPJPY",PERIOD_M15,2),iLow( "GBPJPY",PERIOD_M15,2),iClose( "GBPJPY",PERIOD_M15,2),"433");
csvm+=StringFormat(",%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_M15,1),iHigh( "GBPJPY",PERIOD_M15,1),iLow( "GBPJPY",PERIOD_M15,1),iClose( "GBPJPY",PERIOD_M15,1),"433");
csvm+=StringFormat(",%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_M15,0),iHigh( "GBPJPY",PERIOD_M15,0),iLow( "GBPJPY",PERIOD_M15,0),iClose( "GBPJPY",PERIOD_M15,0),"433");
csvm+=StringFormat(",%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_M15,0),iHigh( "GBPJPY",PERIOD_M15,0),iLow( "GBPJPY",PERIOD_M15,0),iClose( "GBPJPY",PERIOD_M15,0),"433");

csvm+=StringFormat(",%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_H1,3),iHigh( "GBPJPY",PERIOD_H1,3),iLow( "GBPJPY",PERIOD_H1,3),iClose( "GBPJPY",PERIOD_H1,3),"433");
csvm+=StringFormat(",%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_H1,2),iHigh( "GBPJPY",PERIOD_H1,2),iLow( "GBPJPY",PERIOD_H1,2),iClose( "GBPJPY",PERIOD_H1,2),"433");
csvm+=StringFormat(",%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_H1,1),iHigh( "GBPJPY",PERIOD_H1,1),iLow( "GBPJPY",PERIOD_H1,1),iClose( "GBPJPY",PERIOD_H1,1),"433");
csvm+=StringFormat(",%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_H1,0),iHigh( "GBPJPY",PERIOD_H1,0),iLow( "GBPJPY",PERIOD_H1,0),iClose( "GBPJPY",PERIOD_H1,0),"433");
csvm+=StringFormat(",%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_H1,0),iHigh( "GBPJPY",PERIOD_H1,0),iLow( "GBPJPY",PERIOD_H1,0),iClose( "GBPJPY",PERIOD_H1,0),"433");

csvm+=StringFormat(",%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_D1,3),iHigh( "GBPJPY",PERIOD_D1,3),iLow( "GBPJPY",PERIOD_D1,3),iClose( "GBPJPY",PERIOD_D1,3),"433");
csvm+=StringFormat(",%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_D1,2),iHigh( "GBPJPY",PERIOD_D1,2),iLow( "GBPJPY",PERIOD_D1,2),iClose( "GBPJPY",PERIOD_D1,2),"433");
csvm+=StringFormat(",%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_D1,1),iHigh( "GBPJPY",PERIOD_D1,1),iLow( "GBPJPY",PERIOD_D1,1),iClose( "GBPJPY",PERIOD_D1,1),"433");
csvm+=StringFormat(",%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_D1,0),iHigh( "GBPJPY",PERIOD_D1,0),iLow( "GBPJPY",PERIOD_D1,0),iClose( "GBPJPY",PERIOD_D1,0),"433");
csvm+=StringFormat(",%s,%g,%g,%g,%g,%s","2016.07.29,00:00",iOpen( "GBPJPY",PERIOD_D1,0),iHigh( "GBPJPY",PERIOD_D1,0),iLow( "GBPJPY",PERIOD_D1,0),iClose( "GBPJPY",PERIOD_D1,0),"433");

FileWrite(fh1,csvm);
//FileWrite(fh1,"V1","V2","V3","V4","V5","V6","V7","V1.1","V2.1","V3.1","V4.1","V5.1","V6.1","V7.1","V1.2","V2.2","V3.2","V4.2","V5.2","V6.2","V7.2","V1.3","V2.3","V3.3","V4.3","V5.3","V6.3","V7.3","V1.4","V2.4","V3.4","V4.4","V5.4","V6.4","V7.4","V1.5","V2.5","V3.5","V4.5","V5.5","V6.5","V7.5","V1.6","V2.6","V3.6","V4.6","V5.6","V6.6","V7.6","V1.7","V2.7","V3.7","V4.7","V5.7","V6.7","V7.7","V1.8","V2.8","V3.8","V4.8","V5.8","V6.8","V7.8","V1.9","V2.9","V3.9","V4.9","V5.9","V6.9","V7.9","V1.10","V2.10","V3.10","V4.10","V5.10","V6.10","V7.10","V1.11","V2.11","V3.11","V4.11","V5.11","V6.11","V7.11","V1.12","V2.12","V3.12","V4.12","V5.12","V6.12","V7.12","V1.13","V2.13","V3.13","V4.13","V5.13","V6.13","V7.13","V1.14","V2.14","V3.14","V4.14","V5.14","V6.14","V7.14");
//FileWrite(fh1,
//"V1","V2",iClose( "GBPJPY",PERIOD_M15,3),iClose( "GBPJPY",PERIOD_M15,2),iClose( "GBPJPY",PERIOD_M15,1),iClose( "GBPJPY",PERIOD_M15,0),"V7"
//,"V1.1","V2.1","V3.1","V4.1","V5.1","V6.1","V7.1","V1.2","V2.2","V3.2","V4.2","V5.2","V6.2","V7.2","V1.3","V2.3","V3.3","V4.3","V5.3","V6.3","V7.3","V1.4","V2.4","V3.4","V4.4","V5.4","V6.4","V7.4","V1.5","V2.5","V3.5","V4.5","V5.5","V6.5","V7.5","V1.6","V2.6","V3.6","V4.6","V5.6","V6.6","V7.6","V1.7","V2.7","V3.7","V4.7","V5.7","V6.7","V7.7","V1.8","V2.8","V3.8","V4.8","V5.8","V6.8","V7.8","V1.9","V2.9","V3.9","V4.9","V5.9","V6.9","V7.9","V1.10","V2.10","V3.10","V4.10","V5.10","V6.10","V7.10","V1.11","V2.11","V3.11","V4.11","V5.11","V6.11","V7.11","V1.12","V2.12","V3.12","V4.12","V5.12","V6.12","V7.12","V1.13","V2.13","V3.13","V4.13","V5.13","V6.13","V7.13","V1.14","V2.14","V3.14","V4.14","V5.14","V6.14","V7.14"
//);
FileClose(fh1);

ShellExecuteW(0,0,"notepad.exe","",0,5);
  }
//+------------------------------------------------------------------+
