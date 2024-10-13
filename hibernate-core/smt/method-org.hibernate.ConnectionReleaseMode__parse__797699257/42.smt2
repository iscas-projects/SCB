(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3642 0)
(declare-sort var2150 0)
(declare-sort var3730 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var2150) String)
(declare-fun var3730_valueOf/-2049854556 (String) var3730)
(declare-const null-String String)
(declare-const var2150-ROOT var2150)
(declare-const var1411 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1411 null-String)))
(define-const var838 var2150 var2150-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2552 String (toUpperCase/398655892 var1411 var838)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1) 
(define-const var1293 var3730 (var3730_valueOf/-2049854556 var2552)) ; Statement: $r3 = staticinvoke <org.hibernate.ConnectionReleaseMode: org.hibernate.ConnectionReleaseMode valueOf(java.lang.String)>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var3730_valueOf/-2049854556=([java.lang.String], org.hibernate.ConnectionReleaseMode)}
; {var1411=r0, var3642=null_type, var2150=java.util.Locale, var838=$r1, var2552=$r2, var3730=org.hibernate.ConnectionReleaseMode, var1293=$r3}
; {r0=var1411, null_type=var3642, java.util.Locale=var2150, $r1=var838, $r2=var2552, org.hibernate.ConnectionReleaseMode=var3730, $r3=var1293}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1);	$r3 = staticinvoke <org.hibernate.ConnectionReleaseMode: org.hibernate.ConnectionReleaseMode valueOf(java.lang.String)>($r2);	return $r3
;block_num 1