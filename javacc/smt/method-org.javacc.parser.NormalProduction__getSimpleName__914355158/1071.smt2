(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var41 0)
(declare-sort var565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var565) ClassObject)
(declare-fun cast-from-var41-to-var565 (var41) var565)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var41 var41)
(declare-const var3338 var41) ; Statement: r0 := @this: org.javacc.parser.NormalProduction 
(assert (not (= var3338 null-var41)))
(assert true)
(define-const var2943 ClassObject (getClass/1258963082 (cast-from-var41-to-var565 var3338))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2521 String (getName/-1958580599 var2943)) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var700 Int (lastIndexOf/-618837785 var2521 ".")) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(java.lang.String)>(".") 
(define-const var2803 Int (+ var700 1)) ; Statement: $i1 = $i0 + 1 
(assert (and true (and (>= var2803 0) (>= (str.len var2521) var2803))))
(define-const var26 String (substring/850833817 var2521 var2803)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var41-to-var565=([org.javacc.parser.NormalProduction], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var41=org.javacc.parser.NormalProduction, var3338=r0, var565=java.lang.Object, var2943=$r1, var2521=r2, var700=$i0, var2803=$i1, var26=$r3}
; {org.javacc.parser.NormalProduction=var41, r0=var3338, java.lang.Object=var565, $r1=var2943, r2=var2521, $i0=var700, $i1=var2803, $r3=var26}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.javacc.parser.NormalProduction;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(java.lang.String)>(".");	$i1 = $i0 + 1;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1);	return $r3
;block_num 1