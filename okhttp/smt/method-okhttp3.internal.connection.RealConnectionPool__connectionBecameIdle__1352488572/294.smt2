(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var633 0)
(declare-sort var3769 0)
(declare-sort var1006 0)
(declare-sort var2819 0)
(declare-sort var106 0)
(declare-sort var2735 0)
(declare-sort var816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1006_checkNotNullParameter/-2060636419 (var2819 String) void)
(declare-fun cast-from-var3769-to-var2819 (var3769) var2819)
(declare-fun var2735_holdsLock/-145342167 (var2819) Bool)
(declare-fun var816-init () var816)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2735_currentThread/-1037784612 () var2735)
(declare-fun getName/-942182377 (var2735) String)
(declare-fun append/-1031950772 (String var2819) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var816 var2819) void)
(declare-fun cast-from-String-to-var2819 (String) var2819)
(declare-const null-var633 var633)
(declare-const null-var3769 var3769)
(declare-const var106-assertionsEnabled Bool)
(declare-const var283 var633) ; Statement: r1 := @this: okhttp3.internal.connection.RealConnectionPool 
(assert (not (= var283 null-var633)))
(declare-const var2454 var3769) ; Statement: r0 := @parameter0: okhttp3.internal.connection.RealConnection 
(assert (not (= var2454 null-var3769)))
;(assert (var1006_checkNotNullParameter/-2060636419 (cast-from-var3769-to-var2819 var2454) "connection")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "connection") 

(declare-const var2454!1 var3769)
(declare-const var1926 String)
(define-const var2098 Bool var106-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<okhttp3.internal.connection.RealConnection: boolean getNoNewExchanges()>() 
(assert (not (= (ite var2098 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3152 Bool (var2735_holdsLock/-145342167 (cast-from-var3769-to-var2819 var2454!1))) ; Statement: $z3 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z3 != 0 goto $z1 = virtualinvoke r0.<okhttp3.internal.connection.RealConnection: boolean getNoNewExchanges()>() 
(assert (not (not (= (ite var3152 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var3737 var816 var816-init) ; Statement: $r8 = new java.lang.AssertionError 
(define-const var3940 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3940)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3940!1 String)
(assert (= var3940!1 ""))
(assert true)
(define-const var2516 String (append/672562846 var3940!1 "Thread ")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var3940!2 String)
(assert (= var3940!2 (str.++ var3940!1 "Thread ")))
(define-const var2140 var2735 var2735_currentThread/-1037784612) ; Statement: $r10 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var1567 String (getName/-942182377 var2140)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var310 String (append/672562846 var2516 var1567)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2516!1 String)
(assert (= var2516!1 (str.++ var2516 var1567)))
(assert true)
(define-const var1957 String (append/672562846 var310 " MUST hold lock on ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ") 
(declare-const var310!1 String)
(assert (= var310!1 (str.++ var310 " MUST hold lock on ")))
(assert true)
(define-const var3933 String (append/-1031950772 var1957 (cast-from-var3769-to-var2819 var2454!1))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1957!1 String)
(assert (str.prefixof var1957 var1957!1))
(assert true)
(define-const var3517 String (toString/-2075883882 var3933)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var3737 (cast-from-String-to-var2819 var3517))) ; Statement: specialinvoke $r8.<java.lang.AssertionError: void <init>(java.lang.Object)>($r16) 

(declare-const var3737!1 var816)
(declare-const var3517!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1006_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3769-to-var2819=([okhttp3.internal.connection.RealConnection], java.lang.Object), var2735_holdsLock/-145342167=([java.lang.Object], boolean), var816-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2735_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2819=([java.lang.String], java.lang.Object)}
; {var633=okhttp3.internal.connection.RealConnectionPool, var283=r1, var3769=okhttp3.internal.connection.RealConnection, var2454=r0, var1006=kotlin.jvm.internal.Intrinsics, var2819=java.lang.Object, var1926="connection", var106=okhttp3.internal.Util, var2098=$z0, var2735=java.lang.Thread, var3152=$z3, var816=java.lang.AssertionError, var3737=$r8, var3940=$r9, var2516=$r12, var2140=$r10, var1567=$r11, var310=$r13, var1957=$r14, var3933=$r15, var3517=$r16}
; {okhttp3.internal.connection.RealConnectionPool=var633, r1=var283, okhttp3.internal.connection.RealConnection=var3769, r0=var2454, kotlin.jvm.internal.Intrinsics=var1006, java.lang.Object=var2819, "connection"=var1926, okhttp3.internal.Util=var106, $z0=var2098, java.lang.Thread=var2735, $z3=var3152, java.lang.AssertionError=var816, $r8=var3737, $r9=var3940, $r12=var2516, $r10=var2140, $r11=var1567, $r13=var310, $r14=var1957, $r15=var3933, $r16=var3517}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.connection.RealConnectionPool;	r0 := @parameter0: okhttp3.internal.connection.RealConnection;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "connection");	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $z1 = virtualinvoke r0.<okhttp3.internal.connection.RealConnection: boolean getNoNewExchanges()>();	$z3 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z3 != 0 goto $z1 = virtualinvoke r0.<okhttp3.internal.connection.RealConnection: boolean getNoNewExchanges()>();	$r8 = new java.lang.AssertionError;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r10 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r11 = virtualinvoke $r10.<java.lang.Thread: java.lang.String getName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.AssertionError: void <init>(java.lang.Object)>($r16);	throw $r8
;block_num 3