(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var229 0)
(declare-sort var890 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isQuoted/-2065986092 (var229) Bool)
(declare-fun getText/-467579009 (var229) String)
(declare-const null-var229 var229)
(declare-const null-var890 var890)
(declare-const var1166 var229) ; Statement: r0 := @this: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var1166 null-var229)))
(declare-const var346 var890) ; Statement: r2 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var346 null-var890)))
(define-const var184 Bool (isQuoted/-2065986092 var1166)) ; Statement: $z0 = r0.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted> 
 ; Statement: if $z0 == 0 goto $r8 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (= (ite var184 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3227 String (getText/-467579009 var1166)) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {isQuoted/-2065986092=([org.hibernate.boot.model.naming.Identifier], boolean), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String)}
; {var229=org.hibernate.boot.model.naming.Identifier, var1166=r0, var890=org.hibernate.dialect.Dialect, var346=r2, var184=$z0, var3227=$r8}
; {org.hibernate.boot.model.naming.Identifier=var229, r0=var1166, org.hibernate.dialect.Dialect=var890, r2=var346, $z0=var184, $r8=var3227}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.naming.Identifier;	r2 := @parameter0: org.hibernate.dialect.Dialect;	$z0 = r0.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted>;	if $z0 == 0 goto $r8 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r8 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	return $r8
;block_num 3