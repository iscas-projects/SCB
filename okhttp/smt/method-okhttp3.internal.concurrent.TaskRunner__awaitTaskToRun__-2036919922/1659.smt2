(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var524 0)
(declare-sort var3000 0)
(declare-sort var1920 0)
(declare-sort var39 0)
(declare-sort var2106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1920_holdsLock/-145342167 (var39) Bool)
(declare-fun cast-from-var524-to-var39 (var524) var39)
(declare-fun var2106-init () var2106)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1920_currentThread/-1037784612 () var1920)
(declare-fun getName/-942182377 (var1920) String)
(declare-fun append/-1031950772 (String var39) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var2106 var39) void)
(declare-fun cast-from-String-to-var39 (String) var39)
(declare-const null-var524 var524)
(declare-const var3000-assertionsEnabled Bool)
(declare-const var912 var524) ; Statement: r0 := @this: okhttp3.internal.concurrent.TaskRunner 
(assert (not (= var912 null-var524)))
(define-const var1951 Bool var3000-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r25 = r0.<okhttp3.internal.concurrent.TaskRunner: java.util.List readyQueues> 
(assert (not (= (ite var1951 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var655 Bool (var1920_holdsLock/-145342167 (cast-from-var524-to-var39 var912))) ; Statement: $z4 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z4 != 0 goto $r25 = r0.<okhttp3.internal.concurrent.TaskRunner: java.util.List readyQueues> 
(assert (not (not (= (ite var655 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var9 var2106 var2106-init) ; Statement: $r29 = new java.lang.AssertionError 
(define-const var3752 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3752)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3752!1 String)
(assert (= var3752!1 ""))
(assert true)
(define-const var3062 String (append/672562846 var3752!1 "Thread ")) ; Statement: $r18 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var3752!2 String)
(assert (= var3752!2 (str.++ var3752!1 "Thread ")))
(define-const var3435 var1920 var1920_currentThread/-1037784612) ; Statement: $r16 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var360 String (getName/-942182377 var3435)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var1187 String (append/672562846 var3062 var360)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3062!1 String)
(assert (= var3062!1 (str.++ var3062 var360)))
(assert true)
(define-const var1683 String (append/672562846 var1187 " MUST hold lock on ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ") 
(declare-const var1187!1 String)
(assert (= var1187!1 (str.++ var1187 " MUST hold lock on ")))
(assert true)
(define-const var1449 String (append/-1031950772 var1683 (cast-from-var524-to-var39 var912))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1683!1 String)
(assert (str.prefixof var1683 var1683!1))
(assert true)
(define-const var2777 String (toString/-2075883882 var1449)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var9 (cast-from-String-to-var39 var2777))) ; Statement: specialinvoke $r29.<java.lang.AssertionError: void <init>(java.lang.Object)>($r22) 

(declare-const var9!1 var2106)
(declare-const var2777!1 String)
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var1920_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var524-to-var39=([okhttp3.internal.concurrent.TaskRunner], java.lang.Object), var2106-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1920_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var39=([java.lang.String], java.lang.Object)}
; {var524=okhttp3.internal.concurrent.TaskRunner, var912=r0, var3000=okhttp3.internal.Util, var1951=$z0, var1920=java.lang.Thread, var39=java.lang.Object, var655=$z4, var2106=java.lang.AssertionError, var9=$r29, var3752=$r28, var3062=$r18, var3435=$r16, var360=$r17, var1187=$r19, var1683=$r20, var1449=$r21, var2777=$r22}
; {okhttp3.internal.concurrent.TaskRunner=var524, r0=var912, okhttp3.internal.Util=var3000, $z0=var1951, java.lang.Thread=var1920, java.lang.Object=var39, $z4=var655, java.lang.AssertionError=var2106, $r29=var9, $r28=var3752, $r18=var3062, $r16=var3435, $r17=var360, $r19=var1187, $r20=var1683, $r21=var1449, $r22=var2777}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.concurrent.TaskRunner;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r25 = r0.<okhttp3.internal.concurrent.TaskRunner: java.util.List readyQueues>;	$z4 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z4 != 0 goto $r25 = r0.<okhttp3.internal.concurrent.TaskRunner: java.util.List readyQueues>;	$r29 = new java.lang.AssertionError;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r16 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r17 = virtualinvoke $r16.<java.lang.Thread: java.lang.String getName()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<java.lang.AssertionError: void <init>(java.lang.Object)>($r22);	throw $r29
;block_num 3