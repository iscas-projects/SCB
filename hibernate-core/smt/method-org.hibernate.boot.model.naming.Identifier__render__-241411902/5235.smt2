(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isQuoted/-2065986092 (var219) Bool)
(declare-fun getText/-467579009 (var219) String)
(declare-const null-var219 var219)
(declare-const var1112 var219) ; Statement: r0 := @this: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var1112 null-var219)))
(define-const var2090 Bool (isQuoted/-2065986092 var1112)) ; Statement: $z0 = r0.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted> 
 ; Statement: if $z0 == 0 goto $r6 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (= (ite var2090 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var128 String (getText/-467579009 var1112)) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isQuoted/-2065986092=([org.hibernate.boot.model.naming.Identifier], boolean), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String)}
; {var219=org.hibernate.boot.model.naming.Identifier, var1112=r0, var2090=$z0, var128=$r6}
; {org.hibernate.boot.model.naming.Identifier=var219, r0=var1112, $z0=var2090, $r6=var128}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.naming.Identifier;	$z0 = r0.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted>;	if $z0 == 0 goto $r6 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r6 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	return $r6
;block_num 3