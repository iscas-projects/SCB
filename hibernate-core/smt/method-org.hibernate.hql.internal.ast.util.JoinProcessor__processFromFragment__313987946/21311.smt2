(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1618 0)
(declare-sort var395 0)
(declare-sort var1573 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1618 var1618)
(declare-const null-String String)
(declare-const null-var1573 var1573)
(declare-const var2715 var1618) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.util.JoinProcessor 
(assert (not (= var2715 null-var1618)))
(declare-const var502 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var502 null-String)))
(declare-const var3001 var1573) ; Statement: r2 := @parameter1: org.hibernate.engine.internal.JoinSequence 
(assert (not (= var3001 null-var1573)))
(assert true)
(define-const var3198 String (trim/-847153721 var502)) ; Statement: r3 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2580 Bool (startsWith/-1785782452 var3198 ", ")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>(", ") 
 ; Statement: if $z0 == 0 goto return r3 
(assert (= (ite var2580 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1618=org.hibernate.hql.internal.ast.util.JoinProcessor, var2715=r1, var502=r0, var395=null_type, var1573=org.hibernate.engine.internal.JoinSequence, var3001=r2, var3198=r3, var2580=$z0}
; {org.hibernate.hql.internal.ast.util.JoinProcessor=var1618, r1=var2715, r0=var502, null_type=var395, org.hibernate.engine.internal.JoinSequence=var1573, r2=var3001, r3=var3198, $z0=var2580}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.util.JoinProcessor;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: org.hibernate.engine.internal.JoinSequence;	r3 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>(", ");	if $z0 == 0 goto return r3;	return r3
;block_num 2