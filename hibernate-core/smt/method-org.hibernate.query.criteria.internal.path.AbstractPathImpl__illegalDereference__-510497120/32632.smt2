(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3421 0)
(declare-sort var3475 0)
(declare-sort var2765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3475-init () var3475)
(declare-fun arr-var2765-init () (Array Int var2765))
(declare-fun getPathIdentifier/1584846728 (var3421) String)
(declare-fun cast-from-String-to-var2765 (String) var2765)
(declare-fun String_format/1339386452 (String (Array Int var2765)) String)
(declare-fun <init>/-1092629202 (var3475 String) void)
(declare-const null-var3421 var3421)
(declare-const null-__Array__Int__var2765__ (Array Int var2765))
(declare-const var2944 var3421) ; Statement: r2 := @this: org.hibernate.query.criteria.internal.path.AbstractPathImpl 
(assert (not (= var2944 null-var3421)))
(define-const var3853 var3475 var3475-init) ; Statement: $r0 = new java.lang.IllegalStateException 
(define-const var3188 (Array Int var2765) arr-var2765-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var993 String (getPathIdentifier/1584846728 var2944)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: java.lang.String getPathIdentifier()>() 
(declare-const var3188!1 (Array Int var2765))
(assert (not (= var3188!1 null-__Array__Int__var2765__)))
(assert (= (select var3188!1 0) (cast-from-String-to-var2765 var993))) ; Statement: $r1[0] = $r3 
(define-const var1768 String (String_format/1339386452 "Illegal attempt to dereference path source [%s] of basic type" var3188!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Illegal attempt to dereference path source [%s] of basic type", $r1) 
(assert true)
;(assert (<init>/-1092629202 var3853 var1768)) ; Statement: specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r4) 

(declare-const var3853!1 var3475)
(declare-const var1768!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3475-init=([], java.lang.IllegalStateException), arr-var2765-init=([], java.lang.Object[]), getPathIdentifier/1584846728=([org.hibernate.query.criteria.internal.path.AbstractPathImpl], java.lang.String), cast-from-String-to-var2765=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3421=org.hibernate.query.criteria.internal.path.AbstractPathImpl, var2944=r2, var3475=java.lang.IllegalStateException, var3853=$r0, var2765=java.lang.Object, var3188=$r1, var993=$r3, var1768=$r4}
; {org.hibernate.query.criteria.internal.path.AbstractPathImpl=var3421, r2=var2944, java.lang.IllegalStateException=var3475, $r0=var3853, java.lang.Object=var2765, $r1=var3188, $r3=var993, $r4=var1768}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: org.hibernate.query.criteria.internal.path.AbstractPathImpl;	$r0 = new java.lang.IllegalStateException;	$r1 = newarray (java.lang.Object)[1];	$r3 = virtualinvoke r2.<org.hibernate.query.criteria.internal.path.AbstractPathImpl: java.lang.String getPathIdentifier()>();	$r1[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Illegal attempt to dereference path source [%s] of basic type", $r1);	specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r4);	return $r0
;block_num 1