(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3353 0)
(declare-sort var715 0)
(declare-sort var539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pop/-1531762245 (var539) var715)
(declare-fun getComponent/540937838 (var715) var715)
(declare-fun zeroExtend/-769386489 (var3353 var715) var715)
(declare-fun verifyAssignable/2089426193 (var3353 var715 var715) void)
(declare-fun simplePush/270023542 (var3353 var715 var539) void)
(declare-const null-var3353 var3353)
(declare-const null-var715 var715)
(declare-const null-var539 var539)
(declare-const var715-UNINIT var715)
(declare-const var715-INTEGER var715)
(declare-const var2124 var3353) ; Statement: r4 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor 
(assert (not (= var2124 null-var3353)))
(declare-const var3144 var715) ; Statement: r5 := @parameter0: org.apache.ibatis.javassist.bytecode.analysis.Type 
(assert (not (= var3144 null-var715)))
(declare-const var1953 var539) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.bytecode.analysis.Frame 
(assert (not (= var1953 null-var539)))
(assert true)
(define-const var1528 var715 (pop/-1531762245 var1953)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Frame: org.apache.ibatis.javassist.bytecode.analysis.Type pop()>() 
(assert true)
(define-const var2976 var715 (pop/-1531762245 var1953)) ; Statement: r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Frame: org.apache.ibatis.javassist.bytecode.analysis.Type pop()>() 
(define-const var351 var715 var715-UNINIT) ; Statement: $r3 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type UNINIT> 
 ; Statement: if r2 != $r3 goto r17 = virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type getComponent()>() 
(assert (not (= var2976 var351))) ; Cond: r2 != $r3 
(assert true)
(define-const var171 var715 (getComponent/540937838 var2976)) ; Statement: r17 = virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type getComponent()>() 
 ; Statement: if r17 != null goto r18 = specialinvoke r4.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type zeroExtend(org.apache.ibatis.javassist.bytecode.analysis.Type)>(r17) 
(assert (not (= var171 null-var715))) ; Cond: r17 != null 
(assert true)
(define-const var2743 var715 (zeroExtend/-769386489 var2124 var171)) ; Statement: r18 = specialinvoke r4.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type zeroExtend(org.apache.ibatis.javassist.bytecode.analysis.Type)>(r17) 
(assert true)
;(assert (verifyAssignable/2089426193 var2124 var3144 var2743)) ; Statement: specialinvoke r4.<org.apache.ibatis.javassist.bytecode.analysis.Executor: void verifyAssignable(org.apache.ibatis.javassist.bytecode.analysis.Type,org.apache.ibatis.javassist.bytecode.analysis.Type)>(r5, r18) 

(declare-const var2124!1 var3353)
(declare-const var3144!1 var715)
(declare-const var2743!1 var715)
(define-const var3043 var715 var715-INTEGER) ; Statement: $r6 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type INTEGER> 
(assert true)
;(assert (verifyAssignable/2089426193 var2124!1 var3043 var1528)) ; Statement: specialinvoke r4.<org.apache.ibatis.javassist.bytecode.analysis.Executor: void verifyAssignable(org.apache.ibatis.javassist.bytecode.analysis.Type,org.apache.ibatis.javassist.bytecode.analysis.Type)>($r6, r1) 

(declare-const var2124!2 var3353)
(declare-const var3043!1 var715)
(declare-const var1528!1 var715)
(assert true)
;(assert (simplePush/270023542 var2124!2 var2743!1 var1953)) ; Statement: specialinvoke r4.<org.apache.ibatis.javassist.bytecode.analysis.Executor: void simplePush(org.apache.ibatis.javassist.bytecode.analysis.Type,org.apache.ibatis.javassist.bytecode.analysis.Frame)>(r18, r0) 

(declare-const var2124!3 var3353)
(declare-const var2743!2 var715)
(declare-const var1953!1 var539)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {pop/-1531762245=([org.apache.ibatis.javassist.bytecode.analysis.Frame], org.apache.ibatis.javassist.bytecode.analysis.Type), getComponent/540937838=([org.apache.ibatis.javassist.bytecode.analysis.Type], org.apache.ibatis.javassist.bytecode.analysis.Type), zeroExtend/-769386489=([org.apache.ibatis.javassist.bytecode.analysis.Executor, org.apache.ibatis.javassist.bytecode.analysis.Type], org.apache.ibatis.javassist.bytecode.analysis.Type), verifyAssignable/2089426193=([org.apache.ibatis.javassist.bytecode.analysis.Executor, org.apache.ibatis.javassist.bytecode.analysis.Type, org.apache.ibatis.javassist.bytecode.analysis.Type], void), simplePush/270023542=([org.apache.ibatis.javassist.bytecode.analysis.Executor, org.apache.ibatis.javassist.bytecode.analysis.Type, org.apache.ibatis.javassist.bytecode.analysis.Frame], void)}
; {var3353=org.apache.ibatis.javassist.bytecode.analysis.Executor, var2124=r4, var715=org.apache.ibatis.javassist.bytecode.analysis.Type, var3144=r5, var539=org.apache.ibatis.javassist.bytecode.analysis.Frame, var1953=r0, var1528=r1, var2976=r2, var351=$r3, var171=r17, var2743=r18, var3043=$r6}
; {org.apache.ibatis.javassist.bytecode.analysis.Executor=var3353, r4=var2124, org.apache.ibatis.javassist.bytecode.analysis.Type=var715, r5=var3144, org.apache.ibatis.javassist.bytecode.analysis.Frame=var539, r0=var1953, r1=var1528, r2=var2976, $r3=var351, r17=var171, r18=var2743, $r6=var3043}
;seq 
;cnt {}
;stmts r4 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor;	r5 := @parameter0: org.apache.ibatis.javassist.bytecode.analysis.Type;	r0 := @parameter1: org.apache.ibatis.javassist.bytecode.analysis.Frame;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Frame: org.apache.ibatis.javassist.bytecode.analysis.Type pop()>();	r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Frame: org.apache.ibatis.javassist.bytecode.analysis.Type pop()>();	$r3 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type UNINIT>;	if r2 != $r3 goto r17 = virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type getComponent()>();	r17 = virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type getComponent()>();	if r17 != null goto r18 = specialinvoke r4.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type zeroExtend(org.apache.ibatis.javassist.bytecode.analysis.Type)>(r17);	r18 = specialinvoke r4.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type zeroExtend(org.apache.ibatis.javassist.bytecode.analysis.Type)>(r17);	specialinvoke r4.<org.apache.ibatis.javassist.bytecode.analysis.Executor: void verifyAssignable(org.apache.ibatis.javassist.bytecode.analysis.Type,org.apache.ibatis.javassist.bytecode.analysis.Type)>(r5, r18);	$r6 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type INTEGER>;	specialinvoke r4.<org.apache.ibatis.javassist.bytecode.analysis.Executor: void verifyAssignable(org.apache.ibatis.javassist.bytecode.analysis.Type,org.apache.ibatis.javassist.bytecode.analysis.Type)>($r6, r1);	specialinvoke r4.<org.apache.ibatis.javassist.bytecode.analysis.Executor: void simplePush(org.apache.ibatis.javassist.bytecode.analysis.Type,org.apache.ibatis.javassist.bytecode.analysis.Frame)>(r18, r0);	return
;block_num 3