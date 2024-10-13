(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1905 0)
(declare-sort var870 0)
(declare-sort var1400 0)
(declare-sort var1746 0)
(declare-sort var3696 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun get/-795098227 (var1400) String)
(declare-fun cast-from-var870-to-var1400 (var870) var1400)
(declare-fun codeGen/-931774585 (var1905) var1746)
(declare-fun paramArrayName/-1510328177 (var1746) String)
(declare-fun exprType/1960993524 (var3696) Int)
(declare-fun cast-from-var1905-to-var3696 (var1905) var3696)
(declare-fun arrayDim/1960993524 (var3696) Int)
(declare-fun className/1960993524 (var3696) String)
(declare-const null-var1905 var1905)
(declare-const null-var870 var870)
(declare-const var253 var1905) ; Statement: r2 := @this: org.apache.ibatis.javassist.compiler.JvstTypeChecker 
(assert (not (= var253 null-var1905)))
(declare-const var192 var870) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Member 
(assert (not (= var192 null-var870)))
(assert true)
(define-const var2981 String (get/-795098227 (cast-from-var870-to-var1400 var192))) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Member: java.lang.String get()>() 
(define-const var3180 var1746 (codeGen/-931774585 var253)) ; Statement: $r3 = r2.<org.apache.ibatis.javassist.compiler.JvstTypeChecker: org.apache.ibatis.javassist.compiler.JvstCodeGen codeGen> 
(define-const var2617 String (paramArrayName/-1510328177 var3180)) ; Statement: $r4 = $r3.<org.apache.ibatis.javassist.compiler.JvstCodeGen: java.lang.String paramArrayName> 
(assert true)
(define-const var31 Bool (= var2981 var2617)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("$sig") 
(assert (not (= (ite var31 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var253!1 var1905)
(assert (not (= var253!1 null-var1905)))
(assert (= (exprType/1960993524 (cast-from-var1905-to-var3696 var253!1)) 307)) ; Statement: r2.<org.apache.ibatis.javassist.compiler.JvstTypeChecker: int exprType> = 307 
(declare-const var253!2 var1905)
(assert (not (= var253!2 null-var1905)))
(assert (= (arrayDim/1960993524 (cast-from-var1905-to-var3696 var253!2)) 1)) ; Statement: r2.<org.apache.ibatis.javassist.compiler.JvstTypeChecker: int arrayDim> = 1 
(declare-const var253!3 var1905)
(assert (not (= var253!3 null-var1905)))
(assert (= (className/1960993524 (cast-from-var1905-to-var3696 var253!3)) "java/lang/Object")) ; Statement: r2.<org.apache.ibatis.javassist.compiler.JvstTypeChecker: java.lang.String className> = "java/lang/Object" 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {get/-795098227=([org.apache.ibatis.javassist.compiler.ast.Symbol], java.lang.String), cast-from-var870-to-var1400=([org.apache.ibatis.javassist.compiler.ast.Member], org.apache.ibatis.javassist.compiler.ast.Symbol), codeGen/-931774585=([org.apache.ibatis.javassist.compiler.JvstTypeChecker], org.apache.ibatis.javassist.compiler.JvstCodeGen), paramArrayName/-1510328177=([org.apache.ibatis.javassist.compiler.JvstCodeGen], java.lang.String), exprType/1960993524=([org.apache.ibatis.javassist.compiler.TypeChecker], int), cast-from-var1905-to-var3696=([org.apache.ibatis.javassist.compiler.JvstTypeChecker], org.apache.ibatis.javassist.compiler.TypeChecker), arrayDim/1960993524=([org.apache.ibatis.javassist.compiler.TypeChecker], int), className/1960993524=([org.apache.ibatis.javassist.compiler.TypeChecker], java.lang.String)}
; {var1905=org.apache.ibatis.javassist.compiler.JvstTypeChecker, var253=r2, var870=org.apache.ibatis.javassist.compiler.ast.Member, var192=r0, var1400=org.apache.ibatis.javassist.compiler.ast.Symbol, var2981=r1, var1746=org.apache.ibatis.javassist.compiler.JvstCodeGen, var3180=$r3, var2617=$r4, var31=$z0, var3696=org.apache.ibatis.javassist.compiler.TypeChecker}
; {org.apache.ibatis.javassist.compiler.JvstTypeChecker=var1905, r2=var253, org.apache.ibatis.javassist.compiler.ast.Member=var870, r0=var192, org.apache.ibatis.javassist.compiler.ast.Symbol=var1400, r1=var2981, org.apache.ibatis.javassist.compiler.JvstCodeGen=var1746, $r3=var3180, $r4=var2617, $z0=var31, org.apache.ibatis.javassist.compiler.TypeChecker=var3696}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.compiler.JvstTypeChecker;	r0 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Member;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Member: java.lang.String get()>();	$r3 = r2.<org.apache.ibatis.javassist.compiler.JvstTypeChecker: org.apache.ibatis.javassist.compiler.JvstCodeGen codeGen>;	$r4 = $r3.<org.apache.ibatis.javassist.compiler.JvstCodeGen: java.lang.String paramArrayName>;	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("$sig");	r2.<org.apache.ibatis.javassist.compiler.JvstTypeChecker: int exprType> = 307;	r2.<org.apache.ibatis.javassist.compiler.JvstTypeChecker: int arrayDim> = 1;	r2.<org.apache.ibatis.javassist.compiler.JvstTypeChecker: java.lang.String className> = "java/lang/Object";	goto [?= return];	return
;block_num 3