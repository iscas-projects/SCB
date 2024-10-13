(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var696 0)
(declare-sort var3030 0)
(declare-sort var3982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var696_size/-1594421051 (var696) Int)
(declare-fun var3030_newStringBuilderForCollection/-1779680544 (Int) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var696_entrySet/1101202697 (var696) var3982)
(declare-fun var3982_iterator/1911472585 (var3982) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var696 var696)
(declare-const var1453 var696) ; Statement: r0 := @parameter0: java.util.Map 
(assert (not (= var1453 null-var696)))
(define-const var973 Int (var696_size/-1594421051 var1453)) ; Statement: $i0 = interfaceinvoke r0.<java.util.Map: int size()>() 
(define-const var3146 String (var3030_newStringBuilderForCollection/-1779680544 var973)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2: java.lang.StringBuilder newStringBuilderForCollection(int)>($i0) 
(assert true)
(define-const var3077 String (append/-1166366385 var3146 123)) ; Statement: r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var3146!1 String)
(assert (str.prefixof var3146 var3146!1))
(define-const var1429 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var2048 var3982 (var696_entrySet/1101202697 var1453)) ; Statement: $r3 = interfaceinvoke r0.<java.util.Map: java.util.Set entrySet()>() 
(define-const var1369 Iterator (var3982_iterator/1911472585 var2048)) ; Statement: r4 = interfaceinvoke $r3.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2829 Bool (Iterator_hasNext/-1669924200 var1369)) ; Statement: $z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (= (ite var2829 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3436 String (append/-1166366385 var3077 125)) ; Statement: $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var3077!1 String)
(assert (str.prefixof var3077 var3077!1))
(assert true)
(define-const var653 String (toString/-2075883882 var3436)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var696_size/-1594421051=([java.util.Map], int), var3030_newStringBuilderForCollection/-1779680544=([int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var696_entrySet/1101202697=([java.util.Map], java.util.Set), var3982_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var696=java.util.Map, var1453=r0, var973=$i0, var3030=com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2, var3146=$r1, var3077=r2, var1429=z1, var3982=java.util.Set, var2048=$r3, var1369=r4, var2829=$z0, var3436=$r5, var653=$r6}
; {java.util.Map=var696, r0=var1453, $i0=var973, com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2=var3030, $r1=var3146, r2=var3077, z1=var1429, java.util.Set=var3982, $r3=var2048, r4=var1369, $z0=var2829, $r5=var3436, $r6=var653}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Map;	$i0 = interfaceinvoke r0.<java.util.Map: int size()>();	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2: java.lang.StringBuilder newStringBuilderForCollection(int)>($i0);	r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	z1 = 1;	$r3 = interfaceinvoke r0.<java.util.Map: java.util.Set entrySet()>();	r4 = interfaceinvoke $r3.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3