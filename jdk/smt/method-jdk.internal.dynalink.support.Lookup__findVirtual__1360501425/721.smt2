(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3823 0)
(declare-sort var357 0)
(declare-sort var3263 0)
(declare-sort var1560 0)
(declare-sort var3198 0)
(declare-sort var1422 0)
(declare-sort var3851 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lookup/-920752463 (var3823) var1560)
(declare-fun var1422-init () var1422)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3823_methodDescription/283838376 (ClassObject String var3263) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2016723416 (var1422 String) void)
(declare-fun initCause/2003336360 (var3851 var3851) var3851)
(declare-fun cast-from-var1422-to-var3851 (var1422) var3851)
(declare-fun cast-from-var3198-to-var3851 (var3198) var3851)
(declare-const null-var3823 var3823)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var3263 var3263)
(declare-const null-var3198 var3198)
(declare-const var1218 var3823) ; Statement: r0 := @this: jdk.internal.dynalink.support.Lookup 
(assert (not (= var1218 null-var3823)))
(declare-const var2147 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2147 null-ClassObject)))
(declare-const var3184 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3184 null-String)))
(declare-const var1017 var3263) ; Statement: r3 := @parameter2: java.lang.invoke.MethodType 
(assert (not (= var1017 null-var3263)))
(define-const var3795 var1560 (lookup/-920752463 var1218)) ; Statement: $r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var80 var3198) ; Statement: $r13 := @caughtexception 
(assert (not (= var80 null-var3198)))
(define-const var1350 var1422 var1422-init) ; Statement: $r14 = new java.lang.IllegalAccessError 
(define-const var372 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var372)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var372!1 String)
(assert (= var372!1 ""))
(assert true)
(define-const var273 String (append/672562846 var372!1 "Failed to access virtual method ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to access virtual method ") 
(declare-const var372!2 String)
(assert (= var372!2 (str.++ var372!1 "Failed to access virtual method ")))
(define-const var2097 String (var3823_methodDescription/283838376 var2147 var3184 var1017)) ; Statement: $r16 = staticinvoke <jdk.internal.dynalink.support.Lookup: java.lang.String methodDescription(java.lang.Class,java.lang.String,java.lang.invoke.MethodType)>(r1, r2, r3) 
(assert true)
(define-const var2897 String (append/672562846 var273 var2097)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var273!1 String)
(assert (= var273!1 (str.++ var273 var2097)))
(assert true)
(define-const var3471 String (toString/-2075883882 var2897)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2016723416 var1350 var3471)) ; Statement: specialinvoke $r14.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r19) 

(declare-const var1350!1 var1422)
(declare-const var3471!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var1422-to-var3851 var1350!1) (cast-from-var3198-to-var3851 var80))) ; Statement: virtualinvoke $r14.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r13) 

(declare-const var1350!2 var1422)
(declare-const var80!1 var3198)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {lookup/-920752463=([jdk.internal.dynalink.support.Lookup], java.lang.invoke.MethodHandles$Lookup), var1422-init=([], java.lang.IllegalAccessError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3823_methodDescription/283838376=([java.lang.Class, java.lang.String, java.lang.invoke.MethodType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2016723416=([java.lang.IllegalAccessError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var1422-to-var3851=([java.lang.IllegalAccessError], java.lang.Throwable), cast-from-var3198-to-var3851=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var3823=jdk.internal.dynalink.support.Lookup, var1218=r0, var2147=r1, var3184=r2, var357=null_type, var3263=java.lang.invoke.MethodType, var1017=r3, var1560=java.lang.invoke.MethodHandles$Lookup, var3795=$r4, var3198=java.lang.IllegalAccessException, var80=$r13, var1422=java.lang.IllegalAccessError, var1350=$r14, var372=$r15, var273=$r17, var2097=$r16, var2897=$r18, var3471=$r19, var3851=java.lang.Throwable}
; {jdk.internal.dynalink.support.Lookup=var3823, r0=var1218, r1=var2147, r2=var3184, null_type=var357, java.lang.invoke.MethodType=var3263, r3=var1017, java.lang.invoke.MethodHandles$Lookup=var1560, $r4=var3795, java.lang.IllegalAccessException=var3198, $r13=var80, java.lang.IllegalAccessError=var1422, $r14=var1350, $r15=var372, $r17=var273, $r16=var2097, $r18=var2897, $r19=var3471, java.lang.Throwable=var3851}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.support.Lookup;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.invoke.MethodType;	$r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup>;	$r13 := @caughtexception;	$r14 = new java.lang.IllegalAccessError;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to access virtual method ");	$r16 = staticinvoke <jdk.internal.dynalink.support.Lookup: java.lang.String methodDescription(java.lang.Class,java.lang.String,java.lang.invoke.MethodType)>(r1, r2, r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r19);	virtualinvoke $r14.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r13);	throw $r14
;block_num 2