(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2639 0)
(declare-sort var3924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3924) void)
(declare-fun cast-from-var2639-to-var3924 (var2639) var3924)
(declare-fun ignoreCount/715258311 (var2639) Int)
(declare-fun paramCount/715258311 (var2639) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun result/715258311 (var2639) String)
(declare-fun currentParameter/715258311 (var2639) Int)
(declare-fun debugInfoPresent/715258311 (var2639) Bool)
(declare-const null-var2639 var2639)
(declare-const null-Int Int)
(declare-const var423 var2639) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.asm.MethodCollector 
(assert (not (= var423 null-var2639)))
(declare-const var2967 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2967 null-Int)))
(declare-const var2535 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2535 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2639-to-var3924 var423))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var423!1 var2639)
(declare-const var423!2 var2639)
(assert (not (= var423!2 null-var2639)))
(assert (= (ignoreCount/715258311 var423!2) var2967)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: int ignoreCount> = i0 
(declare-const var423!3 var2639)
(assert (not (= var423!3 null-var2639)))
(assert (= (paramCount/715258311 var423!3) var2535)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: int paramCount> = i1 
(define-const var2885 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2885)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2885!1 String)
(assert (= var2885!1 ""))
(declare-const var423!4 var2639)
(assert (not (= var423!4 null-var2639)))
(assert (= (result/715258311 var423!4) var2885!1)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: java.lang.StringBuilder result> = $r1 
(declare-const var423!5 var2639)
(assert (not (= var423!5 null-var2639)))
(assert (= (currentParameter/715258311 var423!5) 0)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: int currentParameter> = 0 
 ; Statement: if i1 != 0 goto $z0 = 0 
(assert (not (not (= var2535 0)))) ; Negate: Cond: i1 != 0  
(define-const var1482 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: boolean debugInfoPresent> = $z0] 
(assert true) ; Non Conditional
(declare-const var423!6 var2639)
(assert (not (= var423!6 null-var2639)))
(assert (= (debugInfoPresent/715258311 var423!6) var1482)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: boolean debugInfoPresent> = $z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2639-to-var3924=([com.alibaba.fastjson2.internal.asm.MethodCollector], java.lang.Object), ignoreCount/715258311=([com.alibaba.fastjson2.internal.asm.MethodCollector], int), paramCount/715258311=([com.alibaba.fastjson2.internal.asm.MethodCollector], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), result/715258311=([com.alibaba.fastjson2.internal.asm.MethodCollector], java.lang.StringBuilder), currentParameter/715258311=([com.alibaba.fastjson2.internal.asm.MethodCollector], int), debugInfoPresent/715258311=([com.alibaba.fastjson2.internal.asm.MethodCollector], boolean)}
; {var2639=com.alibaba.fastjson2.internal.asm.MethodCollector, var423=r0, var2967=i0, var2535=i1, var3924=java.lang.Object, var2885=$r1, var1482=$z0}
; {com.alibaba.fastjson2.internal.asm.MethodCollector=var2639, r0=var423, i0=var2967, i1=var2535, java.lang.Object=var3924, $r1=var2885, $z0=var1482}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.internal.asm.MethodCollector;	i0 := @parameter0: int;	i1 := @parameter1: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: int ignoreCount> = i0;	r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: int paramCount> = i1;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: java.lang.StringBuilder result> = $r1;	r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: int currentParameter> = 0;	if i1 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: boolean debugInfoPresent> = $z0];	r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: boolean debugInfoPresent> = $z0;	return
;block_num 3