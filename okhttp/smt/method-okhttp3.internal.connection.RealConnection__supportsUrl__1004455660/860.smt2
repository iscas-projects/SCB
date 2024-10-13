(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1446 0)
(declare-sort var573 0)
(declare-sort var1348 0)
(declare-sort var714 0)
(declare-sort var2986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun route/-1511555494 (var1446) var714)
(declare-fun address/678262376 (var714) var2986)
(declare-fun url/-535442747 (var2986) var573)
(declare-fun port/1842567001 (var573) Int)
(declare-const null-var1446 var1446)
(declare-const null-var573 var573)
(declare-const var1348-assertionsEnabled Bool)
(declare-const var3498 var1446) ; Statement: r0 := @this: okhttp3.internal.connection.RealConnection 
(assert (not (= var3498 null-var1446)))
(declare-const var2969 var573) ; Statement: r3 := @parameter0: okhttp3.HttpUrl 
(assert (not (= var2969 null-var573)))
(define-const var1672 Bool var1348-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert (= (ite var1672 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1759 var714 (route/-1511555494 var3498)) ; Statement: $r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var315 var2986 (address/678262376 var1759)) ; Statement: $r2 = virtualinvoke $r1.<okhttp3.Route: okhttp3.Address address()>() 
(assert true)
(define-const var3823 var573 (url/-535442747 var315)) ; Statement: $r8 = virtualinvoke $r2.<okhttp3.Address: okhttp3.HttpUrl url()>() 
(assert true)
(define-const var3433 Int (port/1842567001 var2969)) ; Statement: $i1 = virtualinvoke r3.<okhttp3.HttpUrl: int port()>() 
(assert true)
(define-const var3183 Int (port/1842567001 var3823)) ; Statement: $i0 = virtualinvoke $r8.<okhttp3.HttpUrl: int port()>() 
 ; Statement: if $i1 == $i0 goto $r5 = virtualinvoke r3.<okhttp3.HttpUrl: java.lang.String host()>() 
(assert (not (= var3433 var3183))) ; Negate: Cond: $i1 == $i0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {route/-1511555494=([okhttp3.internal.connection.RealConnection], okhttp3.Route), address/678262376=([okhttp3.Route], okhttp3.Address), url/-535442747=([okhttp3.Address], okhttp3.HttpUrl), port/1842567001=([okhttp3.HttpUrl], int)}
; {var1446=okhttp3.internal.connection.RealConnection, var3498=r0, var573=okhttp3.HttpUrl, var2969=r3, var1348=okhttp3.internal.Util, var1672=$z0, var714=okhttp3.Route, var1759=$r1, var2986=okhttp3.Address, var315=$r2, var3823=$r8, var3433=$i1, var3183=$i0}
; {okhttp3.internal.connection.RealConnection=var1446, r0=var3498, okhttp3.HttpUrl=var573, r3=var2969, okhttp3.internal.Util=var1348, $z0=var1672, okhttp3.Route=var714, $r1=var1759, okhttp3.Address=var2986, $r2=var315, $r8=var3823, $i1=var3433, $i0=var3183}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.connection.RealConnection;	r3 := @parameter0: okhttp3.HttpUrl;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	$r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	$r2 = virtualinvoke $r1.<okhttp3.Route: okhttp3.Address address()>();	$r8 = virtualinvoke $r2.<okhttp3.Address: okhttp3.HttpUrl url()>();	$i1 = virtualinvoke r3.<okhttp3.HttpUrl: int port()>();	$i0 = virtualinvoke $r8.<okhttp3.HttpUrl: int port()>();	if $i1 == $i0 goto $r5 = virtualinvoke r3.<okhttp3.HttpUrl: java.lang.String host()>();	return 0
;block_num 3