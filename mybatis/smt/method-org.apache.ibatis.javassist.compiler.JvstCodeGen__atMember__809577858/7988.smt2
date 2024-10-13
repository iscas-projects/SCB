(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3694 0)
(declare-sort var174 0)
(declare-sort var206 0)
(declare-sort var2713 0)
(declare-sort var3339 0)
(declare-sort var755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun get/-795098227 (var206) String)
(declare-fun cast-from-var174-to-var206 (var174) var206)
(declare-fun paramArrayName/-1510328177 (var3694) String)
(declare-fun bytecode/-21816708 (var3339) var2713)
(declare-fun cast-from-var3694-to-var3339 (var3694) var3339)
(declare-fun paramTypeList/-1510328177 (var3694) (Array Int var755))
(declare-fun indexOfParam1/-240207342 (var3694) Int)
(declare-fun var3694_compileParameterList/-23057855 (var2713 (Array Int var755) Int) Int)
(declare-fun exprType/-21816708 (var3339) Int)
(declare-fun arrayDim/-21816708 (var3339) Int)
(declare-fun className/-21816708 (var3339) String)
(declare-const null-var3694 var3694)
(declare-const null-var174 var174)
(declare-const var2125 var3694) ; Statement: r2 := @this: org.apache.ibatis.javassist.compiler.JvstCodeGen 
(assert (not (= var2125 null-var3694)))
(declare-const var3062 var174) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Member 
(assert (not (= var3062 null-var174)))
(assert true)
(define-const var3288 String (get/-795098227 (cast-from-var174-to-var206 var3062))) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Member: java.lang.String get()>() 
(define-const var3560 String (paramArrayName/-1510328177 var2125)) ; Statement: $r3 = r2.<org.apache.ibatis.javassist.compiler.JvstCodeGen: java.lang.String paramArrayName> 
(assert true)
(define-const var823 Bool (= var3288 var3560)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("$sig") 
(assert (not (= (ite var823 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2562 var2713 (bytecode/-21816708 (cast-from-var3694-to-var3339 var2125))) ; Statement: $r18 = r2.<org.apache.ibatis.javassist.compiler.JvstCodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode> 
(define-const var2657 (Array Int var755) (paramTypeList/-1510328177 var2125)) ; Statement: $r19 = r2.<org.apache.ibatis.javassist.compiler.JvstCodeGen: org.apache.ibatis.javassist.CtClass[] paramTypeList> 
(assert true)
(define-const var2638 Int (indexOfParam1/-240207342 var2125)) ; Statement: $i0 = specialinvoke r2.<org.apache.ibatis.javassist.compiler.JvstCodeGen: int indexOfParam1()>() 
;(assert (var3694_compileParameterList/-23057855 var2562 var2657 var2638)) ; Statement: staticinvoke <org.apache.ibatis.javassist.compiler.JvstCodeGen: int compileParameterList(org.apache.ibatis.javassist.bytecode.Bytecode,org.apache.ibatis.javassist.CtClass[],int)>($r18, $r19, $i0) 

(declare-const var2562!1 var2713)
(declare-const var2657!1 (Array Int var755))
(declare-const var2638!1 Int)
(declare-const var2125!1 var3694)
(assert (not (= var2125!1 null-var3694)))
(assert (= (exprType/-21816708 (cast-from-var3694-to-var3339 var2125!1)) 307)) ; Statement: r2.<org.apache.ibatis.javassist.compiler.JvstCodeGen: int exprType> = 307 
(declare-const var2125!2 var3694)
(assert (not (= var2125!2 null-var3694)))
(assert (= (arrayDim/-21816708 (cast-from-var3694-to-var3339 var2125!2)) 1)) ; Statement: r2.<org.apache.ibatis.javassist.compiler.JvstCodeGen: int arrayDim> = 1 
(declare-const var2125!3 var3694)
(assert (not (= var2125!3 null-var3694)))
(assert (= (className/-21816708 (cast-from-var3694-to-var3339 var2125!3)) "java/lang/Object")) ; Statement: r2.<org.apache.ibatis.javassist.compiler.JvstCodeGen: java.lang.String className> = "java/lang/Object" 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {get/-795098227=([org.apache.ibatis.javassist.compiler.ast.Symbol], java.lang.String), cast-from-var174-to-var206=([org.apache.ibatis.javassist.compiler.ast.Member], org.apache.ibatis.javassist.compiler.ast.Symbol), paramArrayName/-1510328177=([org.apache.ibatis.javassist.compiler.JvstCodeGen], java.lang.String), bytecode/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], org.apache.ibatis.javassist.bytecode.Bytecode), cast-from-var3694-to-var3339=([org.apache.ibatis.javassist.compiler.JvstCodeGen], org.apache.ibatis.javassist.compiler.CodeGen), paramTypeList/-1510328177=([org.apache.ibatis.javassist.compiler.JvstCodeGen], org.apache.ibatis.javassist.CtClass[]), indexOfParam1/-240207342=([org.apache.ibatis.javassist.compiler.JvstCodeGen], int), var3694_compileParameterList/-23057855=([org.apache.ibatis.javassist.bytecode.Bytecode, org.apache.ibatis.javassist.CtClass[], int], int), exprType/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), arrayDim/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), className/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], java.lang.String)}
; {var3694=org.apache.ibatis.javassist.compiler.JvstCodeGen, var2125=r2, var174=org.apache.ibatis.javassist.compiler.ast.Member, var3062=r0, var206=org.apache.ibatis.javassist.compiler.ast.Symbol, var3288=r1, var3560=$r3, var823=$z0, var2713=org.apache.ibatis.javassist.bytecode.Bytecode, var3339=org.apache.ibatis.javassist.compiler.CodeGen, var2562=$r18, var755=org.apache.ibatis.javassist.CtClass, var2657=$r19, var2638=$i0}
; {org.apache.ibatis.javassist.compiler.JvstCodeGen=var3694, r2=var2125, org.apache.ibatis.javassist.compiler.ast.Member=var174, r0=var3062, org.apache.ibatis.javassist.compiler.ast.Symbol=var206, r1=var3288, $r3=var3560, $z0=var823, org.apache.ibatis.javassist.bytecode.Bytecode=var2713, org.apache.ibatis.javassist.compiler.CodeGen=var3339, $r18=var2562, org.apache.ibatis.javassist.CtClass=var755, $r19=var2657, $i0=var2638}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.compiler.JvstCodeGen;	r0 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Member;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Member: java.lang.String get()>();	$r3 = r2.<org.apache.ibatis.javassist.compiler.JvstCodeGen: java.lang.String paramArrayName>;	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("$sig");	$r18 = r2.<org.apache.ibatis.javassist.compiler.JvstCodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;	$r19 = r2.<org.apache.ibatis.javassist.compiler.JvstCodeGen: org.apache.ibatis.javassist.CtClass[] paramTypeList>;	$i0 = specialinvoke r2.<org.apache.ibatis.javassist.compiler.JvstCodeGen: int indexOfParam1()>();	staticinvoke <org.apache.ibatis.javassist.compiler.JvstCodeGen: int compileParameterList(org.apache.ibatis.javassist.bytecode.Bytecode,org.apache.ibatis.javassist.CtClass[],int)>($r18, $r19, $i0);	r2.<org.apache.ibatis.javassist.compiler.JvstCodeGen: int exprType> = 307;	r2.<org.apache.ibatis.javassist.compiler.JvstCodeGen: int arrayDim> = 1;	r2.<org.apache.ibatis.javassist.compiler.JvstCodeGen: java.lang.String className> = "java/lang/Object";	goto [?= return];	return
;block_num 3