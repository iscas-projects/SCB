(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2094 0)
(declare-sort var306 0)
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
(declare-const null-var2094 var2094)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var429 var2094) ; Statement: r3 := @this: org.apache.commons.lang3.time.FastDatePrinter 
(assert (not (= var429 null-var2094)))
(declare-const var1403 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1403 null-String)))
(declare-const var1155 (Array Int Int)) ; Statement: r1 := @parameter1: int[] 
(assert (not (= var1155 null-__Array__Int__Int__)))
(define-const var2796 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2796)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2796!1 String)
(assert (= var2796!1 ""))
(define-const var1697 Int (select var1155 0)) ; Statement: i5 = r1[0] 
(assert true)
(define-const var3701 Int (length/-134980193 var1403)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert (and true (and (> (str.len var1403) var1697) (<= 0 var1697))))
(define-const var3370 Int (charAt/698050440 var1403 var1697)) ; Statement: c6 = virtualinvoke r2.<java.lang.String: char charAt(int)>(i5) 
(define-const var2164 Int (cast-from-Int-to-Int var3370)) ; Statement: $i10 = (int) c6 
 ; Statement: if $i10 < 65 goto $i12 = (int) c6 
(assert (< var2164 65)) ; Cond: $i10 < 65 
(define-const var2685 Int (cast-from-Int-to-Int var3370)) ; Statement: $i12 = (int) c6 
 ; Statement: if $i12 < 97 goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(assert (< var2685 97)) ; Cond: $i12 < 97 
(assert true)
;(assert (append/-1166366385 var2796!1 39)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var2796!2 String)
(assert (str.prefixof var2796!1 var2796!2))
(define-const var3885 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto r1[0] = i5 
(assert (>= var1697 var3701)) ; Cond: i5 >= i0 
(declare-const var1155!1 (Array Int Int))
(assert (not (= var1155!1 null-__Array__Int__Int__)))
(assert (= (select var1155!1 0) var1697)) ; Statement: r1[0] = i5 
(assert true)
(define-const var576 String (toString/-2075883882 var2796!2)) ; Statement: $r4 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2094=org.apache.commons.lang3.time.FastDatePrinter, var429=r3, var1403=r2, var306=null_type, var1155=r1, var2796=$r5, var1697=i5, var3701=i0, var3370=c6, var2164=$i10, var2685=$i12, var3885=z0, var576=$r4}
; {org.apache.commons.lang3.time.FastDatePrinter=var2094, r3=var429, r2=var1403, null_type=var306, r1=var1155, $r5=var2796, i5=var1697, i0=var3701, c6=var3370, $i10=var2164, $i12=var2685, z0=var3885, $r4=var576}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.commons.lang3.time.FastDatePrinter;	r2 := @parameter0: java.lang.String;	r1 := @parameter1: int[];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	i5 = r1[0];	i0 = virtualinvoke r2.<java.lang.String: int length()>();	c6 = virtualinvoke r2.<java.lang.String: char charAt(int)>(i5);	$i10 = (int) c6;	if $i10 < 65 goto $i12 = (int) c6;	$i12 = (int) c6;	if $i12 < 97 goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	z0 = 0;	if i5 >= i0 goto r1[0] = i5;	r1[0] = i5;	$r4 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 5