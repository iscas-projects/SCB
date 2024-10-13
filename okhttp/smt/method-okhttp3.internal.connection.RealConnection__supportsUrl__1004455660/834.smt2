(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3707 0)
(declare-sort var2940 0)
(declare-sort var3462 0)
(declare-sort var2391 0)
(declare-sort var3805 0)
(declare-sort var360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2391_holdsLock/-145342167 (var3805) Bool)
(declare-fun cast-from-var3707-to-var3805 (var3707) var3805)
(declare-fun var360-init () var360)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2391_currentThread/-1037784612 () var2391)
(declare-fun getName/-942182377 (var2391) String)
(declare-fun append/-1031950772 (String var3805) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var360 var3805) void)
(declare-fun cast-from-String-to-var3805 (String) var3805)
(declare-const null-var3707 var3707)
(declare-const null-var2940 var2940)
(declare-const var3462-assertionsEnabled Bool)
(declare-const var3847 var3707) ; Statement: r0 := @this: okhttp3.internal.connection.RealConnection 
(assert (not (= var3847 null-var3707)))
(declare-const var3160 var2940) ; Statement: r3 := @parameter0: okhttp3.HttpUrl 
(assert (not (= var3160 null-var2940)))
(define-const var327 Bool var3462-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert (not (= (ite var327 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1879 Bool (var2391_holdsLock/-145342167 (cast-from-var3707-to-var3805 var3847))) ; Statement: $z4 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z4 != 0 goto $r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert (not (not (= (ite var1879 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var1982 var360 var360-init) ; Statement: $r9 = new java.lang.AssertionError 
(define-const var2722 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2722)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2722!1 String)
(assert (= var2722!1 ""))
(assert true)
(define-const var600 String (append/672562846 var2722!1 "Thread ")) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var2722!2 String)
(assert (= var2722!2 (str.++ var2722!1 "Thread ")))
(define-const var2324 var2391 var2391_currentThread/-1037784612) ; Statement: $r11 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var3597 String (getName/-942182377 var2324)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var3700 String (append/672562846 var600 var3597)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var600!1 String)
(assert (= var600!1 (str.++ var600 var3597)))
(assert true)
(define-const var1337 String (append/672562846 var3700 " MUST hold lock on ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ") 
(declare-const var3700!1 String)
(assert (= var3700!1 (str.++ var3700 " MUST hold lock on ")))
(assert true)
(define-const var2996 String (append/-1031950772 var1337 (cast-from-var3707-to-var3805 var3847))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1337!1 String)
(assert (str.prefixof var1337 var1337!1))
(assert true)
(define-const var3760 String (toString/-2075883882 var2996)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1982 (cast-from-String-to-var3805 var3760))) ; Statement: specialinvoke $r9.<java.lang.AssertionError: void <init>(java.lang.Object)>($r17) 

(declare-const var1982!1 var360)
(declare-const var3760!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2391_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var3707-to-var3805=([okhttp3.internal.connection.RealConnection], java.lang.Object), var360-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2391_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3805=([java.lang.String], java.lang.Object)}
; {var3707=okhttp3.internal.connection.RealConnection, var3847=r0, var2940=okhttp3.HttpUrl, var3160=r3, var3462=okhttp3.internal.Util, var327=$z0, var2391=java.lang.Thread, var3805=java.lang.Object, var1879=$z4, var360=java.lang.AssertionError, var1982=$r9, var2722=$r10, var600=$r13, var2324=$r11, var3597=$r12, var3700=$r14, var1337=$r15, var2996=$r16, var3760=$r17}
; {okhttp3.internal.connection.RealConnection=var3707, r0=var3847, okhttp3.HttpUrl=var2940, r3=var3160, okhttp3.internal.Util=var3462, $z0=var327, java.lang.Thread=var2391, java.lang.Object=var3805, $z4=var1879, java.lang.AssertionError=var360, $r9=var1982, $r10=var2722, $r13=var600, $r11=var2324, $r12=var3597, $r14=var3700, $r15=var1337, $r16=var2996, $r17=var3760}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.connection.RealConnection;	r3 := @parameter0: okhttp3.HttpUrl;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	$z4 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z4 != 0 goto $r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	$r9 = new java.lang.AssertionError;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r11 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r12 = virtualinvoke $r11.<java.lang.Thread: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.AssertionError: void <init>(java.lang.Object)>($r17);	throw $r9
;block_num 3