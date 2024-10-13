(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1774 0)
(declare-sort var1867 0)
(declare-sort var381 0)
(declare-sort var1698 0)
(declare-sort var362 0)
(declare-sort var62 0)
(declare-sort var3613 0)
(declare-sort var3814 0)
(declare-sort var3288 0)
(declare-sort var122 0)
(declare-sort var305 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var305!class ClassObject)
(declare-fun <init>/1437359145 (var1698 var1867 var381) void)
(declare-fun cast-from-var1774-to-var1698 (var1774) var1698)
(declare-fun type/-1210071563 (var1698) var362)
(declare-fun getMainHost/-219539083 (var1698) var62)
(declare-fun getHostProperties/-1943636636 (var62) var3613)
(declare-fun getHost/28295174 (var62) String)
(declare-fun var3814_getString/-1547297038 (String) String)
(declare-fun var122_createException/361149092 (ClassObject String) var3288)
(declare-fun cast-from-var3288-to-var305 (var3288) var305)
(declare-const null-var1774 var1774)
(declare-const null-var1867 var1867)
(declare-const null-var381 var381)
(declare-const var362-FAILOVER_DNS_SRV_CONNECTION var362)
(declare-const var138 var1774) ; Statement: r0 := @this: com.mysql.cj.conf.url.FailoverDnsSrvConnectionUrl 
(assert (not (= var138 null-var1774)))
(declare-const var1927 var1867) ; Statement: r1 := @parameter0: com.mysql.cj.conf.ConnectionUrlParser 
(assert (not (= var1927 null-var1867)))
(declare-const var2151 var381) ; Statement: r2 := @parameter1: java.util.Properties 
(assert (not (= var2151 null-var381)))
(assert true)
;(assert (<init>/1437359145 (cast-from-var1774-to-var1698 var138) var1927 var2151)) ; Statement: specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: void <init>(com.mysql.cj.conf.ConnectionUrlParser,java.util.Properties)>(r1, r2) 

