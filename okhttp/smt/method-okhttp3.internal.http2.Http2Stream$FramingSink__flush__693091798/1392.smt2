(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3045 0)
(declare-sort var2770 0)
(declare-sort var2279 0)
(declare-sort var2833 0)
(declare-sort var1323 0)
(declare-sort var3315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/2139895117 (var3045) var2770)
(declare-fun var2833_holdsLock/-145342167 (var1323) Bool)
(declare-fun cast-from-var2770-to-var1323 (var2770) var1323)
(declare-fun var3315-init () var3315)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2833_currentThread/-1037784612 () var2833)
(declare-fun getName/-942182377 (var2833) String)
(declare-fun append/-1031950772 (String var1323) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3315 var1323) void)
(declare-fun cast-from-String-to-var1323 (String) var1323)
(declare-const null-var3045 var3045)
(declare-const var2279-assertionsEnabled Bool)
(declare-const var1517 var3045) ; Statement: r0 := @this: okhttp3.internal.http2.Http2Stream$FramingSink 
(assert (not (= var1517 null-var3045)))
(define-const var878 var2770 (this$0/2139895117 var1517)) ; Statement: $r17 = r0.<okhttp3.internal.http2.Http2Stream$FramingSink: okhttp3.internal.http2.Http2Stream this$0> 
(define-const var3108 Bool var2279-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r4 = r0.<okhttp3.internal.http2.Http2Stream$FramingSink: okhttp3.internal.http2.Http2Stream this$0> 
(assert (not (= (ite var3108 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1918 Bool (var2833_holdsLock/-145342167 (cast-from-var2770-to-var1323 var878))) ; Statement: $z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r17) 
 ; Statement: if $z1 == 0 goto $r4 = r0.<okhttp3.internal.http2.Http2Stream$FramingSink: okhttp3.internal.http2.Http2Stream this$0> 
(assert (not (= (ite var1918 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var442 var3315 var3315-init) ; Statement: $r19 = new java.lang.AssertionError 
(define-const var2002 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2002)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2002!1 String)
(assert (= var2002!1 ""))
(assert true)
(define-const var2160 String (append/672562846 var2002!1 "Thread ")) ; Statement: $r11 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var2002!2 String)
(assert (= var2002!2 (str.++ var2002!1 "Thread ")))
(define-const var528 var2833 var2833_currentThread/-1037784612) ; Statement: $r9 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var2111 String (getName/-942182377 var528)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var2682 String (append/672562846 var2160 var2111)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2160!1 String)
(assert (= var2160!1 (str.++ var2160 var2111)))
(assert true)
(define-const var2892 String (append/672562846 var2682 " MUST NOT hold lock on ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var2682!1 String)
(assert (= var2682!1 (str.++ var2682 " MUST NOT hold lock on ")))
(assert true)
(define-const var3686 String (append/-1031950772 var2892 (cast-from-var2770-to-var1323 var878))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17) 
(declare-const var2892!1 String)
(assert (str.prefixof var2892 var2892!1))
(assert true)
(define-const var1544 String (toString/-2075883882 var3686)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var442 (cast-from-String-to-var1323 var1544))) ; Statement: specialinvoke $r19.<java.lang.AssertionError: void <init>(java.lang.Object)>($r15) 

(declare-const var442!1 var3315)
(declare-const var1544!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/2139895117=([okhttp3.internal.http2.Http2Stream$FramingSink], okhttp3.internal.http2.Http2Stream), var2833_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var2770-to-var1323=([okhttp3.internal.http2.Http2Stream], java.lang.Object), var3315-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2833_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var1323=([java.lang.String], java.lang.Object)}
; {var3045=okhttp3.internal.http2.Http2Stream$FramingSink, var1517=r0, var2770=okhttp3.internal.http2.Http2Stream, var878=$r17, var2279=okhttp3.internal.Util, var3108=$z0, var2833=java.lang.Thread, var1323=java.lang.Object, var1918=$z1, var3315=java.lang.AssertionError, var442=$r19, var2002=$r18, var2160=$r11, var528=$r9, var2111=$r10, var2682=$r12, var2892=$r13, var3686=$r14, var1544=$r15}
; {okhttp3.internal.http2.Http2Stream$FramingSink=var3045, r0=var1517, okhttp3.internal.http2.Http2Stream=var2770, $r17=var878, okhttp3.internal.Util=var2279, $z0=var3108, java.lang.Thread=var2833, java.lang.Object=var1323, $z1=var1918, java.lang.AssertionError=var3315, $r19=var442, $r18=var2002, $r11=var2160, $r9=var528, $r10=var2111, $r12=var2682, $r13=var2892, $r14=var3686, $r15=var1544}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Http2Stream$FramingSink;	$r17 = r0.<okhttp3.internal.http2.Http2Stream$FramingSink: okhttp3.internal.http2.Http2Stream this$0>;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r4 = r0.<okhttp3.internal.http2.Http2Stream$FramingSink: okhttp3.internal.http2.Http2Stream this$0>;	$z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r17);	if $z1 == 0 goto $r4 = r0.<okhttp3.internal.http2.Http2Stream$FramingSink: okhttp3.internal.http2.Http2Stream this$0>;	$r19 = new java.lang.AssertionError;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r9 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r10 = virtualinvoke $r9.<java.lang.Thread: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.lang.AssertionError: void <init>(java.lang.Object)>($r15);	throw $r19
;block_num 3