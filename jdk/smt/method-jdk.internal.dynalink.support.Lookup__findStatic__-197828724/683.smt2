(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2353 0)
(declare-sort var3022 0)
(declare-sort var978 0)
(declare-sort var1512 0)
(declare-sort var1753 0)
(declare-sort var3543 0)
(declare-sort var1788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lookup/-920752463 (var2353) var1512)
(declare-fun var3543-init () var3543)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2353_methodDescription/283838376 (ClassObject String var978) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2016723416 (var3543 String) void)
(declare-fun initCause/2003336360 (var1788 var1788) var1788)
(declare-fun cast-from-var3543-to-var1788 (var3543) var1788)
(declare-fun cast-from-var1753-to-var1788 (var1753) var1788)
(declare-const null-var2353 var2353)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var978 var978)
(declare-const null-var1753 var1753)
(declare-const var471 var2353) ; Statement: r0 := @this: jdk.internal.dynalink.support.Lookup 
(assert (not (= var471 null-var2353)))
(declare-const var2327 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2327 null-ClassObject)))
(declare-const var2766 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2766 null-String)))
(declare-const var2431 var978) ; Statement: r3 := @parameter2: java.lang.invoke.MethodType 
(assert (not (= var2431 null-var978)))
(define-const var1799 var1512 (lookup/-920752463 var471)) ; Statement: $r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1438 var1753) ; Statement: $r13 := @caughtexception 
(assert (not (= var1438 null-var1753)))
(define-const var3803 var3543 var3543-init) ; Statement: $r14 = new java.lang.IllegalAccessError 
(define-const var224 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var224)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var224!1 String)
(assert (= var224!1 ""))
(assert true)
(define-const var1731 String (append/672562846 var224!1 "Failed to access static method ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to access static method ") 
(declare-const var224!2 String)
(assert (= var224!2 (str.++ var224!1 "Failed to access static method ")))
(define-const var603 String (var2353_methodDescription/283838376 var2327 var2766 var2431)) ; Statement: $r16 = staticinvoke <jdk.internal.dynalink.support.Lookup: java.lang.String methodDescription(java.lang.Class,java.lang.String,java.lang.invoke.MethodType)>(r1, r2, r3) 
(assert true)
(define-const var3369 String (append/672562846 var1731 var603)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1731!1 String)
(assert (= var1731!1 (str.++ var1731 var603)))
(assert true)
(define-const var2611 String (toString/-2075883882 var3369)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2016723416 var3803 var2611)) ; Statement: specialinvoke $r14.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r19) 

(declare-const var3803!1 var3543)
(declare-const var2611!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var3543-to-var1788 var3803!1) (cast-from-var1753-to-var1788 var1438))) ; Statement: virtualinvoke $r14.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r13) 

(declare-const var3803!2 var3543)
(declare-const var1438!1 var1753)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {lookup/-920752463=([jdk.internal.dynalink.support.Lookup], java.lang.invoke.MethodHandles$Lookup), var3543-init=([], java.lang.IllegalAccessError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2353_methodDescription/283838376=([java.lang.Class, java.lang.String, java.lang.invoke.MethodType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2016723416=([java.lang.IllegalAccessError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var3543-to-var1788=([java.lang.IllegalAccessError], java.lang.Throwable), cast-from-var1753-to-var1788=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var2353=jdk.internal.dynalink.support.Lookup, var471=r0, var2327=r1, var2766=r2, var3022=null_type, var978=java.lang.invoke.MethodType, var2431=r3, var1512=java.lang.invoke.MethodHandles$Lookup, var1799=$r4, var1753=java.lang.IllegalAccessException, var1438=$r13, var3543=java.lang.IllegalAccessError, var3803=$r14, var224=$r15, var1731=$r17, var603=$r16, var3369=$r18, var2611=$r19, var1788=java.lang.Throwable}
; {jdk.internal.dynalink.support.Lookup=var2353, r0=var471, r1=var2327, r2=var2766, null_type=var3022, java.lang.invoke.MethodType=var978, r3=var2431, java.lang.invoke.MethodHandles$Lookup=var1512, $r4=var1799, java.lang.IllegalAccessException=var1753, $r13=var1438, java.lang.IllegalAccessError=var3543, $r14=var3803, $r15=var224, $r17=var1731, $r16=var603, $r18=var3369, $r19=var2611, java.lang.Throwable=var1788}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.support.Lookup;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.invoke.MethodType;	$r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup>;	$r13 := @caughtexception;	$r14 = new java.lang.IllegalAccessError;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to access static method ");	$r16 = staticinvoke <jdk.internal.dynalink.support.Lookup: java.lang.String methodDescription(java.lang.Class,java.lang.String,java.lang.invoke.MethodType)>(r1, r2, r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r19);	virtualinvoke $r14.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r13);	throw $r14
;block_num 2