(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3240 0)
(declare-sort var1726 0)
(declare-sort var2399 0)
(declare-sort var3200 0)
(declare-sort var150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2399_holdsLock/-145342167 (var3200) Bool)
(declare-fun cast-from-var3240-to-var3200 (var3240) var3200)
(declare-fun var150-init () var150)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2399_currentThread/-1037784612 () var2399)
(declare-fun getName/-942182377 (var2399) String)
(declare-fun append/-1031950772 (String var3200) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var150 var3200) void)
(declare-fun cast-from-String-to-var3200 (String) var3200)
(declare-const null-var3240 var3240)
(declare-const var1726-assertionsEnabled Bool)
(declare-const var418 var3240) ; Statement: r0 := @this: okhttp3.internal.concurrent.TaskQueue 
(assert (not (= var418 null-var3240)))
(define-const var3293 Bool var1726-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r3 = r0.<okhttp3.internal.concurrent.TaskQueue: okhttp3.internal.concurrent.TaskRunner taskRunner> 
(assert (not (= (ite var3293 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1852 Bool (var2399_holdsLock/-145342167 (cast-from-var3240-to-var3200 var418))) ; Statement: $z2 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z2 == 0 goto $r3 = r0.<okhttp3.internal.concurrent.TaskQueue: okhttp3.internal.concurrent.TaskRunner taskRunner> 
(assert (not (= (ite var1852 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3091 var150 var150-init) ; Statement: $r4 = new java.lang.AssertionError 
(define-const var3063 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3063)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3063!1 String)
(assert (= var3063!1 ""))
(assert true)
(define-const var981 String (append/672562846 var3063!1 "Thread ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var3063!2 String)
(assert (= var3063!2 (str.++ var3063!1 "Thread ")))
(define-const var486 var2399 var2399_currentThread/-1037784612) ; Statement: $r6 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var25 String (getName/-942182377 var486)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var2336 String (append/672562846 var981 var25)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var981!1 String)
(assert (= var981!1 (str.++ var981 var25)))
(assert true)
(define-const var3294 String (append/672562846 var2336 " MUST NOT hold lock on ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var2336!1 String)
(assert (= var2336!1 (str.++ var2336 " MUST NOT hold lock on ")))
(assert true)
(define-const var1969 String (append/-1031950772 var3294 (cast-from-var3240-to-var3200 var418))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3294!1 String)
(assert (str.prefixof var3294 var3294!1))
(assert true)
(define-const var1564 String (toString/-2075883882 var1969)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var3091 (cast-from-String-to-var3200 var1564))) ; Statement: specialinvoke $r4.<java.lang.AssertionError: void <init>(java.lang.Object)>($r12) 

(declare-const var3091!1 var150)
(declare-const var1564!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2399_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var3240-to-var3200=([okhttp3.internal.concurrent.TaskQueue], java.lang.Object), var150-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2399_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3200=([java.lang.String], java.lang.Object)}
; {var3240=okhttp3.internal.concurrent.TaskQueue, var418=r0, var1726=okhttp3.internal.Util, var3293=$z0, var2399=java.lang.Thread, var3200=java.lang.Object, var1852=$z2, var150=java.lang.AssertionError, var3091=$r4, var3063=$r5, var981=$r8, var486=$r6, var25=$r7, var2336=$r9, var3294=$r10, var1969=$r11, var1564=$r12}
; {okhttp3.internal.concurrent.TaskQueue=var3240, r0=var418, okhttp3.internal.Util=var1726, $z0=var3293, java.lang.Thread=var2399, java.lang.Object=var3200, $z2=var1852, java.lang.AssertionError=var150, $r4=var3091, $r5=var3063, $r8=var981, $r6=var486, $r7=var25, $r9=var2336, $r10=var3294, $r11=var1969, $r12=var1564}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.concurrent.TaskQueue;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r3 = r0.<okhttp3.internal.concurrent.TaskQueue: okhttp3.internal.concurrent.TaskRunner taskRunner>;	$z2 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z2 == 0 goto $r3 = r0.<okhttp3.internal.concurrent.TaskQueue: okhttp3.internal.concurrent.TaskRunner taskRunner>;	$r4 = new java.lang.AssertionError;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r6 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r7 = virtualinvoke $r6.<java.lang.Thread: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.AssertionError: void <init>(java.lang.Object)>($r12);	throw $r4
;block_num 3