(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3817 0)
(declare-sort var3681 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3817_size/-390258357 (var3817) Int)
(declare-fun var3681_newStringBuilderForCollection/-1779680544 (Int) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var3817_iterator/-1617794947 (var3817) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3817 var3817)
(declare-const var1792 var3817) ; Statement: r0 := @parameter0: java.util.Collection 
(assert (not (= var1792 null-var3817)))
(define-const var2702 Int (var3817_size/-390258357 var1792)) ; Statement: $i0 = interfaceinvoke r0.<java.util.Collection: int size()>() 
(define-const var2028 String (var3681_newStringBuilderForCollection/-1779680544 var2702)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2: java.lang.StringBuilder newStringBuilderForCollection(int)>($i0) 
(assert true)
(define-const var2417 String (append/-1166366385 var2028 91)) ; Statement: r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2028!1 String)
(assert (str.prefixof var2028 var2028!1))
(define-const var2094 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var2026 Iterator (var3817_iterator/-1617794947 var1792)) ; Statement: r3 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var151 Bool (Iterator_hasNext/-1669924200 var2026)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (= (ite var151 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var416 String (append/-1166366385 var2417 93)) ; Statement: $r4 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2417!1 String)
(assert (str.prefixof var2417 var2417!1))
(assert true)
(define-const var998 String (toString/-2075883882 var416)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3817_size/-390258357=([java.util.Collection], int), var3681_newStringBuilderForCollection/-1779680544=([int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var3817_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3817=java.util.Collection, var1792=r0, var2702=$i0, var3681=com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2, var2028=$r1, var2417=r2, var2094=z1, var2026=r3, var151=$z0, var416=$r4, var998=$r5}
; {java.util.Collection=var3817, r0=var1792, $i0=var2702, com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2=var3681, $r1=var2028, r2=var2417, z1=var2094, r3=var2026, $z0=var151, $r4=var416, $r5=var998}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Collection;	$i0 = interfaceinvoke r0.<java.util.Collection: int size()>();	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2: java.lang.StringBuilder newStringBuilderForCollection(int)>($i0);	r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	z1 = 1;	r3 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3