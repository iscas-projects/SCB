(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1409 0)
(declare-sort var349 0)
(declare-sort var806 0)
(declare-sort var1306 0)
(declare-sort var350 0)
(declare-sort var853 0)
(declare-sort var2719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lookup/-920752463 (var1409) var1306)
(declare-fun var853-init () var853)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1409_methodDescription/283838376 (ClassObject String var806) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-251936199 (var853 String) void)
(declare-fun initCause/2003336360 (var2719 var2719) var2719)
(declare-fun cast-from-var853-to-var2719 (var853) var2719)
(declare-fun cast-from-var350-to-var2719 (var350) var2719)
(declare-const null-var1409 var1409)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var806 var806)
(declare-const null-var350 var350)
(declare-const var229 var1409) ; Statement: r0 := @this: jdk.internal.dynalink.support.Lookup 
(assert (not (= var229 null-var1409)))
(declare-const var2572 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2572 null-ClassObject)))
(declare-const var77 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var77 null-String)))
(declare-const var1800 var806) ; Statement: r3 := @parameter2: java.lang.invoke.MethodType 
(assert (not (= var1800 null-var806)))
(define-const var1687 var1306 (lookup/-920752463 var229)) ; Statement: $r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2096 var350) ; Statement: $r6 := @caughtexception 
(assert (not (= var2096 null-var350)))
(define-const var2054 var853 var853-init) ; Statement: $r7 = new java.lang.NoSuchMethodError 
(define-const var1679 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1679)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1679!1 String)
(assert (= var1679!1 ""))
(assert true)
(define-const var2554 String (append/672562846 var1679!1 "Failed to find special method ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to find special method ") 
(declare-const var1679!2 String)
(assert (= var1679!2 (str.++ var1679!1 "Failed to find special method ")))
(define-const var3067 String (var1409_methodDescription/283838376 var2572 var77 var1800)) ; Statement: $r9 = staticinvoke <jdk.internal.dynalink.support.Lookup: java.lang.String methodDescription(java.lang.Class,java.lang.String,java.lang.invoke.MethodType)>(r1, r2, r3) 
(assert true)
(define-const var3291 String (append/672562846 var2554 var3067)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2554!1 String)
(assert (= var2554!1 (str.++ var2554 var3067)))
(assert true)
(define-const var2452 String (toString/-2075883882 var3291)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-251936199 var2054 var2452)) ; Statement: specialinvoke $r7.<java.lang.NoSuchMethodError: void <init>(java.lang.String)>($r12) 

(declare-const var2054!1 var853)
(declare-const var2452!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var853-to-var2719 var2054!1) (cast-from-var350-to-var2719 var2096))) ; Statement: virtualinvoke $r7.<java.lang.NoSuchMethodError: java.lang.Throwable initCause(java.lang.Throwable)>($r6) 

(declare-const var2054!2 var853)
(declare-const var2096!1 var350)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {lookup/-920752463=([jdk.internal.dynalink.support.Lookup], java.lang.invoke.MethodHandles$Lookup), var853-init=([], java.lang.NoSuchMethodError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1409_methodDescription/283838376=([java.lang.Class, java.lang.String, java.lang.invoke.MethodType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-251936199=([java.lang.NoSuchMethodError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var853-to-var2719=([java.lang.NoSuchMethodError], java.lang.Throwable), cast-from-var350-to-var2719=([java.lang.NoSuchMethodException], java.lang.Throwable)}
; {var1409=jdk.internal.dynalink.support.Lookup, var229=r0, var2572=r1, var77=r2, var349=null_type, var806=java.lang.invoke.MethodType, var1800=r3, var1306=java.lang.invoke.MethodHandles$Lookup, var1687=$r4, var350=java.lang.NoSuchMethodException, var2096=$r6, var853=java.lang.NoSuchMethodError, var2054=$r7, var1679=$r8, var2554=$r10, var3067=$r9, var3291=$r11, var2452=$r12, var2719=java.lang.Throwable}
; {jdk.internal.dynalink.support.Lookup=var1409, r0=var229, r1=var2572, r2=var77, null_type=var349, java.lang.invoke.MethodType=var806, r3=var1800, java.lang.invoke.MethodHandles$Lookup=var1306, $r4=var1687, java.lang.NoSuchMethodException=var350, $r6=var2096, java.lang.NoSuchMethodError=var853, $r7=var2054, $r8=var1679, $r10=var2554, $r9=var3067, $r11=var3291, $r12=var2452, java.lang.Throwable=var2719}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.support.Lookup;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.invoke.MethodType;	$r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup>;	$r6 := @caughtexception;	$r7 = new java.lang.NoSuchMethodError;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to find special method ");	$r9 = staticinvoke <jdk.internal.dynalink.support.Lookup: java.lang.String methodDescription(java.lang.Class,java.lang.String,java.lang.invoke.MethodType)>(r1, r2, r3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.NoSuchMethodError: void <init>(java.lang.String)>($r12);	virtualinvoke $r7.<java.lang.NoSuchMethodError: java.lang.Throwable initCause(java.lang.Throwable)>($r6);	throw $r7
;block_num 2