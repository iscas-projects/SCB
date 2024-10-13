(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2442 0)
(declare-sort var38 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toFragmentString/-232922822 (var38) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun setSelectClause/398150799 (var2442 String) var2442)
(declare-const null-var2442 var2442)
(declare-const null-var38 var38)
(declare-const var2964 var2442) ; Statement: r0 := @this: org.hibernate.sql.Select 
(assert (not (= var2964 null-var2442)))
(declare-const var2065 var38) ; Statement: r1 := @parameter0: org.hibernate.sql.SelectFragment 
(assert (not (= var2065 null-var38)))
(assert true)
(define-const var1431 String (toFragmentString/-232922822 var2065)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.sql.SelectFragment: java.lang.String toFragmentString()>() 
(assert (and true (and (>= 2 0) (>= (str.len var1431) 2))))
(define-const var339 String (substring/850833817 var1431 2)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int)>(2) 
(assert true)
;(assert (setSelectClause/398150799 var2964 var339)) ; Statement: virtualinvoke r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r3) 

(declare-const var2964!1 var2442)
(declare-const var339!1 String)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {toFragmentString/-232922822=([org.hibernate.sql.SelectFragment], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), setSelectClause/398150799=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select)}
; {var2442=org.hibernate.sql.Select, var2964=r0, var38=org.hibernate.sql.SelectFragment, var2065=r1, var1431=$r2, var339=$r3}
; {org.hibernate.sql.Select=var2442, r0=var2964, org.hibernate.sql.SelectFragment=var38, r1=var2065, $r2=var1431, $r3=var339}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.hibernate.sql.Select;	r1 := @parameter0: org.hibernate.sql.SelectFragment;	$r2 = virtualinvoke r1.<org.hibernate.sql.SelectFragment: java.lang.String toFragmentString()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int)>(2);	virtualinvoke r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r3);	return r0
;block_num 1