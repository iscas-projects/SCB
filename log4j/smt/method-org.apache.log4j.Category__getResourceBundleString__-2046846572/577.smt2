(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2449 0)
(declare-sort var950 0)
(declare-sort var2584 0)
(declare-sort var2353 0)
(declare-sort var2834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getResourceBundle/1556860373 (var2449) var2584)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun error/827404130 (var2449 var2834) void)
(declare-fun cast-from-String-to-var2834 (String) var2834)
(declare-const null-var2449 var2449)
(declare-const null-String String)
(declare-const null-var2584 var2584)
(declare-const null-var2353 var2353)
(declare-const var749 var2449) ; Statement: r0 := @this: org.apache.log4j.Category 
(assert (not (= var749 null-var2449)))
(declare-const var1674 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1674 null-String)))
(assert true)
(define-const var1076 var2584 (getResourceBundle/1556860373 var749)) ; Statement: r1 = virtualinvoke r0.<org.apache.log4j.Category: java.util.ResourceBundle getResourceBundle()>() 
 ; Statement: if r1 != null goto $r3 = virtualinvoke r1.<java.util.ResourceBundle: java.lang.String getString(java.lang.String)>(r2) 
(assert (not (not (= var1076 null-var2584)))) ; Negate: Cond: r1 != null  
(declare-const var2313 var2353) ; Statement: $r4 := @caughtexception 
(assert (not (= var2313 null-var2353)))
(define-const var1147 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1147)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1147!1 String)
(assert true)
(define-const var2255 String (append/1560614132 var1147!1 "No resource is associated with key \u0022")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("No resource is associated with key \"") 
(declare-const var1147!2 String)
(assert (str.prefixof var1147!1 var1147!2))
(assert true)
(define-const var3888 String (append/1560614132 var2255 var1674)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var2255!1 String)
(assert (str.prefixof var2255 var2255!1))
(assert true)
(define-const var649 String (append/1560614132 var3888 "\u0022.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var3888!1 String)
(assert (str.prefixof var3888 var3888!1))
(assert true)
(define-const var123 String (toString/-222306083 var649)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (error/827404130 var749 (cast-from-String-to-var2834 var123))) ; Statement: virtualinvoke r0.<org.apache.log4j.Category: void error(java.lang.Object)>($r9) 

(declare-const var749!1 var2449)
(declare-const var123!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getResourceBundle/1556860373=([org.apache.log4j.Category], java.util.ResourceBundle), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), error/827404130=([org.apache.log4j.Category, java.lang.Object], void), cast-from-String-to-var2834=([java.lang.String], java.lang.Object)}
; {var2449=org.apache.log4j.Category, var749=r0, var1674=r2, var950=null_type, var2584=java.util.ResourceBundle, var1076=r1, var2353=java.util.MissingResourceException, var2313=$r4, var1147=$r5, var2255=$r6, var3888=$r7, var649=$r8, var123=$r9, var2834=java.lang.Object}
; {org.apache.log4j.Category=var2449, r0=var749, r2=var1674, null_type=var950, java.util.ResourceBundle=var2584, r1=var1076, java.util.MissingResourceException=var2353, $r4=var2313, $r5=var1147, $r6=var2255, $r7=var3888, $r8=var649, $r9=var123, java.lang.Object=var2834}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.Category;	r2 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<org.apache.log4j.Category: java.util.ResourceBundle getResourceBundle()>();	if r1 != null goto $r3 = virtualinvoke r1.<java.util.ResourceBundle: java.lang.String getString(java.lang.String)>(r2);	$r4 := @caughtexception;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("No resource is associated with key \"");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke r0.<org.apache.log4j.Category: void error(java.lang.Object)>($r9);	return null
;block_num 2