(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1264 0)
(declare-sort var689 0)
(declare-sort var3320 0)
(declare-sort var1484 0)
(declare-sort var2748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var1484) String)
(declare-fun var689_contains/1636690605 (var689 var2748) Bool)
(declare-fun cast-from-String-to-var2748 (String) var2748)
(declare-const null-String String)
(declare-const var3320-supportedLanguages var689)
(declare-const var1484-ENGLISH var1484)
(declare-const var3646 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3646 null-String)))
 ; Statement: if r0 != null goto $r2 = <org.javacc.parser.Options: java.util.Set supportedLanguages> 
(assert (not (= var3646 null-String))) ; Cond: r0 != null 
(define-const var1548 var689 var3320-supportedLanguages) ; Statement: $r2 = <org.javacc.parser.Options: java.util.Set supportedLanguages> 
(define-const var1802 var1484 var1484-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var515 String (toLowerCase/1946809429 var3646 var1802)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var230 Bool (var689_contains/1636690605 var1548 (cast-from-String-to-var2748 var515))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Set: boolean contains(java.lang.Object)>($r3) 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var689_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var2748=([java.lang.String], java.lang.Object)}
; {var3646=r0, var1264=null_type, var689=java.util.Set, var3320=org.javacc.parser.Options, var1548=$r2, var1484=java.util.Locale, var1802=$r1, var515=$r3, var2748=java.lang.Object, var230=$z0}
; {r0=var3646, null_type=var1264, java.util.Set=var689, org.javacc.parser.Options=var3320, $r2=var1548, java.util.Locale=var1484, $r1=var1802, $r3=var515, java.lang.Object=var2748, $z0=var230}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r2 = <org.javacc.parser.Options: java.util.Set supportedLanguages>;	$r2 = <org.javacc.parser.Options: java.util.Set supportedLanguages>;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$z0 = interfaceinvoke $r2.<java.util.Set: boolean contains(java.lang.Object)>($r3);	return $z0
;block_num 3