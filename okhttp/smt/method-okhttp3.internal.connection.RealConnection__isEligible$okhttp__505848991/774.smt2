(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3724 0)
(declare-sort var3656 0)
(declare-sort var755 0)
(declare-sort var1347 0)
(declare-sort var80 0)
(declare-sort var1340 0)
(declare-sort var3330 0)
(declare-sort var91 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1347_checkNotNullParameter/-2060636419 (var80 String) void)
(declare-fun cast-from-var3656-to-var80 (var3656) var80)
(declare-fun var3330_holdsLock/-145342167 (var80) Bool)
(declare-fun cast-from-var3724-to-var80 (var3724) var80)
(declare-fun var91-init () var91)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3330_currentThread/-1037784612 () var3330)
(declare-fun getName/-942182377 (var3330) String)
(declare-fun append/-1031950772 (String var80) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var91 var80) void)
(declare-fun cast-from-String-to-var80 (String) var80)
(declare-const null-var3724 var3724)
(declare-const null-var3656 var3656)
(declare-const null-var755 var755)
(declare-const var1340-assertionsEnabled Bool)
(declare-const var815 var3724) ; Statement: r1 := @this: okhttp3.internal.connection.RealConnection 
(assert (not (= var815 null-var3724)))
(declare-const var2850 var3656) ; Statement: r0 := @parameter0: okhttp3.Address 
(assert (not (= var2850 null-var3656)))
(declare-const var1665 var755) ; Statement: r12 := @parameter1: java.util.List 
(assert (not (= var1665 null-var755)))
;(assert (var1347_checkNotNullParameter/-2060636419 (cast-from-var3656-to-var80 var2850) "address")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "address") 

(declare-const var2850!1 var3656)
(declare-const var2302 String)
(define-const var139 Bool var1340-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r2 = r1.<okhttp3.internal.connection.RealConnection: java.util.List calls> 
(assert (not (= (ite var139 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var761 Bool (var3330_holdsLock/-145342167 (cast-from-var3724-to-var80 var815))) ; Statement: $z6 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r1) 
 ; Statement: if $z6 != 0 goto $r2 = r1.<okhttp3.internal.connection.RealConnection: java.util.List calls> 
(assert (not (not (= (ite var761 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(define-const var231 var91 var91-init) ; Statement: $r21 = new java.lang.AssertionError 
(define-const var3286 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3286)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3286!1 String)
(assert (= var3286!1 ""))
(assert true)
(define-const var1934 String (append/672562846 var3286!1 "Thread ")) ; Statement: $r25 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var3286!2 String)
(assert (= var3286!2 (str.++ var3286!1 "Thread ")))
(define-const var3333 var3330 var3330_currentThread/-1037784612) ; Statement: $r23 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var1716 String (getName/-942182377 var3333)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var531 String (append/672562846 var1934 var1716)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1934!1 String)
(assert (= var1934!1 (str.++ var1934 var1716)))
(assert true)
(define-const var2919 String (append/672562846 var531 " MUST hold lock on ")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ") 
(declare-const var531!1 String)
(assert (= var531!1 (str.++ var531 " MUST hold lock on ")))
(assert true)
(define-const var2546 String (append/-1031950772 var2919 (cast-from-var3724-to-var80 var815))) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2919!1 String)
(assert (str.prefixof var2919 var2919!1))
(assert true)
(define-const var2620 String (toString/-2075883882 var2546)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var231 (cast-from-String-to-var80 var2620))) ; Statement: specialinvoke $r21.<java.lang.AssertionError: void <init>(java.lang.Object)>($r29) 

(declare-const var231!1 var91)
(declare-const var2620!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {var1347_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3656-to-var80=([okhttp3.Address], java.lang.Object), var3330_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var3724-to-var80=([okhttp3.internal.connection.RealConnection], java.lang.Object), var91-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3330_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var80=([java.lang.String], java.lang.Object)}
; {var3724=okhttp3.internal.connection.RealConnection, var815=r1, var3656=okhttp3.Address, var2850=r0, var755=java.util.List, var1665=r12, var1347=kotlin.jvm.internal.Intrinsics, var80=java.lang.Object, var2302="address", var1340=okhttp3.internal.Util, var139=$z0, var3330=java.lang.Thread, var761=$z6, var91=java.lang.AssertionError, var231=$r21, var3286=$r22, var1934=$r25, var3333=$r23, var1716=$r24, var531=$r26, var2919=$r27, var2546=$r28, var2620=$r29}
; {okhttp3.internal.connection.RealConnection=var3724, r1=var815, okhttp3.Address=var3656, r0=var2850, java.util.List=var755, r12=var1665, kotlin.jvm.internal.Intrinsics=var1347, java.lang.Object=var80, "address"=var2302, okhttp3.internal.Util=var1340, $z0=var139, java.lang.Thread=var3330, $z6=var761, java.lang.AssertionError=var91, $r21=var231, $r22=var3286, $r25=var1934, $r23=var3333, $r24=var1716, $r26=var531, $r27=var2919, $r28=var2546, $r29=var2620}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.connection.RealConnection;	r0 := @parameter0: okhttp3.Address;	r12 := @parameter1: java.util.List;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "address");	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r2 = r1.<okhttp3.internal.connection.RealConnection: java.util.List calls>;	$z6 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r1);	if $z6 != 0 goto $r2 = r1.<okhttp3.internal.connection.RealConnection: java.util.List calls>;	$r21 = new java.lang.AssertionError;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r23 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r24 = virtualinvoke $r23.<java.lang.Thread: java.lang.String getName()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.lang.AssertionError: void <init>(java.lang.Object)>($r29);	throw $r21
;block_num 3