(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var412 0)
(declare-sort var1086 0)
(declare-sort var2437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun canBeDereferenced/-1049673769 (var412) Bool)
(declare-fun var2437-init () var2437)
(declare-fun <init>/-630064361 (var2437 String) void)
(declare-const null-var412 var412)
(declare-const null-String String)
(declare-const var811 var412) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath 
(assert (not (= var811 null-var412)))
(declare-const var1786 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var1786 null-String)))
(assert true)
(define-const var3922 Bool (canBeDereferenced/-1049673769 var811)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: boolean canBeDereferenced()>() 
 ; Statement: if $z0 != 0 goto $r1 = new java.lang.UnsupportedOperationException 
(assert (not (= (ite var3922 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2117 var2437 var2437-init) ; Statement: $r1 = new java.lang.UnsupportedOperationException 
(assert true)
;(assert (<init>/-630064361 var2117 "Not yet supported!")) ; Statement: specialinvoke $r1.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>("Not yet supported!") 

(declare-const var2117!1 var2437)
(declare-const var1518 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {canBeDereferenced/-1049673769=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath], boolean), var2437-init=([], java.lang.UnsupportedOperationException), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var412=org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath, var811=r0, var1786=r10, var1086=null_type, var3922=$z0, var2437=java.lang.UnsupportedOperationException, var2117=$r1, var1518="Not yet supported!"}
; {org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath=var412, r0=var811, r10=var1786, null_type=var1086, $z0=var3922, java.lang.UnsupportedOperationException=var2437, $r1=var2117, "Not yet supported!"=var1518}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath;	r10 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: boolean canBeDereferenced()>();	if $z0 != 0 goto $r1 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.UnsupportedOperationException;	specialinvoke $r1.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>("Not yet supported!");	throw $r1
;block_num 2