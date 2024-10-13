(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3941 0)
(declare-sort var2917 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3941 var3941)
(declare-const null-String String)
(declare-const var3634 var3941) ; Statement: r5 := @this: org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper 
(assert (not (= var3634 null-var3941)))
(declare-const var830 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var830 null-String)))
(declare-const var143 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var143 null-String)))
(declare-const var2694 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2694 null-String)))
(define-const var3619 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3619 64)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var3619!1 String)
(declare-const var1699 Int)
(assert true)
(define-const var2811 Int (length/-134980193 var143)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert (<= var2811 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var2832 Int (length/-134980193 var830)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 0 goto $i2 = virtualinvoke r3.<java.lang.String: int length()>() 
(assert (<= var2832 0)) ; Cond: $i1 <= 0 
(assert true)
(define-const var137 Int (length/-134980193 var2694)) ; Statement: $i2 = virtualinvoke r3.<java.lang.String: int length()>() 
 ; Statement: if $i2 <= 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var137 0)) ; Cond: $i2 <= 0 
(assert true)
(define-const var2300 String (toString/-2075883882 var3619!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3941=org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper, var3634=r5, var830=r2, var2917=null_type, var143=r1, var2694=r3, var3619=$r0, var1699=64, var2811=$i0, var2832=$i1, var137=$i2, var2300=$r4}
; {org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper=var3941, r5=var3634, r2=var830, null_type=var2917, r1=var143, r3=var2694, $r0=var3619, 64=var1699, $i0=var2811, $i1=var2832, $i2=var137, $r4=var2300}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper;	r2 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 <= 0 goto $i1 = virtualinvoke r2.<java.lang.String: int length()>();	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	if $i1 <= 0 goto $i2 = virtualinvoke r3.<java.lang.String: int length()>();	$i2 = virtualinvoke r3.<java.lang.String: int length()>();	if $i2 <= 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4