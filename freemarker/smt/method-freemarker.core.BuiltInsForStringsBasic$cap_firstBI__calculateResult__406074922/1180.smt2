(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1269 0)
(declare-sort var804 0)
(declare-sort var3370 0)
(declare-sort var769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var769-init () var769)
(declare-fun <init>/378607920 (var769 String) void)
(declare-const null-var1269 var1269)
(declare-const null-String String)
(declare-const null-var3370 var3370)
(declare-const var1559 var1269) ; Statement: r2 := @this: freemarker.core.BuiltInsForStringsBasic$cap_firstBI 
(assert (not (= var1559 null-var1269)))
(declare-const var1233 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1233 null-String)))
(declare-const var3897 var3370) ; Statement: r3 := @parameter1: freemarker.core.Environment 
(assert (not (= var3897 null-var3370)))
(define-const var3580 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var297 Int (length/-134980193 var1233)) ; Statement: i0 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var3580 var297)) ; Cond: i4 >= i0 
 ; Statement: if i4 >= i0 goto $r0 = new freemarker.template.SimpleScalar 
(assert (>= var3580 var297)) ; Cond: i4 >= i0 
(define-const var548 var769 var769-init) ; Statement: $r0 = new freemarker.template.SimpleScalar 
(assert true)
;(assert (<init>/378607920 var548 var1233)) ; Statement: specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>(r4) 

(declare-const var548!1 var769)
(declare-const var1233!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var769-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var1269=freemarker.core.BuiltInsForStringsBasic$cap_firstBI, var1559=r2, var1233=r4, var804=null_type, var3370=freemarker.core.Environment, var3897=r3, var3580=i4, var297=i0, var769=freemarker.template.SimpleScalar, var548=$r0}
; {freemarker.core.BuiltInsForStringsBasic$cap_firstBI=var1269, r2=var1559, r4=var1233, null_type=var804, freemarker.core.Environment=var3370, r3=var3897, i4=var3580, i0=var297, freemarker.template.SimpleScalar=var769, $r0=var548}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @this: freemarker.core.BuiltInsForStringsBasic$cap_firstBI;	r4 := @parameter0: java.lang.String;	r3 := @parameter1: freemarker.core.Environment;	i4 = 0;	i0 = virtualinvoke r4.<java.lang.String: int length()>();	if i4 >= i0 goto (branch);	if i4 >= i0 goto $r0 = new freemarker.template.SimpleScalar;	$r0 = new freemarker.template.SimpleScalar;	specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>(r4);	return $r0
;block_num 4