(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1714 0)
(declare-sort var360 0)
(declare-sort var2376 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getId/-2053596841 (var360) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2376_readXLWideString/38065351 ((Array Int Int) Int String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun path/-400530386 (var1714) String)
(declare-const null-var1714 var1714)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var360-BrtAbsPath15 var360)
(declare-const var2082 var1714) ; Statement: r3 := @this: org.apache.poi.xssf.eventusermodel.XSSFBReader$PathExtractor 
(assert (not (= var2082 null-var1714)))
(declare-const var3735 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3735 null-Int)))
(declare-const var195 (Array Int Int)) ; Statement: r2 := @parameter1: byte[] 
(assert (not (= var195 null-__Array__Int__Int__)))
(define-const var1831 var360 var360-BrtAbsPath15) ; Statement: $r0 = <org.apache.poi.xssf.binary.XSSFBRecordType: org.apache.poi.xssf.binary.XSSFBRecordType BrtAbsPath15> 
(assert true)
(define-const var1460 Int (getId/-2053596841 var1831)) ; Statement: $i1 = virtualinvoke $r0.<org.apache.poi.xssf.binary.XSSFBRecordType: int getId()>() 
 ; Statement: if i0 == $i1 goto $r1 = new java.lang.StringBuilder 
(assert (= var3735 var1460)) ; Cond: i0 == $i1 
(define-const var2978 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2978)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2978!1 String)
(assert (= var2978!1 ""))
;(assert (var2376_readXLWideString/38065351 var195 0 var2978!1)) ; Statement: staticinvoke <org.apache.poi.xssf.binary.XSSFBUtils: int readXLWideString(byte[],int,java.lang.StringBuilder)>(r2, 0, $r1) 

(declare-const var195!1 (Array Int Int))
(declare-const var2113 Int)
(declare-const var2978!2 String)
(assert true)
(define-const var2677 String (toString/-2075883882 var2978!2)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2082!1 var1714)
(assert (not (= var2082!1 null-var1714)))
(assert (= (path/-400530386 var2082!1) var2677)) ; Statement: r3.<org.apache.poi.xssf.eventusermodel.XSSFBReader$PathExtractor: java.lang.String path> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getId/-2053596841=([org.apache.poi.xssf.binary.XSSFBRecordType], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2376_readXLWideString/38065351=([byte[], int, java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), path/-400530386=([org.apache.poi.xssf.eventusermodel.XSSFBReader$PathExtractor], java.lang.String)}
; {var1714=org.apache.poi.xssf.eventusermodel.XSSFBReader$PathExtractor, var2082=r3, var3735=i0, var195=r2, var360=org.apache.poi.xssf.binary.XSSFBRecordType, var1831=$r0, var1460=$i1, var2978=$r1, var2376=org.apache.poi.xssf.binary.XSSFBUtils, var2113=0, var2677=$r4}
; {org.apache.poi.xssf.eventusermodel.XSSFBReader$PathExtractor=var1714, r3=var2082, i0=var3735, r2=var195, org.apache.poi.xssf.binary.XSSFBRecordType=var360, $r0=var1831, $i1=var1460, $r1=var2978, org.apache.poi.xssf.binary.XSSFBUtils=var2376, 0=var2113, $r4=var2677}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.poi.xssf.eventusermodel.XSSFBReader$PathExtractor;	i0 := @parameter0: int;	r2 := @parameter1: byte[];	$r0 = <org.apache.poi.xssf.binary.XSSFBRecordType: org.apache.poi.xssf.binary.XSSFBRecordType BrtAbsPath15>;	$i1 = virtualinvoke $r0.<org.apache.poi.xssf.binary.XSSFBRecordType: int getId()>();	if i0 == $i1 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	staticinvoke <org.apache.poi.xssf.binary.XSSFBUtils: int readXLWideString(byte[],int,java.lang.StringBuilder)>(r2, 0, $r1);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	r3.<org.apache.poi.xssf.eventusermodel.XSSFBReader$PathExtractor: java.lang.String path> = $r4;	return
;block_num 2