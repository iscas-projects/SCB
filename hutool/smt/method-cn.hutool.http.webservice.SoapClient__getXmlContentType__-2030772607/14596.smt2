(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3500 0)
(declare-sort var42 0)
(declare-sort var3284 0)
(declare-sort var647 0)
(declare-sort var3589 0)
(declare-sort var1710 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun protocol/-1543990205 (var3500) var3284)
(declare-fun ordinal/-291641772 (var647) Int)
(declare-fun cast-from-var3284-to-var647 (var3284) var647)
(declare-fun var3589-init () var3589)
(declare-fun arr-var1710-init () (Array Int var1710))
(declare-fun cast-from-var3284-to-var1710 (var3284) var1710)
(declare-fun <init>/-55813994 (var3589 String (Array Int var1710)) void)
(declare-const null-var3500 var3500)
(declare-const var42-$SwitchMap$cn$hutool$http$webservice$SoapProtocol (Array Int Int))
(declare-const null-__Array__Int__var1710__ (Array Int var1710))
(declare-const var3850 var3500) ; Statement: r0 := @this: cn.hutool.http.webservice.SoapClient 
(assert (not (= var3850 null-var3500)))
(define-const var3302 (Array Int Int) var42-$SwitchMap$cn$hutool$http$webservice$SoapProtocol) ; Statement: $r2 = <cn.hutool.http.webservice.SoapClient$1: int[] $SwitchMap$cn$hutool$http$webservice$SoapProtocol> 
(define-const var2094 var3284 (protocol/-1543990205 var3850)) ; Statement: $r1 = r0.<cn.hutool.http.webservice.SoapClient: cn.hutool.http.webservice.SoapProtocol protocol> 
(assert true)
(define-const var1669 Int (ordinal/-291641772 (cast-from-var3284-to-var647 var2094))) ; Statement: $i0 = virtualinvoke $r1.<cn.hutool.http.webservice.SoapProtocol: int ordinal()>() 
(define-const var3140 Int (select var3302 var1669)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r9 = "text/xml;charset=";     case 2: goto $r5 = "application/soap+xml;charset=";     default: goto $r11 = new cn.hutool.http.webservice.SoapRuntimeException; } 
(assert (and (not (= var3140 2)) (and (not (= var3140 1)) true))) ; Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var3276 var3589 var3589-init) ; Statement: $r11 = new cn.hutool.http.webservice.SoapRuntimeException 
(define-const var2029 (Array Int var1710) arr-var1710-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(define-const var2868 var3284 (protocol/-1543990205 var3850)) ; Statement: $r13 = r0.<cn.hutool.http.webservice.SoapClient: cn.hutool.http.webservice.SoapProtocol protocol> 
(declare-const var2029!1 (Array Int var1710))
(assert (not (= var2029!1 null-__Array__Int__var1710__)))
(assert (= (select var2029!1 0) (cast-from-var3284-to-var1710 var2868))) ; Statement: $r12[0] = $r13 
(assert true)
;(assert (<init>/-55813994 var3276 "Unsupported protocol: {}" var2029!1)) ; Statement: specialinvoke $r11.<cn.hutool.http.webservice.SoapRuntimeException: void <init>(java.lang.String,java.lang.Object[])>("Unsupported protocol: {}", $r12) 

(declare-const var3276!1 var3589)
(declare-const var323 String)
(declare-const var2029!2 (Array Int var1710))
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {protocol/-1543990205=([cn.hutool.http.webservice.SoapClient], cn.hutool.http.webservice.SoapProtocol), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3284-to-var647=([cn.hutool.http.webservice.SoapProtocol], java.lang.Enum), var3589-init=([], cn.hutool.http.webservice.SoapRuntimeException), arr-var1710-init=([], java.lang.Object[]), cast-from-var3284-to-var1710=([cn.hutool.http.webservice.SoapProtocol], java.lang.Object), <init>/-55813994=([cn.hutool.http.webservice.SoapRuntimeException, java.lang.String, java.lang.Object[]], void)}
; {var3500=cn.hutool.http.webservice.SoapClient, var3850=r0, var42=cn.hutool.http.webservice.SoapClient$1, var3302=$r2, var3284=cn.hutool.http.webservice.SoapProtocol, var2094=$r1, var647=java.lang.Enum, var1669=$i0, var3140=$i1, var3589=cn.hutool.http.webservice.SoapRuntimeException, var3276=$r11, var1710=java.lang.Object, var2029=$r12, var2868=$r13, var323="Unsupported protocol: {}"}
; {cn.hutool.http.webservice.SoapClient=var3500, r0=var3850, cn.hutool.http.webservice.SoapClient$1=var42, $r2=var3302, cn.hutool.http.webservice.SoapProtocol=var3284, $r1=var2094, java.lang.Enum=var647, $i0=var1669, $i1=var3140, cn.hutool.http.webservice.SoapRuntimeException=var3589, $r11=var3276, java.lang.Object=var1710, $r12=var2029, $r13=var2868, "Unsupported protocol: {}"=var323}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.http.webservice.SoapClient;	$r2 = <cn.hutool.http.webservice.SoapClient$1: int[] $SwitchMap$cn$hutool$http$webservice$SoapProtocol>;	$r1 = r0.<cn.hutool.http.webservice.SoapClient: cn.hutool.http.webservice.SoapProtocol protocol>;	$i0 = virtualinvoke $r1.<cn.hutool.http.webservice.SoapProtocol: int ordinal()>();	$i1 = $r2[$i0];	lookupswitch($i1) {     case 1: goto $r9 = "text/xml;charset=";     case 2: goto $r5 = "application/soap+xml;charset=";     default: goto $r11 = new cn.hutool.http.webservice.SoapRuntimeException; };	$r11 = new cn.hutool.http.webservice.SoapRuntimeException;	$r12 = newarray (java.lang.Object)[1];	$r13 = r0.<cn.hutool.http.webservice.SoapClient: cn.hutool.http.webservice.SoapProtocol protocol>;	$r12[0] = $r13;	specialinvoke $r11.<cn.hutool.http.webservice.SoapRuntimeException: void <init>(java.lang.String,java.lang.Object[])>("Unsupported protocol: {}", $r12);	throw $r11
;block_num 2