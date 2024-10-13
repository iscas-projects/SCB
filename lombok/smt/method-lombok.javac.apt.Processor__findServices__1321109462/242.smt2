(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var334 0)
(declare-sort var2914 0)
(declare-sort var2558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var334 var334)
(declare-const null-String String)
(declare-const null-var2914 var2914)
(declare-const null-var2558 var2558)
(declare-const var529 var334) ; Statement: r24 := @this: lombok.javac.apt.Processor 
(assert (not (= var529 null-var334)))
(declare-const var954 String) ; Statement: r6 := @parameter0: java.lang.StringBuilder 
(assert (not (= var954 null-String)))
(declare-const var1584 var2914) ; Statement: r1 := @parameter1: javax.annotation.processing.Filer 
(assert (not (= var1584 null-var2914)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var670 var2558) ; Statement: $r22 := @caughtexception 
(assert (not (= var670 null-var2558)))
(assert true)
;(assert (append/672562846 var954 "Filer information unavailable\n")) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Filer information unavailable\n") 
(declare-const var954!1 String)
(assert (= var954!1 (str.++ var954 "Filer information unavailable\n")))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var954!1 "\n")) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var954!2 String)
(assert (= var954!2 (str.++ var954!1 "\n")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var334=lombok.javac.apt.Processor, var529=r24, var954=r6, var2914=javax.annotation.processing.Filer, var1584=r1, var2558=java.lang.Exception, var670=$r22}
; {lombok.javac.apt.Processor=var334, r24=var529, r6=var954, javax.annotation.processing.Filer=var2914, r1=var1584, java.lang.Exception=var2558, $r22=var670}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r24 := @this: lombok.javac.apt.Processor;	r6 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: javax.annotation.processing.Filer;	$r22 := @caughtexception;	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Filer information unavailable\n");	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	return
;block_num 3