(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3262 0)
(declare-sort var3947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3262 var3262)
(declare-const null-String String)
(declare-const var2067 var3262) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$IgnoreBlank 
(assert (not (= var2067 null-var3262)))
(declare-const var1034 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1034 null-String)))
(assert true)
(define-const var2760 String (trim/-847153721 var1034)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1693 Bool (isEmpty/-1285796103 var2760)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto return r0 
(assert (not (= (ite var1693 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3262=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$IgnoreBlank, var2067=r2, var1034=r0, var3947=null_type, var2760=$r1, var1693=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$IgnoreBlank=var3262, r2=var2067, r0=var1034, null_type=var3947, $r1=var2760, $z0=var1693}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$IgnoreBlank;	r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto return r0;	return null
;block_num 2