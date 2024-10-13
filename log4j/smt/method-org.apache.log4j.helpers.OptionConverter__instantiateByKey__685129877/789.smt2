(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1738 0)
(declare-sort var1534 0)
(declare-sort var2394 0)
(declare-sort var1942 0)
(declare-sort var2431 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1942_findAndSubst/1425145515 (String var1738) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2431_error/-402343703 (String) void)
(declare-const null-var1738 var1738)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2394 var2394)
(declare-const var2339 var1738) ; Statement: r1 := @parameter0: java.util.Properties 
(assert (not (= var2339 null-var1738)))
(declare-const var1161 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1161 null-String)))
(declare-const var326 ClassObject) ; Statement: r3 := @parameter2: java.lang.Class 
(assert (not (= var326 null-ClassObject)))
(declare-const var1157 var2394) ; Statement: r4 := @parameter3: java.lang.Object 
(assert (not (= var1157 null-var2394)))
(define-const var3010 String (var1942_findAndSubst/1425145515 var1161 var2339)) ; Statement: r2 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String findAndSubst(java.lang.String,java.util.Properties)>(r0, r1) 
 ; Statement: if r2 != null goto $r5 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(assert (not (not (= var3010 null-String)))) ; Negate: Cond: r2 != null  
(define-const var223 String String-init) ; Statement: $r7 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var223)) ; Statement: specialinvoke $r7.<java.lang.StringBuffer: void <init>()>() 

(declare-const var223!1 String)
(assert true)
(define-const var3208 String (append/1560614132 var223!1 "Could not find value for key ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not find value for key ") 
(declare-const var223!2 String)
(assert (str.prefixof var223!1 var223!2))
(assert true)
(define-const var3799 String (append/1560614132 var3208 var1161)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(declare-const var3208!1 String)
(assert (str.prefixof var3208 var3208!1))
(assert true)
(define-const var3642 String (toString/-222306083 var3799)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2431_error/-402343703 var3642)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r10) 

(declare-const var3642!1 String)
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1942_findAndSubst/1425145515=([java.lang.String, java.util.Properties], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2431_error/-402343703=([java.lang.String], void)}
; {var1738=java.util.Properties, var2339=r1, var1161=r0, var1534=null_type, var326=r3, var2394=java.lang.Object, var1157=r4, var1942=org.apache.log4j.helpers.OptionConverter, var3010=r2, var223=$r7, var3208=$r8, var3799=$r9, var3642=$r10, var2431=org.apache.log4j.helpers.LogLog}
; {java.util.Properties=var1738, r1=var2339, r0=var1161, null_type=var1534, r3=var326, java.lang.Object=var2394, r4=var1157, org.apache.log4j.helpers.OptionConverter=var1942, r2=var3010, $r7=var223, $r8=var3208, $r9=var3799, $r10=var3642, org.apache.log4j.helpers.LogLog=var2431}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.Properties;	r0 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.Class;	r4 := @parameter3: java.lang.Object;	r2 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String findAndSubst(java.lang.String,java.util.Properties)>(r0, r1);	if r2 != null goto $r5 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	$r7 = new java.lang.StringBuffer;	specialinvoke $r7.<java.lang.StringBuffer: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not find value for key ");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r10);	return r4
;block_num 2