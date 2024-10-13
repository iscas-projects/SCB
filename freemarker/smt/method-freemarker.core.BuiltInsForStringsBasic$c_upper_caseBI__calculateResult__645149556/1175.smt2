(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3038 0)
(declare-sort var2977 0)
(declare-sort var2724 0)
(declare-sort var489 0)
(declare-sort var1370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var489-init () var489)
(declare-fun toUpperCase/398655892 (String var1370) String)
(declare-fun <init>/378607920 (var489 String) void)
(declare-const null-var3038 var3038)
(declare-const null-String String)
(declare-const null-var2724 var2724)
(declare-const var1370-ROOT var1370)
(declare-const var3866 var3038) ; Statement: r4 := @this: freemarker.core.BuiltInsForStringsBasic$c_upper_caseBI 
(assert (not (= var3866 null-var3038)))
(declare-const var2797 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2797 null-String)))
(declare-const var327 var2724) ; Statement: r5 := @parameter1: freemarker.core.Environment 
(assert (not (= var327 null-var2724)))
(define-const var1474 var489 var489-init) ; Statement: $r0 = new freemarker.template.SimpleScalar 
(define-const var1706 var1370 var1370-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3771 String (toUpperCase/398655892 var2797 var1706)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
(assert true)
;(assert (<init>/378607920 var1474 var3771)) ; Statement: specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r3) 

(declare-const var1474!1 var489)
(declare-const var3771!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var489-init=([], freemarker.template.SimpleScalar), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3038=freemarker.core.BuiltInsForStringsBasic$c_upper_caseBI, var3866=r4, var2797=r1, var2977=null_type, var2724=freemarker.core.Environment, var327=r5, var489=freemarker.template.SimpleScalar, var1474=$r0, var1370=java.util.Locale, var1706=$r2, var3771=$r3}
; {freemarker.core.BuiltInsForStringsBasic$c_upper_caseBI=var3038, r4=var3866, r1=var2797, null_type=var2977, freemarker.core.Environment=var2724, r5=var327, freemarker.template.SimpleScalar=var489, $r0=var1474, java.util.Locale=var1370, $r2=var1706, $r3=var3771}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r4 := @this: freemarker.core.BuiltInsForStringsBasic$c_upper_caseBI;	r1 := @parameter0: java.lang.String;	r5 := @parameter1: freemarker.core.Environment;	$r0 = new freemarker.template.SimpleScalar;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r3);	return $r0
;block_num 1