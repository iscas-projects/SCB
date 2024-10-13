(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3275 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCanonicalName/-1692061233 (var3275) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var3275 var3275)
(declare-const var826 var3275) ; Statement: r0 := @this: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var826 null-var3275)))
(declare-const var113 var3275) ; Statement: r1 := @parameter0: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var113 null-var3275)))
(assert true)
(define-const var3615 String (getCanonicalName/-1692061233 var826)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var1568 String (getCanonicalName/-1692061233 var113)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var2907 Int (compareTo/1411385946 var3615 var1568)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var3615 var1568)) (this<=other (str.<= var3615 var1568)) (compareRes (compareTo/1411385946 var3615 var1568))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getCanonicalName/-1692061233=([org.hibernate.boot.model.naming.Identifier], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var3275=org.hibernate.boot.model.naming.Identifier, var826=r0, var113=r1, var3615=$r3, var1568=$r2, var2907=$i0}
; {org.hibernate.boot.model.naming.Identifier=var3275, r0=var826, r1=var113, $r3=var3615, $r2=var1568, $i0=var2907}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.boot.model.naming.Identifier;	r1 := @parameter0: org.hibernate.boot.model.naming.Identifier;	$r3 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>();	$r2 = virtualinvoke r1.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1