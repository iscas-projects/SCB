(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var286 0)
(declare-sort var3135 0)
(declare-sort var1415 0)
(declare-sort var603 0)
(declare-sort var3915 0)
(declare-sort var1238 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isInstance/451912363 (ClassObject var603) Bool)
(declare-fun cast-from-var1415-to-var603 (var1415) var603)
(declare-fun var3915_formatClass/-46750007 (ClassObject) String)
(declare-fun getClass/1258963082 (var603) ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3915_buildPrefix/-2074822357 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3915_format/-2131635998 (String var603 var603) String)
(declare-fun cast-from-String-to-var603 (String) var603)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1238-init () var1238)
(declare-fun <init>/582965326 (var1238 var603) void)
(declare-fun initCause/2003336360 (var1415 var1415) var1415)
(declare-fun cast-from-var1238-to-var1415 (var1238) var1415)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3135 var3135)
(declare-const null-var1415 var1415)
(declare-const var60 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var60 null-String)))
(declare-const var239 ClassObject) ; Statement: r5 := @parameter1: java.lang.Class 
(assert (not (= var239 null-ClassObject)))
(declare-const var1117 var3135) ; Statement: r0 := @parameter2: org.junit.function.ThrowingRunnable 
(assert (not (= var1117 null-var3135)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3439 var1415) ; Statement: $r11 := @caughtexception 
(assert (not (= var3439 null-var1415)))
(assert true)
(define-const var1111 Bool (isInstance/451912363 var239 (cast-from-var1415-to-var603 var3439))) ; Statement: $z0 = virtualinvoke r5.<java.lang.Class: boolean isInstance(java.lang.Object)>($r11) 
 ; Statement: if $z0 == 0 goto r30 = staticinvoke <org.junit.Assert: java.lang.String formatClass(java.lang.Class)>(r5) 
(assert (= (ite var1111 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3242 String (var3915_formatClass/-46750007 var239)) ; Statement: r30 = staticinvoke <org.junit.Assert: java.lang.String formatClass(java.lang.Class)>(r5) 
(assert true)
(define-const var3803 ClassObject (getClass/1258963082 (cast-from-var1415-to-var603 var3439))) ; Statement: r12 = virtualinvoke $r11.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var1374 String (var3915_formatClass/-46750007 var3803)) ; Statement: r31 = staticinvoke <org.junit.Assert: java.lang.String formatClass(java.lang.Class)>(r12) 
(assert true)
(define-const var2330 Bool (= var3242 var1374)) ; Statement: $z1 = virtualinvoke r30.<java.lang.String: boolean equals(java.lang.Object)>(r31) 
 ; Statement: if $z1 == 0 goto $r13 = new java.lang.StringBuilder 
(assert (= (ite var2330 1 0) 0)) ; Cond: $z1 == 0 
(define-const var13 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var13)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var13!1 String)
(assert (= var13!1 ""))
(define-const var126 String (var3915_buildPrefix/-2074822357 var60)) ; Statement: $r14 = staticinvoke <org.junit.Assert: java.lang.String buildPrefix(java.lang.String)>(r2) 
(assert true)
(define-const var2953 String (append/672562846 var13!1 var126)) ; Statement: $r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var13!2 String)
(assert (= var13!2 (str.++ var13!1 var126)))
(define-const var39 String (var3915_format/-2131635998 "unexpected exception type thrown;" (cast-from-String-to-var603 var3242) (cast-from-String-to-var603 var1374))) ; Statement: $r15 = staticinvoke <org.junit.Assert: java.lang.String format(java.lang.String,java.lang.Object,java.lang.Object)>("unexpected exception type thrown;", r30, r31) 
(assert true)
(define-const var3450 String (append/672562846 var2953 var39)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2953!1 String)
(assert (= var2953!1 (str.++ var2953 var39)))
(assert true)
(define-const var2589 String (toString/-2075883882 var3450)) ; Statement: $r29 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3460 var1238 var1238-init) ; Statement: $r18 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/582965326 var3460 (cast-from-String-to-var603 var2589))) ; Statement: specialinvoke $r18.<java.lang.AssertionError: void <init>(java.lang.Object)>($r29) 

(declare-const var3460!1 var1238)
(declare-const var2589!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var1238-to-var1415 var3460!1) var3439)) ; Statement: virtualinvoke $r18.<java.lang.AssertionError: java.lang.Throwable initCause(java.lang.Throwable)>($r11) 

(declare-const var3460!2 var1238)
(declare-const var3439!1 var1415)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var1415-to-var603=([java.lang.Throwable], java.lang.Object), var3915_formatClass/-46750007=([java.lang.Class], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3915_buildPrefix/-2074822357=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3915_format/-2131635998=([java.lang.String, java.lang.Object, java.lang.Object], java.lang.String), cast-from-String-to-var603=([java.lang.String], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1238-init=([], java.lang.AssertionError), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var1238-to-var1415=([java.lang.AssertionError], java.lang.Throwable)}
; {var60=r2, var286=null_type, var239=r5, var3135=org.junit.function.ThrowingRunnable, var1117=r0, var1415=java.lang.Throwable, var3439=$r11, var603=java.lang.Object, var1111=$z0, var3915=org.junit.Assert, var3242=r30, var3803=r12, var1374=r31, var2330=$z1, var13=$r13, var126=$r14, var2953=$r16, var39=$r15, var3450=$r17, var2589=$r29, var1238=java.lang.AssertionError, var3460=$r18}
; {r2=var60, null_type=var286, r5=var239, org.junit.function.ThrowingRunnable=var3135, r0=var1117, java.lang.Throwable=var1415, $r11=var3439, java.lang.Object=var603, $z0=var1111, org.junit.Assert=var3915, r30=var3242, r12=var3803, r31=var1374, $z1=var2330, $r13=var13, $r14=var126, $r16=var2953, $r15=var39, $r17=var3450, $r29=var2589, java.lang.AssertionError=var1238, $r18=var3460}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.Class;	r0 := @parameter2: org.junit.function.ThrowingRunnable;	$r11 := @caughtexception;	$z0 = virtualinvoke r5.<java.lang.Class: boolean isInstance(java.lang.Object)>($r11);	if $z0 == 0 goto r30 = staticinvoke <org.junit.Assert: java.lang.String formatClass(java.lang.Class)>(r5);	r30 = staticinvoke <org.junit.Assert: java.lang.String formatClass(java.lang.Class)>(r5);	r12 = virtualinvoke $r11.<java.lang.Object: java.lang.Class getClass()>();	r31 = staticinvoke <org.junit.Assert: java.lang.String formatClass(java.lang.Class)>(r12);	$z1 = virtualinvoke r30.<java.lang.String: boolean equals(java.lang.Object)>(r31);	if $z1 == 0 goto $r13 = new java.lang.StringBuilder;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = staticinvoke <org.junit.Assert: java.lang.String buildPrefix(java.lang.String)>(r2);	$r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r15 = staticinvoke <org.junit.Assert: java.lang.String format(java.lang.String,java.lang.Object,java.lang.Object)>("unexpected exception type thrown;", r30, r31);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r29 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = new java.lang.AssertionError;	specialinvoke $r18.<java.lang.AssertionError: void <init>(java.lang.Object)>($r29);	virtualinvoke $r18.<java.lang.AssertionError: java.lang.Throwable initCause(java.lang.Throwable)>($r11);	throw $r18
;block_num 4