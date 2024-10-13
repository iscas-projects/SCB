(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var108 0)
(declare-sort var1615 0)
(declare-sort var2696 0)
(declare-sort var1283 0)
(declare-sort var1800 0)
(declare-sort var3184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1283-init () var1283)
(declare-fun getLocale/410245169 (var3184) var1800)
(declare-fun cast-from-var2696-to-var3184 (var2696) var3184)
(declare-fun toUpperCase/398655892 (String var1800) String)
(declare-fun <init>/378607920 (var1283 String) void)
(declare-const null-var108 var108)
(declare-const null-String String)
(declare-const null-var2696 var2696)
(declare-const var3695 var108) ; Statement: r5 := @this: freemarker.core.BuiltInsForStringsBasic$upper_caseBI 
(assert (not (= var3695 null-var108)))
(declare-const var561 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var561 null-String)))
(declare-const var3205 var2696) ; Statement: r2 := @parameter1: freemarker.core.Environment 
(assert (not (= var3205 null-var2696)))
(define-const var2039 var1283 var1283-init) ; Statement: $r0 = new freemarker.template.SimpleScalar 
(assert true)
(define-const var1809 var1800 (getLocale/410245169 (cast-from-var2696-to-var3184 var3205))) ; Statement: $r3 = virtualinvoke r2.<freemarker.core.Environment: java.util.Locale getLocale()>() 
(assert true)
(define-const var2392 String (toUpperCase/398655892 var561 var1809)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r3) 
(assert true)
;(assert (<init>/378607920 var2039 var2392)) ; Statement: specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r4) 

(declare-const var2039!1 var1283)
(declare-const var2392!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1283-init=([], freemarker.template.SimpleScalar), getLocale/410245169=([freemarker.core.Configurable], java.util.Locale), cast-from-var2696-to-var3184=([freemarker.core.Environment], freemarker.core.Configurable), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var108=freemarker.core.BuiltInsForStringsBasic$upper_caseBI, var3695=r5, var561=r1, var1615=null_type, var2696=freemarker.core.Environment, var3205=r2, var1283=freemarker.template.SimpleScalar, var2039=$r0, var1800=java.util.Locale, var3184=freemarker.core.Configurable, var1809=$r3, var2392=$r4}
; {freemarker.core.BuiltInsForStringsBasic$upper_caseBI=var108, r5=var3695, r1=var561, null_type=var1615, freemarker.core.Environment=var2696, r2=var3205, freemarker.template.SimpleScalar=var1283, $r0=var2039, java.util.Locale=var1800, freemarker.core.Configurable=var3184, $r3=var1809, $r4=var2392}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r5 := @this: freemarker.core.BuiltInsForStringsBasic$upper_caseBI;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: freemarker.core.Environment;	$r0 = new freemarker.template.SimpleScalar;	$r3 = virtualinvoke r2.<freemarker.core.Environment: java.util.Locale getLocale()>();	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r3);	specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r4);	return $r0
;block_num 1