(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2182 0)
(declare-sort var528 0)
(declare-sort var492 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var492_toLocale/455255440 (var528) var528)
(declare-fun toLowerCase/1946809429 (String var528) String)
(declare-const null-String String)
(declare-const null-var528 var528)
(declare-const var2079 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2079 null-String)))
(declare-const var3992 var528) ; Statement: r1 := @parameter1: java.util.Locale 
(assert (not (= var3992 null-var528)))
 ; Statement: if r0 != null goto $r2 = staticinvoke <org.apache.commons.lang3.LocaleUtils: java.util.Locale toLocale(java.util.Locale)>(r1) 
(assert (not (= var2079 null-String))) ; Cond: r0 != null 
(define-const var3250 var528 (var492_toLocale/455255440 var3992)) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.LocaleUtils: java.util.Locale toLocale(java.util.Locale)>(r1) 
(assert true)
(define-const var517 String (toLowerCase/1946809429 var2079 var3250)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var492_toLocale/455255440=([java.util.Locale], java.util.Locale), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var2079=r0, var2182=null_type, var528=java.util.Locale, var3992=r1, var492=org.apache.commons.lang3.LocaleUtils, var3250=$r2, var517=$r3}
; {r0=var2079, null_type=var2182, java.util.Locale=var528, r1=var3992, org.apache.commons.lang3.LocaleUtils=var492, $r2=var3250, $r3=var517}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.Locale;	if r0 != null goto $r2 = staticinvoke <org.apache.commons.lang3.LocaleUtils: java.util.Locale toLocale(java.util.Locale)>(r1);	$r2 = staticinvoke <org.apache.commons.lang3.LocaleUtils: java.util.Locale toLocale(java.util.Locale)>(r1);	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	return $r3
;block_num 2