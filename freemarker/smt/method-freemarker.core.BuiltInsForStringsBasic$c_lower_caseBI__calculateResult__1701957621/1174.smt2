(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2632 0)
(declare-sort var3957 0)
(declare-sort var3694 0)
(declare-sort var3405 0)
(declare-sort var745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3405-init () var3405)
(declare-fun toLowerCase/1946809429 (String var745) String)
(declare-fun <init>/378607920 (var3405 String) void)
(declare-const null-var2632 var2632)
(declare-const null-String String)
(declare-const null-var3694 var3694)
(declare-const var745-ROOT var745)
(declare-const var2811 var2632) ; Statement: r4 := @this: freemarker.core.BuiltInsForStringsBasic$c_lower_caseBI 
(assert (not (= var2811 null-var2632)))
(declare-const var1318 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1318 null-String)))
(declare-const var452 var3694) ; Statement: r5 := @parameter1: freemarker.core.Environment 
(assert (not (= var452 null-var3694)))
(define-const var2988 var3405 var3405-init) ; Statement: $r0 = new freemarker.template.SimpleScalar 
(define-const var963 var745 var745-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var55 String (toLowerCase/1946809429 var1318 var963)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
;(assert (<init>/378607920 var2988 var55)) ; Statement: specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r3) 

(declare-const var2988!1 var3405)
(declare-const var55!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3405-init=([], freemarker.template.SimpleScalar), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var2632=freemarker.core.BuiltInsForStringsBasic$c_lower_caseBI, var2811=r4, var1318=r1, var3957=null_type, var3694=freemarker.core.Environment, var452=r5, var3405=freemarker.template.SimpleScalar, var2988=$r0, var745=java.util.Locale, var963=$r2, var55=$r3}
; {freemarker.core.BuiltInsForStringsBasic$c_lower_caseBI=var2632, r4=var2811, r1=var1318, null_type=var3957, freemarker.core.Environment=var3694, r5=var452, freemarker.template.SimpleScalar=var3405, $r0=var2988, java.util.Locale=var745, $r2=var963, $r3=var55}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r4 := @this: freemarker.core.BuiltInsForStringsBasic$c_lower_caseBI;	r1 := @parameter0: java.lang.String;	r5 := @parameter1: freemarker.core.Environment;	$r0 = new freemarker.template.SimpleScalar;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r3);	return $r0
;block_num 1