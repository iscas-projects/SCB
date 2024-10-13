(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1113 0)
(declare-sort var1472 0)
(declare-sort var876 0)
(declare-sort var2130 0)
(declare-sort var3456 0)
(declare-sort var3351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/2139895117 (var1113) var1472)
(declare-fun var2130_holdsLock/-145342167 (var3456) Bool)
(declare-fun cast-from-var1472-to-var3456 (var1472) var3456)
(declare-fun var3351-init () var3351)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2130_currentThread/-1037784612 () var2130)
(declare-fun getName/-942182377 (var2130) String)
(declare-fun append/-1031950772 (String var3456) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3351 var3456) void)
(declare-fun cast-from-String-to-var3456 (String) var3456)
(declare-const null-var1113 var1113)
(declare-const var876-assertionsEnabled Bool)
(declare-const var2410 var1113) ; Statement: r0 := @this: okhttp3.internal.http2.Http2Stream$FramingSink 
(assert (not (= var2410 null-var1113)))
(define-const var2093 var1472 (this$0/2139895117 var2410)) ; Statement: $r33 = r0.<okhttp3.internal.http2.Http2Stream$FramingSink: okhttp3.internal.http2.Http2Stream this$0> 
(define-const var3164 Bool var876-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r20 = r0.<okhttp3.internal.http2.Http2Stream$FramingSink: okhttp3.internal.http2.Http2Stream this$0> 
(assert (not (= (ite var3164 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2717 Bool (var2130_holdsLock/-145342167 (cast-from-var1472-to-var3456 var2093))) ; Statement: $z3 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r33) 
 ; Statement: if $z3 == 0 goto $r20 = r0.<okhttp3.internal.http2.Http2Stream$FramingSink: okhttp3.internal.http2.Http2Stream this$0> 
(assert (not (= (ite var2717 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var339 var3351 var3351-init) ; Statement: $r37 = new java.lang.AssertionError 
(define-const var2440 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2440)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2440!1 String)
(assert (= var2440!1 ""))
(assert true)
(define-const var2530 String (append/672562846 var2440!1 "Thread ")) ; Statement: $r26 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var2440!2 String)
(assert (= var2440!2 (str.++ var2440!1 "Thread ")))
(define-const var3081 var2130 var2130_currentThread/-1037784612) ; Statement: $r24 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var2277 String (getName/-942182377 var3081)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var2725 String (append/672562846 var2530 var2277)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var2530!1 String)
(assert (= var2530!1 (str.++ var2530 var2277)))
(assert true)
(define-const var818 String (append/672562846 var2725 " MUST NOT hold lock on ")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var2725!1 String)
(assert (= var2725!1 (str.++ var2725 " MUST NOT hold lock on ")))
(assert true)
(define-const var254 String (append/-1031950772 var818 (cast-from-var1472-to-var3456 var2093))) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r33) 
(declare-const var818!1 String)
(assert (str.prefixof var818 var818!1))
(assert true)
(define-const var2432 String (toString/-2075883882 var254)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var339 (cast-from-String-to-var3456 var2432))) ; Statement: specialinvoke $r37.<java.lang.AssertionError: void <init>(java.lang.Object)>($r30) 

(declare-const var339!1 var3351)
(declare-const var2432!1 String)
 ; Statement: throw $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/2139895117=([okhttp3.internal.http2.Http2Stream$FramingSink], okhttp3.internal.http2.Http2Stream), var2130_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var1472-to-var3456=([okhttp3.internal.http2.Http2Stream], java.lang.Object), var3351-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2130_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3456=([java.lang.String], java.lang.Object)}
; {var1113=okhttp3.internal.http2.Http2Stream$FramingSink, var2410=r0, var1472=okhttp3.internal.http2.Http2Stream, var2093=$r33, var876=okhttp3.internal.Util, var3164=$z0, var2130=java.lang.Thread, var3456=java.lang.Object, var2717=$z3, var3351=java.lang.AssertionError, var339=$r37, var2440=$r36, var2530=$r26, var3081=$r24, var2277=$r25, var2725=$r27, var818=$r28, var254=$r29, var2432=$r30}
; {okhttp3.internal.http2.Http2Stream$FramingSink=var1113, r0=var2410, okhttp3.internal.http2.Http2Stream=var1472, $r33=var2093, okhttp3.internal.Util=var876, $z0=var3164, java.lang.Thread=var2130, java.lang.Object=var3456, $z3=var2717, java.lang.AssertionError=var3351, $r37=var339, $r36=var2440, $r26=var2530, $r24=var3081, $r25=var2277, $r27=var2725, $r28=var818, $r29=var254, $r30=var2432}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Http2Stream$FramingSink;	$r33 = r0.<okhttp3.internal.http2.Http2Stream$FramingSink: okhttp3.internal.http2.Http2Stream this$0>;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r20 = r0.<okhttp3.internal.http2.Http2Stream$FramingSink: okhttp3.internal.http2.Http2Stream this$0>;	$z3 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r33);	if $z3 == 0 goto $r20 = r0.<okhttp3.internal.http2.Http2Stream$FramingSink: okhttp3.internal.http2.Http2Stream this$0>;	$r37 = new java.lang.AssertionError;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r24 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r25 = virtualinvoke $r24.<java.lang.Thread: java.lang.String getName()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r33);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r37.<java.lang.AssertionError: void <init>(java.lang.Object)>($r30);	throw $r37
;block_num 3