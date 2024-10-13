(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1205 0)
(declare-sort var3706 0)
(declare-sort var315 0)
(declare-sort var3504 0)
(declare-sort var292 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var3504) String)
(declare-fun var3706_contains/1636690605 (var3706 var292) Bool)
(declare-fun cast-from-String-to-var292 (String) var292)
(declare-const null-String String)
(declare-const var315-supportedJavaTemplateTypes var3706)
(declare-const var3504-ENGLISH var3504)
(declare-const var2231 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2231 null-String)))
 ; Statement: if r0 != null goto $r2 = <org.javacc.parser.Options: java.util.Set supportedJavaTemplateTypes> 
(assert (not (= var2231 null-String))) ; Cond: r0 != null 
(define-const var2891 var3706 var315-supportedJavaTemplateTypes) ; Statement: $r2 = <org.javacc.parser.Options: java.util.Set supportedJavaTemplateTypes> 
(define-const var616 var3504 var3504-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var671 String (toLowerCase/1946809429 var2231 var616)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var1887 Bool (var3706_contains/1636690605 var2891 (cast-from-String-to-var292 var671))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Set: boolean contains(java.lang.Object)>($r3) 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var3706_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var292=([java.lang.String], java.lang.Object)}
; {var2231=r0, var1205=null_type, var3706=java.util.Set, var315=org.javacc.parser.Options, var2891=$r2, var3504=java.util.Locale, var616=$r1, var671=$r3, var292=java.lang.Object, var1887=$z0}
; {r0=var2231, null_type=var1205, java.util.Set=var3706, org.javacc.parser.Options=var315, $r2=var2891, java.util.Locale=var3504, $r1=var616, $r3=var671, java.lang.Object=var292, $z0=var1887}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r2 = <org.javacc.parser.Options: java.util.Set supportedJavaTemplateTypes>;	$r2 = <org.javacc.parser.Options: java.util.Set supportedJavaTemplateTypes>;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$z0 = interfaceinvoke $r2.<java.util.Set: boolean contains(java.lang.Object)>($r3);	return $z0
;block_num 3