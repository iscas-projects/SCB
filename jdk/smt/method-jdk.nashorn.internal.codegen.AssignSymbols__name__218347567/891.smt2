(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1309 0)
(declare-sort var3519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3519) ClassObject)
(declare-fun cast-from-var1309-to-var3519 (var1309) var3519)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1309 var1309)
(declare-const var765 var1309) ; Statement: r0 := @parameter0: jdk.nashorn.internal.ir.Node 
(assert (not (= var765 null-var1309)))
(assert true)
(define-const var1042 ClassObject (getClass/1258963082 (cast-from-var1309-to-var3519 var765))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var990 String (getName/-1958580599 var1042)) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1461 Int (lastIndexOf/-1292097097 var990 46)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2012 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $i1 = i0 + 1 
(assert (not (not (= var1461 var2012)))) ; Negate: Cond: i0 != $i3  
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1309-to-var3519=([jdk.nashorn.internal.ir.Node], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1309=jdk.nashorn.internal.ir.Node, var765=r0, var3519=java.lang.Object, var1042=$r1, var990=r2, var1461=i0, var2012=$i3}
; {jdk.nashorn.internal.ir.Node=var1309, r0=var765, java.lang.Object=var3519, $r1=var1042, r2=var990, i0=var1461, $i3=var2012}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: jdk.nashorn.internal.ir.Node;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46);	$i3 = (int) -1;	if i0 != $i3 goto $i1 = i0 + 1;	return r2
;block_num 2