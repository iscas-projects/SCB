(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var811 0)
(declare-sort var2310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun cacheRegion/-46788054 (var811) String)
(declare-const null-var811 var811)
(declare-const null-String String)
(declare-const var3455 var811) ; Statement: r0 := @this: org.hibernate.internal.CriteriaImpl 
(assert (not (= var3455 null-var811)))
(declare-const var289 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var289 null-String)))
(assert true)
(define-const var1901 String (trim/-847153721 var289)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>() 
(declare-const var3455!1 var811)
(assert (not (= var3455!1 null-var811)))
(assert (= (cacheRegion/-46788054 var3455!1) var1901)) ; Statement: r0.<org.hibernate.internal.CriteriaImpl: java.lang.String cacheRegion> = $r2 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), cacheRegion/-46788054=([org.hibernate.internal.CriteriaImpl], java.lang.String)}
; {var811=org.hibernate.internal.CriteriaImpl, var3455=r0, var289=r1, var2310=null_type, var1901=$r2}
; {org.hibernate.internal.CriteriaImpl=var811, r0=var3455, r1=var289, null_type=var2310, $r2=var1901}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: org.hibernate.internal.CriteriaImpl;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>();	r0.<org.hibernate.internal.CriteriaImpl: java.lang.String cacheRegion> = $r2;	return r0
;block_num 1