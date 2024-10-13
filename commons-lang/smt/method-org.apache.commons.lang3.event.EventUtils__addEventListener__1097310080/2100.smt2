(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3593 0)
(declare-sort var2844 0)
(declare-sort var1952 0)
(declare-sort var1016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var1952-init () var1952)
(declare-fun getCause/20745027 (var2844) var1016)
(declare-fun <init>/-1425936906 (var1952 String var1016) void)
(declare-const null-var3593 var3593)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2844 var2844)
(declare-const var759 var3593) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var759 null-var3593)))
(declare-const var3338 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var3338 null-ClassObject)))
(declare-const var3626 var3593) ; Statement: r7 := @parameter2: java.lang.Object 
(assert (not (= var3626 null-var3593)))
(define-const var3621 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var135 var2844) ; Statement: $r9 := @caughtexception 
(assert (not (= var135 null-var2844)))
(define-const var1245 var1952 var1952-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2120 var1016 (getCause/20745027 var135)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getCause()>() 
(assert true)
;(assert (<init>/-1425936906 var1245 "Unable to add listener." var2120)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>("Unable to add listener.", $r11) 

(declare-const var1245!1 var1952)
(declare-const var3376 String)
(declare-const var2120!1 var1016)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), var1952-init=([], java.lang.IllegalArgumentException), getCause/20745027=([java.lang.reflect.InvocationTargetException], java.lang.Throwable), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void)}
; {var3593=java.lang.Object, var759=r0, var3338=r2, var3626=r7, var3621=$r1, var2844=java.lang.reflect.InvocationTargetException, var135=$r9, var1952=java.lang.IllegalArgumentException, var1245=$r10, var1016=java.lang.Throwable, var2120=$r11, var3376="Unable to add listener."}
; {java.lang.Object=var3593, r0=var759, r2=var3338, r7=var3626, $r1=var3621, java.lang.reflect.InvocationTargetException=var2844, $r9=var135, java.lang.IllegalArgumentException=var1952, $r10=var1245, java.lang.Throwable=var1016, $r11=var2120, "Unable to add listener."=var3376}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Class;	r7 := @parameter2: java.lang.Object;	$r1 = new java.lang.StringBuilder;	$r9 := @caughtexception;	$r10 = new java.lang.IllegalArgumentException;	$r11 = virtualinvoke $r9.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getCause()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>("Unable to add listener.", $r11);	throw $r10
;block_num 2