(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var874 0)
(declare-sort var2834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var874 var874)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2308 var874) ; Statement: r3 := @this: cn.hutool.core.date.format.FastDatePrinter 
(assert (not (= var2308 null-var874)))
(declare-const var3527 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3527 null-String)))
(declare-const var1600 (Array Int Int)) ; Statement: r1 := @parameter1: int[] 
(assert (not (= var1600 null-__Array__Int__Int__)))
(define-const var3675 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3675)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3675!1 String)
(assert (= var3675!1 ""))
(define-const var1217 Int (select var1600 0)) ; Statement: i5 = r1[0] 
(assert true)
(define-const var999 Int (length/-134980193 var3527)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert (and true (and (> (str.len var3527) var1217) (<= 0 var1217))))
(define-const var257 Int (charAt/698050440 var3527 var1217)) ; Statement: c6 = virtualinvoke r2.<java.lang.String: char charAt(int)>(i5) 
(define-const var3593 Int (cast-from-Int-to-Int var257)) ; Statement: $i10 = (int) c6 
 ; Statement: if $i10 < 65 goto $i12 = (int) c6 
(assert (not (< var3593 65))) ; Negate: Cond: $i10 < 65  
(define-const var2959 Int (cast-from-Int-to-Int var257)) ; Statement: $i11 = (int) c6 
 ; Statement: if $i11 <= 90 goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c6) 
(assert (<= var2959 90)) ; Cond: $i11 <= 90 
(assert true)
;(assert (append/-1166366385 var3675!1 var257)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c6) 
(declare-const var3675!2 String)
(assert (str.prefixof var3675!1 var3675!2))
(assert true) ; Non Conditional
(define-const var1853 Int (+ var1217 1)) ; Statement: $i7 = i5 + 1 
 ; Statement: if $i7 >= i0 goto r1[0] = i5 
(assert (>= var1853 var999)) ; Cond: $i7 >= i0 
(declare-const var1600!1 (Array Int Int))
(assert (not (= var1600!1 null-__Array__Int__Int__)))
(assert (= (select var1600!1 0) var1217)) ; Statement: r1[0] = i5 
(assert true)
(define-const var933 String (toString/-2075883882 var3675!2)) ; Statement: $r4 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var874=cn.hutool.core.date.format.FastDatePrinter, var2308=r3, var3527=r2, var2834=null_type, var1600=r1, var3675=$r5, var1217=i5, var999=i0, var257=c6, var3593=$i10, var2959=$i11, var1853=$i7, var933=$r4}
; {cn.hutool.core.date.format.FastDatePrinter=var874, r3=var2308, r2=var3527, null_type=var2834, r1=var1600, $r5=var3675, i5=var1217, i0=var999, c6=var257, $i10=var3593, $i11=var2959, $i7=var1853, $r4=var933}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: cn.hutool.core.date.format.FastDatePrinter;	r2 := @parameter0: java.lang.String;	r1 := @parameter1: int[];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	i5 = r1[0];	i0 = virtualinvoke r2.<java.lang.String: int length()>();	c6 = virtualinvoke r2.<java.lang.String: char charAt(int)>(i5);	$i10 = (int) c6;	if $i10 < 65 goto $i12 = (int) c6;	$i11 = (int) c6;	if $i11 <= 90 goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c6);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c6);	$i7 = i5 + 1;	if $i7 >= i0 goto r1[0] = i5;	r1[0] = i5;	$r4 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 5