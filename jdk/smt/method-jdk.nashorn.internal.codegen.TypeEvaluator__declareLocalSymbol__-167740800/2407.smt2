(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3462 0)
(declare-sort var439 0)
(declare-sort var2396 0)
(declare-sort var1778 0)
(declare-sort var1692 0)
(declare-sort var4 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun compiler/-656546847 (var3462) var2396)
(declare-fun useOptimisticTypes/-849393437 (var2396) Bool)
(declare-fun var1778-init () var1778)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-388390247 (String Bool) String)
(declare-fun isOnDemandCompilation/-2147371229 (var2396) Bool)
(declare-fun runtimeScope/-656546847 (var3462) var1692)
(declare-fun append/-1031950772 (String var4) String)
(declare-fun cast-from-var1692-to-var4 (var1692) var4)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1778 var4) void)
(declare-fun cast-from-String-to-var4 (String) var4)
(declare-const null-var3462 var3462)
(declare-const null-String String)
(declare-const var3462-$assertionsDisabled Bool)
(declare-const var63 var3462) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.TypeEvaluator 
(assert (not (= var63 null-var3462)))
(declare-const var585 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var585 null-String)))
(define-const var3042 Bool var3462-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.codegen.TypeEvaluator: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r2 = r0.<jdk.nashorn.internal.codegen.TypeEvaluator: jdk.nashorn.internal.runtime.ScriptObject runtimeScope> 
(assert (not (not (= (ite var3042 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3108 var2396 (compiler/-656546847 var63)) ; Statement: $r6 = r0.<jdk.nashorn.internal.codegen.TypeEvaluator: jdk.nashorn.internal.codegen.Compiler compiler> 
(assert true)
(define-const var3891 Bool (useOptimisticTypes/-849393437 var3108)) ; Statement: $z1 = virtualinvoke $r6.<jdk.nashorn.internal.codegen.Compiler: boolean useOptimisticTypes()>() 
 ; Statement: if $z1 == 0 goto $r9 = new java.lang.AssertionError 
(assert (= (ite var3891 1 0) 0)) ; Cond: $z1 == 0 
(define-const var591 var1778 var1778-init) ; Statement: $r9 = new java.lang.AssertionError 
(define-const var1144 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1144)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1144!1 String)
(assert (= var1144!1 ""))
(assert true)
(define-const var1068 String (append/672562846 var1144!1 "useOptimistic=")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("useOptimistic=") 
(declare-const var1144!2 String)
(assert (= var1144!2 (str.++ var1144!1 "useOptimistic=")))
(define-const var2412 var2396 (compiler/-656546847 var63)) ; Statement: $r12 = r0.<jdk.nashorn.internal.codegen.TypeEvaluator: jdk.nashorn.internal.codegen.Compiler compiler> 
(assert true)
(define-const var1972 Bool (useOptimisticTypes/-849393437 var2412)) ; Statement: $z3 = virtualinvoke $r12.<jdk.nashorn.internal.codegen.Compiler: boolean useOptimisticTypes()>() 
(assert true)
(define-const var533 String (append/-388390247 var1068 var1972)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z3) 
(declare-const var1068!1 String)
(assert (str.prefixof var1068 var1068!1))
(assert true)
(define-const var575 String (append/672562846 var533 " isOnDemand=")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" isOnDemand=") 
(declare-const var533!1 String)
(assert (= var533!1 (str.++ var533 " isOnDemand=")))
(define-const var167 var2396 (compiler/-656546847 var63)) ; Statement: $r15 = r0.<jdk.nashorn.internal.codegen.TypeEvaluator: jdk.nashorn.internal.codegen.Compiler compiler> 
(assert true)
(define-const var2706 Bool (isOnDemandCompilation/-2147371229 var167)) ; Statement: $z4 = virtualinvoke $r15.<jdk.nashorn.internal.codegen.Compiler: boolean isOnDemandCompilation()>() 
(assert true)
(define-const var1952 String (append/-388390247 var575 var2706)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z4) 
(declare-const var575!1 String)
(assert (str.prefixof var575 var575!1))
(assert true)
(define-const var1434 String (append/672562846 var1952 " scope=")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" scope=") 
(declare-const var1952!1 String)
(assert (= var1952!1 (str.++ var1952 " scope=")))
(define-const var241 var1692 (runtimeScope/-656546847 var63)) ; Statement: $r18 = r0.<jdk.nashorn.internal.codegen.TypeEvaluator: jdk.nashorn.internal.runtime.ScriptObject runtimeScope> 
(assert true)
(define-const var1676 String (append/-1031950772 var1434 (cast-from-var1692-to-var4 var241))) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18) 
(declare-const var1434!1 String)
(assert (str.prefixof var1434 var1434!1))
(assert true)
(define-const var2256 String (toString/-2075883882 var1676)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var591 (cast-from-String-to-var4 var2256))) ; Statement: specialinvoke $r9.<java.lang.AssertionError: void <init>(java.lang.Object)>($r20) 

(declare-const var591!1 var1778)
(declare-const var2256!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {compiler/-656546847=([jdk.nashorn.internal.codegen.TypeEvaluator], jdk.nashorn.internal.codegen.Compiler), useOptimisticTypes/-849393437=([jdk.nashorn.internal.codegen.Compiler], boolean), var1778-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), isOnDemandCompilation/-2147371229=([jdk.nashorn.internal.codegen.Compiler], boolean), runtimeScope/-656546847=([jdk.nashorn.internal.codegen.TypeEvaluator], jdk.nashorn.internal.runtime.ScriptObject), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1692-to-var4=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var4=([java.lang.String], java.lang.Object)}
; {var3462=jdk.nashorn.internal.codegen.TypeEvaluator, var63=r0, var585=r1, var439=null_type, var3042=$z0, var2396=jdk.nashorn.internal.codegen.Compiler, var3108=$r6, var3891=$z1, var1778=java.lang.AssertionError, var591=$r9, var1144=$r10, var1068=$r11, var2412=$r12, var1972=$z3, var533=$r13, var575=$r14, var167=$r15, var2706=$z4, var1952=$r16, var1434=$r17, var1692=jdk.nashorn.internal.runtime.ScriptObject, var241=$r18, var4=java.lang.Object, var1676=$r19, var2256=$r20}
; {jdk.nashorn.internal.codegen.TypeEvaluator=var3462, r0=var63, r1=var585, null_type=var439, $z0=var3042, jdk.nashorn.internal.codegen.Compiler=var2396, $r6=var3108, $z1=var3891, java.lang.AssertionError=var1778, $r9=var591, $r10=var1144, $r11=var1068, $r12=var2412, $z3=var1972, $r13=var533, $r14=var575, $r15=var167, $z4=var2706, $r16=var1952, $r17=var1434, jdk.nashorn.internal.runtime.ScriptObject=var1692, $r18=var241, java.lang.Object=var4, $r19=var1676, $r20=var2256}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.TypeEvaluator;	r1 := @parameter0: java.lang.String;	$z0 = <jdk.nashorn.internal.codegen.TypeEvaluator: boolean $assertionsDisabled>;	if $z0 != 0 goto $r2 = r0.<jdk.nashorn.internal.codegen.TypeEvaluator: jdk.nashorn.internal.runtime.ScriptObject runtimeScope>;	$r6 = r0.<jdk.nashorn.internal.codegen.TypeEvaluator: jdk.nashorn.internal.codegen.Compiler compiler>;	$z1 = virtualinvoke $r6.<jdk.nashorn.internal.codegen.Compiler: boolean useOptimisticTypes()>();	if $z1 == 0 goto $r9 = new java.lang.AssertionError;	$r9 = new java.lang.AssertionError;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("useOptimistic=");	$r12 = r0.<jdk.nashorn.internal.codegen.TypeEvaluator: jdk.nashorn.internal.codegen.Compiler compiler>;	$z3 = virtualinvoke $r12.<jdk.nashorn.internal.codegen.Compiler: boolean useOptimisticTypes()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z3);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" isOnDemand=");	$r15 = r0.<jdk.nashorn.internal.codegen.TypeEvaluator: jdk.nashorn.internal.codegen.Compiler compiler>;	$z4 = virtualinvoke $r15.<jdk.nashorn.internal.codegen.Compiler: boolean isOnDemandCompilation()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z4);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" scope=");	$r18 = r0.<jdk.nashorn.internal.codegen.TypeEvaluator: jdk.nashorn.internal.runtime.ScriptObject runtimeScope>;	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.AssertionError: void <init>(java.lang.Object)>($r20);	throw $r9
;block_num 3