(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1429 0)
(declare-sort var3107 0)
(declare-sort var2344 0)
(declare-sort var3810 0)
(declare-sort var1285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var2344-init () var2344)
(declare-fun var3810-init () var3810)
(declare-const null-var1429 var1429)
(declare-const null-String String)
(declare-const null-var1285 var1285)
(declare-const var49 var1429) ; Statement: r2 := @this: org.javacc.utils.OutputFileGenerator 
(assert (not (= var49 null-var1429)))
(declare-const var631 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var631 null-String)))
(assert true)
(define-const var3046 String (trim/-847153721 var631)) ; Statement: r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>() 
(define-const var291 var2344 var2344-init) ; Statement: $r0 = new org.javacc.utils.ConditionParser 
(define-const var2297 var3810 var3810-init) ; Statement: $r1 = new java.io.StringReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3588 var1285) ; Statement: $r4 := @caughtexception 
(assert (not (= var3588 null-var1285)))
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), var2344-init=([], org.javacc.utils.ConditionParser), var3810-init=([], java.io.StringReader)}
; {var1429=org.javacc.utils.OutputFileGenerator, var49=r2, var631=r5, var3107=null_type, var3046=r6, var2344=org.javacc.utils.ConditionParser, var291=$r0, var3810=java.io.StringReader, var2297=$r1, var1285=org.javacc.utils.ParseException, var3588=$r4}
; {org.javacc.utils.OutputFileGenerator=var1429, r2=var49, r5=var631, null_type=var3107, r6=var3046, org.javacc.utils.ConditionParser=var2344, $r0=var291, java.io.StringReader=var3810, $r1=var2297, org.javacc.utils.ParseException=var1285, $r4=var3588}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r2 := @this: org.javacc.utils.OutputFileGenerator;	r5 := @parameter0: java.lang.String;	r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>();	$r0 = new org.javacc.utils.ConditionParser;	$r1 = new java.io.StringReader;	$r4 := @caughtexception;	return 0
;block_num 2