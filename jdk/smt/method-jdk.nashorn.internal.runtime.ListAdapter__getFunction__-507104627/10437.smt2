(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3539 0)
(declare-sort var200 0)
(declare-sort var3042 0)
(declare-sort var927 0)
(declare-sort var1565 0)
(declare-sort var717 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun obj/-984955982 (var3539) var3042)
(declare-fun var3042_getMember/1860153090 (var3042 String) var927)
(declare-fun var1565_isCallable/-814261722 (var927) Bool)
(declare-fun var717-init () var717)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var717 String) void)
(declare-const null-var3539 var3539)
(declare-const null-String String)
(declare-const var3819 var3539) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.ListAdapter 
(assert (not (= var3819 null-var3539)))
(declare-const var2155 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2155 null-String)))
(define-const var2121 var3042 (obj/-984955982 var3819)) ; Statement: $r2 = r0.<jdk.nashorn.internal.runtime.ListAdapter: jdk.nashorn.api.scripting.JSObject obj> 
(define-const var1939 var927 (var3042_getMember/1860153090 var2121 var2155)) ; Statement: r3 = interfaceinvoke $r2.<jdk.nashorn.api.scripting.JSObject: java.lang.Object getMember(java.lang.String)>(r1) 
(define-const var3099 Bool (var1565_isCallable/-814261722 var1939)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: boolean isCallable(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto return r3 
(assert (not (not (= (ite var3099 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3150 var717 var717-init) ; Statement: $r4 = new java.lang.UnsupportedOperationException 
(define-const var2509 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2509)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2509!1 String)
(assert (= var2509!1 ""))
(assert true)
(define-const var1431 String (append/672562846 var2509!1 "The script object doesn\u0027t have a function named ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The script object doesn\'t have a function named ") 
(declare-const var2509!2 String)
(assert (= var2509!2 (str.++ var2509!1 "The script object doesn\u0027t have a function named ")))
(assert true)
(define-const var663 String (append/672562846 var1431 var2155)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1431!1 String)
(assert (= var1431!1 (str.++ var1431 var2155)))
(assert true)
(define-const var2073 String (toString/-2075883882 var663)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var3150 var2073)) ; Statement: specialinvoke $r4.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r8) 

(declare-const var3150!1 var717)
(declare-const var2073!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {obj/-984955982=([jdk.nashorn.internal.runtime.ListAdapter], jdk.nashorn.api.scripting.JSObject), var3042_getMember/1860153090=([jdk.nashorn.api.scripting.JSObject, java.lang.String], java.lang.Object), var1565_isCallable/-814261722=([java.lang.Object], boolean), var717-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var3539=jdk.nashorn.internal.runtime.ListAdapter, var3819=r0, var2155=r1, var200=null_type, var3042=jdk.nashorn.api.scripting.JSObject, var2121=$r2, var927=java.lang.Object, var1939=r3, var1565=jdk.nashorn.internal.runtime.linker.Bootstrap, var3099=$z0, var717=java.lang.UnsupportedOperationException, var3150=$r4, var2509=$r5, var1431=$r6, var663=$r7, var2073=$r8}
; {jdk.nashorn.internal.runtime.ListAdapter=var3539, r0=var3819, r1=var2155, null_type=var200, jdk.nashorn.api.scripting.JSObject=var3042, $r2=var2121, java.lang.Object=var927, r3=var1939, jdk.nashorn.internal.runtime.linker.Bootstrap=var1565, $z0=var3099, java.lang.UnsupportedOperationException=var717, $r4=var3150, $r5=var2509, $r6=var1431, $r7=var663, $r8=var2073}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.ListAdapter;	r1 := @parameter0: java.lang.String;	$r2 = r0.<jdk.nashorn.internal.runtime.ListAdapter: jdk.nashorn.api.scripting.JSObject obj>;	r3 = interfaceinvoke $r2.<jdk.nashorn.api.scripting.JSObject: java.lang.Object getMember(java.lang.String)>(r1);	$z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: boolean isCallable(java.lang.Object)>(r3);	if $z0 != 0 goto return r3;	$r4 = new java.lang.UnsupportedOperationException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The script object doesn\'t have a function named ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2