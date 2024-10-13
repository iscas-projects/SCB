(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3105 0)
(declare-sort var970 0)
(declare-sort var3000 0)
(declare-sort var2588 0)
(declare-sort var1031 0)
(declare-sort var2341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun constructor/-1376506649 (var3105) var3000)
(declare-fun var1031-init () var1031)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var970) String)
(declare-fun cast-from-var3000-to-var970 (var3000) var970)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var1031 String var2341) void)
(declare-fun cast-from-var2588-to-var2341 (var2588) var2341)
(declare-const null-var3105 var3105)
(declare-const null-var970 var970)
(declare-const null-__Array__Int__var970__ (Array Int var970))
(declare-const null-var2588 var2588)
(declare-const var247 var3105) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable$ConstructorInvokable 
(assert (not (= var247 null-var3105)))
(declare-const var942 var970) ; Statement: r11 := @parameter0: java.lang.Object 
(assert (not (= var942 null-var970)))
(declare-const var345 (Array Int var970)) ; Statement: r1 := @parameter1: java.lang.Object[] 
(assert (not (= var345 null-__Array__Int__var970__)))
(define-const var2121 var3000 (constructor/-1376506649 var247)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable$ConstructorInvokable: java.lang.reflect.Constructor constructor> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1681 var2588) ; Statement: $r4 := @caughtexception 
(assert (not (= var1681 null-var2588)))
(define-const var1951 var1031 var1031-init) ; Statement: $r5 = new java.lang.RuntimeException 
(define-const var2433 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2433)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2433!1 String)
(assert (= var2433!1 ""))
(define-const var3134 var3000 (constructor/-1376506649 var247)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable$ConstructorInvokable: java.lang.reflect.Constructor constructor> 
(assert true)
(define-const var2779 String (append/-1031950772 var2433!1 (cast-from-var3000-to-var970 var3134))) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var2433!2 String)
(assert (str.prefixof var2433!1 var2433!2))
(assert true)
(define-const var818 String (append/672562846 var2779 " failed.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" failed.") 
(declare-const var2779!1 String)
(assert (= var2779!1 (str.++ var2779 " failed.")))
(assert true)
(define-const var2974 String (toString/-2075883882 var818)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var1951 var2974 (cast-from-var2588-to-var2341 var1681))) ; Statement: specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4) 

(declare-const var1951!1 var1031)
(declare-const var2974!1 String)
(declare-const var1681!1 var2588)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {constructor/-1376506649=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable$ConstructorInvokable], java.lang.reflect.Constructor), var1031-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3000-to-var970=([java.lang.reflect.Constructor], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var2588-to-var2341=([java.lang.InstantiationException], java.lang.Throwable)}
; {var3105=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable$ConstructorInvokable, var247=r0, var970=java.lang.Object, var942=r11, var345=r1, var3000=java.lang.reflect.Constructor, var2121=$r2, var2588=java.lang.InstantiationException, var1681=$r4, var1031=java.lang.RuntimeException, var1951=$r5, var2433=$r6, var3134=$r7, var2779=$r8, var818=$r9, var2974=$r10, var2341=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable$ConstructorInvokable=var3105, r0=var247, java.lang.Object=var970, r11=var942, r1=var345, java.lang.reflect.Constructor=var3000, $r2=var2121, java.lang.InstantiationException=var2588, $r4=var1681, java.lang.RuntimeException=var1031, $r5=var1951, $r6=var2433, $r7=var3134, $r8=var2779, $r9=var818, $r10=var2974, java.lang.Throwable=var2341}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable$ConstructorInvokable;	r11 := @parameter0: java.lang.Object;	r1 := @parameter1: java.lang.Object[];	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable$ConstructorInvokable: java.lang.reflect.Constructor constructor>;	$r4 := @caughtexception;	$r5 = new java.lang.RuntimeException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable$ConstructorInvokable: java.lang.reflect.Constructor constructor>;	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" failed.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4);	throw $r5
;block_num 2