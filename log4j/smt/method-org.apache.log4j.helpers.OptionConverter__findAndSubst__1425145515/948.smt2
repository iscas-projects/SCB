(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3211 0)
(declare-sort var925 0)
(declare-sort var3021 0)
(declare-sort var2314 0)
(declare-sort var1421 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProperty/1391780669 (var925 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2314_error/1978659241 (String var1421) void)
(declare-fun cast-from-var3021-to-var1421 (var3021) var1421)
(declare-const null-String String)
(declare-const null-var925 var925)
(declare-const null-var3021 var3021)
(declare-const var3522 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3522 null-String)))
(declare-const var415 var925) ; Statement: r0 := @parameter1: java.util.Properties 
(assert (not (= var415 null-var925)))
(assert true)
(define-const var3104 String (getProperty/1391780669 var415 var3522)) ; Statement: r2 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String)>(r1) 
 ; Statement: if r2 != null goto $r3 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String substVars(java.lang.String,java.util.Properties)>(r2, r0) 
(assert (not (not (= var3104 null-String)))) ; Negate: Cond: r2 != null  
(declare-const var75 var3021) ; Statement: $r4 := @caughtexception 
(assert (not (= var75 null-var3021)))
(define-const var1927 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1927)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1927!1 String)
(assert true)
(define-const var3502 String (append/1560614132 var1927!1 "Bad option value [")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Bad option value [") 
(declare-const var1927!2 String)
(assert (str.prefixof var1927!1 var1927!2))
(assert true)
(define-const var888 String (append/1560614132 var3502 var3104)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var3502!1 String)
(assert (str.prefixof var3502 var3502!1))
(assert true)
(define-const var2839 String (append/1560614132 var888 "].")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var888!1 String)
(assert (str.prefixof var888 var888!1))
(assert true)
(define-const var698 String (toString/-222306083 var2839)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2314_error/1978659241 var698 (cast-from-var3021-to-var1421 var75))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r9, $r4) 

(declare-const var698!1 String)
(declare-const var75!1 var3021)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getProperty/1391780669=([java.util.Properties, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2314_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var3021-to-var1421=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var3522=r1, var3211=null_type, var925=java.util.Properties, var415=r0, var3104=r2, var3021=java.lang.IllegalArgumentException, var75=$r4, var1927=$r5, var3502=$r6, var888=$r7, var2839=$r8, var698=$r9, var2314=org.apache.log4j.helpers.LogLog, var1421=java.lang.Throwable}
; {r1=var3522, null_type=var3211, java.util.Properties=var925, r0=var415, r2=var3104, java.lang.IllegalArgumentException=var3021, $r4=var75, $r5=var1927, $r6=var3502, $r7=var888, $r8=var2839, $r9=var698, org.apache.log4j.helpers.LogLog=var2314, java.lang.Throwable=var1421}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Properties;	r2 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String)>(r1);	if r2 != null goto $r3 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String substVars(java.lang.String,java.util.Properties)>(r2, r0);	$r4 := @caughtexception;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Bad option value [");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r9, $r4);	return r2
;block_num 2