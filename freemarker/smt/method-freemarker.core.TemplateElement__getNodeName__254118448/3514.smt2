(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2085 0)
(declare-sort var3067 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3067) ClassObject)
(declare-fun cast-from-var2085-to-var3067 (var2085) var3067)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2085 var2085)
(declare-const var1516 var2085) ; Statement: r0 := @this: freemarker.core.TemplateElement 
(assert (not (= var1516 null-var2085)))
(assert true)
(define-const var2920 ClassObject (getClass/1258963082 (cast-from-var2085-to-var3067 var1516))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1009 String (getName/-1958580599 var2920)) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3621 Int (lastIndexOf/-1292097097 var1009 46)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2694 Int (+ var3621 1)) ; Statement: i1 = $i0 + 1 
(assert (and true (and (>= var2694 0) (>= (str.len var1009) var2694))))
(define-const var1462 String (substring/850833817 var1009 var2694)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>(i1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2085-to-var3067=([freemarker.core.TemplateElement], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2085=freemarker.core.TemplateElement, var1516=r0, var3067=java.lang.Object, var2920=$r1, var1009=r2, var3621=$i0, var2694=i1, var1462=$r3}
; {freemarker.core.TemplateElement=var2085, r0=var1516, java.lang.Object=var3067, $r1=var2920, r2=var1009, $i0=var3621, i1=var2694, $r3=var1462}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: freemarker.core.TemplateElement;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46);	i1 = $i0 + 1;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>(i1);	return $r3
;block_num 1