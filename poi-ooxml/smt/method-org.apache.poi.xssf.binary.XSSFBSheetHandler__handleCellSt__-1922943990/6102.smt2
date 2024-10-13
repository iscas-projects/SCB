(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3647 0)
(declare-sort var2927 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun beforeCellValue/299949577 (var3647 (Array Int Int)) void)
(declare-fun xlWideStringBuffer/-2024813640 (var3647) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun var2927_readXLWideString/38065351 ((Array Int Int) Int String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun handleCellValue/-1002823187 (var3647 String) void)
(declare-const null-var3647 var3647)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2242 var3647) ; Statement: r0 := @this: org.apache.poi.xssf.binary.XSSFBSheetHandler 
(assert (not (= var2242 null-var3647)))
(declare-const var2391 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var2391 null-__Array__Int__Int__)))
(assert true)
;(assert (beforeCellValue/299949577 var2242 var2391)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: void beforeCellValue(byte[])>(r1) 

(declare-const var2242!1 var3647)
(declare-const var2391!1 (Array Int Int))
(define-const var3961 String (xlWideStringBuffer/-2024813640 var2242!1)) ; Statement: $r2 = r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: java.lang.StringBuilder xlWideStringBuffer> 
(assert true)
;(assert (setLength/1276735992 var3961 0)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var3961!1 String)
(declare-const var635 Int)
(define-const var2733 String (xlWideStringBuffer/-2024813640 var2242!1)) ; Statement: $r3 = r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: java.lang.StringBuilder xlWideStringBuffer> 
;(assert (var2927_readXLWideString/38065351 var2391!1 8 var2733)) ; Statement: staticinvoke <org.apache.poi.xssf.binary.XSSFBUtils: int readXLWideString(byte[],int,java.lang.StringBuilder)>(r1, 8, $r3) 

(declare-const var2391!2 (Array Int Int))
(declare-const var2458 Int)
(declare-const var2733!1 String)
(define-const var3598 String (xlWideStringBuffer/-2024813640 var2242!1)) ; Statement: $r4 = r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: java.lang.StringBuilder xlWideStringBuffer> 
(assert true)
(define-const var2538 String (toString/-2075883882 var3598)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (handleCellValue/-1002823187 var2242!1 var2538)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: void handleCellValue(java.lang.String)>($r5) 

(declare-const var2242!2 var3647)
(declare-const var2538!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {beforeCellValue/299949577=([org.apache.poi.xssf.binary.XSSFBSheetHandler, byte[]], void), xlWideStringBuffer/-2024813640=([org.apache.poi.xssf.binary.XSSFBSheetHandler], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), var2927_readXLWideString/38065351=([byte[], int, java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), handleCellValue/-1002823187=([org.apache.poi.xssf.binary.XSSFBSheetHandler, java.lang.String], void)}
; {var3647=org.apache.poi.xssf.binary.XSSFBSheetHandler, var2242=r0, var2391=r1, var3961=$r2, var635=0, var2733=$r3, var2927=org.apache.poi.xssf.binary.XSSFBUtils, var2458=8, var3598=$r4, var2538=$r5}
; {org.apache.poi.xssf.binary.XSSFBSheetHandler=var3647, r0=var2242, r1=var2391, $r2=var3961, 0=var635, $r3=var2733, org.apache.poi.xssf.binary.XSSFBUtils=var2927, 8=var2458, $r4=var3598, $r5=var2538}
;seq <java.lang.StringBuilder: void setLength(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.binary.XSSFBSheetHandler;	r1 := @parameter0: byte[];	specialinvoke r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: void beforeCellValue(byte[])>(r1);	$r2 = r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: java.lang.StringBuilder xlWideStringBuffer>;	virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0);	$r3 = r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: java.lang.StringBuilder xlWideStringBuffer>;	staticinvoke <org.apache.poi.xssf.binary.XSSFBUtils: int readXLWideString(byte[],int,java.lang.StringBuilder)>(r1, 8, $r3);	$r4 = r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: java.lang.StringBuilder xlWideStringBuffer>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: void handleCellValue(java.lang.String)>($r5);	return
;block_num 1