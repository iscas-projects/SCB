(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var94 0)
(declare-sort var2327 0)
(declare-sort var3582 0)
(declare-sort var2918 0)
(declare-sort var2169 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun doTypeCheck/-1218898491 (var94 var2327) void)
(declare-fun var2918_stripPlusExpr/1438112708 (var2327) var2327)
(declare-fun var2169-init () var2169)
(declare-fun <init>/-157978614 (var2169 String) void)
(declare-const null-var94 var94)
(declare-const null-var2327 var2327)
(declare-const null-Int Int)
(declare-const null-var3582 var3582)
(declare-const var1510 var94) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.CodeGen 
(assert (not (= var1510 null-var94)))
(declare-const var1267 var2327) ; Statement: r12 := @parameter0: org.apache.ibatis.javassist.compiler.ast.ASTree 
(assert (not (= var1267 null-var2327)))
(declare-const var2896 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2896 null-Int)))
(declare-const var1023 var3582) ; Statement: r11 := @parameter2: java.util.List 
(assert (not (= var1023 null-var3582)))
(assert true)
;(assert (doTypeCheck/-1218898491 var1510 var1267)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.compiler.CodeGen: void doTypeCheck(org.apache.ibatis.javassist.compiler.ast.ASTree)>(r12) 

(declare-const var1510!1 var94)
(declare-const var1267!1 var2327)
(define-const var2788 var2327 (var2918_stripPlusExpr/1438112708 var1267!1)) ; Statement: r13 = staticinvoke <org.apache.ibatis.javassist.compiler.TypeChecker: org.apache.ibatis.javassist.compiler.ast.ASTree stripPlusExpr(org.apache.ibatis.javassist.compiler.ast.ASTree)>(r12) 
(define-const var1795 Bool false) ; Statement: $z0 = r13 instanceof org.apache.ibatis.javassist.compiler.ast.StringL 
 ; Statement: if $z0 == 0 goto $r1 = new org.apache.ibatis.javassist.compiler.CompileError 
(assert (= (ite var1795 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3383 var2169 var2169-init) ; Statement: $r1 = new org.apache.ibatis.javassist.compiler.CompileError 
(assert true)
;(assert (<init>/-157978614 var3383 "bad case label")) ; Statement: specialinvoke $r1.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>("bad case label") 

(declare-const var3383!1 var2169)
(declare-const var2422 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {doTypeCheck/-1218898491=([org.apache.ibatis.javassist.compiler.CodeGen, org.apache.ibatis.javassist.compiler.ast.ASTree], void), var2918_stripPlusExpr/1438112708=([org.apache.ibatis.javassist.compiler.ast.ASTree], org.apache.ibatis.javassist.compiler.ast.ASTree), var2169-init=([], org.apache.ibatis.javassist.compiler.CompileError), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var94=org.apache.ibatis.javassist.compiler.CodeGen, var1510=r0, var2327=org.apache.ibatis.javassist.compiler.ast.ASTree, var1267=r12, var2896=i0, var3582=java.util.List, var1023=r11, var2918=org.apache.ibatis.javassist.compiler.TypeChecker, var2788=r13, var1795=$z0, var2169=org.apache.ibatis.javassist.compiler.CompileError, var3383=$r1, var2422="bad case label"}
; {org.apache.ibatis.javassist.compiler.CodeGen=var94, r0=var1510, org.apache.ibatis.javassist.compiler.ast.ASTree=var2327, r12=var1267, i0=var2896, java.util.List=var3582, r11=var1023, org.apache.ibatis.javassist.compiler.TypeChecker=var2918, r13=var2788, $z0=var1795, org.apache.ibatis.javassist.compiler.CompileError=var2169, $r1=var3383, "bad case label"=var2422}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.CodeGen;	r12 := @parameter0: org.apache.ibatis.javassist.compiler.ast.ASTree;	i0 := @parameter1: int;	r11 := @parameter2: java.util.List;	virtualinvoke r0.<org.apache.ibatis.javassist.compiler.CodeGen: void doTypeCheck(org.apache.ibatis.javassist.compiler.ast.ASTree)>(r12);	r13 = staticinvoke <org.apache.ibatis.javassist.compiler.TypeChecker: org.apache.ibatis.javassist.compiler.ast.ASTree stripPlusExpr(org.apache.ibatis.javassist.compiler.ast.ASTree)>(r12);	$z0 = r13 instanceof org.apache.ibatis.javassist.compiler.ast.StringL;	if $z0 == 0 goto $r1 = new org.apache.ibatis.javassist.compiler.CompileError;	$r1 = new org.apache.ibatis.javassist.compiler.CompileError;	specialinvoke $r1.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>("bad case label");	throw $r1
;block_num 2