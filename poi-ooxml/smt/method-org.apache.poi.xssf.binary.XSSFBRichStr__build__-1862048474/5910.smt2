(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3241 0)
(declare-sort var1180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3241_readXLWideString/38065351 ((Array Int Int) Int String) Int)
(declare-fun var1180-init () var1180)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2002069477 (var1180 String String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2160 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2160 null-__Array__Int__Int__)))
(declare-const var1748 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1748 null-Int)))
(define-const var3135 Int (select var2160 var1748)) ; Statement: b1 = r0[i0] 
(define-const var921 Int (cast-from-Int-to-Int var3135)) ; Statement: $i7 = (int) b1 
(define-const var494 Int (div var921 (to_int (^ 2 7)))) ; Statement: $i2 = $i7 >> 7 
(define-const var189 Int (bv2nat (bvand ((_ int2bv 64) var494) ((_ int2bv 64) 1)))) ; Statement: $i3 = $i2 & 1 
 ; Statement: if $i3 != 1 goto $i8 = (int) b1 
(assert (not (= var189 1))) ; Cond: $i3 != 1 
(define-const var235 Int (cast-from-Int-to-Int var3135)) ; Statement: $i8 = (int) b1 
(define-const var3024 Int (div var235 (to_int (^ 2 6)))) ; Statement: $i4 = $i8 >> 6 
(define-const var991 Int (bv2nat (bvand ((_ int2bv 64) var3024) ((_ int2bv 64) 1)))) ; Statement: $i5 = $i4 & 1 
 ; Statement: if $i5 != 1 goto $r4 = new java.lang.StringBuilder 
(assert (not (= var991 1))) ; Cond: $i5 != 1 
(define-const var1124 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1124)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1124!1 String)
(assert (= var1124!1 ""))
(define-const var122 Int (+ var1748 1)) ; Statement: $i6 = i0 + 1 
;(assert (var3241_readXLWideString/38065351 var2160 var122 var1124!1)) ; Statement: staticinvoke <org.apache.poi.xssf.binary.XSSFBUtils: int readXLWideString(byte[],int,java.lang.StringBuilder)>(r0, $i6, $r4) 

(declare-const var2160!1 (Array Int Int))
(declare-const var122!1 Int)
(declare-const var1124!2 String)
(define-const var2980 var1180 var1180-init) ; Statement: $r5 = new org.apache.poi.xssf.binary.XSSFBRichStr 
(assert true)
(define-const var999 String (toString/-2075883882 var1124!2)) ; Statement: $r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2002069477 var2980 var999 "")) ; Statement: specialinvoke $r5.<org.apache.poi.xssf.binary.XSSFBRichStr: void <init>(java.lang.String,java.lang.String)>($r3, "") 

(declare-const var2980!1 var1180)
(declare-const var999!1 String)
(declare-const var911 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3241_readXLWideString/38065351=([byte[], int, java.lang.StringBuilder], int), var1180-init=([], org.apache.poi.xssf.binary.XSSFBRichStr), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2002069477=([org.apache.poi.xssf.binary.XSSFBRichStr, java.lang.String, java.lang.String], void)}
; {var2160=r0, var1748=i0, var3135=b1, var921=$i7, var494=$i2, var189=$i3, var235=$i8, var3024=$i4, var991=$i5, var1124=$r4, var122=$i6, var3241=org.apache.poi.xssf.binary.XSSFBUtils, var1180=org.apache.poi.xssf.binary.XSSFBRichStr, var2980=$r5, var999=$r3, var911=""}
; {r0=var2160, i0=var1748, b1=var3135, $i7=var921, $i2=var494, $i3=var189, $i8=var235, $i4=var3024, $i5=var991, $r4=var1124, $i6=var122, org.apache.poi.xssf.binary.XSSFBUtils=var3241, org.apache.poi.xssf.binary.XSSFBRichStr=var1180, $r5=var2980, $r3=var999, ""=var911}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: byte[];	i0 := @parameter1: int;	b1 = r0[i0];	$i7 = (int) b1;	$i2 = $i7 >> 7;	$i3 = $i2 & 1;	if $i3 != 1 goto $i8 = (int) b1;	$i8 = (int) b1;	$i4 = $i8 >> 6;	$i5 = $i4 & 1;	if $i5 != 1 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$i6 = i0 + 1;	staticinvoke <org.apache.poi.xssf.binary.XSSFBUtils: int readXLWideString(byte[],int,java.lang.StringBuilder)>(r0, $i6, $r4);	$r5 = new org.apache.poi.xssf.binary.XSSFBRichStr;	$r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.apache.poi.xssf.binary.XSSFBRichStr: void <init>(java.lang.String,java.lang.String)>($r3, "");	return $r5
;block_num 3