(declare-const var138!1 var1774)
(declare-const var1927!1 var1867)
(declare-const var2151!1 var381)
(define-const var1442 var362 var362-FAILOVER_DNS_SRV_CONNECTION) ; Statement: $r3 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type FAILOVER_DNS_SRV_CONNECTION> 
(declare-const var138!2 var1774)
(assert (not (= var138!2 null-var1774)))
(assert (= (type/-1210071563 (cast-from-var1774-to-var1698 var138!2)) var1442)) ; Statement: r0.<com.mysql.cj.conf.url.FailoverDnsSrvConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> = $r3 
(assert true)
(define-const var1924 var62 (getMainHost/-219539083 (cast-from-var1774-to-var1698 var138!2))) ; Statement: r4 = specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: com.mysql.cj.conf.HostInfo getMainHost()>() 
(assert true)
(define-const var679 var3613 (getHostProperties/-1943636636 var1924)) ; Statement: r5 = virtualinvoke r4.<com.mysql.cj.conf.HostInfo: java.util.Map getHostProperties()>() 
(define-const var3626 String "") ; Statement: $r7 = "" 
(assert true)
(define-const var1665 String (getHost/28295174 var1924)) ; Statement: $r6 = virtualinvoke r4.<com.mysql.cj.conf.HostInfo: java.lang.String getHost()>() 
(assert true)
(define-const var2420 Bool (= var3626 var1665)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto $r8 = r0.<com.mysql.cj.conf.url.FailoverDnsSrvConnectionUrl: java.util.List hosts> 
(assert (not (= (ite var2420 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var990 String (var3814_getString/-1547297038 "ConnectionString.18")) ; Statement: $r39 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("ConnectionString.18") 
(define-const var3806 var3288 (var122_createException/361149092 var305!class var990)) ; Statement: $r40 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/InvalidConnectionAttributeException;", $r39) 
(define-const var2333 var305 (cast-from-var3288-to-var305 var3806)) ; Statement: $r41 = (com.mysql.cj.exceptions.InvalidConnectionAttributeException) $r40 
 ; Statement: throw $r41 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1437359145=([com.mysql.cj.conf.ConnectionUrl, com.mysql.cj.conf.ConnectionUrlParser, java.util.Properties], void), cast-from-var1774-to-var1698=([com.mysql.cj.conf.url.FailoverDnsSrvConnectionUrl], com.mysql.cj.conf.ConnectionUrl), type/-1210071563=([com.mysql.cj.conf.ConnectionUrl], com.mysql.cj.conf.ConnectionUrl$Type), getMainHost/-219539083=([com.mysql.cj.conf.ConnectionUrl], com.mysql.cj.conf.HostInfo), getHostProperties/-1943636636=([com.mysql.cj.conf.HostInfo], java.util.Map), getHost/28295174=([com.mysql.cj.conf.HostInfo], java.lang.String), var3814_getString/-1547297038=([java.lang.String], java.lang.String), var122_createException/361149092=([java.lang.Class, java.lang.String], com.mysql.cj.exceptions.CJException), cast-from-var3288-to-var305=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.InvalidConnectionAttributeException)}
; {var1774=com.mysql.cj.conf.url.FailoverDnsSrvConnectionUrl, var138=r0, var1867=com.mysql.cj.conf.ConnectionUrlParser, var1927=r1, var381=java.util.Properties, var2151=r2, var1698=com.mysql.cj.conf.ConnectionUrl, var362=com.mysql.cj.conf.ConnectionUrl$Type, var1442=$r3, var62=com.mysql.cj.conf.HostInfo, var1924=r4, var3613=java.util.Map, var679=r5, var3626=$r7, var1665=$r6, var2420=$z0, var3814=com.mysql.cj.Messages, var990=$r39, var3288=com.mysql.cj.exceptions.CJException, var122=com.mysql.cj.exceptions.ExceptionFactory, var305=com.mysql.cj.exceptions.InvalidConnectionAttributeException, var3806=$r40, var2333=$r41}
; {com.mysql.cj.conf.url.FailoverDnsSrvConnectionUrl=var1774, r0=var138, com.mysql.cj.conf.ConnectionUrlParser=var1867, r1=var1927, java.util.Properties=var381, r2=var2151, com.mysql.cj.conf.ConnectionUrl=var1698, com.mysql.cj.conf.ConnectionUrl$Type=var362, $r3=var1442, com.mysql.cj.conf.HostInfo=var62, r4=var1924, java.util.Map=var3613, r5=var679, $r7=var3626, $r6=var1665, $z0=var2420, com.mysql.cj.Messages=var3814, $r39=var990, com.mysql.cj.exceptions.CJException=var3288, com.mysql.cj.exceptions.ExceptionFactory=var122, com.mysql.cj.exceptions.InvalidConnectionAttributeException=var305, $r40=var3806, $r41=var2333}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.mysql.cj.conf.url.FailoverDnsSrvConnectionUrl;	r1 := @parameter0: com.mysql.cj.conf.ConnectionUrlParser;	r2 := @parameter1: java.util.Properties;	specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: void <init>(com.mysql.cj.conf.ConnectionUrlParser,java.util.Properties)>(r1, r2);	$r3 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type FAILOVER_DNS_SRV_CONNECTION>;	r0.<com.mysql.cj.conf.url.FailoverDnsSrvConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> = $r3;	r4 = specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: com.mysql.cj.conf.HostInfo getMainHost()>();	r5 = virtualinvoke r4.<com.mysql.cj.conf.HostInfo: java.util.Map getHostProperties()>();	$r7 = "";	$r6 = virtualinvoke r4.<com.mysql.cj.conf.HostInfo: java.lang.String getHost()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto $r8 = r0.<com.mysql.cj.conf.url.FailoverDnsSrvConnectionUrl: java.util.List hosts>;	$r39 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("ConnectionString.18");	$r40 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/InvalidConnectionAttributeException;", $r39);	$r41 = (com.mysql.cj.exceptions.InvalidConnectionAttributeException) $r40;	throw $r41
;block_num 2