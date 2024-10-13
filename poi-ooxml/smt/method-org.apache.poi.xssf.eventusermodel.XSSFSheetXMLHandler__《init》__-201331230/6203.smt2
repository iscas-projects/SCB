(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var506 0)
(declare-sort var156 0)
(declare-sort var2475 0)
(declare-sort var1611 0)
(declare-sort var2668 0)
(declare-sort var3506 0)
(declare-sort var1235 0)
(declare-sort var397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1727464312 (var1235) void)
(declare-fun cast-from-var506-to-var1235 (var506) var1235)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun value/703833056 (var506) String)
(declare-fun formula/703833056 (var506) String)
(declare-fun headerFooter/703833056 (var506) String)
(declare-fun stylesTable/703833056 (var506) var156)
(declare-fun comments/703833056 (var506) var2475)
(declare-fun sharedStringsTable/703833056 (var506) var1611)
(declare-fun output/703833056 (var506) var2668)
(declare-fun formulasNotResults/703833056 (var506) Bool)
(declare-fun nextDataType/703833056 (var506) var397)
(declare-fun formatter/703833056 (var506) var3506)
(declare-fun init/-623075486 (var506 var2475) void)
(declare-const null-var506 var506)
(declare-const null-var156 var156)
(declare-const null-var2475 var2475)
(declare-const null-var1611 var1611)
(declare-const null-var2668 var2668)
(declare-const null-var3506 var3506)
(declare-const null-Bool Bool)
(declare-const var397-NUMBER var397)
(declare-const var1604 var506) ; Statement: r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler 
(assert (not (= var1604 null-var506)))
(declare-const var2718 var156) ; Statement: r4 := @parameter0: org.apache.poi.xssf.model.Styles 
(assert (not (= var2718 null-var156)))
(declare-const var3206 var2475) ; Statement: r5 := @parameter1: org.apache.poi.xssf.model.Comments 
(assert (not (= var3206 null-var2475)))
(declare-const var192 var1611) ; Statement: r6 := @parameter2: org.apache.poi.xssf.model.SharedStrings 
(assert (not (= var192 null-var1611)))
(declare-const var3881 var2668) ; Statement: r7 := @parameter3: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler 
(assert (not (= var3881 null-var2668)))
(declare-const var1083 var3506) ; Statement: r9 := @parameter4: org.apache.poi.ss.usermodel.DataFormatter 
(assert (not (= var1083 null-var3506)))
(declare-const var2043 Bool) ; Statement: z0 := @parameter5: boolean 
(assert (not (= var2043 null-Bool)))
(assert true)
;(assert (<init>/1727464312 (cast-from-var506-to-var1235 var1604))) ; Statement: specialinvoke r0.<org.xml.sax.helpers.DefaultHandler: void <init>()>() 

