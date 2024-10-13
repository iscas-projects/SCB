(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1605 0)
(declare-sort var2395 0)
(declare-sort var938 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1605_getMethodType/-466914787 (var1605) var2395)
(declare-fun parameterCount/-1075445345 (var2395) Int)
(declare-fun var938-init () var938)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1605_getName/1879150825 (var1605) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1100755667 (var938 String) void)
(declare-const null-var1605 var1605)
(declare-const null-Int Int)
(declare-const var2888 var1605) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var2888 null-var1605)))
(declare-const var2235 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2235 null-Int)))
(define-const var2425 var2395 (var1605_getMethodType/-466914787 var2888)) ; Statement: $r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(assert true)
(define-const var2987 Int (parameterCount/-1075445345 var2425)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.invoke.MethodType: int parameterCount()>() 
 ; Statement: if $i1 == i0 goto return 
(assert (not (= var2987 var2235))) ; Negate: Cond: $i1 == i0  
(define-const var1051 var938 var938-init) ; Statement: $r2 = new java.lang.BootstrapMethodError 
(define-const var3941 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3941)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3941!1 String)
(assert (= var3941!1 ""))
(define-const var2 String (var1605_getName/1879150825 var2888)) ; Statement: $r4 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var2518 String (append/672562846 var3941!1 var2)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3941!2 String)
(assert (= var3941!2 (str.++ var3941!1 var2)))
(assert true)
(define-const var584 String (append/672562846 var2518 " must have exactly ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must have exactly ") 
(declare-const var2518!1 String)
(assert (= var2518!1 (str.++ var2518 " must have exactly ")))
(assert true)
(define-const var123 String (append/-1001720160 var584 var2235)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var584!1 String)
(assert (str.prefixof var584 var584!1))
(assert true)
(define-const var2881 String (append/672562846 var123 " parameters.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" parameters.") 
(declare-const var123!1 String)
(assert (= var123!1 (str.++ var123 " parameters.")))
(assert true)
(define-const var3376 String (toString/-2075883882 var2881)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1100755667 var1051 var3376)) ; Statement: specialinvoke $r2.<java.lang.BootstrapMethodError: void <init>(java.lang.String)>($r9) 

(declare-const var1051!1 var938)
(declare-const var3376!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1605_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), parameterCount/-1075445345=([java.lang.invoke.MethodType], int), var938-init=([], java.lang.BootstrapMethodError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1605_getName/1879150825=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1100755667=([java.lang.BootstrapMethodError, java.lang.String], void)}
; {var1605=jdk.internal.dynalink.CallSiteDescriptor, var2888=r0, var2235=i0, var2395=java.lang.invoke.MethodType, var2425=$r1, var2987=$i1, var938=java.lang.BootstrapMethodError, var1051=$r2, var3941=$r3, var2=$r4, var2518=$r5, var584=$r6, var123=$r7, var2881=$r8, var3376=$r9}
; {jdk.internal.dynalink.CallSiteDescriptor=var1605, r0=var2888, i0=var2235, java.lang.invoke.MethodType=var2395, $r1=var2425, $i1=var2987, java.lang.BootstrapMethodError=var938, $r2=var1051, $r3=var3941, $r4=var2, $r5=var2518, $r6=var584, $r7=var123, $r8=var2881, $r9=var3376}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	i0 := @parameter1: int;	$r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	$i1 = virtualinvoke $r1.<java.lang.invoke.MethodType: int parameterCount()>();	if $i1 == i0 goto return;	$r2 = new java.lang.BootstrapMethodError;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getName()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must have exactly ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" parameters.");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.BootstrapMethodError: void <init>(java.lang.String)>($r9);	throw $r2
;block_num 2