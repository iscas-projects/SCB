(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var724 0)
(declare-sort var1299 0)
(declare-sort var3212 0)
(declare-sort var771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var771-init () var771)
(declare-fun <init>/378607920 (var771 String) void)
(declare-const null-var724 var724)
(declare-const null-String String)
(declare-const null-var3212 var3212)
(declare-const var441 var724) ; Statement: r2 := @this: freemarker.core.BuiltInsForStringsBasic$uncap_firstBI 
(assert (not (= var441 null-var724)))
(declare-const var1120 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1120 null-String)))
(declare-const var3669 var3212) ; Statement: r3 := @parameter1: freemarker.core.Environment 
(assert (not (= var3669 null-var3212)))
(define-const var1040 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var278 Int (length/-134980193 var1120)) ; Statement: i0 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var1040 var278)) ; Cond: i4 >= i0 
 ; Statement: if i4 >= i0 goto $r0 = new freemarker.template.SimpleScalar 
(assert (>= var1040 var278)) ; Cond: i4 >= i0 
(define-const var2582 var771 var771-init) ; Statement: $r0 = new freemarker.template.SimpleScalar 
(assert true)
;(assert (<init>/378607920 var2582 var1120)) ; Statement: specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>(r4) 

(declare-const var2582!1 var771)
(declare-const var1120!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var771-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var724=freemarker.core.BuiltInsForStringsBasic$uncap_firstBI, var441=r2, var1120=r4, var1299=null_type, var3212=freemarker.core.Environment, var3669=r3, var1040=i4, var278=i0, var771=freemarker.template.SimpleScalar, var2582=$r0}
; {freemarker.core.BuiltInsForStringsBasic$uncap_firstBI=var724, r2=var441, r4=var1120, null_type=var1299, freemarker.core.Environment=var3212, r3=var3669, i4=var1040, i0=var278, freemarker.template.SimpleScalar=var771, $r0=var2582}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @this: freemarker.core.BuiltInsForStringsBasic$uncap_firstBI;	r4 := @parameter0: java.lang.String;	r3 := @parameter1: freemarker.core.Environment;	i4 = 0;	i0 = virtualinvoke r4.<java.lang.String: int length()>();	if i4 >= i0 goto (branch);	if i4 >= i0 goto $r0 = new freemarker.template.SimpleScalar;	$r0 = new freemarker.template.SimpleScalar;	specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>(r4);	return $r0
;block_num 4