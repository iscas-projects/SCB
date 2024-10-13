(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2761 0)
(declare-sort var1473 0)
(declare-sort var2008 0)
(declare-sort var3322 0)
(declare-sort var2699 0)
(declare-sort var2340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun protocol/-1543990205 (var2761) var2008)
(declare-fun ordinal/-291641772 (var3322) Int)
(declare-fun cast-from-var2008-to-var3322 (var2008) var3322)
(declare-fun charset/-1932151335 (var2340) var2699)
(declare-fun cast-from-var2761-to-var2340 (var2761) var2340)
(declare-fun toString/-1479974020 (var2699) String)
(define-fun concat/1917019066 ((s String) (next String)) String (str.++ s next))
(declare-const null-var2761 var2761)
(declare-const var1473-$SwitchMap$cn$hutool$http$webservice$SoapProtocol (Array Int Int))
(declare-const var1701 var2761) ; Statement: r0 := @this: cn.hutool.http.webservice.SoapClient 
(assert (not (= var1701 null-var2761)))
(define-const var246 (Array Int Int) var1473-$SwitchMap$cn$hutool$http$webservice$SoapProtocol) ; Statement: $r2 = <cn.hutool.http.webservice.SoapClient$1: int[] $SwitchMap$cn$hutool$http$webservice$SoapProtocol> 
(define-const var242 var2008 (protocol/-1543990205 var1701)) ; Statement: $r1 = r0.<cn.hutool.http.webservice.SoapClient: cn.hutool.http.webservice.SoapProtocol protocol> 
(assert true)
(define-const var2114 Int (ordinal/-291641772 (cast-from-var2008-to-var3322 var242))) ; Statement: $i0 = virtualinvoke $r1.<cn.hutool.http.webservice.SoapProtocol: int ordinal()>() 
(define-const var144 Int (select var246 var2114)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r9 = "text/xml;charset=";     case 2: goto $r5 = "application/soap+xml;charset=";     default: goto $r11 = new cn.hutool.http.webservice.SoapRuntimeException; } 
(assert (and (= var144 2) (and (not (= var144 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var3924 String "application/soap+xml;charset=") ; Statement: $r5 = "application/soap+xml;charset=" 
(define-const var1488 var2699 (charset/-1932151335 (cast-from-var2761-to-var2340 var1701))) ; Statement: $r3 = r0.<cn.hutool.http.webservice.SoapClient: java.nio.charset.Charset charset> 
(assert true)
(define-const var1477 String (toString/-1479974020 var1488)) ; Statement: $r4 = virtualinvoke $r3.<java.nio.charset.Charset: java.lang.String toString()>() 
(assert true)
(define-const var2373 String (concat/1917019066 var3924 var1477)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String concat(java.lang.String)>($r4) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {protocol/-1543990205=([cn.hutool.http.webservice.SoapClient], cn.hutool.http.webservice.SoapProtocol), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2008-to-var3322=([cn.hutool.http.webservice.SoapProtocol], java.lang.Enum), charset/-1932151335=([cn.hutool.http.HttpBase], java.nio.charset.Charset), cast-from-var2761-to-var2340=([cn.hutool.http.webservice.SoapClient], cn.hutool.http.HttpBase), toString/-1479974020=([java.nio.charset.Charset], java.lang.String), concat/1917019066=([java.lang.String, java.lang.String], java.lang.String)}
; {var2761=cn.hutool.http.webservice.SoapClient, var1701=r0, var1473=cn.hutool.http.webservice.SoapClient$1, var246=$r2, var2008=cn.hutool.http.webservice.SoapProtocol, var242=$r1, var3322=java.lang.Enum, var2114=$i0, var144=$i1, var3924=$r5, var2699=java.nio.charset.Charset, var2340=cn.hutool.http.HttpBase, var1488=$r3, var1477=$r4, var2373=$r6}
; {cn.hutool.http.webservice.SoapClient=var2761, r0=var1701, cn.hutool.http.webservice.SoapClient$1=var1473, $r2=var246, cn.hutool.http.webservice.SoapProtocol=var2008, $r1=var242, java.lang.Enum=var3322, $i0=var2114, $i1=var144, $r5=var3924, java.nio.charset.Charset=var2699, cn.hutool.http.HttpBase=var2340, $r3=var1488, $r4=var1477, $r6=var2373}
;seq <java.nio.charset.Charset: java.lang.String toString()>;	<java.lang.String: java.lang.String concat(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String concat(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.http.webservice.SoapClient;	$r2 = <cn.hutool.http.webservice.SoapClient$1: int[] $SwitchMap$cn$hutool$http$webservice$SoapProtocol>;	$r1 = r0.<cn.hutool.http.webservice.SoapClient: cn.hutool.http.webservice.SoapProtocol protocol>;	$i0 = virtualinvoke $r1.<cn.hutool.http.webservice.SoapProtocol: int ordinal()>();	$i1 = $r2[$i0];	lookupswitch($i1) {     case 1: goto $r9 = "text/xml;charset=";     case 2: goto $r5 = "application/soap+xml;charset=";     default: goto $r11 = new cn.hutool.http.webservice.SoapRuntimeException; };	$r5 = "application/soap+xml;charset=";	$r3 = r0.<cn.hutool.http.webservice.SoapClient: java.nio.charset.Charset charset>;	$r4 = virtualinvoke $r3.<java.nio.charset.Charset: java.lang.String toString()>();	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String concat(java.lang.String)>($r4);	return $r6
;block_num 2