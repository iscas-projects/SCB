(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1379 0)
(declare-sort var686 0)
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
(declare-const null-var1379 var1379)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1304 var1379) ; Statement: r3 := @this: cn.hutool.core.date.format.FastDatePrinter 
(assert (not (= var1304 null-var1379)))
(declare-const var114 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var114 null-String)))
(declare-const var454 (Array Int Int)) ; Statement: r1 := @parameter1: int[] 
(assert (not (= var454 null-__Array__Int__Int__)))
(define-const var2288 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2288)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2288!1 String)
(assert (= var2288!1 ""))
(define-const var1530 Int (select var454 0)) ; Statement: i5 = r1[0] 
(assert true)
(define-const var3348 Int (length/-134980193 var114)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert (and true (and (> (str.len var114) var1530) (<= 0 var1530))))
(define-const var36 Int (charAt/698050440 var114 var1530)) ; Statement: c6 = virtualinvoke r2.<java.lang.String: char charAt(int)>(i5) 
(define-const var561 Int (cast-from-Int-to-Int var36)) ; Statement: $i10 = (int) c6 
 ; Statement: if $i10 < 65 goto $i12 = (int) c6 
(assert (< var561 65)) ; Cond: $i10 < 65 
(define-const var1460 Int (cast-from-Int-to-Int var36)) ; Statement: $i12 = (int) c6 
 ; Statement: if $i12 < 97 goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(assert (< var1460 97)) ; Cond: $i12 < 97 
(assert true)
;(assert (append/-1166366385 var2288!1 39)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var2288!2 String)
(assert (str.prefixof var2288!1 var2288!2))
(define-const var2154 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto r1[0] = i5 
(assert (>= var1530 var3348)) ; Cond: i5 >= i0 
(declare-const var454!1 (Array Int Int))
(assert (not (= var454!1 null-__Array__Int__Int__)))
(assert (= (select var454!1 0) var1530)) ; Statement: r1[0] = i5 
(assert true)
(define-const var2249 String (toString/-2075883882 var2288!2)) ; Statement: $r4 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1379=cn.hutool.core.date.format.FastDatePrinter, var1304=r3, var114=r2, var686=null_type, var454=r1, var2288=$r5, var1530=i5, var3348=i0, var36=c6, var561=$i10, var1460=$i12, var2154=z0, var2249=$r4}
; {cn.hutool.core.date.format.FastDatePrinter=var1379, r3=var1304, r2=var114, null_type=var686, r1=var454, $r5=var2288, i5=var1530, i0=var3348, c6=var36, $i10=var561, $i12=var1460, z0=var2154, $r4=var2249}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: cn.hutool.core.date.format.FastDatePrinter;	r2 := @parameter0: java.lang.String;	r1 := @parameter1: int[];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	i5 = r1[0];	i0 = virtualinvoke r2.<java.lang.String: int length()>();	c6 = virtualinvoke r2.<java.lang.String: char charAt(int)>(i5);	$i10 = (int) c6;	if $i10 < 65 goto $i12 = (int) c6;	$i12 = (int) c6;	if $i12 < 97 goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	z0 = 0;	if i5 >= i0 goto r1[0] = i5;	r1[0] = i5;	$r4 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 5