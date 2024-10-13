(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3303 0)
(declare-sort var280 0)
(declare-sort var2007 0)
(declare-sort var3686 0)
(declare-sort var2246 0)
(declare-sort var955 0)
(declare-sort var500 0)
(declare-sort var1561 0)
(declare-sort var718 0)
(declare-sort var1978 0)
(declare-sort var837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var837!class ClassObject)
(declare-fun <init>/1437359145 (var3686 var280 var2007) void)
(declare-fun cast-from-var3303-to-var3686 (var3303) var3686)
(declare-fun type/-1210071563 (var3686) var2246)
(declare-fun getMainHost/-219539083 (var3686) var955)
(declare-fun getHostProperties/-1943636636 (var955) var500)
(declare-fun getHost/28295174 (var955) String)
(declare-fun var1561_getString/-1547297038 (String) String)
(declare-fun var1978_createException/361149092 (ClassObject String) var718)
(declare-fun cast-from-var718-to-var837 (var718) var837)
(declare-const null-var3303 var3303)
(declare-const null-var280 var280)
(declare-const null-var2007 var2007)
(declare-const var2246-XDEVAPI_DNS_SRV_SESSION var2246)
(declare-const var1459 var3303) ; Statement: r0 := @this: com.mysql.cj.conf.url.XDevApiDnsSrvConnectionUrl 
(assert (not (= var1459 null-var3303)))
(declare-const var2137 var280) ; Statement: r1 := @parameter0: com.mysql.cj.conf.ConnectionUrlParser 
(assert (not (= var2137 null-var280)))
(declare-const var1256 var2007) ; Statement: r2 := @parameter1: java.util.Properties 
(assert (not (= var1256 null-var2007)))
(assert true)
;(assert (<init>/1437359145 (cast-from-var3303-to-var3686 var1459) var2137 var1256)) ; Statement: specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: void <init>(com.mysql.cj.conf.ConnectionUrlParser,java.util.Properties)>(r1, r2) 

