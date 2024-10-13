(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var126 0)
(declare-sort var1013 0)
(declare-sort var3937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var126 var126)
(declare-const null-String String)
(declare-const null-var1013 var1013)
(declare-const null-var3937 var3937)
(declare-const var997 var126) ; Statement: r17 := @this: lombok.javac.apt.Processor 
(assert (not (= var997 null-var126)))
(declare-const var2793 String) ; Statement: r7 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2793 null-String)))
(declare-const var516 var1013) ; Statement: r0 := @parameter1: javax.annotation.processing.ProcessingEnvironment 
(assert (not (= var516 null-var1013)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var995 var3937) ; Statement: $r16 := @caughtexception 
(assert (not (= var995 null-var3937)))
(assert true)
;(assert (append/672562846 var2793 "No options available\n\n")) ; Statement: virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No options available\n\n") 
(declare-const var2793!1 String)
(assert (= var2793!1 (str.++ var2793 "No options available\n\n")))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var126=lombok.javac.apt.Processor, var997=r17, var2793=r7, var1013=javax.annotation.processing.ProcessingEnvironment, var516=r0, var3937=java.lang.Exception, var995=$r16}
; {lombok.javac.apt.Processor=var126, r17=var997, r7=var2793, javax.annotation.processing.ProcessingEnvironment=var1013, r0=var516, java.lang.Exception=var3937, $r16=var995}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r17 := @this: lombok.javac.apt.Processor;	r7 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: javax.annotation.processing.ProcessingEnvironment;	$r16 := @caughtexception;	virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No options available\n\n");	return
;block_num 3