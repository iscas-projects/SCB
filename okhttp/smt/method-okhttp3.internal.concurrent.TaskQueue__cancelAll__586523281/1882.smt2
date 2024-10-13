(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2161 0)
(declare-sort var1571 0)
(declare-sort var1008 0)
(declare-sort var1702 0)
(declare-sort var1475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1008_holdsLock/-145342167 (var1702) Bool)
(declare-fun cast-from-var2161-to-var1702 (var2161) var1702)
(declare-fun var1475-init () var1475)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1008_currentThread/-1037784612 () var1008)
(declare-fun getName/-942182377 (var1008) String)
(declare-fun append/-1031950772 (String var1702) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1475 var1702) void)
(declare-fun cast-from-String-to-var1702 (String) var1702)
(declare-const null-var2161 var2161)
(declare-const var1571-assertionsEnabled Bool)
(declare-const var3998 var2161) ; Statement: r0 := @this: okhttp3.internal.concurrent.TaskQueue 
(assert (not (= var3998 null-var2161)))
(define-const var986 Bool var1571-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r3 = r0.<okhttp3.internal.concurrent.TaskQueue: okhttp3.internal.concurrent.TaskRunner taskRunner> 
(assert (not (= (ite var986 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2745 Bool (var1008_holdsLock/-145342167 (cast-from-var2161-to-var1702 var3998))) ; Statement: $z2 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z2 == 0 goto $r3 = r0.<okhttp3.internal.concurrent.TaskQueue: okhttp3.internal.concurrent.TaskRunner taskRunner> 
(assert (not (= (ite var2745 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2115 var1475 var1475-init) ; Statement: $r4 = new java.lang.AssertionError 
(define-const var1718 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1718)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1718!1 String)
(assert (= var1718!1 ""))
(assert true)
(define-const var2056 String (append/672562846 var1718!1 "Thread ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var1718!2 String)
(assert (= var1718!2 (str.++ var1718!1 "Thread ")))
(define-const var1389 var1008 var1008_currentThread/-1037784612) ; Statement: $r6 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var3560 String (getName/-942182377 var1389)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var752 String (append/672562846 var2056 var3560)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2056!1 String)
(assert (= var2056!1 (str.++ var2056 var3560)))
(assert true)
(define-const var2018 String (append/672562846 var752 " MUST NOT hold lock on ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var752!1 String)
(assert (= var752!1 (str.++ var752 " MUST NOT hold lock on ")))
(assert true)
(define-const var910 String (append/-1031950772 var2018 (cast-from-var2161-to-var1702 var3998))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2018!1 String)
(assert (str.prefixof var2018 var2018!1))
(assert true)
(define-const var3865 String (toString/-2075883882 var910)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2115 (cast-from-String-to-var1702 var3865))) ; Statement: specialinvoke $r4.<java.lang.AssertionError: void <init>(java.lang.Object)>($r12) 

(declare-const var2115!1 var1475)
(declare-const var3865!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1008_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var2161-to-var1702=([okhttp3.internal.concurrent.TaskQueue], java.lang.Object), var1475-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1008_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var1702=([java.lang.String], java.lang.Object)}
; {var2161=okhttp3.internal.concurrent.TaskQueue, var3998=r0, var1571=okhttp3.internal.Util, var986=$z0, var1008=java.lang.Thread, var1702=java.lang.Object, var2745=$z2, var1475=java.lang.AssertionError, var2115=$r4, var1718=$r5, var2056=$r8, var1389=$r6, var3560=$r7, var752=$r9, var2018=$r10, var910=$r11, var3865=$r12}
; {okhttp3.internal.concurrent.TaskQueue=var2161, r0=var3998, okhttp3.internal.Util=var1571, $z0=var986, java.lang.Thread=var1008, java.lang.Object=var1702, $z2=var2745, java.lang.AssertionError=var1475, $r4=var2115, $r5=var1718, $r8=var2056, $r6=var1389, $r7=var3560, $r9=var752, $r10=var2018, $r11=var910, $r12=var3865}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.concurrent.TaskQueue;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r3 = r0.<okhttp3.internal.concurrent.TaskQueue: okhttp3.internal.concurrent.TaskRunner taskRunner>;	$z2 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z2 == 0 goto $r3 = r0.<okhttp3.internal.concurrent.TaskQueue: okhttp3.internal.concurrent.TaskRunner taskRunner>;	$r4 = new java.lang.AssertionError;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r6 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r7 = virtualinvoke $r6.<java.lang.Thread: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.AssertionError: void <init>(java.lang.Object)>($r12);	throw $r4
;block_num 3