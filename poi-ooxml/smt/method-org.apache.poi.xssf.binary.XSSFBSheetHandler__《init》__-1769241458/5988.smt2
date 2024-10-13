(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var284 0)
(declare-sort var1550 0)
(declare-sort var1448 0)
(declare-sort var3082 0)
(declare-sort var256 0)
(declare-sort var2824 0)
(declare-sort var1161 0)
(declare-sort var2974 0)
(declare-sort var642 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/539341707 (var2974 var1550) void)
(declare-fun cast-from-var284-to-var2974 (var284) var2974)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastEndedRow/-2024813640 (var284) Int)
(declare-fun lastStartedRow/-2024813640 (var284) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun rkBuffer/-2024813640 (var284) (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun xlWideStringBuffer/-2024813640 (var284) String)
(declare-fun var642-init () var642)
(declare-fun <init>/1136677533 (var642) void)
(declare-fun cellBuffer/-2024813640 (var284) var642)
(declare-fun styles/-2024813640 (var284) var1448)
(declare-fun comments/-2024813640 (var284) var3082)
(declare-fun stringsTable/-2024813640 (var284) var256)
(declare-fun handler/-2024813640 (var284) var2824)
(declare-fun dataFormatter/-2024813640 (var284) var1161)
(declare-fun formulasNotResults/-2024813640 (var284) Bool)
(declare-const null-var284 var284)
(declare-const null-var1550 var1550)
(declare-const null-var1448 var1448)
(declare-const null-var3082 var3082)
(declare-const null-var256 var256)
(declare-const null-var2824 var2824)
(declare-const null-var1161 var1161)
(declare-const null-Bool Bool)
(declare-const var1251 var284) ; Statement: r0 := @this: org.apache.poi.xssf.binary.XSSFBSheetHandler 
(assert (not (= var1251 null-var284)))
(declare-const var157 var1550) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var157 null-var1550)))
(declare-const var1059 var1448) ; Statement: r5 := @parameter1: org.apache.poi.xssf.binary.XSSFBStylesTable 
(assert (not (= var1059 null-var1448)))
(declare-const var2305 var3082) ; Statement: r6 := @parameter2: org.apache.poi.xssf.binary.XSSFBCommentsTable 
(assert (not (= var2305 null-var3082)))
(declare-const var716 var256) ; Statement: r7 := @parameter3: org.apache.poi.xssf.model.SharedStrings 
(assert (not (= var716 null-var256)))
(declare-const var1654 var2824) ; Statement: r8 := @parameter4: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler 
(assert (not (= var1654 null-var2824)))
(declare-const var1743 var1161) ; Statement: r9 := @parameter5: org.apache.poi.ss.usermodel.DataFormatter 
(assert (not (= var1743 null-var1161)))
(declare-const var3575 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var3575 null-Bool)))
(assert true)
;(assert (<init>/539341707 (cast-from-var284-to-var2974 var1251) var157)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.binary.XSSFBParser: void <init>(java.io.InputStream)>(r1) 

(declare-const var1251!1 var284)
(declare-const var157!1 var1550)
(define-const var564 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i1 = (int) -1 
(declare-const var1251!2 var284)
(assert (not (= var1251!2 null-var284)))
(assert (= (lastEndedRow/-2024813640 var1251!2) var564)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: int lastEndedRow> = $i1 
(define-const var3790 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
(declare-const var1251!3 var284)
(assert (not (= var1251!3 null-var284)))
(assert (= (lastStartedRow/-2024813640 var1251!3) var3790)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: int lastStartedRow> = $i3 
(define-const var3541 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (byte)[8] 
(declare-const var1251!4 var284)
(assert (not (= var1251!4 null-var284)))
(assert (= (rkBuffer/-2024813640 var1251!4) var3541)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: byte[] rkBuffer> = $r2 
(define-const var3531 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3531)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3531!1 String)
(assert (= var3531!1 ""))
(declare-const var1251!5 var284)
(assert (not (= var1251!5 null-var284)))
(assert (= (xlWideStringBuffer/-2024813640 var1251!5) var3531!1)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: java.lang.StringBuilder xlWideStringBuffer> = $r10 
(define-const var2528 var642 var642-init) ; Statement: $r11 = new org.apache.poi.xssf.binary.XSSFBCellHeader 
(assert true)
;(assert (<init>/1136677533 var2528)) ; Statement: specialinvoke $r11.<org.apache.poi.xssf.binary.XSSFBCellHeader: void <init>()>() 

(declare-const var2528!1 var642)
(declare-const var1251!6 var284)
(assert (not (= var1251!6 null-var284)))
(assert (= (cellBuffer/-2024813640 var1251!6) var2528!1)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: org.apache.poi.xssf.binary.XSSFBCellHeader cellBuffer> = $r11 
(declare-const var1251!7 var284)
(assert (not (= var1251!7 null-var284)))
(assert (= (styles/-2024813640 var1251!7) var1059)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: org.apache.poi.xssf.binary.XSSFBStylesTable styles> = r5 
(declare-const var1251!8 var284)
(assert (not (= var1251!8 null-var284)))
(assert (= (comments/-2024813640 var1251!8) var2305)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: org.apache.poi.xssf.binary.XSSFBCommentsTable comments> = r6 
(declare-const var1251!9 var284)
(assert (not (= var1251!9 null-var284)))
(assert (= (stringsTable/-2024813640 var1251!9) var716)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: org.apache.poi.xssf.model.SharedStrings stringsTable> = r7 
(declare-const var1251!10 var284)
(assert (not (= var1251!10 null-var284)))
(assert (= (handler/-2024813640 var1251!10) var1654)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler handler> = r8 
(declare-const var1251!11 var284)
(assert (not (= var1251!11 null-var284)))
(assert (= (dataFormatter/-2024813640 var1251!11) var1743)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: org.apache.poi.ss.usermodel.DataFormatter dataFormatter> = r9 
(declare-const var1251!12 var284)
(assert (not (= var1251!12 null-var284)))
(assert (= (formulasNotResults/-2024813640 var1251!12) var3575)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: boolean formulasNotResults> = z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/539341707=([org.apache.poi.xssf.binary.XSSFBParser, java.io.InputStream], void), cast-from-var284-to-var2974=([org.apache.poi.xssf.binary.XSSFBSheetHandler], org.apache.poi.xssf.binary.XSSFBParser), cast-from-Int-to-Int=([int], int), lastEndedRow/-2024813640=([org.apache.poi.xssf.binary.XSSFBSheetHandler], int), lastStartedRow/-2024813640=([org.apache.poi.xssf.binary.XSSFBSheetHandler], int), arr-Int-init=([], byte[]), rkBuffer/-2024813640=([org.apache.poi.xssf.binary.XSSFBSheetHandler], byte[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), xlWideStringBuffer/-2024813640=([org.apache.poi.xssf.binary.XSSFBSheetHandler], java.lang.StringBuilder), var642-init=([], org.apache.poi.xssf.binary.XSSFBCellHeader), <init>/1136677533=([org.apache.poi.xssf.binary.XSSFBCellHeader], void), cellBuffer/-2024813640=([org.apache.poi.xssf.binary.XSSFBSheetHandler], org.apache.poi.xssf.binary.XSSFBCellHeader), styles/-2024813640=([org.apache.poi.xssf.binary.XSSFBSheetHandler], org.apache.poi.xssf.binary.XSSFBStylesTable), comments/-2024813640=([org.apache.poi.xssf.binary.XSSFBSheetHandler], org.apache.poi.xssf.binary.XSSFBCommentsTable), stringsTable/-2024813640=([org.apache.poi.xssf.binary.XSSFBSheetHandler], org.apache.poi.xssf.model.SharedStrings), handler/-2024813640=([org.apache.poi.xssf.binary.XSSFBSheetHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler), dataFormatter/-2024813640=([org.apache.poi.xssf.binary.XSSFBSheetHandler], org.apache.poi.ss.usermodel.DataFormatter), formulasNotResults/-2024813640=([org.apache.poi.xssf.binary.XSSFBSheetHandler], boolean)}
; {var284=org.apache.poi.xssf.binary.XSSFBSheetHandler, var1251=r0, var1550=java.io.InputStream, var157=r1, var1448=org.apache.poi.xssf.binary.XSSFBStylesTable, var1059=r5, var3082=org.apache.poi.xssf.binary.XSSFBCommentsTable, var2305=r6, var256=org.apache.poi.xssf.model.SharedStrings, var716=r7, var2824=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, var1654=r8, var1161=org.apache.poi.ss.usermodel.DataFormatter, var1743=r9, var3575=z0, var2974=org.apache.poi.xssf.binary.XSSFBParser, var564=$i1, var3790=$i3, var3541=$r2, var3531=$r10, var642=org.apache.poi.xssf.binary.XSSFBCellHeader, var2528=$r11}
; {org.apache.poi.xssf.binary.XSSFBSheetHandler=var284, r0=var1251, java.io.InputStream=var1550, r1=var157, org.apache.poi.xssf.binary.XSSFBStylesTable=var1448, r5=var1059, org.apache.poi.xssf.binary.XSSFBCommentsTable=var3082, r6=var2305, org.apache.poi.xssf.model.SharedStrings=var256, r7=var716, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler=var2824, r8=var1654, org.apache.poi.ss.usermodel.DataFormatter=var1161, r9=var1743, z0=var3575, org.apache.poi.xssf.binary.XSSFBParser=var2974, $i1=var564, $i3=var3790, $r2=var3541, $r10=var3531, org.apache.poi.xssf.binary.XSSFBCellHeader=var642, $r11=var2528}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.binary.XSSFBSheetHandler;	r1 := @parameter0: java.io.InputStream;	r5 := @parameter1: org.apache.poi.xssf.binary.XSSFBStylesTable;	r6 := @parameter2: org.apache.poi.xssf.binary.XSSFBCommentsTable;	r7 := @parameter3: org.apache.poi.xssf.model.SharedStrings;	r8 := @parameter4: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler;	r9 := @parameter5: org.apache.poi.ss.usermodel.DataFormatter;	z0 := @parameter6: boolean;	specialinvoke r0.<org.apache.poi.xssf.binary.XSSFBParser: void <init>(java.io.InputStream)>(r1);	$i1 = (int) -1;	r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: int lastEndedRow> = $i1;	$i3 = (int) -1;	r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: int lastStartedRow> = $i3;	$r2 = newarray (byte)[8];	r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: byte[] rkBuffer> = $r2;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: java.lang.StringBuilder xlWideStringBuffer> = $r10;	$r11 = new org.apache.poi.xssf.binary.XSSFBCellHeader;	specialinvoke $r11.<org.apache.poi.xssf.binary.XSSFBCellHeader: void <init>()>();	r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: org.apache.poi.xssf.binary.XSSFBCellHeader cellBuffer> = $r11;	r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: org.apache.poi.xssf.binary.XSSFBStylesTable styles> = r5;	r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: org.apache.poi.xssf.binary.XSSFBCommentsTable comments> = r6;	r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: org.apache.poi.xssf.model.SharedStrings stringsTable> = r7;	r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler handler> = r8;	r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: org.apache.poi.ss.usermodel.DataFormatter dataFormatter> = r9;	r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: boolean formulasNotResults> = z0;	return
;block_num 1