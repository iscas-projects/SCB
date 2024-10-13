(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1923 0)
(declare-sort var1029 0)
(declare-sort var3549 0)
(declare-sort var2105 0)
(declare-sort var3728 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3728-init () var3728)
(declare-fun <init>/378607920 (var3728 String) void)
(declare-const null-var1923 var1923)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3549 var3549)
(declare-const null-var2105 var2105)
(declare-const null-Bool Bool)
(declare-const var1708 var1923) ; Statement: r1 := @this: freemarker.core.DefaultTruncateBuiltinAlgorithm 
(assert (not (= var1708 null-var1923)))
(declare-const var3239 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3239 null-String)))
(declare-const var2596 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2596 null-Int)))
(declare-const var3959 var3549) ; Statement: r22 := @parameter2: freemarker.template.TemplateModel 
(assert (not (= var3959 null-var3549)))
(declare-const var3168 Int) ; Statement: r23 := @parameter3: java.lang.Integer 
(assert (not (= var3168 null-Int)))
(declare-const var2743 var2105) ; Statement: r2 := @parameter4: freemarker.core.DefaultTruncateBuiltinAlgorithm$TruncationMode 
(assert (not (= var2743 null-var2105)))
(declare-const var2605 Bool) ; Statement: z2 := @parameter5: boolean 
(assert (not (= var2605 null-Bool)))
(assert true)
(define-const var3730 Int (length/-134980193 var3239)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i1 > i0 goto (branch) 
(assert (not (> var3730 var2596))) ; Negate: Cond: $i1 > i0  
(define-const var463 var3728 var3728-init) ; Statement: $r21 = new freemarker.template.SimpleScalar 
(assert true)
;(assert (<init>/378607920 var463 var3239)) ; Statement: specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>(r0) 

(declare-const var463!1 var3728)
(declare-const var3239!1 String)
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3728-init=([], freemarker.template.SimpleScalar), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var1923=freemarker.core.DefaultTruncateBuiltinAlgorithm, var1708=r1, var3239=r0, var1029=null_type, var2596=i0, var3549=freemarker.template.TemplateModel, var3959=r22, var3168=r23, var2105=freemarker.core.DefaultTruncateBuiltinAlgorithm$TruncationMode, var2743=r2, var2605=z2, var3730=$i1, var3728=freemarker.template.SimpleScalar, var463=$r21}
; {freemarker.core.DefaultTruncateBuiltinAlgorithm=var1923, r1=var1708, r0=var3239, null_type=var1029, i0=var2596, freemarker.template.TemplateModel=var3549, r22=var3959, r23=var3168, freemarker.core.DefaultTruncateBuiltinAlgorithm$TruncationMode=var2105, r2=var2743, z2=var2605, $i1=var3730, freemarker.template.SimpleScalar=var3728, $r21=var463}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: freemarker.core.DefaultTruncateBuiltinAlgorithm;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r22 := @parameter2: freemarker.template.TemplateModel;	r23 := @parameter3: java.lang.Integer;	r2 := @parameter4: freemarker.core.DefaultTruncateBuiltinAlgorithm$TruncationMode;	z2 := @parameter5: boolean;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i1 > i0 goto (branch);	$r21 = new freemarker.template.SimpleScalar;	specialinvoke $r21.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>(r0);	return $r21
;block_num 2