(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3035 0)
(declare-sort var51 0)
(declare-sort var1086 0)
(declare-sort var3867 0)
(declare-sort var1781 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOperator/-1274197786 (var51) Int)
(declare-fun oprand1/-1546530015 (var51) var1086)
(declare-fun oprand2/-1546500224 (var51) var1086)
(declare-fun cast-from-var1086-to-var3867 (var1086) var3867)
(declare-fun get/-795098227 (var3867) String)
(declare-fun atFieldRead/-14446889 (var3035 var1086) void)
(declare-fun cast-from-var51-to-var1086 (var51) var1086)
(declare-const null-var3035 var3035)
(declare-const null-var51 var51)
(declare-const null-var1781 var1781)
(declare-const var3832 var3035) ; Statement: r2 := @this: org.apache.ibatis.javassist.compiler.TypeChecker 
(assert (not (= var3832 null-var3035)))
(declare-const var1996 var51) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Expr 
(assert (not (= var1996 null-var51)))
(assert true)
(define-const var302 Int (getOperator/-1274197786 var1996)) ; Statement: i0 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Expr: int getOperator()>() 
(assert true)
(define-const var1416 var1086 (oprand1/-1546530015 var1996)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Expr: org.apache.ibatis.javassist.compiler.ast.ASTree oprand1()>() 
 ; Statement: if i0 != 46 goto (branch) 
(assert (not (not (= var302 46)))) ; Negate: Cond: i0 != 46  
(assert true)
(define-const var1621 var1086 (oprand2/-1546500224 var1996)) ; Statement: $r6 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Expr: org.apache.ibatis.javassist.compiler.ast.ASTree oprand2()>() 
(define-const var2371 var3867 (cast-from-var1086-to-var3867 var1621)) ; Statement: $r7 = (org.apache.ibatis.javassist.compiler.ast.Symbol) $r6 
(assert true)
(define-const var1579 String (get/-795098227 var2371)) ; Statement: r9 = virtualinvoke $r7.<org.apache.ibatis.javassist.compiler.ast.Symbol: java.lang.String get()>() 
(assert true)
(define-const var1277 Bool (= var1579 "length")) ; Statement: $z3 = virtualinvoke r9.<java.lang.String: boolean equals(java.lang.Object)>("length") 
 ; Statement: if $z3 == 0 goto $z4 = virtualinvoke r9.<java.lang.String: boolean equals(java.lang.Object)>("class") 
(assert (not (= (ite var1277 1 0) 0))) ; Negate: Cond: $z3 == 0  
(declare-const var1685 var1781) ; Statement: $r8 := @caughtexception 
(assert (not (= var1685 null-var1781)))
(assert true)
;(assert (atFieldRead/-14446889 var3832 (cast-from-var51-to-var1086 var1996))) ; Statement: specialinvoke r2.<org.apache.ibatis.javassist.compiler.TypeChecker: void atFieldRead(org.apache.ibatis.javassist.compiler.ast.ASTree)>(r0) 

(declare-const var3832!1 var3035)
(declare-const var1996!1 var51)
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getOperator/-1274197786=([org.apache.ibatis.javassist.compiler.ast.Expr], int), oprand1/-1546530015=([org.apache.ibatis.javassist.compiler.ast.Expr], org.apache.ibatis.javassist.compiler.ast.ASTree), oprand2/-1546500224=([org.apache.ibatis.javassist.compiler.ast.Expr], org.apache.ibatis.javassist.compiler.ast.ASTree), cast-from-var1086-to-var3867=([org.apache.ibatis.javassist.compiler.ast.ASTree], org.apache.ibatis.javassist.compiler.ast.Symbol), get/-795098227=([org.apache.ibatis.javassist.compiler.ast.Symbol], java.lang.String), atFieldRead/-14446889=([org.apache.ibatis.javassist.compiler.TypeChecker, org.apache.ibatis.javassist.compiler.ast.ASTree], void), cast-from-var51-to-var1086=([org.apache.ibatis.javassist.compiler.ast.Expr], org.apache.ibatis.javassist.compiler.ast.ASTree)}
; {var3035=org.apache.ibatis.javassist.compiler.TypeChecker, var3832=r2, var51=org.apache.ibatis.javassist.compiler.ast.Expr, var1996=r0, var302=i0, var1086=org.apache.ibatis.javassist.compiler.ast.ASTree, var1416=r1, var1621=$r6, var3867=org.apache.ibatis.javassist.compiler.ast.Symbol, var2371=$r7, var1579=r9, var1277=$z3, var1781=org.apache.ibatis.javassist.compiler.NoFieldException, var1685=$r8}
; {org.apache.ibatis.javassist.compiler.TypeChecker=var3035, r2=var3832, org.apache.ibatis.javassist.compiler.ast.Expr=var51, r0=var1996, i0=var302, org.apache.ibatis.javassist.compiler.ast.ASTree=var1086, r1=var1416, $r6=var1621, org.apache.ibatis.javassist.compiler.ast.Symbol=var3867, $r7=var2371, r9=var1579, $z3=var1277, org.apache.ibatis.javassist.compiler.NoFieldException=var1781, $r8=var1685}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.compiler.TypeChecker;	r0 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Expr;	i0 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Expr: int getOperator()>();	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Expr: org.apache.ibatis.javassist.compiler.ast.ASTree oprand1()>();	if i0 != 46 goto (branch);	$r6 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Expr: org.apache.ibatis.javassist.compiler.ast.ASTree oprand2()>();	$r7 = (org.apache.ibatis.javassist.compiler.ast.Symbol) $r6;	r9 = virtualinvoke $r7.<org.apache.ibatis.javassist.compiler.ast.Symbol: java.lang.String get()>();	$z3 = virtualinvoke r9.<java.lang.String: boolean equals(java.lang.Object)>("length");	if $z3 == 0 goto $z4 = virtualinvoke r9.<java.lang.String: boolean equals(java.lang.Object)>("class");	$r8 := @caughtexception;	specialinvoke r2.<org.apache.ibatis.javassist.compiler.TypeChecker: void atFieldRead(org.apache.ibatis.javassist.compiler.ast.ASTree)>(r0);	goto [?= (branch)];	goto [?= return];	return
;block_num 5