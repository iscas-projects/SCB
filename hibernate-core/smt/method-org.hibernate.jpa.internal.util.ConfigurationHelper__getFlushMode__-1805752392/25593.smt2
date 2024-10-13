(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3777 0)
(declare-sort var1052 0)
(declare-sort var1820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var1052) String)
(declare-fun var1820_valueOf/-218399420 (String) var1820)
(declare-const null-String String)
(declare-const var1052-ROOT var1052)
(declare-const var1778 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1778 null-String)))
 ; Statement: if r2 != null goto $r0 = <java.util.Locale: java.util.Locale ROOT> 
(assert (not (= var1778 null-String))) ; Cond: r2 != null 
(define-const var2768 var1052 var1052-ROOT) ; Statement: $r0 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2749 String (toUpperCase/398655892 var1778 var2768)) ; Statement: r3 = virtualinvoke r2.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r0) 
(define-const var3871 var1820 (var1820_valueOf/-218399420 var2749)) ; Statement: $r1 = staticinvoke <org.hibernate.FlushMode: org.hibernate.FlushMode valueOf(java.lang.String)>(r3) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var1820_valueOf/-218399420=([java.lang.String], org.hibernate.FlushMode)}
; {var1778=r2, var3777=null_type, var1052=java.util.Locale, var2768=$r0, var2749=r3, var1820=org.hibernate.FlushMode, var3871=$r1}
; {r2=var1778, null_type=var3777, java.util.Locale=var1052, $r0=var2768, r3=var2749, org.hibernate.FlushMode=var1820, $r1=var3871}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r2 := @parameter0: java.lang.String;	if r2 != null goto $r0 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = <java.util.Locale: java.util.Locale ROOT>;	r3 = virtualinvoke r2.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r0);	$r1 = staticinvoke <org.hibernate.FlushMode: org.hibernate.FlushMode valueOf(java.lang.String)>(r3);	return $r1
;block_num 2