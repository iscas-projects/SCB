(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1526 0)
(declare-sort var3269 0)
(declare-sort var250 0)
(declare-sort var3995 0)
(declare-sort var2631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3269_checkNotNullParameter/-2060636419 (var1526 String) void)
(declare-fun var3995_holdsLock/-145342167 (var1526) Bool)
(declare-fun var2631-init () var2631)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3995_currentThread/-1037784612 () var3995)
(declare-fun getName/-942182377 (var3995) String)
(declare-fun append/-1031950772 (String var1526) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var2631 var1526) void)
(declare-fun cast-from-String-to-var1526 (String) var1526)
(declare-const null-var1526 var1526)
(declare-const var250-assertionsEnabled Bool)
(declare-const var2509 var1526) ; Statement: $r0 := @parameter0: java.lang.Object 
(assert (not (= var2509 null-var1526)))
;(assert (var3269_checkNotNullParameter/-2060636419 var2509 "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var2509!1 var1526)
(declare-const var392 String)
(define-const var2905 Bool var250-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var2905 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2078 Bool (var3995_holdsLock/-145342167 var2509!1)) ; Statement: $z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r0) 
 ; Statement: if $z1 != 0 goto return 
(assert (not (not (= (ite var2078 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1363 var2631 var2631-init) ; Statement: $r1 = new java.lang.AssertionError 
(define-const var443 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var443)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var443!1 String)
(assert (= var443!1 ""))
(assert true)
(define-const var675 String (append/672562846 var443!1 "Thread ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var443!2 String)
(assert (= var443!2 (str.++ var443!1 "Thread ")))
(define-const var2525 var3995 var3995_currentThread/-1037784612) ; Statement: $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var948 String (getName/-942182377 var2525)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var3014 String (append/672562846 var675 var948)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var675!1 String)
(assert (= var675!1 (str.++ var675 var948)))
(assert true)
(define-const var1878 String (append/672562846 var3014 " MUST hold lock on ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ") 
(declare-const var3014!1 String)
(assert (= var3014!1 (str.++ var3014 " MUST hold lock on ")))
(assert true)
(define-const var2374 String (append/-1031950772 var1878 var2509!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var1878!1 String)
(assert (str.prefixof var1878 var1878!1))
(assert true)
(define-const var1660 String (toString/-2075883882 var2374)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1363 (cast-from-String-to-var1526 var1660))) ; Statement: specialinvoke $r1.<java.lang.AssertionError: void <init>(java.lang.Object)>($r9) 

(declare-const var1363!1 var2631)
(declare-const var1660!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3269_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), var3995_holdsLock/-145342167=([java.lang.Object], boolean), var2631-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3995_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var1526=([java.lang.String], java.lang.Object)}
; {var1526=java.lang.Object, var2509=$r0, var3269=kotlin.jvm.internal.Intrinsics, var392="<this>", var250=okhttp3.internal.Util, var2905=$z0, var3995=java.lang.Thread, var2078=$z1, var2631=java.lang.AssertionError, var1363=$r1, var443=$r2, var675=$r5, var2525=$r3, var948=$r4, var3014=$r6, var1878=$r7, var2374=$r8, var1660=$r9}
; {java.lang.Object=var1526, $r0=var2509, kotlin.jvm.internal.Intrinsics=var3269, "<this>"=var392, okhttp3.internal.Util=var250, $z0=var2905, java.lang.Thread=var3995, $z1=var2078, java.lang.AssertionError=var2631, $r1=var1363, $r2=var443, $r5=var675, $r3=var2525, $r4=var948, $r6=var3014, $r7=var1878, $r8=var2374, $r9=var1660}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 := @parameter0: java.lang.Object;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto return;	$z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r0);	if $z1 != 0 goto return;	$r1 = new java.lang.AssertionError;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r4 = virtualinvoke $r3.<java.lang.Thread: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.AssertionError: void <init>(java.lang.Object)>($r9);	throw $r1
;block_num 3