(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var813 0)
(declare-sort var841 0)
(declare-sort var573 0)
(declare-sort var2613 0)
(declare-sort var1442 0)
(declare-sort var432 0)
(declare-sort var1578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lookup/-920752463 (var813) var573)
(declare-fun var1442-init () var1442)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var432) String)
(declare-fun cast-from-var841-to-var432 (var841) var432)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2016723416 (var1442 String) void)
(declare-fun initCause/2003336360 (var1578 var1578) var1578)
(declare-fun cast-from-var1442-to-var1578 (var1442) var1578)
(declare-fun cast-from-var2613-to-var1578 (var2613) var1578)
(declare-const null-var813 var813)
(declare-const null-var841 var841)
(declare-const null-var2613 var2613)
(declare-const var1071 var813) ; Statement: r0 := @this: jdk.internal.dynalink.support.Lookup 
(assert (not (= var1071 null-var813)))
(declare-const var3361 var841) ; Statement: r1 := @parameter0: java.lang.reflect.Field 
(assert (not (= var3361 null-var841)))
(define-const var2350 var573 (lookup/-920752463 var1071)) ; Statement: $r2 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1035 var2613) ; Statement: $r4 := @caughtexception 
(assert (not (= var1035 null-var2613)))
(define-const var3621 var1442 var1442-init) ; Statement: $r5 = new java.lang.IllegalAccessError 
(define-const var714 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var714)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var714!1 String)
(assert (= var714!1 ""))
(assert true)
(define-const var3281 String (append/672562846 var714!1 "Failed to unreflect setter for field ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to unreflect setter for field ") 
(declare-const var714!2 String)
(assert (= var714!2 (str.++ var714!1 "Failed to unreflect setter for field ")))
(assert true)
(define-const var3197 String (append/-1031950772 var3281 (cast-from-var841-to-var432 var3361))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3281!1 String)
(assert (str.prefixof var3281 var3281!1))
(assert true)
(define-const var1056 String (toString/-2075883882 var3197)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2016723416 var3621 var1056)) ; Statement: specialinvoke $r5.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r9) 

(declare-const var3621!1 var1442)
(declare-const var1056!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var1442-to-var1578 var3621!1) (cast-from-var2613-to-var1578 var1035))) ; Statement: virtualinvoke $r5.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r4) 

(declare-const var3621!2 var1442)
(declare-const var1035!1 var2613)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {lookup/-920752463=([jdk.internal.dynalink.support.Lookup], java.lang.invoke.MethodHandles$Lookup), var1442-init=([], java.lang.IllegalAccessError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var841-to-var432=([java.lang.reflect.Field], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2016723416=([java.lang.IllegalAccessError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var1442-to-var1578=([java.lang.IllegalAccessError], java.lang.Throwable), cast-from-var2613-to-var1578=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var813=jdk.internal.dynalink.support.Lookup, var1071=r0, var841=java.lang.reflect.Field, var3361=r1, var573=java.lang.invoke.MethodHandles$Lookup, var2350=$r2, var2613=java.lang.IllegalAccessException, var1035=$r4, var1442=java.lang.IllegalAccessError, var3621=$r5, var714=$r6, var3281=$r7, var432=java.lang.Object, var3197=$r8, var1056=$r9, var1578=java.lang.Throwable}
; {jdk.internal.dynalink.support.Lookup=var813, r0=var1071, java.lang.reflect.Field=var841, r1=var3361, java.lang.invoke.MethodHandles$Lookup=var573, $r2=var2350, java.lang.IllegalAccessException=var2613, $r4=var1035, java.lang.IllegalAccessError=var1442, $r5=var3621, $r6=var714, $r7=var3281, java.lang.Object=var432, $r8=var3197, $r9=var1056, java.lang.Throwable=var1578}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.support.Lookup;	r1 := @parameter0: java.lang.reflect.Field;	$r2 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup>;	$r4 := @caughtexception;	$r5 = new java.lang.IllegalAccessError;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to unreflect setter for field ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r9);	virtualinvoke $r5.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r4);	throw $r5
;block_num 2