(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2471 0)
(declare-sort var1677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2471 var2471)
(declare-const null-String String)
(declare-const var2472 var2471) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$IgnoreBlank 
(assert (not (= var2472 null-var2471)))
(declare-const var2295 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2295 null-String)))
(assert true)
(define-const var110 String (trim/-847153721 var2295)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2371 Bool (isEmpty/-1285796103 var110)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto return r0 
(assert (= (ite var2371 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2471=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$IgnoreBlank, var2472=r2, var2295=r0, var1677=null_type, var110=$r1, var2371=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$IgnoreBlank=var2471, r2=var2472, r0=var2295, null_type=var1677, $r1=var110, $z0=var2371}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$IgnoreBlank;	r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto return r0;	return r0
;block_num 2