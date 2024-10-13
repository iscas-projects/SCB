(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1445 0)
(declare-sort var329 0)
(declare-sort var1097 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSQLState/-1621497016 (var329) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1445 var1445)
(declare-const null-var329 var329)
(declare-const null-String String)
(declare-const var3899 var1445) ; Statement: r5 := @this: org.hibernate.dialect.H2Dialect$2 
(assert (not (= var3899 null-var1445)))
(declare-const var1993 var329) ; Statement: r0 := @parameter0: java.sql.SQLException 
(assert (not (= var1993 null-var329)))
(define-const var2510 String null-String) ; Statement: r6 = null 
(assert true)
(define-const var623 String (getSQLState/-1621497016 var1993)) ; Statement: $r1 = virtualinvoke r0.<java.sql.SQLException: java.lang.String getSQLState()>() 
(assert true)
(define-const var44 Bool (startsWith/-1785782452 var623 "23")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("23") 
 ; Statement: if $z0 == 0 goto return r6 
(assert (= (ite var44 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getSQLState/-1621497016=([java.sql.SQLException], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1445=org.hibernate.dialect.H2Dialect$2, var3899=r5, var329=java.sql.SQLException, var1993=r0, var1097=null_type, var2510=r6, var623=$r1, var44=$z0}
; {org.hibernate.dialect.H2Dialect$2=var1445, r5=var3899, java.sql.SQLException=var329, r0=var1993, null_type=var1097, r6=var2510, $r1=var623, $z0=var44}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r5 := @this: org.hibernate.dialect.H2Dialect$2;	r0 := @parameter0: java.sql.SQLException;	r6 = null;	$r1 = virtualinvoke r0.<java.sql.SQLException: java.lang.String getSQLState()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("23");	if $z0 == 0 goto return r6;	return r6
;block_num 2