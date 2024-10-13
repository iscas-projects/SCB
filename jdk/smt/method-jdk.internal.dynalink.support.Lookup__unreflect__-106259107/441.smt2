(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2692 0)
(declare-sort var1357 0)
(declare-sort var3404 0)
(declare-sort var3273 0)
(declare-sort var3661 0)
(declare-sort var899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3273-init () var3273)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3661) String)
(declare-fun cast-from-var1357-to-var3661 (var1357) var3661)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2016723416 (var3273 String) void)
(declare-fun initCause/2003336360 (var899 var899) var899)
(declare-fun cast-from-var3273-to-var899 (var3273) var899)
(declare-fun cast-from-var3404-to-var899 (var3404) var899)
(declare-const null-var2692 var2692)
(declare-const null-var1357 var1357)
(declare-const null-var3404 var3404)
(declare-const var3641 var2692) ; Statement: r0 := @parameter0: java.lang.invoke.MethodHandles$Lookup 
(assert (not (= var3641 null-var2692)))
(declare-const var3188 var1357) ; Statement: r1 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3188 null-var1357)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1353 var3404) ; Statement: $r3 := @caughtexception 
(assert (not (= var1353 null-var3404)))
(define-const var1162 var3273 var3273-init) ; Statement: $r4 = new java.lang.IllegalAccessError 
(define-const var1492 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1492)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1492!1 String)
(assert (= var1492!1 ""))
(assert true)
(define-const var3765 String (append/672562846 var1492!1 "Failed to unreflect method ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to unreflect method ") 
(declare-const var1492!2 String)
(assert (= var1492!2 (str.++ var1492!1 "Failed to unreflect method ")))
(assert true)
(define-const var2665 String (append/-1031950772 var3765 (cast-from-var1357-to-var3661 var3188))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3765!1 String)
(assert (str.prefixof var3765 var3765!1))
(assert true)
(define-const var860 String (toString/-2075883882 var2665)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2016723416 var1162 var860)) ; Statement: specialinvoke $r4.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r8) 

(declare-const var1162!1 var3273)
(declare-const var860!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var3273-to-var899 var1162!1) (cast-from-var3404-to-var899 var1353))) ; Statement: virtualinvoke $r4.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r3) 

(declare-const var1162!2 var3273)
(declare-const var1353!1 var3404)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3273-init=([], java.lang.IllegalAccessError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1357-to-var3661=([java.lang.reflect.Method], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2016723416=([java.lang.IllegalAccessError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var3273-to-var899=([java.lang.IllegalAccessError], java.lang.Throwable), cast-from-var3404-to-var899=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var2692=java.lang.invoke.MethodHandles$Lookup, var3641=r0, var1357=java.lang.reflect.Method, var3188=r1, var3404=java.lang.IllegalAccessException, var1353=$r3, var3273=java.lang.IllegalAccessError, var1162=$r4, var1492=$r5, var3765=$r6, var3661=java.lang.Object, var2665=$r7, var860=$r8, var899=java.lang.Throwable}
; {java.lang.invoke.MethodHandles$Lookup=var2692, r0=var3641, java.lang.reflect.Method=var1357, r1=var3188, java.lang.IllegalAccessException=var3404, $r3=var1353, java.lang.IllegalAccessError=var3273, $r4=var1162, $r5=var1492, $r6=var3765, java.lang.Object=var3661, $r7=var2665, $r8=var860, java.lang.Throwable=var899}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.MethodHandles$Lookup;	r1 := @parameter1: java.lang.reflect.Method;	$r3 := @caughtexception;	$r4 = new java.lang.IllegalAccessError;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to unreflect method ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r8);	virtualinvoke $r4.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r3);	throw $r4
;block_num 2