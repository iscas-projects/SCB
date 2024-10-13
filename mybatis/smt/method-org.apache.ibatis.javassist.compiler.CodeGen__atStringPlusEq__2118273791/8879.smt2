(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3566 0)
(declare-sort var191 0)
(declare-sort var548 0)
(declare-sort var543 0)
(declare-sort var317 0)
(declare-sort var3846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun convToString/420371309 (var3566 Int Int) void)
(declare-fun accept/-1700699759 (var543 var317) void)
(declare-fun cast-from-var3566-to-var317 (var3566) var317)
(declare-fun exprType/-21816708 (var3566) Int)
(declare-fun arrayDim/-21816708 (var3566) Int)
(declare-fun bytecode/-21816708 (var3566) var3846)
(declare-fun addInvokevirtual/-1171567436 (var3846 String String String) void)
(declare-fun className/-21816708 (var3566) String)
(declare-const null-var3566 var3566)
(declare-const null-var191 var191)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var543 var543)
(declare-const var1150 var3566) ; Statement: r2 := @this: org.apache.ibatis.javassist.compiler.CodeGen 
(assert (not (= var1150 null-var3566)))
(declare-const var2915 var191) ; Statement: r5 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Expr 
(assert (not (= var2915 null-var191)))
(declare-const var3225 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3225 null-Int)))
(declare-const var296 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var296 null-Int)))
(declare-const var1067 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var1067 null-String)))
(declare-const var1818 var543) ; Statement: r3 := @parameter4: org.apache.ibatis.javassist.compiler.ast.ASTree 
(assert (not (= var1818 null-var543)))
(define-const var1304 String "java/lang/String") ; Statement: $r1 = "java/lang/String" 
(assert true)
(define-const var2536 Bool (= var1304 var1067)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto specialinvoke r2.<org.apache.ibatis.javassist.compiler.CodeGen: void convToString(int,int)>(i0, i1) 
(assert (not (= (ite var2536 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (convToString/420371309 var1150 var3225 var296)) ; Statement: specialinvoke r2.<org.apache.ibatis.javassist.compiler.CodeGen: void convToString(int,int)>(i0, i1) 

(declare-const var1150!1 var3566)
(declare-const var3225!1 Int)
(declare-const var296!1 Int)
(assert true)
;(assert (accept/-1700699759 var1818 (cast-from-var3566-to-var317 var1150!1))) ; Statement: virtualinvoke r3.<org.apache.ibatis.javassist.compiler.ast.ASTree: void accept(org.apache.ibatis.javassist.compiler.ast.Visitor)>(r2) 

(declare-const var1818!1 var543)
(declare-const var1150!2 var3566)
(define-const var1884 Int (exprType/-21816708 var1150!2)) ; Statement: $i3 = r2.<org.apache.ibatis.javassist.compiler.CodeGen: int exprType> 
(define-const var3537 Int (arrayDim/-21816708 var1150!2)) ; Statement: $i2 = r2.<org.apache.ibatis.javassist.compiler.CodeGen: int arrayDim> 
(assert true)
;(assert (convToString/420371309 var1150!2 var1884 var3537)) ; Statement: specialinvoke r2.<org.apache.ibatis.javassist.compiler.CodeGen: void convToString(int,int)>($i3, $i2) 

(declare-const var1150!3 var3566)
(declare-const var1884!1 Int)
(declare-const var3537!1 Int)
(define-const var190 var3846 (bytecode/-21816708 var1150!3)) ; Statement: $r4 = r2.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode> 
(assert true)
;(assert (addInvokevirtual/-1171567436 var190 "java.lang.String" "concat" "(Ljava/lang/String;)Ljava/lang/String;")) ; Statement: virtualinvoke $r4.<org.apache.ibatis.javassist.bytecode.Bytecode: void addInvokevirtual(java.lang.String,java.lang.String,java.lang.String)>("java.lang.String", "concat", "(Ljava/lang/String;)Ljava/lang/String;") 

(declare-const var190!1 var3846)
(declare-const var3119 String)
(declare-const var492 String)
(declare-const var2717 String)
(declare-const var1150!4 var3566)
(assert (not (= var1150!4 null-var3566)))
(assert (= (exprType/-21816708 var1150!4) 307)) ; Statement: r2.<org.apache.ibatis.javassist.compiler.CodeGen: int exprType> = 307 
(declare-const var1150!5 var3566)
(assert (not (= var1150!5 null-var3566)))
(assert (= (arrayDim/-21816708 var1150!5) 0)) ; Statement: r2.<org.apache.ibatis.javassist.compiler.CodeGen: int arrayDim> = 0 
(declare-const var1150!6 var3566)
(assert (not (= var1150!6 null-var3566)))
(assert (= (className/-21816708 var1150!6) "java/lang/String")) ; Statement: r2.<org.apache.ibatis.javassist.compiler.CodeGen: java.lang.String className> = "java/lang/String" 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {convToString/420371309=([org.apache.ibatis.javassist.compiler.CodeGen, int, int], void), accept/-1700699759=([org.apache.ibatis.javassist.compiler.ast.ASTree, org.apache.ibatis.javassist.compiler.ast.Visitor], void), cast-from-var3566-to-var317=([org.apache.ibatis.javassist.compiler.CodeGen], org.apache.ibatis.javassist.compiler.ast.Visitor), exprType/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), arrayDim/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), bytecode/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], org.apache.ibatis.javassist.bytecode.Bytecode), addInvokevirtual/-1171567436=([org.apache.ibatis.javassist.bytecode.Bytecode, java.lang.String, java.lang.String, java.lang.String], void), className/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], java.lang.String)}
; {var3566=org.apache.ibatis.javassist.compiler.CodeGen, var1150=r2, var191=org.apache.ibatis.javassist.compiler.ast.Expr, var2915=r5, var3225=i0, var296=i1, var1067=r0, var548=null_type, var543=org.apache.ibatis.javassist.compiler.ast.ASTree, var1818=r3, var1304=$r1, var2536=$z0, var317=org.apache.ibatis.javassist.compiler.ast.Visitor, var1884=$i3, var3537=$i2, var3846=org.apache.ibatis.javassist.bytecode.Bytecode, var190=$r4, var3119="java.lang.String", var492="concat", var2717="(Ljava/lang/String;)Ljava/lang/String;"}
; {org.apache.ibatis.javassist.compiler.CodeGen=var3566, r2=var1150, org.apache.ibatis.javassist.compiler.ast.Expr=var191, r5=var2915, i0=var3225, i1=var296, r0=var1067, null_type=var548, org.apache.ibatis.javassist.compiler.ast.ASTree=var543, r3=var1818, $r1=var1304, $z0=var2536, org.apache.ibatis.javassist.compiler.ast.Visitor=var317, $i3=var1884, $i2=var3537, org.apache.ibatis.javassist.bytecode.Bytecode=var3846, $r4=var190, "java.lang.String"=var3119, "concat"=var492, "(Ljava/lang/String;)Ljava/lang/String;"=var2717}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.compiler.CodeGen;	r5 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Expr;	i0 := @parameter1: int;	i1 := @parameter2: int;	r0 := @parameter3: java.lang.String;	r3 := @parameter4: org.apache.ibatis.javassist.compiler.ast.ASTree;	$r1 = "java/lang/String";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto specialinvoke r2.<org.apache.ibatis.javassist.compiler.CodeGen: void convToString(int,int)>(i0, i1);	specialinvoke r2.<org.apache.ibatis.javassist.compiler.CodeGen: void convToString(int,int)>(i0, i1);	virtualinvoke r3.<org.apache.ibatis.javassist.compiler.ast.ASTree: void accept(org.apache.ibatis.javassist.compiler.ast.Visitor)>(r2);	$i3 = r2.<org.apache.ibatis.javassist.compiler.CodeGen: int exprType>;	$i2 = r2.<org.apache.ibatis.javassist.compiler.CodeGen: int arrayDim>;	specialinvoke r2.<org.apache.ibatis.javassist.compiler.CodeGen: void convToString(int,int)>($i3, $i2);	$r4 = r2.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;	virtualinvoke $r4.<org.apache.ibatis.javassist.bytecode.Bytecode: void addInvokevirtual(java.lang.String,java.lang.String,java.lang.String)>("java.lang.String", "concat", "(Ljava/lang/String;)Ljava/lang/String;");	r2.<org.apache.ibatis.javassist.compiler.CodeGen: int exprType> = 307;	r2.<org.apache.ibatis.javassist.compiler.CodeGen: int arrayDim> = 0;	r2.<org.apache.ibatis.javassist.compiler.CodeGen: java.lang.String className> = "java/lang/String";	return
;block_num 2