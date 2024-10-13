(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var940 0)
(declare-sort var3116 0)
(declare-sort var2503 0)
(declare-sort var549 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var549-init () var549)
(declare-fun <init>/875830710 (var549 String) void)
(declare-const null-var940 var940)
(declare-const null-String String)
(declare-const null-var2503 var2503)
(declare-const var1059 var940) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.options.OptionTemplate 
(assert (not (= var1059 null-var940)))
(declare-const var2601 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2601 null-String)))
(assert true)
(define-const var1915 String (trim/-847153721 var2601)) ; Statement: r21 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2588 var2503) ; Statement: $r19 := @caughtexception 
(assert (not (= var2588 null-var2503)))
(define-const var2271 var549 var549-init) ; Statement: $r20 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2271 var2601)) ; Statement: specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r0) 

(declare-const var2271!1 var549)
(declare-const var2601!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), var549-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var940=jdk.nashorn.internal.runtime.options.OptionTemplate, var1059=r2, var2601=r0, var3116=null_type, var1915=r21, var2503=java.lang.Exception, var2588=$r19, var549=java.lang.IllegalArgumentException, var2271=$r20}
; {jdk.nashorn.internal.runtime.options.OptionTemplate=var940, r2=var1059, r0=var2601, null_type=var3116, r21=var1915, java.lang.Exception=var2503, $r19=var2588, java.lang.IllegalArgumentException=var549, $r20=var2271}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.options.OptionTemplate;	r0 := @parameter0: java.lang.String;	r21 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$r19 := @caughtexception;	$r20 = new java.lang.IllegalArgumentException;	specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r0);	throw $r20
;block_num 2