(declare-const var1459!1 var3303)
(declare-const var2137!1 var280)
(declare-const var1256!1 var2007)
(define-const var2428 var2246 var2246-XDEVAPI_DNS_SRV_SESSION) ; Statement: $r3 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type XDEVAPI_DNS_SRV_SESSION> 
(declare-const var1459!2 var3303)
(assert (not (= var1459!2 null-var3303)))
(assert (= (type/-1210071563 (cast-from-var3303-to-var3686 var1459!2)) var2428)) ; Statement: r0.<com.mysql.cj.conf.url.XDevApiDnsSrvConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> = $r3 
(assert true)
(define-const var1955 var955 (getMainHost/-219539083 (cast-from-var3303-to-var3686 var1459!2))) ; Statement: r4 = specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: com.mysql.cj.conf.HostInfo getMainHost()>() 
(assert true)
(define-const var1306 var500 (getHostProperties/-1943636636 var1955)) ; Statement: r5 = virtualinvoke r4.<com.mysql.cj.conf.HostInfo: java.util.Map getHostProperties()>() 
(define-const var267 String "") ; Statement: $r7 = "" 
(assert true)
(define-const var2292 String (getHost/28295174 var1955)) ; Statement: $r6 = virtualinvoke r4.<com.mysql.cj.conf.HostInfo: java.lang.String getHost()>() 
(assert true)
(define-const var2895 Bool (= var267 var2292)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto $r8 = r0.<com.mysql.cj.conf.url.XDevApiDnsSrvConnectionUrl: java.util.List hosts> 
(assert (not (= (ite var2895 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1694 String (var1561_getString/-1547297038 "ConnectionString.18")) ; Statement: $r30 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("ConnectionString.18") 
(define-const var27 var718 (var1978_createException/361149092 var837!class var1694)) ; Statement: $r31 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/InvalidConnectionAttributeException;", $r30) 
(define-const var2664 var837 (cast-from-var718-to-var837 var27)) ; Statement: $r32 = (com.mysql.cj.exceptions.InvalidConnectionAttributeException) $r31 
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1437359145=([com.mysql.cj.conf.ConnectionUrl, com.mysql.cj.conf.ConnectionUrlParser, java.util.Properties], void), cast-from-var3303-to-var3686=([com.mysql.cj.conf.url.XDevApiDnsSrvConnectionUrl], com.mysql.cj.conf.ConnectionUrl), type/-1210071563=([com.mysql.cj.conf.ConnectionUrl], com.mysql.cj.conf.ConnectionUrl$Type), getMainHost/-219539083=([com.mysql.cj.conf.ConnectionUrl], com.mysql.cj.conf.HostInfo), getHostProperties/-1943636636=([com.mysql.cj.conf.HostInfo], java.util.Map), getHost/28295174=([com.mysql.cj.conf.HostInfo], java.lang.String), var1561_getString/-1547297038=([java.lang.String], java.lang.String), var1978_createException/361149092=([java.lang.Class, java.lang.String], com.mysql.cj.exceptions.CJException), cast-from-var718-to-var837=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.InvalidConnectionAttributeException)}
; {var3303=com.mysql.cj.conf.url.XDevApiDnsSrvConnectionUrl, var1459=r0, var280=com.mysql.cj.conf.ConnectionUrlParser, var2137=r1, var2007=java.util.Properties, var1256=r2, var3686=com.mysql.cj.conf.ConnectionUrl, var2246=com.mysql.cj.conf.ConnectionUrl$Type, var2428=$r3, var955=com.mysql.cj.conf.HostInfo, var1955=r4, var500=java.util.Map, var1306=r5, var267=$r7, var2292=$r6, var2895=$z0, var1561=com.mysql.cj.Messages, var1694=$r30, var718=com.mysql.cj.exceptions.CJException, var1978=com.mysql.cj.exceptions.ExceptionFactory, var837=com.mysql.cj.exceptions.InvalidConnectionAttributeException, var27=$r31, var2664=$r32}
; {com.mysql.cj.conf.url.XDevApiDnsSrvConnectionUrl=var3303, r0=var1459, com.mysql.cj.conf.ConnectionUrlParser=var280, r1=var2137, java.util.Properties=var2007, r2=var1256, com.mysql.cj.conf.ConnectionUrl=var3686, com.mysql.cj.conf.ConnectionUrl$Type=var2246, $r3=var2428, com.mysql.cj.conf.HostInfo=var955, r4=var1955, java.util.Map=var500, r5=var1306, $r7=var267, $r6=var2292, $z0=var2895, com.mysql.cj.Messages=var1561, $r30=var1694, com.mysql.cj.exceptions.CJException=var718, com.mysql.cj.exceptions.ExceptionFactory=var1978, com.mysql.cj.exceptions.InvalidConnectionAttributeException=var837, $r31=var27, $r32=var2664}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.mysql.cj.conf.url.XDevApiDnsSrvConnectionUrl;	r1 := @parameter0: com.mysql.cj.conf.ConnectionUrlParser;	r2 := @parameter1: java.util.Properties;	specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: void <init>(com.mysql.cj.conf.ConnectionUrlParser,java.util.Properties)>(r1, r2);	$r3 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type XDEVAPI_DNS_SRV_SESSION>;	r0.<com.mysql.cj.conf.url.XDevApiDnsSrvConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> = $r3;	r4 = specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: com.mysql.cj.conf.HostInfo getMainHost()>();	r5 = virtualinvoke r4.<com.mysql.cj.conf.HostInfo: java.util.Map getHostProperties()>();	$r7 = "";	$r6 = virtualinvoke r4.<com.mysql.cj.conf.HostInfo: java.lang.String getHost()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto $r8 = r0.<com.mysql.cj.conf.url.XDevApiDnsSrvConnectionUrl: java.util.List hosts>;	$r30 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("ConnectionString.18");	$r31 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/InvalidConnectionAttributeException;", $r30);	$r32 = (com.mysql.cj.exceptions.InvalidConnectionAttributeException) $r31;	throw $r32
;block_num 2