(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3629 0)
(declare-sort var3775 0)
(declare-sort var896 0)
(declare-sort var2598 0)
(declare-sort var1620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var896_holdsLock/-145342167 (var2598) Bool)
(declare-fun cast-from-var3629-to-var2598 (var3629) var2598)
(declare-fun var1620-init () var1620)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var896_currentThread/-1037784612 () var896)
(declare-fun getName/-942182377 (var896) String)
(declare-fun append/-1031950772 (String var2598) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1620 var2598) void)
(declare-fun cast-from-String-to-var2598 (String) var2598)
(declare-const null-var3629 var3629)
(declare-const null-Bool Bool)
(declare-const var3775-assertionsEnabled Bool)
(declare-const var953 var3629) ; Statement: r0 := @this: okhttp3.internal.connection.RealConnection 
(assert (not (= var953 null-var3629)))
(declare-const var354 Bool) ; Statement: z5 := @parameter0: boolean 
(assert (not (= var354 null-Bool)))
(define-const var3210 Bool var3775-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $l2 = staticinvoke <java.lang.System: long nanoTime()>() 
(assert (not (= (ite var3210 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2820 Bool (var896_holdsLock/-145342167 (cast-from-var3629-to-var2598 var953))) ; Statement: $z8 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z8 == 0 goto $l2 = staticinvoke <java.lang.System: long nanoTime()>() 
(assert (not (= (ite var2820 1 0) 0))) ; Negate: Cond: $z8 == 0  
(define-const var807 var1620 var1620-init) ; Statement: $r16 = new java.lang.AssertionError 
(define-const var221 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var221)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var221!1 String)
(assert (= var221!1 ""))
(assert true)
(define-const var2241 String (append/672562846 var221!1 "Thread ")) ; Statement: $r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var221!2 String)
(assert (= var221!2 (str.++ var221!1 "Thread ")))
(define-const var1760 var896 var896_currentThread/-1037784612) ; Statement: $r7 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var2797 String (getName/-942182377 var1760)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var2533 String (append/672562846 var2241 var2797)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2241!1 String)
(assert (= var2241!1 (str.++ var2241 var2797)))
(assert true)
(define-const var769 String (append/672562846 var2533 " MUST NOT hold lock on ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var2533!1 String)
(assert (= var2533!1 (str.++ var2533 " MUST NOT hold lock on ")))
(assert true)
(define-const var3143 String (append/-1031950772 var769 (cast-from-var3629-to-var2598 var953))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var769!1 String)
(assert (str.prefixof var769 var769!1))
(assert true)
(define-const var2282 String (toString/-2075883882 var3143)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var807 (cast-from-String-to-var2598 var2282))) ; Statement: specialinvoke $r16.<java.lang.AssertionError: void <init>(java.lang.Object)>($r13) 

(declare-const var807!1 var1620)
(declare-const var2282!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var896_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var3629-to-var2598=([okhttp3.internal.connection.RealConnection], java.lang.Object), var1620-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var896_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2598=([java.lang.String], java.lang.Object)}
; {var3629=okhttp3.internal.connection.RealConnection, var953=r0, var354=z5, var3775=okhttp3.internal.Util, var3210=$z0, var896=java.lang.Thread, var2598=java.lang.Object, var2820=$z8, var1620=java.lang.AssertionError, var807=$r16, var221=$r15, var2241=$r9, var1760=$r7, var2797=$r8, var2533=$r10, var769=$r11, var3143=$r12, var2282=$r13}
; {okhttp3.internal.connection.RealConnection=var3629, r0=var953, z5=var354, okhttp3.internal.Util=var3775, $z0=var3210, java.lang.Thread=var896, java.lang.Object=var2598, $z8=var2820, java.lang.AssertionError=var1620, $r16=var807, $r15=var221, $r9=var2241, $r7=var1760, $r8=var2797, $r10=var2533, $r11=var769, $r12=var3143, $r13=var2282}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.connection.RealConnection;	z5 := @parameter0: boolean;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $l2 = staticinvoke <java.lang.System: long nanoTime()>();	$z8 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z8 == 0 goto $l2 = staticinvoke <java.lang.System: long nanoTime()>();	$r16 = new java.lang.AssertionError;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r7 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r8 = virtualinvoke $r7.<java.lang.Thread: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.AssertionError: void <init>(java.lang.Object)>($r13);	throw $r16
;block_num 3