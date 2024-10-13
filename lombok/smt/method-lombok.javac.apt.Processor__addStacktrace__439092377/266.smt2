(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var373 0)
(declare-sort var778 0)
(declare-sort var3643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var778_currentThread/-1037784612 () var778)
(declare-fun getStackTrace/-602745475 (var778) (Array Int var3643))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-var3643-1 ((Array Int var3643)) Int)
(declare-const null-var373 var373)
(declare-const null-String String)
(declare-const null-__Array__Int__var3643__ (Array Int var3643))
(declare-const var387 var373) ; Statement: r7 := @this: lombok.javac.apt.Processor 
(assert (not (= var387 null-var373)))
(declare-const var2125 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2125 null-String)))
(define-const var3180 var778 var778_currentThread/-1037784612) ; Statement: $r0 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var2612 (Array Int var3643) (getStackTrace/-602745475 var3180)) ; Statement: r1 = virtualinvoke $r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>() 
 ; Statement: if r1 == null goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No stacktrace available\n") 
(assert (not (= var2612 null-__Array__Int__var3643__))) ; Negate: Cond: r1 == null  
(assert true)
;(assert (append/672562846 var2125 "Called from\n")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Called from\n") 
(declare-const var2125!1 String)
(assert (= var2125!1 (str.++ var2125 "Called from\n")))
(define-const var1215 Int 1) ; Statement: i0 = 1 
 ; Statement: goto [?= $i1 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var2373 Int (getLength-Arr-var3643-1 var2612)) ; Statement: $i1 = lengthof r1 
 ; Statement: if i0 < $i1 goto r3 = r1[i0] 
(assert (not (< var1215 var2373))) ; Negate: Cond: i0 < $i1  
 ; Statement: goto [?= virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2125!1 "\n")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var2125!2 String)
(assert (= var2125!2 (str.++ var2125!1 "\n")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var778_currentThread/-1037784612=([], java.lang.Thread), getStackTrace/-602745475=([java.lang.Thread], java.lang.StackTraceElement[]), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-var3643-1=([java.lang.StackTraceElement[]], int)}
; {var373=lombok.javac.apt.Processor, var387=r7, var2125=r2, var778=java.lang.Thread, var3180=$r0, var3643=java.lang.StackTraceElement, var2612=r1, var1215=i0, var2373=$i1}
; {lombok.javac.apt.Processor=var373, r7=var387, r2=var2125, java.lang.Thread=var778, $r0=var3180, java.lang.StackTraceElement=var3643, r1=var2612, i0=var1215, $i1=var2373}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r7 := @this: lombok.javac.apt.Processor;	r2 := @parameter0: java.lang.StringBuilder;	$r0 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	r1 = virtualinvoke $r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>();	if r1 == null goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No stacktrace available\n");	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Called from\n");	i0 = 1;	goto [?= $i1 = lengthof r1];	$i1 = lengthof r1;	if i0 < $i1 goto r3 = r1[i0];	goto [?= virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n")];	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	return
;block_num 5