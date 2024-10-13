(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2785 0)
(declare-sort var1465 0)
(declare-sort var2637 0)
(declare-sort var3027 0)
(declare-sort var1679 0)
(declare-sort var191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun protocol/-1543990205 (var2785) var2637)
(declare-fun ordinal/-291641772 (var3027) Int)
(declare-fun cast-from-var2637-to-var3027 (var2637) var3027)
(declare-fun charset/-1932151335 (var191) var1679)
(declare-fun cast-from-var2785-to-var191 (var2785) var191)
(declare-fun toString/-1479974020 (var1679) String)
(define-fun concat/1917019066 ((s String) (next String)) String (str.++ s next))
(declare-const null-var2785 var2785)
(declare-const var1465-$SwitchMap$cn$hutool$http$webservice$SoapProtocol (Array Int Int))
(declare-const var2054 var2785) ; Statement: r0 := @this: cn.hutool.http.webservice.SoapClient 
(assert (not (= var2054 null-var2785)))
(define-const var2596 (Array Int Int) var1465-$SwitchMap$cn$hutool$http$webservice$SoapProtocol) ; Statement: $r2 = <cn.hutool.http.webservice.SoapClient$1: int[] $SwitchMap$cn$hutool$http$webservice$SoapProtocol> 
(define-const var1597 var2637 (protocol/-1543990205 var2054)) ; Statement: $r1 = r0.<cn.hutool.http.webservice.SoapClient: cn.hutool.http.webservice.SoapProtocol protocol> 
(assert true)
(define-const var3223 Int (ordinal/-291641772 (cast-from-var2637-to-var3027 var1597))) ; Statement: $i0 = virtualinvoke $r1.<cn.hutool.http.webservice.SoapProtocol: int ordinal()>() 
(define-const var359 Int (select var2596 var3223)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r9 = "text/xml;charset=";     case 2: goto $r5 = "application/soap+xml;charset=";     default: goto $r11 = new cn.hutool.http.webservice.SoapRuntimeException; } 
(assert (and (= var359 1) true)) ; Intersect: Cond: $i1 == 1  and Non Conditional 
(define-const var3876 String "text/xml;charset=") ; Statement: $r9 = "text/xml;charset=" 
(define-const var3967 var1679 (charset/-1932151335 (cast-from-var2785-to-var191 var2054))) ; Statement: $r7 = r0.<cn.hutool.http.webservice.SoapClient: java.nio.charset.Charset charset> 
(assert true)
(define-const var1451 String (toString/-1479974020 var3967)) ; Statement: $r8 = virtualinvoke $r7.<java.nio.charset.Charset: java.lang.String toString()>() 
(assert true)
(define-const var1330 String (concat/1917019066 var3876 var1451)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.String: java.lang.String concat(java.lang.String)>($r8) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {protocol/-1543990205=([cn.hutool.http.webservice.SoapClient], cn.hutool.http.webservice.SoapProtocol), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2637-to-var3027=([cn.hutool.http.webservice.SoapProtocol], java.lang.Enum), charset/-1932151335=([cn.hutool.http.HttpBase], java.nio.charset.Charset), cast-from-var2785-to-var191=([cn.hutool.http.webservice.SoapClient], cn.hutool.http.HttpBase), toString/-1479974020=([java.nio.charset.Charset], java.lang.String), concat/1917019066=([java.lang.String, java.lang.String], java.lang.String)}
; {var2785=cn.hutool.http.webservice.SoapClient, var2054=r0, var1465=cn.hutool.http.webservice.SoapClient$1, var2596=$r2, var2637=cn.hutool.http.webservice.SoapProtocol, var1597=$r1, var3027=java.lang.Enum, var3223=$i0, var359=$i1, var3876=$r9, var1679=java.nio.charset.Charset, var191=cn.hutool.http.HttpBase, var3967=$r7, var1451=$r8, var1330=$r10}
; {cn.hutool.http.webservice.SoapClient=var2785, r0=var2054, cn.hutool.http.webservice.SoapClient$1=var1465, $r2=var2596, cn.hutool.http.webservice.SoapProtocol=var2637, $r1=var1597, java.lang.Enum=var3027, $i0=var3223, $i1=var359, $r9=var3876, java.nio.charset.Charset=var1679, cn.hutool.http.HttpBase=var191, $r7=var3967, $r8=var1451, $r10=var1330}
;seq <java.nio.charset.Charset: java.lang.String toString()>;	<java.lang.String: java.lang.String concat(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String concat(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.http.webservice.SoapClient;	$r2 = <cn.hutool.http.webservice.SoapClient$1: int[] $SwitchMap$cn$hutool$http$webservice$SoapProtocol>;	$r1 = r0.<cn.hutool.http.webservice.SoapClient: cn.hutool.http.webservice.SoapProtocol protocol>;	$i0 = virtualinvoke $r1.<cn.hutool.http.webservice.SoapProtocol: int ordinal()>();	$i1 = $r2[$i0];	lookupswitch($i1) {     case 1: goto $r9 = "text/xml;charset=";     case 2: goto $r5 = "application/soap+xml;charset=";     default: goto $r11 = new cn.hutool.http.webservice.SoapRuntimeException; };	$r9 = "text/xml;charset=";	$r7 = r0.<cn.hutool.http.webservice.SoapClient: java.nio.charset.Charset charset>;	$r8 = virtualinvoke $r7.<java.nio.charset.Charset: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.String: java.lang.String concat(java.lang.String)>($r8);	return $r10
;block_num 2