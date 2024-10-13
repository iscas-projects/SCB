(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3991 0)
(declare-sort var350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/69968485 (var3991) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun buckets/1215159292 (var3991) (Array Int var350))
(declare-fun getLength-Arr-var350-1 ((Array Int var350)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3991 var3991)
(declare-const var879 var3991) ; Statement: r0 := @this: org.antlr.v4.runtime.misc.FlexibleHashMap 
(assert (not (= var879 null-var3991)))
(assert true)
(define-const var1574 Int (size/69968485 var879)) ; Statement: $i0 = virtualinvoke r0.<org.antlr.v4.runtime.misc.FlexibleHashMap: int size()>() 
 ; Statement: if $i0 != 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= var1574 0))) ; Cond: $i0 != 0 
(define-const var2288 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2288)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2288!1 String)
(assert (= var2288!1 ""))
(assert true)
;(assert (append/-1166366385 var2288!1 123)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var2288!2 String)
(assert (str.prefixof var2288!1 var2288!2))
(define-const var625 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var896 (Array Int var350) (buckets/1215159292 var879)) ; Statement: r2 = r0.<org.antlr.v4.runtime.misc.FlexibleHashMap: java.util.LinkedList[] buckets> 
(define-const var3675 Int (getLength-Arr-var350-1 var896)) ; Statement: i1 = lengthof r2 
(define-const var1859 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i1 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (>= var1859 var3675)) ; Cond: i2 >= i1 
(assert true)
;(assert (append/-1166366385 var2288!2 125)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var2288!3 String)
(assert (str.prefixof var2288!2 var2288!3))
(assert true)
(define-const var3719 String (toString/-2075883882 var2288!3)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {size/69968485=([org.antlr.v4.runtime.misc.FlexibleHashMap], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), buckets/1215159292=([org.antlr.v4.runtime.misc.FlexibleHashMap], java.util.LinkedList[]), getLength-Arr-var350-1=([java.util.LinkedList[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3991=org.antlr.v4.runtime.misc.FlexibleHashMap, var879=r0, var1574=$i0, var2288=$r1, var625=z1, var350=java.util.LinkedList, var896=r2, var3675=i1, var1859=i2, var3719=$r3}
; {org.antlr.v4.runtime.misc.FlexibleHashMap=var3991, r0=var879, $i0=var1574, $r1=var2288, z1=var625, java.util.LinkedList=var350, r2=var896, i1=var3675, i2=var1859, $r3=var3719}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.misc.FlexibleHashMap;	$i0 = virtualinvoke r0.<org.antlr.v4.runtime.misc.FlexibleHashMap: int size()>();	if $i0 != 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	z1 = 1;	r2 = r0.<org.antlr.v4.runtime.misc.FlexibleHashMap: java.util.LinkedList[] buckets>;	i1 = lengthof r2;	i2 = 0;	if i2 >= i1 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 4