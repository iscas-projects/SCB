(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2690 0)
(declare-sort var3416 0)
(declare-sort var501 0)
(declare-sort var3617 0)
(declare-sort var3936 0)
(declare-sort var3412 0)
(declare-sort var3844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun connection/1819657946 (var2690) var3416)
(declare-fun var501_checkNotNull/185761657 (var3617) void)
(declare-fun cast-from-var3416-to-var3617 (var3416) var3617)
(declare-fun var3412_holdsLock/-145342167 (var3617) Bool)
(declare-fun var3844-init () var3844)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3412_currentThread/-1037784612 () var3412)
(declare-fun getName/-942182377 (var3412) String)
(declare-fun append/-1031950772 (String var3617) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3844 var3617) void)
(declare-fun cast-from-String-to-var3617 (String) var3617)
(declare-const null-var2690 var2690)
(declare-const var3936-assertionsEnabled Bool)
(declare-const var1012 var2690) ; Statement: r0 := @this: okhttp3.internal.connection.RealCall 
(assert (not (= var1012 null-var2690)))
(define-const var316 var3416 (connection/1819657946 var1012)) ; Statement: $r1 = r0.<okhttp3.internal.connection.RealCall: okhttp3.internal.connection.RealConnection connection> 
;(assert (var501_checkNotNull/185761657 (cast-from-var3416-to-var3617 var316))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r1) 

(declare-const var316!1 var3416)
(define-const var3979 Bool var3936-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r9 = virtualinvoke $r1.<okhttp3.internal.connection.RealConnection: java.util.List getCalls()>() 
(assert (not (= (ite var3979 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3497 Bool (var3412_holdsLock/-145342167 (cast-from-var3416-to-var3617 var316!1))) ; Statement: $z4 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r1) 
 ; Statement: if $z4 != 0 goto $r9 = virtualinvoke $r1.<okhttp3.internal.connection.RealConnection: java.util.List getCalls()>() 
(assert (not (not (= (ite var3497 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var1059 var3844 var3844-init) ; Statement: $r22 = new java.lang.AssertionError 
(define-const var2363 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2363)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2363!1 String)
(assert (= var2363!1 ""))
(assert true)
(define-const var2294 String (append/672562846 var2363!1 "Thread ")) ; Statement: $r15 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var2363!2 String)
(assert (= var2363!2 (str.++ var2363!1 "Thread ")))
(define-const var2512 var3412 var3412_currentThread/-1037784612) ; Statement: $r13 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var639 String (getName/-942182377 var2512)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var3716 String (append/672562846 var2294 var639)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2294!1 String)
(assert (= var2294!1 (str.++ var2294 var639)))
(assert true)
(define-const var2305 String (append/672562846 var3716 " MUST hold lock on ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ") 
(declare-const var3716!1 String)
(assert (= var3716!1 (str.++ var3716 " MUST hold lock on ")))
(assert true)
(define-const var932 String (append/-1031950772 var2305 (cast-from-var3416-to-var3617 var316!1))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r1) 
(declare-const var2305!1 String)
(assert (str.prefixof var2305 var2305!1))
(assert true)
(define-const var2095 String (toString/-2075883882 var932)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1059 (cast-from-String-to-var3617 var2095))) ; Statement: specialinvoke $r22.<java.lang.AssertionError: void <init>(java.lang.Object)>($r19) 

(declare-const var1059!1 var3844)
(declare-const var2095!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {connection/1819657946=([okhttp3.internal.connection.RealCall], okhttp3.internal.connection.RealConnection), var501_checkNotNull/185761657=([java.lang.Object], void), cast-from-var3416-to-var3617=([okhttp3.internal.connection.RealConnection], java.lang.Object), var3412_holdsLock/-145342167=([java.lang.Object], boolean), var3844-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3412_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3617=([java.lang.String], java.lang.Object)}
; {var2690=okhttp3.internal.connection.RealCall, var1012=r0, var3416=okhttp3.internal.connection.RealConnection, var316=$r1, var501=kotlin.jvm.internal.Intrinsics, var3617=java.lang.Object, var3936=okhttp3.internal.Util, var3979=$z0, var3412=java.lang.Thread, var3497=$z4, var3844=java.lang.AssertionError, var1059=$r22, var2363=$r21, var2294=$r15, var2512=$r13, var639=$r14, var3716=$r16, var2305=$r17, var932=$r18, var2095=$r19}
; {okhttp3.internal.connection.RealCall=var2690, r0=var1012, okhttp3.internal.connection.RealConnection=var3416, $r1=var316, kotlin.jvm.internal.Intrinsics=var501, java.lang.Object=var3617, okhttp3.internal.Util=var3936, $z0=var3979, java.lang.Thread=var3412, $z4=var3497, java.lang.AssertionError=var3844, $r22=var1059, $r21=var2363, $r15=var2294, $r13=var2512, $r14=var639, $r16=var3716, $r17=var2305, $r18=var932, $r19=var2095}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.connection.RealCall;	$r1 = r0.<okhttp3.internal.connection.RealCall: okhttp3.internal.connection.RealConnection connection>;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r1);	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r9 = virtualinvoke $r1.<okhttp3.internal.connection.RealConnection: java.util.List getCalls()>();	$z4 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r1);	if $z4 != 0 goto $r9 = virtualinvoke $r1.<okhttp3.internal.connection.RealConnection: java.util.List getCalls()>();	$r22 = new java.lang.AssertionError;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r13 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r14 = virtualinvoke $r13.<java.lang.Thread: java.lang.String getName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r1);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<java.lang.AssertionError: void <init>(java.lang.Object)>($r19);	throw $r22
;block_num 3