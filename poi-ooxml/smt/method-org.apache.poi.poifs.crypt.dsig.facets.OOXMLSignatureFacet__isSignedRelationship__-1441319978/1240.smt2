(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1839 0)
(declare-sort var436 0)
(declare-sort var1691 0)
(declare-sort var734 0)
(declare-sort var535 0)
(declare-sort var775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var436_atDebug/-1653529376 (var436) var734)
(declare-fun var734_log/-408545991 (var734 String var535) void)
(declare-fun cast-from-String-to-var535 (String) var535)
(declare-fun replaceFirst/750800361 (String String String) String)
(declare-fun var775_contains/1636690605 (var775 var535) Bool)
(declare-const null-String String)
(declare-const var1691-LOG var436)
(declare-const var1691-signed var775)
(declare-const var1039 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1039 null-String)))
(define-const var413 var436 var1691-LOG) ; Statement: $r0 = <org.apache.poi.poifs.crypt.dsig.facets.OOXMLSignatureFacet: org.apache.logging.log4j.Logger LOG> 
(define-const var2355 var734 (var436_atDebug/-1653529376 var413)) ; Statement: $r2 = interfaceinvoke $r0.<org.apache.logging.log4j.Logger: org.apache.logging.log4j.LogBuilder atDebug()>() 
;(assert (var734_log/-408545991 var2355 "relationship type: {}" (cast-from-String-to-var535 var1039))) ; Statement: interfaceinvoke $r2.<org.apache.logging.log4j.LogBuilder: void log(java.lang.String,java.lang.Object)>("relationship type: {}", r1) 

(declare-const var2355!1 var734)
(declare-const var3013 String)
(declare-const var1039!1 String)
(assert true)
(define-const var2375 String (replaceFirst/750800361 var1039!1 ".*/relationships/" "")) ; Statement: r3 = virtualinvoke r1.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>(".*/relationships/", "") 
(assert (= (replaceFirst/750800361 var1039!1 ".*/relationships/" "") (str.replace_re var1039!1 (re.++ (re.* re.allchar) (str.to_re "/relationships/")) "")))
(define-const var2682 var775 var1691-signed) ; Statement: $r4 = <org.apache.poi.poifs.crypt.dsig.facets.OOXMLSignatureFacet: java.util.Set signed> 
(define-const var3589 Bool (var775_contains/1636690605 var2682 (cast-from-String-to-var535 var2375))) ; Statement: $z0 = interfaceinvoke $r4.<java.util.Set: boolean contains(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var3589 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2521 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {var436_atDebug/-1653529376=([org.apache.logging.log4j.Logger], org.apache.logging.log4j.LogBuilder), var734_log/-408545991=([org.apache.logging.log4j.LogBuilder, java.lang.String, java.lang.Object], void), cast-from-String-to-var535=([java.lang.String], java.lang.Object), replaceFirst/750800361=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), var775_contains/1636690605=([java.util.Set, java.lang.Object], boolean)}
; {var1039=r1, var1839=null_type, var436=org.apache.logging.log4j.Logger, var1691=org.apache.poi.poifs.crypt.dsig.facets.OOXMLSignatureFacet, var413=$r0, var734=org.apache.logging.log4j.LogBuilder, var2355=$r2, var535=java.lang.Object, var3013="relationship type: {}", var2375=r3, var775=java.util.Set, var2682=$r4, var3589=$z0, var2521=$z2}
; {r1=var1039, null_type=var1839, org.apache.logging.log4j.Logger=var436, org.apache.poi.poifs.crypt.dsig.facets.OOXMLSignatureFacet=var1691, $r0=var413, org.apache.logging.log4j.LogBuilder=var734, $r2=var2355, java.lang.Object=var535, "relationship type: {}"=var3013, r3=var2375, java.util.Set=var775, $r4=var2682, $z0=var3589, $z2=var2521}
;seq <java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = <org.apache.poi.poifs.crypt.dsig.facets.OOXMLSignatureFacet: org.apache.logging.log4j.Logger LOG>;	$r2 = interfaceinvoke $r0.<org.apache.logging.log4j.Logger: org.apache.logging.log4j.LogBuilder atDebug()>();	interfaceinvoke $r2.<org.apache.logging.log4j.LogBuilder: void log(java.lang.String,java.lang.Object)>("relationship type: {}", r1);	r3 = virtualinvoke r1.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>(".*/relationships/", "");	$r4 = <org.apache.poi.poifs.crypt.dsig.facets.OOXMLSignatureFacet: java.util.Set signed>;	$z0 = interfaceinvoke $r4.<java.util.Set: boolean contains(java.lang.Object)>(r3);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3