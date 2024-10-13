(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun methodName/-1312416071 (var3499) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun staticSignature/-1312416071 (var3499) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3499 var3499)
(declare-const var2280 var3499) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.SharedScopeCall 
(assert (not (= var2280 null-var3499)))
(define-const var28 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var28)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var28!1 String)
(assert (= var28!1 ""))
(define-const var3685 String (methodName/-1312416071 var2280)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.SharedScopeCall: java.lang.String methodName> 
(assert true)
(define-const var3115 String (append/672562846 var28!1 var3685)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var28!2 String)
(assert (= var28!2 (str.++ var28!1 var3685)))
(assert true)
(define-const var84 String (append/672562846 var3115 " ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3115!1 String)
(assert (= var3115!1 (str.++ var3115 " ")))
(define-const var1740 String (staticSignature/-1312416071 var2280)) ; Statement: $r4 = r1.<jdk.nashorn.internal.codegen.SharedScopeCall: java.lang.String staticSignature> 
(assert true)
(define-const var510 String (append/672562846 var84 var1740)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var84!1 String)
(assert (= var84!1 (str.++ var84 var1740)))
(assert true)
(define-const var1999 String (toString/-2075883882 var510)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), methodName/-1312416071=([jdk.nashorn.internal.codegen.SharedScopeCall], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), staticSignature/-1312416071=([jdk.nashorn.internal.codegen.SharedScopeCall], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3499=jdk.nashorn.internal.codegen.SharedScopeCall, var2280=r1, var28=$r0, var3685=$r2, var3115=$r3, var84=$r5, var1740=$r4, var510=$r6, var1999=$r7}
; {jdk.nashorn.internal.codegen.SharedScopeCall=var3499, r1=var2280, $r0=var28, $r2=var3685, $r3=var3115, $r5=var84, $r4=var1740, $r6=var510, $r7=var1999}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.SharedScopeCall;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.nashorn.internal.codegen.SharedScopeCall: java.lang.String methodName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r4 = r1.<jdk.nashorn.internal.codegen.SharedScopeCall: java.lang.String staticSignature>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1