(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2683 0)
(declare-sort var2503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2503_readXLNullableWideString/-1171301338 ((Array Int Int) Int String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setRawString/1516399478 (var2683 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var2683 var2683)
(declare-const var952 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var952 null-__Array__Int__Int__)))
(declare-const var1059 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1059 null-Int)))
(declare-const var3635 var2683) ; Statement: r2 := @parameter2: org.apache.poi.xssf.binary.XSSFBHeaderFooter 
(assert (not (= var3635 null-var2683)))
(define-const var2415 Int (+ var1059 4)) ; Statement: $i2 = i0 + 4 
(define-const var1997 Int (getLength-Arr-Int-1 var952)) ; Statement: $i1 = lengthof r0 
 ; Statement: if $i2 < $i1 goto $r1 = new java.lang.StringBuilder 
(assert (< var2415 var1997)) ; Cond: $i2 < $i1 
(define-const var2551 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2551)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2551!1 String)
(assert (= var2551!1 ""))
(define-const var1392 Int (var2503_readXLNullableWideString/-1171301338 var952 var1059 var2551!1)) ; Statement: i3 = staticinvoke <org.apache.poi.xssf.binary.XSSFBUtils: int readXLNullableWideString(byte[],int,java.lang.StringBuilder)>(r0, i0, $r1) 
(assert true)
(define-const var2365 String (toString/-2075883882 var2551!1)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setRawString/1516399478 var3635 var2365)) ; Statement: virtualinvoke r2.<org.apache.poi.xssf.binary.XSSFBHeaderFooter: void setRawString(java.lang.String)>($r3) 

(declare-const var3635!1 var2683)
(declare-const var2365!1 String)
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2503_readXLNullableWideString/-1171301338=([byte[], int, java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setRawString/1516399478=([org.apache.poi.xssf.binary.XSSFBHeaderFooter, java.lang.String], void)}
; {var952=r0, var1059=i0, var2683=org.apache.poi.xssf.binary.XSSFBHeaderFooter, var3635=r2, var2415=$i2, var1997=$i1, var2551=$r1, var2503=org.apache.poi.xssf.binary.XSSFBUtils, var1392=i3, var2365=$r3}
; {r0=var952, i0=var1059, org.apache.poi.xssf.binary.XSSFBHeaderFooter=var2683, r2=var3635, $i2=var2415, $i1=var1997, $r1=var2551, org.apache.poi.xssf.binary.XSSFBUtils=var2503, i3=var1392, $r3=var2365}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: byte[];	i0 := @parameter1: int;	r2 := @parameter2: org.apache.poi.xssf.binary.XSSFBHeaderFooter;	$i2 = i0 + 4;	$i1 = lengthof r0;	if $i2 < $i1 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	i3 = staticinvoke <org.apache.poi.xssf.binary.XSSFBUtils: int readXLNullableWideString(byte[],int,java.lang.StringBuilder)>(r0, i0, $r1);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<org.apache.poi.xssf.binary.XSSFBHeaderFooter: void setRawString(java.lang.String)>($r3);	return i3
;block_num 2