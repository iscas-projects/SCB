(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1088 0)
(declare-sort var2677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCanonicalName/-1692061233 (var2677) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1088 var1088)
(declare-const null-var2677 var2677)
(declare-const var2395 var1088) ; Statement: r4 := @this: org.hibernate.boot.model.naming.NamingHelper$2 
(assert (not (= var2395 null-var1088)))
(declare-const var575 var2677) ; Statement: r0 := @parameter0: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var575 null-var2677)))
(declare-const var1685 var2677) ; Statement: r1 := @parameter1: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var1685 null-var2677)))
(assert true)
(define-const var990 String (getCanonicalName/-1692061233 var575)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var1021 String (getCanonicalName/-1692061233 var1685)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var1623 Int (compareTo/1411385946 var990 var1021)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var990 var1021)) (this<=other (str.<= var990 var1021)) (compareRes (compareTo/1411385946 var990 var1021))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getCanonicalName/-1692061233=([org.hibernate.boot.model.naming.Identifier], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1088=org.hibernate.boot.model.naming.NamingHelper$2, var2395=r4, var2677=org.hibernate.boot.model.naming.Identifier, var575=r0, var1685=r1, var990=$r3, var1021=$r2, var1623=$i0}
; {org.hibernate.boot.model.naming.NamingHelper$2=var1088, r4=var2395, org.hibernate.boot.model.naming.Identifier=var2677, r0=var575, r1=var1685, $r3=var990, $r2=var1021, $i0=var1623}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r4 := @this: org.hibernate.boot.model.naming.NamingHelper$2;	r0 := @parameter0: org.hibernate.boot.model.naming.Identifier;	r1 := @parameter1: org.hibernate.boot.model.naming.Identifier;	$r3 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>();	$r2 = virtualinvoke r1.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1