(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2413 0)
(declare-sort var3168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3168) ClassObject)
(declare-fun cast-from-var2413-to-var3168 (var2413) var3168)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2413 var2413)
(declare-const var1599 var2413) ; Statement: r0 := @parameter0: jdk.nashorn.internal.ir.Node 
(assert (not (= var1599 null-var2413)))
(assert true)
(define-const var808 ClassObject (getClass/1258963082 (cast-from-var2413-to-var3168 var1599))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3260 String (getName/-1958580599 var808)) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2041 Int (lastIndexOf/-1292097097 var3260 46)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var451 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $i1 = i0 + 1 
(assert (not (= var2041 var451))) ; Cond: i0 != $i3 
(define-const var2962 Int (+ var2041 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var2962 0) (>= (str.len var3260) var2962))))
(define-const var2545 String (substring/850833817 var3260 var2962)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2413-to-var3168=([jdk.nashorn.internal.ir.Node], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2413=jdk.nashorn.internal.ir.Node, var1599=r0, var3168=java.lang.Object, var808=$r1, var3260=r2, var2041=i0, var451=$i3, var2962=$i1, var2545=$r3}
; {jdk.nashorn.internal.ir.Node=var2413, r0=var1599, java.lang.Object=var3168, $r1=var808, r2=var3260, i0=var2041, $i3=var451, $i1=var2962, $r3=var2545}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: jdk.nashorn.internal.ir.Node;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46);	$i3 = (int) -1;	if i0 != $i3 goto $i1 = i0 + 1;	$i1 = i0 + 1;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1);	return $r3
;block_num 2