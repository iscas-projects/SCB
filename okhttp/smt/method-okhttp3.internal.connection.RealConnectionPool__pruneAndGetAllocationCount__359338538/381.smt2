(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3743 0)
(declare-sort var760 0)
(declare-sort var3133 0)
(declare-sort var1098 0)
(declare-sort var2462 0)
(declare-sort var2169 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1098_holdsLock/-145342167 (var2462) Bool)
(declare-fun cast-from-var760-to-var2462 (var760) var2462)
(declare-fun var2169-init () var2169)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1098_currentThread/-1037784612 () var1098)
(declare-fun getName/-942182377 (var1098) String)
(declare-fun append/-1031950772 (String var2462) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var2169 var2462) void)
(declare-fun cast-from-String-to-var2462 (String) var2462)
(declare-const null-var3743 var3743)
(declare-const null-var760 var760)
(declare-const null-Int Int)
(declare-const var3133-assertionsEnabled Bool)
(declare-const var3402 var3743) ; Statement: r16 := @this: okhttp3.internal.connection.RealConnectionPool 
(assert (not (= var3402 null-var3743)))
(declare-const var3771 var760) ; Statement: r0 := @parameter0: okhttp3.internal.connection.RealConnection 
(assert (not (= var3771 null-var760)))
(declare-const var2676 Int) ; Statement: l1 := @parameter1: long 
(assert (not (= var2676 null-Int)))
(define-const var2675 Bool var3133-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r17 = virtualinvoke r0.<okhttp3.internal.connection.RealConnection: java.util.List getCalls()>() 
(assert (not (= (ite var2675 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var225 Bool (var1098_holdsLock/-145342167 (cast-from-var760-to-var2462 var3771))) ; Statement: $z2 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z2 != 0 goto $r17 = virtualinvoke r0.<okhttp3.internal.connection.RealConnection: java.util.List getCalls()>() 
(assert (not (not (= (ite var225 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var563 var2169 var2169-init) ; Statement: $r18 = new java.lang.AssertionError 
(define-const var3351 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3351)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3351!1 String)
(assert (= var3351!1 ""))
(assert true)
(define-const var1165 String (append/672562846 var3351!1 "Thread ")) ; Statement: $r22 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var3351!2 String)
(assert (= var3351!2 (str.++ var3351!1 "Thread ")))
(define-const var2929 var1098 var1098_currentThread/-1037784612) ; Statement: $r20 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var354 String (getName/-942182377 var2929)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var1049 String (append/672562846 var1165 var354)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1165!1 String)
(assert (= var1165!1 (str.++ var1165 var354)))
(assert true)
(define-const var3127 String (append/672562846 var1049 " MUST hold lock on ")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ") 
(declare-const var1049!1 String)
(assert (= var1049!1 (str.++ var1049 " MUST hold lock on ")))
(assert true)
(define-const var215 String (append/-1031950772 var3127 (cast-from-var760-to-var2462 var3771))) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3127!1 String)
(assert (str.prefixof var3127 var3127!1))
(assert true)
(define-const var972 String (toString/-2075883882 var215)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var563 (cast-from-String-to-var2462 var972))) ; Statement: specialinvoke $r18.<java.lang.AssertionError: void <init>(java.lang.Object)>($r26) 

(declare-const var563!1 var2169)
(declare-const var972!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var1098_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var760-to-var2462=([okhttp3.internal.connection.RealConnection], java.lang.Object), var2169-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1098_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2462=([java.lang.String], java.lang.Object)}
; {var3743=okhttp3.internal.connection.RealConnectionPool, var3402=r16, var760=okhttp3.internal.connection.RealConnection, var3771=r0, var2676=l1, var3133=okhttp3.internal.Util, var2675=$z0, var1098=java.lang.Thread, var2462=java.lang.Object, var225=$z2, var2169=java.lang.AssertionError, var563=$r18, var3351=$r19, var1165=$r22, var2929=$r20, var354=$r21, var1049=$r23, var3127=$r24, var215=$r25, var972=$r26}
; {okhttp3.internal.connection.RealConnectionPool=var3743, r16=var3402, okhttp3.internal.connection.RealConnection=var760, r0=var3771, l1=var2676, okhttp3.internal.Util=var3133, $z0=var2675, java.lang.Thread=var1098, java.lang.Object=var2462, $z2=var225, java.lang.AssertionError=var2169, $r18=var563, $r19=var3351, $r22=var1165, $r20=var2929, $r21=var354, $r23=var1049, $r24=var3127, $r25=var215, $r26=var972}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: okhttp3.internal.connection.RealConnectionPool;	r0 := @parameter0: okhttp3.internal.connection.RealConnection;	l1 := @parameter1: long;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r17 = virtualinvoke r0.<okhttp3.internal.connection.RealConnection: java.util.List getCalls()>();	$z2 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z2 != 0 goto $r17 = virtualinvoke r0.<okhttp3.internal.connection.RealConnection: java.util.List getCalls()>();	$r18 = new java.lang.AssertionError;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r20 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r21 = virtualinvoke $r20.<java.lang.Thread: java.lang.String getName()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<java.lang.AssertionError: void <init>(java.lang.Object)>($r26);	throw $r18
;block_num 3