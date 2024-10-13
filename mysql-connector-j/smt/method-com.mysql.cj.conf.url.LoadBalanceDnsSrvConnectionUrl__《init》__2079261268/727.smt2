(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3726 0)
(declare-sort var1234 0)
(declare-sort var40 0)
(declare-sort var3661 0)
(declare-sort var1087 0)
(declare-sort var1922 0)
(declare-sort var1936 0)
(declare-sort var2018 0)
(declare-sort var1065 0)
(declare-sort var3717 0)
(declare-sort var335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var335!class ClassObject)
(declare-fun <init>/1437359145 (var3661 var1234 var40) void)
(declare-fun cast-from-var3726-to-var3661 (var3726) var3661)
(declare-fun type/-1210071563 (var3661) var1087)
(declare-fun getMainHost/-219539083 (var3661) var1922)
(declare-fun getHostProperties/-1943636636 (var1922) var1936)
(declare-fun getHost/28295174 (var1922) String)
(declare-fun var2018_getString/-1547297038 (String) String)
(declare-fun var3717_createException/361149092 (ClassObject String) var1065)
(declare-fun cast-from-var1065-to-var335 (var1065) var335)
(declare-const null-var3726 var3726)
(declare-const null-var1234 var1234)
(declare-const null-var40 var40)
(declare-const var1087-LOADBALANCE_DNS_SRV_CONNECTION var1087)
(declare-const var3192 var3726) ; Statement: r0 := @this: com.mysql.cj.conf.url.LoadBalanceDnsSrvConnectionUrl 
(assert (not (= var3192 null-var3726)))
(declare-const var3980 var1234) ; Statement: r1 := @parameter0: com.mysql.cj.conf.ConnectionUrlParser 
(assert (not (= var3980 null-var1234)))
(declare-const var3096 var40) ; Statement: r2 := @parameter1: java.util.Properties 
(assert (not (= var3096 null-var40)))
(assert true)
;(assert (<init>/1437359145 (cast-from-var3726-to-var3661 var3192) var3980 var3096)) ; Statement: specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: void <init>(com.mysql.cj.conf.ConnectionUrlParser,java.util.Properties)>(r1, r2) 