(declare-const var1604!1 var506)
(define-const var3650 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3650 64)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var3650!1 String)
(declare-const var1053 Int)
(declare-const var1604!2 var506)
(assert (not (= var1604!2 null-var506)))
(assert (= (value/703833056 var1604!2) var3650!1)) ; Statement: r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value> = $r1 
(define-const var3170 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3170 64)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var3170!1 String)
(declare-const var1053!1 Int)
(declare-const var1604!3 var506)
(assert (not (= var1604!3 null-var506)))
(assert (= (formula/703833056 var1604!3) var3170!1)) ; Statement: r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder formula> = $r2 
(define-const var669 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var669 64)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var669!1 String)
(declare-const var1053!2 Int)
(declare-const var1604!4 var506)
(assert (not (= var1604!4 null-var506)))
(assert (= (headerFooter/703833056 var1604!4) var669!1)) ; Statement: r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder headerFooter> = $r3 
(declare-const var1604!5 var506)
(assert (not (= var1604!5 null-var506)))
(assert (= (stylesTable/703833056 var1604!5) var2718)) ; Statement: r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Styles stylesTable> = r4 
(declare-const var1604!6 var506)
(assert (not (= var1604!6 null-var506)))
(assert (= (comments/703833056 var1604!6) var3206)) ; Statement: r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments> = r5 
(declare-const var1604!7 var506)
(assert (not (= var1604!7 null-var506)))
(assert (= (sharedStringsTable/703833056 var1604!7) var192)) ; Statement: r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.SharedStrings sharedStringsTable> = r6 
(declare-const var1604!8 var506)
(assert (not (= var1604!8 null-var506)))
(assert (= (output/703833056 var1604!8) var3881)) ; Statement: r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output> = r7 
(declare-const var1604!9 var506)
(assert (not (= var1604!9 null-var506)))
(assert (= (formulasNotResults/703833056 var1604!9) var2043)) ; Statement: r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults> = z0 
(define-const var2480 var397 var397-NUMBER) ; Statement: $r8 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType NUMBER> 
(declare-const var1604!10 var506)
(assert (not (= var1604!10 null-var506)))
(assert (= (nextDataType/703833056 var1604!10) var2480)) ; Statement: r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType> = $r8 
(declare-const var1604!11 var506)
(assert (not (= var1604!11 null-var506)))
(assert (= (formatter/703833056 var1604!11) var1083)) ; Statement: r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.ss.usermodel.DataFormatter formatter> = r9 
(assert true)
;(assert (init/-623075486 var1604!11 var3206)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void init(org.apache.poi.xssf.model.Comments)>(r5) 

(declare-const var1604!12 var506)
(declare-const var3206!1 var2475)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1727464312=([org.xml.sax.helpers.DefaultHandler], void), cast-from-var506-to-var1235=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.xml.sax.helpers.DefaultHandler), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), value/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.StringBuilder), formula/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.StringBuilder), headerFooter/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], java.lang.StringBuilder), stylesTable/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.model.Styles), comments/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.model.Comments), sharedStringsTable/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.model.SharedStrings), output/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler), formulasNotResults/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], boolean), nextDataType/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType), formatter/703833056=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler], org.apache.poi.ss.usermodel.DataFormatter), init/-623075486=([org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, org.apache.poi.xssf.model.Comments], void)}
; {var506=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler, var1604=r0, var156=org.apache.poi.xssf.model.Styles, var2718=r4, var2475=org.apache.poi.xssf.model.Comments, var3206=r5, var1611=org.apache.poi.xssf.model.SharedStrings, var192=r6, var2668=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, var3881=r7, var3506=org.apache.poi.ss.usermodel.DataFormatter, var1083=r9, var2043=z0, var1235=org.xml.sax.helpers.DefaultHandler, var3650=$r1, var1053=64, var3170=$r2, var669=$r3, var397=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType, var2480=$r8}
; {org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler=var506, r0=var1604, org.apache.poi.xssf.model.Styles=var156, r4=var2718, org.apache.poi.xssf.model.Comments=var2475, r5=var3206, org.apache.poi.xssf.model.SharedStrings=var1611, r6=var192, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler=var2668, r7=var3881, org.apache.poi.ss.usermodel.DataFormatter=var3506, r9=var1083, z0=var2043, org.xml.sax.helpers.DefaultHandler=var1235, $r1=var3650, 64=var1053, $r2=var3170, $r3=var669, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType=var397, $r8=var2480}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 3}
;stmts r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;	r4 := @parameter0: org.apache.poi.xssf.model.Styles;	r5 := @parameter1: org.apache.poi.xssf.model.Comments;	r6 := @parameter2: org.apache.poi.xssf.model.SharedStrings;	r7 := @parameter3: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler;	r9 := @parameter4: org.apache.poi.ss.usermodel.DataFormatter;	z0 := @parameter5: boolean;	specialinvoke r0.<org.xml.sax.helpers.DefaultHandler: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(64);	r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder value> = $r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>(64);	r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder formula> = $r2;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>(64);	r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: java.lang.StringBuilder headerFooter> = $r3;	r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Styles stylesTable> = r4;	r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.Comments comments> = r5;	r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.model.SharedStrings sharedStringsTable> = r6;	r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler output> = r7;	r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: boolean formulasNotResults> = z0;	$r8 = <org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType NUMBER>;	r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$xssfDataType nextDataType> = $r8;	r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: org.apache.poi.ss.usermodel.DataFormatter formatter> = r9;	specialinvoke r0.<org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler: void init(org.apache.poi.xssf.model.Comments)>(r5);	return
;block_num 1