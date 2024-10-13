(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1464 0)
(declare-sort var3692 0)
(declare-sort var1472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1464_getMethodType/-466914787 (var1464) var3692)
(declare-fun parameterCount/-1075445345 (var3692) Int)
(declare-fun var1472-init () var1472)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1464_getName/1879150825 (var1464) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1100755667 (var1472 String) void)
(declare-const null-var1464 var1464)
(declare-const null-Int Int)
(declare-const var1858 var1464) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var1858 null-var1464)))
(declare-const var3632 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3632 null-Int)))
(define-const var2888 var3692 (var1464_getMethodType/-466914787 var1858)) ; Statement: $r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(assert true)
(define-const var1792 Int (parameterCount/-1075445345 var2888)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.invoke.MethodType: int parameterCount()>() 
 ; Statement: if $i1 == i0 goto return 
(assert (not (= var1792 var3632))) ; Negate: Cond: $i1 == i0  
(define-const var123 var1472 var1472-init) ; Statement: $r2 = new java.lang.BootstrapMethodError 
(define-const var250 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var250)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var250!1 String)
(assert (= var250!1 ""))
(define-const var2821 String (var1464_getName/1879150825 var1858)) ; Statement: $r4 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var3627 String (append/672562846 var250!1 var2821)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var250!2 String)
(assert (= var250!2 (str.++ var250!1 var2821)))
(assert true)
(define-const var3394 String (append/672562846 var3627 " must have exactly ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must have exactly ") 
(declare-const var3627!1 String)
(assert (= var3627!1 (str.++ var3627 " must have exactly ")))
(assert true)
(define-const var440 String (append/-1001720160 var3394 var3632)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3394!1 String)
(assert (str.prefixof var3394 var3394!1))
(assert true)
(define-const var2856 String (append/672562846 var440 " parameters.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" parameters.") 
(declare-const var440!1 String)
(assert (= var440!1 (str.++ var440 " parameters.")))
(assert true)
(define-const var3196 String (toString/-2075883882 var2856)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1100755667 var123 var3196)) ; Statement: specialinvoke $r2.<java.lang.BootstrapMethodError: void <init>(java.lang.String)>($r9) 

(declare-const var123!1 var1472)
(declare-const var3196!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1464_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), parameterCount/-1075445345=([java.lang.invoke.MethodType], int), var1472-init=([], java.lang.BootstrapMethodError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1464_getName/1879150825=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1100755667=([java.lang.BootstrapMethodError, java.lang.String], void)}
; {var1464=jdk.internal.dynalink.CallSiteDescriptor, var1858=r0, var3632=i0, var3692=java.lang.invoke.MethodType, var2888=$r1, var1792=$i1, var1472=java.lang.BootstrapMethodError, var123=$r2, var250=$r3, var2821=$r4, var3627=$r5, var3394=$r6, var440=$r7, var2856=$r8, var3196=$r9}
; {jdk.internal.dynalink.CallSiteDescriptor=var1464, r0=var1858, i0=var3632, java.lang.invoke.MethodType=var3692, $r1=var2888, $i1=var1792, java.lang.BootstrapMethodError=var1472, $r2=var123, $r3=var250, $r4=var2821, $r5=var3627, $r6=var3394, $r7=var440, $r8=var2856, $r9=var3196}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	i0 := @parameter1: int;	$r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	$i1 = virtualinvoke $r1.<java.lang.invoke.MethodType: int parameterCount()>();	if $i1 == i0 goto return;	$r2 = new java.lang.BootstrapMethodError;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getName()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must have exactly ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" parameters.");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.BootstrapMethodError: void <init>(java.lang.String)>($r9);	throw $r2
;block_num 2