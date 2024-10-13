(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1174 0)
(declare-sort var3163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun beforeCellValue/299949577 (var1174 (Array Int Int)) void)
(declare-fun xlWideStringBuffer/-2024813640 (var1174) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun var3163_readXLWideString/38065351 ((Array Int Int) Int String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun handleCellValue/-1002823187 (var1174 String) void)
(declare-const null-var1174 var1174)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2615 var1174) ; Statement: r0 := @this: org.apache.poi.xssf.binary.XSSFBSheetHandler 
(assert (not (= var2615 null-var1174)))
(declare-const var2302 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var2302 null-__Array__Int__Int__)))
(assert true)
;(assert (beforeCellValue/299949577 var2615 var2302)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: void beforeCellValue(byte[])>(r1) 

(declare-const var2615!1 var1174)
(declare-const var2302!1 (Array Int Int))
(define-const var3449 String (xlWideStringBuffer/-2024813640 var2615!1)) ; Statement: $r2 = r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: java.lang.StringBuilder xlWideStringBuffer> 
(assert true)
;(assert (setLength/1276735992 var3449 0)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var3449!1 String)
(declare-const var335 Int)
(define-const var3930 String (xlWideStringBuffer/-2024813640 var2615!1)) ; Statement: $r3 = r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: java.lang.StringBuilder xlWideStringBuffer> 
;(assert (var3163_readXLWideString/38065351 var2302!1 8 var3930)) ; Statement: staticinvoke <org.apache.poi.xssf.binary.XSSFBUtils: int readXLWideString(byte[],int,java.lang.StringBuilder)>(r1, 8, $r3) 

(declare-const var2302!2 (Array Int Int))
(declare-const var1228 Int)
(declare-const var3930!1 String)
(define-const var1537 String (xlWideStringBuffer/-2024813640 var2615!1)) ; Statement: $r4 = r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: java.lang.StringBuilder xlWideStringBuffer> 
(assert true)
(define-const var710 String (toString/-2075883882 var1537)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (handleCellValue/-1002823187 var2615!1 var710)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: void handleCellValue(java.lang.String)>($r5) 

(declare-const var2615!2 var1174)
(declare-const var710!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {beforeCellValue/299949577=([org.apache.poi.xssf.binary.XSSFBSheetHandler, byte[]], void), xlWideStringBuffer/-2024813640=([org.apache.poi.xssf.binary.XSSFBSheetHandler], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), var3163_readXLWideString/38065351=([byte[], int, java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), handleCellValue/-1002823187=([org.apache.poi.xssf.binary.XSSFBSheetHandler, java.lang.String], void)}
; {var1174=org.apache.poi.xssf.binary.XSSFBSheetHandler, var2615=r0, var2302=r1, var3449=$r2, var335=0, var3930=$r3, var3163=org.apache.poi.xssf.binary.XSSFBUtils, var1228=8, var1537=$r4, var710=$r5}
; {org.apache.poi.xssf.binary.XSSFBSheetHandler=var1174, r0=var2615, r1=var2302, $r2=var3449, 0=var335, $r3=var3930, org.apache.poi.xssf.binary.XSSFBUtils=var3163, 8=var1228, $r4=var1537, $r5=var710}
;seq <java.lang.StringBuilder: void setLength(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.binary.XSSFBSheetHandler;	r1 := @parameter0: byte[];	specialinvoke r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: void beforeCellValue(byte[])>(r1);	$r2 = r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: java.lang.StringBuilder xlWideStringBuffer>;	virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0);	$r3 = r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: java.lang.StringBuilder xlWideStringBuffer>;	staticinvoke <org.apache.poi.xssf.binary.XSSFBUtils: int readXLWideString(byte[],int,java.lang.StringBuilder)>(r1, 8, $r3);	$r4 = r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: java.lang.StringBuilder xlWideStringBuffer>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.poi.xssf.binary.XSSFBSheetHandler: void handleCellValue(java.lang.String)>($r5);	return
;block_num 1