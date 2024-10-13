(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var752 0)
(declare-sort var3845 0)
(declare-sort var3186 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOperator/-1274197786 (var3845) Int)
(declare-fun oprand1/-1546530015 (var3845) var3186)
(declare-fun oprand2/-1546500224 (var3845) var3186)
(declare-fun atArrayRead/910952013 (var752 var3186 var3186) void)
(declare-const null-var752 var752)
(declare-const null-var3845 var3845)
(declare-const var2226 var752) ; Statement: r2 := @this: org.apache.ibatis.javassist.compiler.TypeChecker 
(assert (not (= var2226 null-var752)))
(declare-const var3457 var3845) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Expr 
(assert (not (= var3457 null-var3845)))
(assert true)
(define-const var3034 Int (getOperator/-1274197786 var3457)) ; Statement: i0 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Expr: int getOperator()>() 
(assert true)
(define-const var2754 var3186 (oprand1/-1546530015 var3457)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Expr: org.apache.ibatis.javassist.compiler.ast.ASTree oprand1()>() 
 ; Statement: if i0 != 46 goto (branch) 
(assert (not (= var3034 46))) ; Cond: i0 != 46 
 ; Statement: if i0 != 35 goto (branch) 
(assert (not (= var3034 35))) ; Cond: i0 != 35 
 ; Statement: if i0 != 65 goto (branch) 
(assert (not (not (= var3034 65)))) ; Negate: Cond: i0 != 65  
(assert true)
(define-const var3492 var3186 (oprand2/-1546500224 var3457)) ; Statement: $r3 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Expr: org.apache.ibatis.javassist.compiler.ast.ASTree oprand2()>() 
(assert true)
;(assert (atArrayRead/910952013 var2226 var2754 var3492)) ; Statement: virtualinvoke r2.<org.apache.ibatis.javassist.compiler.TypeChecker: void atArrayRead(org.apache.ibatis.javassist.compiler.ast.ASTree,org.apache.ibatis.javassist.compiler.ast.ASTree)>(r1, $r3) 

(declare-const var2226!1 var752)
(declare-const var2754!1 var3186)
(declare-const var3492!1 var3186)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getOperator/-1274197786=([org.apache.ibatis.javassist.compiler.ast.Expr], int), oprand1/-1546530015=([org.apache.ibatis.javassist.compiler.ast.Expr], org.apache.ibatis.javassist.compiler.ast.ASTree), oprand2/-1546500224=([org.apache.ibatis.javassist.compiler.ast.Expr], org.apache.ibatis.javassist.compiler.ast.ASTree), atArrayRead/910952013=([org.apache.ibatis.javassist.compiler.TypeChecker, org.apache.ibatis.javassist.compiler.ast.ASTree, org.apache.ibatis.javassist.compiler.ast.ASTree], void)}
; {var752=org.apache.ibatis.javassist.compiler.TypeChecker, var2226=r2, var3845=org.apache.ibatis.javassist.compiler.ast.Expr, var3457=r0, var3034=i0, var3186=org.apache.ibatis.javassist.compiler.ast.ASTree, var2754=r1, var3492=$r3}
; {org.apache.ibatis.javassist.compiler.TypeChecker=var752, r2=var2226, org.apache.ibatis.javassist.compiler.ast.Expr=var3845, r0=var3457, i0=var3034, org.apache.ibatis.javassist.compiler.ast.ASTree=var3186, r1=var2754, $r3=var3492}
;seq 
;cnt {}
;stmts r2 := @this: org.apache.ibatis.javassist.compiler.TypeChecker;	r0 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Expr;	i0 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Expr: int getOperator()>();	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Expr: org.apache.ibatis.javassist.compiler.ast.ASTree oprand1()>();	if i0 != 46 goto (branch);	if i0 != 35 goto (branch);	if i0 != 65 goto (branch);	$r3 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Expr: org.apache.ibatis.javassist.compiler.ast.ASTree oprand2()>();	virtualinvoke r2.<org.apache.ibatis.javassist.compiler.TypeChecker: void atArrayRead(org.apache.ibatis.javassist.compiler.ast.ASTree,org.apache.ibatis.javassist.compiler.ast.ASTree)>(r1, $r3);	goto [?= return];	return
;block_num 5