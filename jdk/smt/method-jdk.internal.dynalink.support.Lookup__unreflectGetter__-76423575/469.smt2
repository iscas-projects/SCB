(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var280 0)
(declare-sort var1478 0)
(declare-sort var432 0)
(declare-sort var855 0)
(declare-sort var3952 0)
(declare-sort var1300 0)
(declare-sort var511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lookup/-920752463 (var280) var432)
(declare-fun var3952-init () var3952)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1300) String)
(declare-fun cast-from-var1478-to-var1300 (var1478) var1300)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2016723416 (var3952 String) void)
(declare-fun initCause/2003336360 (var511 var511) var511)
(declare-fun cast-from-var3952-to-var511 (var3952) var511)
(declare-fun cast-from-var855-to-var511 (var855) var511)
(declare-const null-var280 var280)
(declare-const null-var1478 var1478)
(declare-const null-var855 var855)
(declare-const var2268 var280) ; Statement: r0 := @this: jdk.internal.dynalink.support.Lookup 
(assert (not (= var2268 null-var280)))
(declare-const var2688 var1478) ; Statement: r1 := @parameter0: java.lang.reflect.Field 
(assert (not (= var2688 null-var1478)))
(define-const var3156 var432 (lookup/-920752463 var2268)) ; Statement: $r2 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2492 var855) ; Statement: $r4 := @caughtexception 
(assert (not (= var2492 null-var855)))
(define-const var1149 var3952 var3952-init) ; Statement: $r5 = new java.lang.IllegalAccessError 
(define-const var471 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var471)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var471!1 String)
(assert (= var471!1 ""))
(assert true)
(define-const var2401 String (append/672562846 var471!1 "Failed to unreflect getter for field ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to unreflect getter for field ") 
(declare-const var471!2 String)
(assert (= var471!2 (str.++ var471!1 "Failed to unreflect getter for field ")))
(assert true)
(define-const var977 String (append/-1031950772 var2401 (cast-from-var1478-to-var1300 var2688))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2401!1 String)
(assert (str.prefixof var2401 var2401!1))
(assert true)
(define-const var351 String (toString/-2075883882 var977)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2016723416 var1149 var351)) ; Statement: specialinvoke $r5.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r9) 

(declare-const var1149!1 var3952)
(declare-const var351!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var3952-to-var511 var1149!1) (cast-from-var855-to-var511 var2492))) ; Statement: virtualinvoke $r5.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r4) 

(declare-const var1149!2 var3952)
(declare-const var2492!1 var855)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {lookup/-920752463=([jdk.internal.dynalink.support.Lookup], java.lang.invoke.MethodHandles$Lookup), var3952-init=([], java.lang.IllegalAccessError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1478-to-var1300=([java.lang.reflect.Field], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2016723416=([java.lang.IllegalAccessError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var3952-to-var511=([java.lang.IllegalAccessError], java.lang.Throwable), cast-from-var855-to-var511=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var280=jdk.internal.dynalink.support.Lookup, var2268=r0, var1478=java.lang.reflect.Field, var2688=r1, var432=java.lang.invoke.MethodHandles$Lookup, var3156=$r2, var855=java.lang.IllegalAccessException, var2492=$r4, var3952=java.lang.IllegalAccessError, var1149=$r5, var471=$r6, var2401=$r7, var1300=java.lang.Object, var977=$r8, var351=$r9, var511=java.lang.Throwable}
; {jdk.internal.dynalink.support.Lookup=var280, r0=var2268, java.lang.reflect.Field=var1478, r1=var2688, java.lang.invoke.MethodHandles$Lookup=var432, $r2=var3156, java.lang.IllegalAccessException=var855, $r4=var2492, java.lang.IllegalAccessError=var3952, $r5=var1149, $r6=var471, $r7=var2401, java.lang.Object=var1300, $r8=var977, $r9=var351, java.lang.Throwable=var511}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.support.Lookup;	r1 := @parameter0: java.lang.reflect.Field;	$r2 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup>;	$r4 := @caughtexception;	$r5 = new java.lang.IllegalAccessError;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to unreflect getter for field ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r9);	virtualinvoke $r5.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r4);	throw $r5
;block_num 2