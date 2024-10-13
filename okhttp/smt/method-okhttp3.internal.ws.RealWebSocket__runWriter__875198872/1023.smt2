(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3327 0)
(declare-sort var1466 0)
(declare-sort var2554 0)
(declare-sort var2248 0)
(declare-sort var1293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2554_holdsLock/-145342167 (var2248) Bool)
(declare-fun cast-from-var3327-to-var2248 (var3327) var2248)
(declare-fun var1293-init () var1293)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2554_currentThread/-1037784612 () var2554)
(declare-fun getName/-942182377 (var2554) String)
(declare-fun append/-1031950772 (String var2248) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1293 var2248) void)
(declare-fun cast-from-String-to-var2248 (String) var2248)
(declare-const null-var3327 var3327)
(declare-const var1466-assertionsEnabled Bool)
(declare-const var2719 var3327) ; Statement: r0 := @this: okhttp3.internal.ws.RealWebSocket 
(assert (not (= var2719 null-var3327)))
(define-const var1178 Bool var1466-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r2 = r0.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.concurrent.Task writerTask> 
(assert (not (= (ite var1178 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3473 Bool (var2554_holdsLock/-145342167 (cast-from-var3327-to-var2248 var2719))) ; Statement: $z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $r2 = r0.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.concurrent.Task writerTask> 
(assert (not (not (= (ite var3473 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1339 var1293 var1293-init) ; Statement: $r3 = new java.lang.AssertionError 
(define-const var2970 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2970)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2970!1 String)
(assert (= var2970!1 ""))
(assert true)
(define-const var1995 String (append/672562846 var2970!1 "Thread ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var2970!2 String)
(assert (= var2970!2 (str.++ var2970!1 "Thread ")))
(define-const var3679 var2554 var2554_currentThread/-1037784612) ; Statement: $r5 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var1356 String (getName/-942182377 var3679)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var2185 String (append/672562846 var1995 var1356)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1995!1 String)
(assert (= var1995!1 (str.++ var1995 var1356)))
(assert true)
(define-const var520 String (append/672562846 var2185 " MUST hold lock on ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ") 
(declare-const var2185!1 String)
(assert (= var2185!1 (str.++ var2185 " MUST hold lock on ")))
(assert true)
(define-const var2971 String (append/-1031950772 var520 (cast-from-var3327-to-var2248 var2719))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var520!1 String)
(assert (str.prefixof var520 var520!1))
(assert true)
(define-const var1253 String (toString/-2075883882 var2971)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1339 (cast-from-String-to-var2248 var1253))) ; Statement: specialinvoke $r3.<java.lang.AssertionError: void <init>(java.lang.Object)>($r11) 

(declare-const var1339!1 var1293)
(declare-const var1253!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2554_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var3327-to-var2248=([okhttp3.internal.ws.RealWebSocket], java.lang.Object), var1293-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2554_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2248=([java.lang.String], java.lang.Object)}
; {var3327=okhttp3.internal.ws.RealWebSocket, var2719=r0, var1466=okhttp3.internal.Util, var1178=$z0, var2554=java.lang.Thread, var2248=java.lang.Object, var3473=$z1, var1293=java.lang.AssertionError, var1339=$r3, var2970=$r4, var1995=$r7, var3679=$r5, var1356=$r6, var2185=$r8, var520=$r9, var2971=$r10, var1253=$r11}
; {okhttp3.internal.ws.RealWebSocket=var3327, r0=var2719, okhttp3.internal.Util=var1466, $z0=var1178, java.lang.Thread=var2554, java.lang.Object=var2248, $z1=var3473, java.lang.AssertionError=var1293, $r3=var1339, $r4=var2970, $r7=var1995, $r5=var3679, $r6=var1356, $r8=var2185, $r9=var520, $r10=var2971, $r11=var1253}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.ws.RealWebSocket;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r2 = r0.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.concurrent.Task writerTask>;	$z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z1 != 0 goto $r2 = r0.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.concurrent.Task writerTask>;	$r3 = new java.lang.AssertionError;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r5 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r6 = virtualinvoke $r5.<java.lang.Thread: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.AssertionError: void <init>(java.lang.Object)>($r11);	throw $r3
;block_num 3