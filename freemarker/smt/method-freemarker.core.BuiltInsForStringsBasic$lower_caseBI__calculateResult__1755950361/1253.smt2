(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2774 0)
(declare-sort var1275 0)
(declare-sort var1193 0)
(declare-sort var2547 0)
(declare-sort var3500 0)
(declare-sort var2504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2547-init () var2547)
(declare-fun getLocale/410245169 (var2504) var3500)
(declare-fun cast-from-var1193-to-var2504 (var1193) var2504)
(declare-fun toLowerCase/1946809429 (String var3500) String)
(declare-fun <init>/378607920 (var2547 String) void)
(declare-const null-var2774 var2774)
(declare-const null-String String)
(declare-const null-var1193 var1193)
(declare-const var275 var2774) ; Statement: r5 := @this: freemarker.core.BuiltInsForStringsBasic$lower_caseBI 
(assert (not (= var275 null-var2774)))
(declare-const var3055 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3055 null-String)))
(declare-const var7 var1193) ; Statement: r2 := @parameter1: freemarker.core.Environment 
(assert (not (= var7 null-var1193)))
(define-const var2368 var2547 var2547-init) ; Statement: $r0 = new freemarker.template.SimpleScalar 
(assert true)
(define-const var3662 var3500 (getLocale/410245169 (cast-from-var1193-to-var2504 var7))) ; Statement: $r3 = virtualinvoke r2.<freemarker.core.Environment: java.util.Locale getLocale()>() 
(assert true)
(define-const var910 String (toLowerCase/1946809429 var3055 var3662)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(assert true)
;(assert (<init>/378607920 var2368 var910)) ; Statement: specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r4) 

(declare-const var2368!1 var2547)
(declare-const var910!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2547-init=([], freemarker.template.SimpleScalar), getLocale/410245169=([freemarker.core.Configurable], java.util.Locale), cast-from-var1193-to-var2504=([freemarker.core.Environment], freemarker.core.Configurable), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var2774=freemarker.core.BuiltInsForStringsBasic$lower_caseBI, var275=r5, var3055=r1, var1275=null_type, var1193=freemarker.core.Environment, var7=r2, var2547=freemarker.template.SimpleScalar, var2368=$r0, var3500=java.util.Locale, var2504=freemarker.core.Configurable, var3662=$r3, var910=$r4}
; {freemarker.core.BuiltInsForStringsBasic$lower_caseBI=var2774, r5=var275, r1=var3055, null_type=var1275, freemarker.core.Environment=var1193, r2=var7, freemarker.template.SimpleScalar=var2547, $r0=var2368, java.util.Locale=var3500, freemarker.core.Configurable=var2504, $r3=var3662, $r4=var910}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r5 := @this: freemarker.core.BuiltInsForStringsBasic$lower_caseBI;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: freemarker.core.Environment;	$r0 = new freemarker.template.SimpleScalar;	$r3 = virtualinvoke r2.<freemarker.core.Environment: java.util.Locale getLocale()>();	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r4);	return $r0
;block_num 1