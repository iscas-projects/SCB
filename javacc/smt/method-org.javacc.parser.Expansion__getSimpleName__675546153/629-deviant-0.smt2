(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3169 0)
(declare-sort var249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var249) ClassObject)
(declare-fun cast-from-var3169-to-var249 (var3169) var249)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var3169 var3169)
(declare-const var1509 var3169) ; Statement: r0 := @this: org.javacc.parser.Expansion 
(assert (not (= var1509 null-var3169)))
(assert true)
(define-const var413 ClassObject (getClass/1258963082 (cast-from-var3169-to-var249 var1509))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var726 String (getName/-1958580599 var413)) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var422 Int (lastIndexOf/-618837785 var726 ".")) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(java.lang.String)>(".") 
(define-const var3011 Int (+ var422 1)) ; Statement: $i1 = $i0 + 1 
(assert (not (and true (and (>= var3011 0) (>= (str.len var726) var3011)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3169-to-var249=([org.javacc.parser.Expansion], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3169=org.javacc.parser.Expansion, var1509=r0, var249=java.lang.Object, var413=$r1, var726=r2, var422=$i0, var3011=$i1, var604=$r3}
; {org.javacc.parser.Expansion=var3169, r0=var1509, java.lang.Object=var249, $r1=var413, r2=var726, $i0=var422, $i1=var3011, $r3=var604}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.javacc.parser.Expansion;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(java.lang.String)>(".");	$i1 = $i0 + 1;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1);	return $r3
;block_num 1