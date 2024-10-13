(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1510 0)
(declare-sort var81 0)
(declare-sort var3063 0)
(declare-sort var388 0)
(declare-sort var3078 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3063_holdsLock/-145342167 (var388) Bool)
(declare-fun cast-from-var1510-to-var388 (var1510) var388)
(declare-fun var3078-init () var3078)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3063_currentThread/-1037784612 () var3063)
(declare-fun getName/-942182377 (var3063) String)
(declare-fun append/-1031950772 (String var388) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3078 var388) void)
(declare-fun cast-from-String-to-var388 (String) var388)
(declare-const null-var1510 var1510)
(declare-const var81-assertionsEnabled Bool)
(declare-const var3566 var1510) ; Statement: r0 := @this: okhttp3.Dispatcher 
(assert (not (= var3566 null-var1510)))
(define-const var3812 Bool var81-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r1 = new java.util.ArrayList 
(assert (not (= (ite var3812 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3541 Bool (var3063_holdsLock/-145342167 (cast-from-var1510-to-var388 var3566))) ; Statement: $z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z1 == 0 goto $r1 = new java.util.ArrayList 
(assert (not (= (ite var3541 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var176 var3078 var3078-init) ; Statement: $r14 = new java.lang.AssertionError 
(define-const var2929 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2929)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2929!1 String)
(assert (= var2929!1 ""))
(assert true)
(define-const var2940 String (append/672562846 var2929!1 "Thread ")) ; Statement: $r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var2929!2 String)
(assert (= var2929!2 (str.++ var2929!1 "Thread ")))
(define-const var109 var3063 var3063_currentThread/-1037784612) ; Statement: $r16 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var2846 String (getName/-942182377 var109)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var880 String (append/672562846 var2940 var2846)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2940!1 String)
(assert (= var2940!1 (str.++ var2940 var2846)))
(assert true)
(define-const var1080 String (append/672562846 var880 " MUST NOT hold lock on ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var880!1 String)
(assert (= var880!1 (str.++ var880 " MUST NOT hold lock on ")))
(assert true)
(define-const var1521 String (append/-1031950772 var1080 (cast-from-var1510-to-var388 var3566))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1080!1 String)
(assert (str.prefixof var1080 var1080!1))
(assert true)
(define-const var1504 String (toString/-2075883882 var1521)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var176 (cast-from-String-to-var388 var1504))) ; Statement: specialinvoke $r14.<java.lang.AssertionError: void <init>(java.lang.Object)>($r22) 

(declare-const var176!1 var3078)
(declare-const var1504!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3063_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var1510-to-var388=([okhttp3.Dispatcher], java.lang.Object), var3078-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3063_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var388=([java.lang.String], java.lang.Object)}
; {var1510=okhttp3.Dispatcher, var3566=r0, var81=okhttp3.internal.Util, var3812=$z0, var3063=java.lang.Thread, var388=java.lang.Object, var3541=$z1, var3078=java.lang.AssertionError, var176=$r14, var2929=$r15, var2940=$r18, var109=$r16, var2846=$r17, var880=$r19, var1080=$r20, var1521=$r21, var1504=$r22}
; {okhttp3.Dispatcher=var1510, r0=var3566, okhttp3.internal.Util=var81, $z0=var3812, java.lang.Thread=var3063, java.lang.Object=var388, $z1=var3541, java.lang.AssertionError=var3078, $r14=var176, $r15=var2929, $r18=var2940, $r16=var109, $r17=var2846, $r19=var880, $r20=var1080, $r21=var1521, $r22=var1504}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.Dispatcher;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r1 = new java.util.ArrayList;	$z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z1 == 0 goto $r1 = new java.util.ArrayList;	$r14 = new java.lang.AssertionError;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r16 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r17 = virtualinvoke $r16.<java.lang.Thread: java.lang.String getName()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.AssertionError: void <init>(java.lang.Object)>($r22);	throw $r14
;block_num 3