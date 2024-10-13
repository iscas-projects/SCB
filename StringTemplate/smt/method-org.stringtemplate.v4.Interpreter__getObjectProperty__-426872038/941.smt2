(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3407 0)
(declare-sort var3578 0)
(declare-sort var2471 0)
(declare-sort var1501 0)
(declare-sort var1105 0)
(declare-sort var1322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun errMgr/397531683 (var3407) var1105)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1501) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun runTimeError/1005957290 (var1105 var3407 var2471 var1322 var1501) void)
(declare-fun cast-from-String-to-var1501 (String) var1501)
(declare-const null-var3407 var3407)
(declare-const null-var3578 var3578)
(declare-const null-var2471 var2471)
(declare-const null-var1501 var1501)
(declare-const var1322-NO_SUCH_PROPERTY var1322)
(declare-const var3774 var3407) ; Statement: r5 := @this: org.stringtemplate.v4.Interpreter 
(assert (not (= var3774 null-var3407)))
(declare-const var135 var3578) ; Statement: r7 := @parameter0: org.stringtemplate.v4.STWriter 
(assert (not (= var135 null-var3578)))
(declare-const var3799 var2471) ; Statement: r1 := @parameter1: org.stringtemplate.v4.InstanceScope 
(assert (not (= var3799 null-var2471)))
(declare-const var701 var1501) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var701 null-var1501)))
(declare-const var730 var1501) ; Statement: r6 := @parameter3: java.lang.Object 
(assert (not (= var730 null-var1501)))
 ; Statement: if r0 != null goto r26 = r1.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st> 
(assert (not (not (= var701 null-var1501)))) ; Negate: Cond: r0 != null  
(define-const var3980 var1105 (errMgr/397531683 var3774)) ; Statement: $r11 = r5.<org.stringtemplate.v4.Interpreter: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var1861 var1322 var1322-NO_SUCH_PROPERTY) ; Statement: $r12 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType NO_SUCH_PROPERTY> 
(define-const var1915 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1915)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1915!1 String)
(assert (= var1915!1 ""))
(assert true)
(define-const var3405 String (append/672562846 var1915!1 "null.")) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null.") 
(declare-const var1915!2 String)
(assert (= var1915!2 (str.++ var1915!1 "null.")))
(assert true)
(define-const var2789 String (append/-1031950772 var3405 var730)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var3405!1 String)
(assert (str.prefixof var3405 var3405!1))
(assert true)
(define-const var668 String (toString/-2075883882 var2789)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (runTimeError/1005957290 var3980 var3774 var3799 var1861 (cast-from-String-to-var1501 var668))) ; Statement: virtualinvoke $r11.<org.stringtemplate.v4.misc.ErrorManager: void runTimeError(org.stringtemplate.v4.Interpreter,org.stringtemplate.v4.InstanceScope,org.stringtemplate.v4.misc.ErrorType,java.lang.Object)>(r5, r1, $r12, $r15) 

(declare-const var3980!1 var1105)
(declare-const var3774!1 var3407)
(declare-const var3799!1 var2471)
(declare-const var1861!1 var1322)
(declare-const var668!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {errMgr/397531683=([org.stringtemplate.v4.Interpreter], org.stringtemplate.v4.misc.ErrorManager), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), runTimeError/1005957290=([org.stringtemplate.v4.misc.ErrorManager, org.stringtemplate.v4.Interpreter, org.stringtemplate.v4.InstanceScope, org.stringtemplate.v4.misc.ErrorType, java.lang.Object], void), cast-from-String-to-var1501=([java.lang.String], java.lang.Object)}
; {var3407=org.stringtemplate.v4.Interpreter, var3774=r5, var3578=org.stringtemplate.v4.STWriter, var135=r7, var2471=org.stringtemplate.v4.InstanceScope, var3799=r1, var1501=java.lang.Object, var701=r0, var730=r6, var1105=org.stringtemplate.v4.misc.ErrorManager, var3980=$r11, var1322=org.stringtemplate.v4.misc.ErrorType, var1861=$r12, var1915=$r10, var3405=$r13, var2789=$r14, var668=$r15}
; {org.stringtemplate.v4.Interpreter=var3407, r5=var3774, org.stringtemplate.v4.STWriter=var3578, r7=var135, org.stringtemplate.v4.InstanceScope=var2471, r1=var3799, java.lang.Object=var1501, r0=var701, r6=var730, org.stringtemplate.v4.misc.ErrorManager=var1105, $r11=var3980, org.stringtemplate.v4.misc.ErrorType=var1322, $r12=var1861, $r10=var1915, $r13=var3405, $r14=var2789, $r15=var668}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.stringtemplate.v4.Interpreter;	r7 := @parameter0: org.stringtemplate.v4.STWriter;	r1 := @parameter1: org.stringtemplate.v4.InstanceScope;	r0 := @parameter2: java.lang.Object;	r6 := @parameter3: java.lang.Object;	if r0 != null goto r26 = r1.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st>;	$r11 = r5.<org.stringtemplate.v4.Interpreter: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r12 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType NO_SUCH_PROPERTY>;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null.");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r11.<org.stringtemplate.v4.misc.ErrorManager: void runTimeError(org.stringtemplate.v4.Interpreter,org.stringtemplate.v4.InstanceScope,org.stringtemplate.v4.misc.ErrorType,java.lang.Object)>(r5, r1, $r12, $r15);	return null
;block_num 2