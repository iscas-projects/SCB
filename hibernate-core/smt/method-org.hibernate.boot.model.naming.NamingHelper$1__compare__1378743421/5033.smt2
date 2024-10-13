(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var942 0)
(declare-sort var1439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCanonicalName/-1692061233 (var1439) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var942 var942)
(declare-const null-var1439 var1439)
(declare-const var1857 var942) ; Statement: r4 := @this: org.hibernate.boot.model.naming.NamingHelper$1 
(assert (not (= var1857 null-var942)))
(declare-const var2566 var1439) ; Statement: r0 := @parameter0: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var2566 null-var1439)))
(declare-const var1141 var1439) ; Statement: r1 := @parameter1: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var1141 null-var1439)))
(assert true)
(define-const var2604 String (getCanonicalName/-1692061233 var2566)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var2380 String (getCanonicalName/-1692061233 var1141)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var1561 Int (compareTo/1411385946 var2604 var2380)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var2604 var2380)) (this<=other (str.<= var2604 var2380)) (compareRes (compareTo/1411385946 var2604 var2380))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getCanonicalName/-1692061233=([org.hibernate.boot.model.naming.Identifier], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var942=org.hibernate.boot.model.naming.NamingHelper$1, var1857=r4, var1439=org.hibernate.boot.model.naming.Identifier, var2566=r0, var1141=r1, var2604=$r3, var2380=$r2, var1561=$i0}
; {org.hibernate.boot.model.naming.NamingHelper$1=var942, r4=var1857, org.hibernate.boot.model.naming.Identifier=var1439, r0=var2566, r1=var1141, $r3=var2604, $r2=var2380, $i0=var1561}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r4 := @this: org.hibernate.boot.model.naming.NamingHelper$1;	r0 := @parameter0: org.hibernate.boot.model.naming.Identifier;	r1 := @parameter1: org.hibernate.boot.model.naming.Identifier;	$r3 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>();	$r2 = virtualinvoke r1.<org.hibernate.boot.model.naming.Identifier: java.lang.String getCanonicalName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1