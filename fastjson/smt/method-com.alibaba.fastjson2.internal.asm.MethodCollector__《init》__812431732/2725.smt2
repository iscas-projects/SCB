(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1557 0)
(declare-sort var2423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2423) void)
(declare-fun cast-from-var1557-to-var2423 (var1557) var2423)
(declare-fun ignoreCount/715258311 (var1557) Int)
(declare-fun paramCount/715258311 (var1557) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun result/715258311 (var1557) String)
(declare-fun currentParameter/715258311 (var1557) Int)
(declare-fun debugInfoPresent/715258311 (var1557) Bool)
(declare-const null-var1557 var1557)
(declare-const null-Int Int)
(declare-const var1748 var1557) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.asm.MethodCollector 
(assert (not (= var1748 null-var1557)))
(declare-const var769 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var769 null-Int)))
(declare-const var1614 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1614 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1557-to-var2423 var1748))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1748!1 var1557)
(declare-const var1748!2 var1557)
(assert (not (= var1748!2 null-var1557)))
(assert (= (ignoreCount/715258311 var1748!2) var769)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: int ignoreCount> = i0 
(declare-const var1748!3 var1557)
(assert (not (= var1748!3 null-var1557)))
(assert (= (paramCount/715258311 var1748!3) var1614)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: int paramCount> = i1 
(define-const var3041 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3041)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3041!1 String)
(assert (= var3041!1 ""))
(declare-const var1748!4 var1557)
(assert (not (= var1748!4 null-var1557)))
(assert (= (result/715258311 var1748!4) var3041!1)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: java.lang.StringBuilder result> = $r1 
(declare-const var1748!5 var1557)
(assert (not (= var1748!5 null-var1557)))
(assert (= (currentParameter/715258311 var1748!5) 0)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: int currentParameter> = 0 
 ; Statement: if i1 != 0 goto $z0 = 0 
(assert (not (= var1614 0))) ; Cond: i1 != 0 
(define-const var2957 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
(declare-const var1748!6 var1557)
(assert (not (= var1748!6 null-var1557)))
(assert (= (debugInfoPresent/715258311 var1748!6) var2957)) ; Statement: r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: boolean debugInfoPresent> = $z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1557-to-var2423=([com.alibaba.fastjson2.internal.asm.MethodCollector], java.lang.Object), ignoreCount/715258311=([com.alibaba.fastjson2.internal.asm.MethodCollector], int), paramCount/715258311=([com.alibaba.fastjson2.internal.asm.MethodCollector], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), result/715258311=([com.alibaba.fastjson2.internal.asm.MethodCollector], java.lang.StringBuilder), currentParameter/715258311=([com.alibaba.fastjson2.internal.asm.MethodCollector], int), debugInfoPresent/715258311=([com.alibaba.fastjson2.internal.asm.MethodCollector], boolean)}
; {var1557=com.alibaba.fastjson2.internal.asm.MethodCollector, var1748=r0, var769=i0, var1614=i1, var2423=java.lang.Object, var3041=$r1, var2957=$z0}
; {com.alibaba.fastjson2.internal.asm.MethodCollector=var1557, r0=var1748, i0=var769, i1=var1614, java.lang.Object=var2423, $r1=var3041, $z0=var2957}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.internal.asm.MethodCollector;	i0 := @parameter0: int;	i1 := @parameter1: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: int ignoreCount> = i0;	r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: int paramCount> = i1;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: java.lang.StringBuilder result> = $r1;	r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: int currentParameter> = 0;	if i1 != 0 goto $z0 = 0;	$z0 = 0;	r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: boolean debugInfoPresent> = $z0;	return
;block_num 3