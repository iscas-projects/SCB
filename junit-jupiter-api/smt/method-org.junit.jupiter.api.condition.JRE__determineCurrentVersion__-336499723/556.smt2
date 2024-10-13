(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1991 0)
(declare-sort var2014 0)
(declare-sort var1438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1991_getProperty/258823597 (String) String)
(declare-fun var2014_isBlank/1722812613 (String) Bool)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const var1438-JAVA_8 var1438)
(define-const var3453 String (var1991_getProperty/258823597 "java.version")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.version") 
(define-const var2396 Bool (var2014_isBlank/1722812613 var3453)) ; Statement: z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isBlank(java.lang.String)>(r0) 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var2396 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z0 != 0 goto $r2 = class "Ljava/lang/Runtime;" 
(assert (not (not (= (ite var2396 1 0) 0)))) ; Negate: Cond: z0 != 0  
(assert true)
(define-const var3149 Bool (startsWith/-1785782452 var3453 "1.8")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("1.8") 
 ; Statement: if $z1 == 0 goto $r2 = class "Ljava/lang/Runtime;" 
(assert (not (= (ite var3149 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1459 var1438 var1438-JAVA_8) ; Statement: $r27 = <org.junit.jupiter.api.condition.JRE: org.junit.jupiter.api.condition.JRE JAVA_8> 
 ; Statement: return $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {var1991_getProperty/258823597=([java.lang.String], java.lang.String), var2014_isBlank/1722812613=([java.lang.String], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1991=java.lang.System, var3453=r0, var2014=org.junit.platform.commons.util.StringUtils, var2396=z0, var3149=$z1, var1438=org.junit.jupiter.api.condition.JRE, var1459=$r27}
; {java.lang.System=var1991, r0=var3453, org.junit.platform.commons.util.StringUtils=var2014, z0=var2396, $z1=var3149, org.junit.jupiter.api.condition.JRE=var1438, $r27=var1459}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.version");	z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isBlank(java.lang.String)>(r0);	if z0 == 0 goto (branch);	if z0 != 0 goto $r2 = class "Ljava/lang/Runtime;";	$z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("1.8");	if $z1 == 0 goto $r2 = class "Ljava/lang/Runtime;";	$r27 = <org.junit.jupiter.api.condition.JRE: org.junit.jupiter.api.condition.JRE JAVA_8>;	return $r27
;block_num 4