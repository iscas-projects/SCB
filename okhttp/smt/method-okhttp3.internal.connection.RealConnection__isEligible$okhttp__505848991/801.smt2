(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var273 0)
(declare-sort var1265 0)
(declare-sort var988 0)
(declare-sort var3122 0)
(declare-sort var185 0)
(declare-sort var2218 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3122_checkNotNullParameter/-2060636419 (var185 String) void)
(declare-fun cast-from-var1265-to-var185 (var1265) var185)
(declare-fun calls/-1511555494 (var273) var988)
(declare-fun var988_size/-959786421 (var988) Int)
(declare-fun allocationLimit/-1511555494 (var273) Int)
(declare-const null-var273 var273)
(declare-const null-var1265 var1265)
(declare-const null-var988 var988)
(declare-const var2218-assertionsEnabled Bool)
(declare-const var650 var273) ; Statement: r1 := @this: okhttp3.internal.connection.RealConnection 
(assert (not (= var650 null-var273)))
(declare-const var235 var1265) ; Statement: r0 := @parameter0: okhttp3.Address 
(assert (not (= var235 null-var1265)))
(declare-const var335 var988) ; Statement: r12 := @parameter1: java.util.List 
(assert (not (= var335 null-var988)))
;(assert (var3122_checkNotNullParameter/-2060636419 (cast-from-var1265-to-var185 var235) "address")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "address") 

(declare-const var235!1 var1265)
(declare-const var3476 String)
(define-const var2016 Bool var2218-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r2 = r1.<okhttp3.internal.connection.RealConnection: java.util.List calls> 
(assert (= (ite var2016 1 0) 0)) ; Cond: $z0 == 0 
(define-const var937 var988 (calls/-1511555494 var650)) ; Statement: $r2 = r1.<okhttp3.internal.connection.RealConnection: java.util.List calls> 
(define-const var2497 Int (var988_size/-959786421 var937)) ; Statement: $i1 = interfaceinvoke $r2.<java.util.List: int size()>() 
(define-const var3435 Int (allocationLimit/-1511555494 var650)) ; Statement: $i0 = r1.<okhttp3.internal.connection.RealConnection: int allocationLimit> 
 ; Statement: if $i1 >= $i0 goto return 0 
(assert (>= var2497 var3435)) ; Cond: $i1 >= $i0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3122_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1265-to-var185=([okhttp3.Address], java.lang.Object), calls/-1511555494=([okhttp3.internal.connection.RealConnection], java.util.List), var988_size/-959786421=([java.util.List], int), allocationLimit/-1511555494=([okhttp3.internal.connection.RealConnection], int)}
; {var273=okhttp3.internal.connection.RealConnection, var650=r1, var1265=okhttp3.Address, var235=r0, var988=java.util.List, var335=r12, var3122=kotlin.jvm.internal.Intrinsics, var185=java.lang.Object, var3476="address", var2218=okhttp3.internal.Util, var2016=$z0, var937=$r2, var2497=$i1, var3435=$i0}
; {okhttp3.internal.connection.RealConnection=var273, r1=var650, okhttp3.Address=var1265, r0=var235, java.util.List=var988, r12=var335, kotlin.jvm.internal.Intrinsics=var3122, java.lang.Object=var185, "address"=var3476, okhttp3.internal.Util=var2218, $z0=var2016, $r2=var937, $i1=var2497, $i0=var3435}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.internal.connection.RealConnection;	r0 := @parameter0: okhttp3.Address;	r12 := @parameter1: java.util.List;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "address");	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r2 = r1.<okhttp3.internal.connection.RealConnection: java.util.List calls>;	$r2 = r1.<okhttp3.internal.connection.RealConnection: java.util.List calls>;	$i1 = interfaceinvoke $r2.<java.util.List: int size()>();	$i0 = r1.<okhttp3.internal.connection.RealConnection: int allocationLimit>;	if $i1 >= $i0 goto return 0;	return 0
;block_num 3