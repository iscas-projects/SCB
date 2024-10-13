(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3655 0)
(declare-sort var3614 0)
(declare-sort var2499 0)
(declare-sort var2612 0)
(declare-sort var2711 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun aliases/1657498889 (var3655) (Array Int String))
(declare-fun var3614_equals/-1916670036 ((Array Int var2499) (Array Int var2499)) Bool)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2499__ ((Array Int String)) (Array Int var2499))
(declare-fun var2612-init () var2612)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3614_asList/1779083644 ((Array Int var2499)) var2711)
(declare-fun append/-1031950772 (String var2499) String)
(declare-fun cast-from-var2711-to-var2499 (var2711) var2499)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2612 String) void)
(declare-const null-var3655 var3655)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3807 var3655) ; Statement: r1 := @this: org.hibernate.transform.AliasToBeanResultTransformer 
(assert (not (= var3807 null-var3655)))
(declare-const var476 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var476 null-__Array__Int__String__)))
(define-const var805 (Array Int String) (aliases/1657498889 var3807)) ; Statement: $r2 = r1.<org.hibernate.transform.AliasToBeanResultTransformer: java.lang.String[] aliases> 
(define-const var666 Bool (var3614_equals/-1916670036 (cast-from-__Array__Int__String__-to-__Array__Int__var2499__ var476) (cast-from-__Array__Int__String__-to-__Array__Int__var2499__ var805))) ; Statement: $z0 = staticinvoke <java.util.Arrays: boolean equals(java.lang.Object[],java.lang.Object[])>(r0, $r2) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var666 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3360 var2612 var2612-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var2627 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2627)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2627!1 String)
(assert (= var2627!1 ""))
(assert true)
(define-const var3462 String (append/672562846 var2627!1 "aliases are different from what is cached; aliases=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("aliases are different from what is cached; aliases=") 
(declare-const var2627!2 String)
(assert (= var2627!2 (str.++ var2627!1 "aliases are different from what is cached; aliases=")))
(define-const var1262 var2711 (var3614_asList/1779083644 (cast-from-__Array__Int__String__-to-__Array__Int__var2499__ var476))) ; Statement: $r5 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r0) 
(assert true)
(define-const var2328 String (append/-1031950772 var3462 (cast-from-var2711-to-var2499 var1262))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3462!1 String)
(assert (str.prefixof var3462 var3462!1))
(assert true)
(define-const var3721 String (append/672562846 var2328 " cached=")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" cached=") 
(declare-const var2328!1 String)
(assert (= var2328!1 (str.++ var2328 " cached=")))
(define-const var2566 (Array Int String) (aliases/1657498889 var3807)) ; Statement: $r8 = r1.<org.hibernate.transform.AliasToBeanResultTransformer: java.lang.String[] aliases> 
(define-const var1203 var2711 (var3614_asList/1779083644 (cast-from-__Array__Int__String__-to-__Array__Int__var2499__ var2566))) ; Statement: $r9 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r8) 
(assert true)
(define-const var221 String (append/-1031950772 var3721 (cast-from-var2711-to-var2499 var1203))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var3721!1 String)
(assert (str.prefixof var3721 var3721!1))
(assert true)
(define-const var2812 String (toString/-2075883882 var221)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3360 var2812)) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12) 

(declare-const var3360!1 var2612)
(declare-const var2812!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {aliases/1657498889=([org.hibernate.transform.AliasToBeanResultTransformer], java.lang.String[]), var3614_equals/-1916670036=([java.lang.Object[], java.lang.Object[]], boolean), cast-from-__Array__Int__String__-to-__Array__Int__var2499__=([java.lang.String[]], java.lang.Object[]), var2612-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3614_asList/1779083644=([java.lang.Object[]], java.util.List), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2711-to-var2499=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3655=org.hibernate.transform.AliasToBeanResultTransformer, var3807=r1, var476=r0, var805=$r2, var3614=java.util.Arrays, var2499=java.lang.Object, var666=$z0, var2612=java.lang.IllegalStateException, var3360=$r3, var2627=$r4, var3462=$r6, var2711=java.util.List, var1262=$r5, var2328=$r7, var3721=$r10, var2566=$r8, var1203=$r9, var221=$r11, var2812=$r12}
; {org.hibernate.transform.AliasToBeanResultTransformer=var3655, r1=var3807, r0=var476, $r2=var805, java.util.Arrays=var3614, java.lang.Object=var2499, $z0=var666, java.lang.IllegalStateException=var2612, $r3=var3360, $r4=var2627, $r6=var3462, java.util.List=var2711, $r5=var1262, $r7=var2328, $r10=var3721, $r8=var2566, $r9=var1203, $r11=var221, $r12=var2812}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.transform.AliasToBeanResultTransformer;	r0 := @parameter0: java.lang.String[];	$r2 = r1.<org.hibernate.transform.AliasToBeanResultTransformer: java.lang.String[] aliases>;	$z0 = staticinvoke <java.util.Arrays: boolean equals(java.lang.Object[],java.lang.Object[])>(r0, $r2);	if $z0 != 0 goto return;	$r3 = new java.lang.IllegalStateException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("aliases are different from what is cached; aliases=");	$r5 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" cached=");	$r8 = r1.<org.hibernate.transform.AliasToBeanResultTransformer: java.lang.String[] aliases>;	$r9 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12);	throw $r3
;block_num 2