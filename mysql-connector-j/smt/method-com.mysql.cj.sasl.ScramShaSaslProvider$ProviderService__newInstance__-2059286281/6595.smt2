(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1985 0)
(declare-sort var1570 0)
(declare-sort var676 0)
(declare-sort var3406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/936453378 (var676) String)
(declare-fun cast-from-var1985-to-var676 (var1985) var676)
(declare-fun var3406-init () var3406)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2113688873 (var3406 String) void)
(declare-const null-var1985 var1985)
(declare-const null-var1570 var1570)
(declare-const var126 var1985) ; Statement: r0 := @this: com.mysql.cj.sasl.ScramShaSaslProvider$ProviderService 
(assert (not (= var126 null-var1985)))
(declare-const var1550 var1570) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1550 null-var1570)))
(assert true)
(define-const var2115 String (getType/936453378 (cast-from-var1985-to-var676 var126))) ; Statement: r1 = virtualinvoke r0.<com.mysql.cj.sasl.ScramShaSaslProvider$ProviderService: java.lang.String getType()>() 
 ; Statement: if r2 == null goto r3 = virtualinvoke r0.<com.mysql.cj.sasl.ScramShaSaslProvider$ProviderService: java.lang.String getAlgorithm()>() 
(assert (not (= var1550 null-var1570))) ; Negate: Cond: r2 == null  
(define-const var2540 var3406 var3406-init) ; Statement: $r12 = new java.security.InvalidParameterException 
(define-const var1987 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1987)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1987!1 String)
(assert (= var1987!1 ""))
(assert true)
(define-const var3465 String (append/672562846 var1987!1 "constructorParameter not used with ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("constructorParameter not used with ") 
(declare-const var1987!2 String)
(assert (= var1987!2 (str.++ var1987!1 "constructorParameter not used with ")))
(assert true)
(define-const var3660 String (append/672562846 var3465 var2115)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3465!1 String)
(assert (= var3465!1 (str.++ var3465 var2115)))
(assert true)
(define-const var572 String (append/672562846 var3660 " engines")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" engines") 
(declare-const var3660!1 String)
(assert (= var3660!1 (str.++ var3660 " engines")))
(assert true)
(define-const var3314 String (toString/-2075883882 var572)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2113688873 var2540 var3314)) ; Statement: specialinvoke $r12.<java.security.InvalidParameterException: void <init>(java.lang.String)>($r17) 

(declare-const var2540!1 var3406)
(declare-const var3314!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/936453378=([java.security.Provider$Service], java.lang.String), cast-from-var1985-to-var676=([com.mysql.cj.sasl.ScramShaSaslProvider$ProviderService], java.security.Provider$Service), var3406-init=([], java.security.InvalidParameterException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2113688873=([java.security.InvalidParameterException, java.lang.String], void)}
; {var1985=com.mysql.cj.sasl.ScramShaSaslProvider$ProviderService, var126=r0, var1570=java.lang.Object, var1550=r2, var676=java.security.Provider$Service, var2115=r1, var3406=java.security.InvalidParameterException, var2540=$r12, var1987=$r13, var3465=$r14, var3660=$r15, var572=$r16, var3314=$r17}
; {com.mysql.cj.sasl.ScramShaSaslProvider$ProviderService=var1985, r0=var126, java.lang.Object=var1570, r2=var1550, java.security.Provider$Service=var676, r1=var2115, java.security.InvalidParameterException=var3406, $r12=var2540, $r13=var1987, $r14=var3465, $r15=var3660, $r16=var572, $r17=var3314}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.sasl.ScramShaSaslProvider$ProviderService;	r2 := @parameter0: java.lang.Object;	r1 = virtualinvoke r0.<com.mysql.cj.sasl.ScramShaSaslProvider$ProviderService: java.lang.String getType()>();	if r2 == null goto r3 = virtualinvoke r0.<com.mysql.cj.sasl.ScramShaSaslProvider$ProviderService: java.lang.String getAlgorithm()>();	$r12 = new java.security.InvalidParameterException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("constructorParameter not used with ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" engines");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.security.InvalidParameterException: void <init>(java.lang.String)>($r17);	throw $r12
;block_num 2