(declare-const var3192!1 var3726)
(declare-const var3980!1 var1234)
(declare-const var3096!1 var40)
(define-const var1891 var1087 var1087-LOADBALANCE_DNS_SRV_CONNECTION) ; Statement: $r3 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type LOADBALANCE_DNS_SRV_CONNECTION> 
(declare-const var3192!2 var3726)
(assert (not (= var3192!2 null-var3726)))
(assert (= (type/-1210071563 (cast-from-var3726-to-var3661 var3192!2)) var1891)) ; Statement: r0.<com.mysql.cj.conf.url.LoadBalanceDnsSrvConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> = $r3 
(assert true)
(define-const var123 var1922 (getMainHost/-219539083 (cast-from-var3726-to-var3661 var3192!2))) ; Statement: r4 = specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: com.mysql.cj.conf.HostInfo getMainHost()>() 
(assert true)
(define-const var2692 var1936 (getHostProperties/-1943636636 var123)) ; Statement: r5 = virtualinvoke r4.<com.mysql.cj.conf.HostInfo: java.util.Map getHostProperties()>() 
(define-const var1515 String "") ; Statement: $r7 = "" 
(assert true)
(define-const var1761 String (getHost/28295174 var123)) ; Statement: $r6 = virtualinvoke r4.<com.mysql.cj.conf.HostInfo: java.lang.String getHost()>() 
(assert true)
(define-const var3040 Bool (= var1515 var1761)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto $r8 = r0.<com.mysql.cj.conf.url.LoadBalanceDnsSrvConnectionUrl: java.util.List hosts> 
(assert (not (= (ite var3040 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var265 String (var2018_getString/-1547297038 "ConnectionString.18")) ; Statement: $r47 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("ConnectionString.18") 
(define-const var593 var1065 (var3717_createException/361149092 var335!class var265)) ; Statement: $r48 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/InvalidConnectionAttributeException;", $r47) 
(define-const var3238 var335 (cast-from-var1065-to-var335 var593)) ; Statement: $r49 = (com.mysql.cj.exceptions.InvalidConnectionAttributeException) $r48 
 ; Statement: throw $r49 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1437359145=([com.mysql.cj.conf.ConnectionUrl, com.mysql.cj.conf.ConnectionUrlParser, java.util.Properties], void), cast-from-var3726-to-var3661=([com.mysql.cj.conf.url.LoadBalanceDnsSrvConnectionUrl], com.mysql.cj.conf.ConnectionUrl), type/-1210071563=([com.mysql.cj.conf.ConnectionUrl], com.mysql.cj.conf.ConnectionUrl$Type), getMainHost/-219539083=([com.mysql.cj.conf.ConnectionUrl], com.mysql.cj.conf.HostInfo), getHostProperties/-1943636636=([com.mysql.cj.conf.HostInfo], java.util.Map), getHost/28295174=([com.mysql.cj.conf.HostInfo], java.lang.String), var2018_getString/-1547297038=([java.lang.String], java.lang.String), var3717_createException/361149092=([java.lang.Class, java.lang.String], com.mysql.cj.exceptions.CJException), cast-from-var1065-to-var335=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.InvalidConnectionAttributeException)}
; {var3726=com.mysql.cj.conf.url.LoadBalanceDnsSrvConnectionUrl, var3192=r0, var1234=com.mysql.cj.conf.ConnectionUrlParser, var3980=r1, var40=java.util.Properties, var3096=r2, var3661=com.mysql.cj.conf.ConnectionUrl, var1087=com.mysql.cj.conf.ConnectionUrl$Type, var1891=$r3, var1922=com.mysql.cj.conf.HostInfo, var123=r4, var1936=java.util.Map, var2692=r5, var1515=$r7, var1761=$r6, var3040=$z0, var2018=com.mysql.cj.Messages, var265=$r47, var1065=com.mysql.cj.exceptions.CJException, var3717=com.mysql.cj.exceptions.ExceptionFactory, var335=com.mysql.cj.exceptions.InvalidConnectionAttributeException, var593=$r48, var3238=$r49}
; {com.mysql.cj.conf.url.LoadBalanceDnsSrvConnectionUrl=var3726, r0=var3192, com.mysql.cj.conf.ConnectionUrlParser=var1234, r1=var3980, java.util.Properties=var40, r2=var3096, com.mysql.cj.conf.ConnectionUrl=var3661, com.mysql.cj.conf.ConnectionUrl$Type=var1087, $r3=var1891, com.mysql.cj.conf.HostInfo=var1922, r4=var123, java.util.Map=var1936, r5=var2692, $r7=var1515, $r6=var1761, $z0=var3040, com.mysql.cj.Messages=var2018, $r47=var265, com.mysql.cj.exceptions.CJException=var1065, com.mysql.cj.exceptions.ExceptionFactory=var3717, com.mysql.cj.exceptions.InvalidConnectionAttributeException=var335, $r48=var593, $r49=var3238}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.mysql.cj.conf.url.LoadBalanceDnsSrvConnectionUrl;	r1 := @parameter0: com.mysql.cj.conf.ConnectionUrlParser;	r2 := @parameter1: java.util.Properties;	specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: void <init>(com.mysql.cj.conf.ConnectionUrlParser,java.util.Properties)>(r1, r2);	$r3 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type LOADBALANCE_DNS_SRV_CONNECTION>;	r0.<com.mysql.cj.conf.url.LoadBalanceDnsSrvConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> = $r3;	r4 = specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: com.mysql.cj.conf.HostInfo getMainHost()>();	r5 = virtualinvoke r4.<com.mysql.cj.conf.HostInfo: java.util.Map getHostProperties()>();	$r7 = "";	$r6 = virtualinvoke r4.<com.mysql.cj.conf.HostInfo: java.lang.String getHost()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto $r8 = r0.<com.mysql.cj.conf.url.LoadBalanceDnsSrvConnectionUrl: java.util.List hosts>;	$r47 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("ConnectionString.18");	$r48 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/InvalidConnectionAttributeException;", $r47);	$r49 = (com.mysql.cj.exceptions.InvalidConnectionAttributeException) $r48;	throw $r49
;block_num 2