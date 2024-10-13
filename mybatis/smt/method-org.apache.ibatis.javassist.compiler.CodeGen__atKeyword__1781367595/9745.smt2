(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1400 0)
(declare-sort var3387 0)
(declare-sort var3622 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arrayDim/-21816708 (var1400) Int)
(declare-fun get/-162042672 (var3387) Int)
(declare-fun inStaticMethod/-21816708 (var1400) Bool)
(declare-fun bytecode/-21816708 (var1400) var3622)
(declare-fun addAload/-2055620002 (var3622 Int) void)
(declare-fun exprType/-21816708 (var1400) Int)
(declare-fun getThisName/-2057549637 (var1400) String)
(declare-fun className/-21816708 (var1400) String)
(declare-const null-var1400 var1400)
(declare-const null-var3387 var3387)
(declare-const var64 var1400) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.CodeGen 
(assert (not (= var64 null-var1400)))
(declare-const var115 var3387) ; Statement: r1 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Keyword 
(assert (not (= var115 null-var3387)))
(declare-const var64!1 var1400)
(assert (not (= var64!1 null-var1400)))
(assert (= (arrayDim/-21816708 var64!1) 0)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.CodeGen: int arrayDim> = 0 
(assert true)
(define-const var3618 Int (get/-162042672 var115)) ; Statement: i0 = virtualinvoke r1.<org.apache.ibatis.javassist.compiler.ast.Keyword: int get()>() 
 ; Statement: lookupswitch(i0) {     case 336: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 339: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 410: goto $r4 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 411: goto $r3 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 412: goto $r2 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     default: goto staticinvoke <org.apache.ibatis.javassist.compiler.CodeGen: void fatal()>(); } 
(assert (and (= var3618 336) true)) ; Intersect: Cond: i0 == 336  and Non Conditional 
(define-const var1343 Bool (inStaticMethod/-21816708 var64!1)) ; Statement: $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod> 
 ; Statement: if $z0 == 0 goto $r5 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode> 
(assert (= (ite var1343 1 0) 0)) ; Cond: $z0 == 0 
(define-const var979 var3622 (bytecode/-21816708 var64!1)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode> 
(assert true)
;(assert (addAload/-2055620002 var979 0)) ; Statement: virtualinvoke $r5.<org.apache.ibatis.javassist.bytecode.Bytecode: void addAload(int)>(0) 

(declare-const var979!1 var3622)
(declare-const var1318 Int)
(declare-const var64!2 var1400)
(assert (not (= var64!2 null-var1400)))
(assert (= (exprType/-21816708 var64!2) 307)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.CodeGen: int exprType> = 307 
 ; Statement: if i0 != 339 goto $r6 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.CodeGen: java.lang.String getSuperName()>() 
(assert (not (not (= var3618 339)))) ; Negate: Cond: i0 != 339  
(assert true)
(define-const var2679 String (getThisName/-2057549637 var64!2)) ; Statement: $r7 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.CodeGen: java.lang.String getThisName()>() 
(declare-const var64!3 var1400)
(assert (not (= var64!3 null-var1400)))
(assert (= (className/-21816708 var64!3) var2679)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.CodeGen: java.lang.String className> = $r7 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arrayDim/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), get/-162042672=([org.apache.ibatis.javassist.compiler.ast.Keyword], int), inStaticMethod/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], boolean), bytecode/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], org.apache.ibatis.javassist.bytecode.Bytecode), addAload/-2055620002=([org.apache.ibatis.javassist.bytecode.Bytecode, int], void), exprType/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), getThisName/-2057549637=([org.apache.ibatis.javassist.compiler.CodeGen], java.lang.String), className/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], java.lang.String)}
; {var1400=org.apache.ibatis.javassist.compiler.CodeGen, var64=r0, var3387=org.apache.ibatis.javassist.compiler.ast.Keyword, var115=r1, var3618=i0, var1343=$z0, var3622=org.apache.ibatis.javassist.bytecode.Bytecode, var979=$r5, var1318=0, var2679=$r7}
; {org.apache.ibatis.javassist.compiler.CodeGen=var1400, r0=var64, org.apache.ibatis.javassist.compiler.ast.Keyword=var3387, r1=var115, i0=var3618, $z0=var1343, org.apache.ibatis.javassist.bytecode.Bytecode=var3622, $r5=var979, 0=var1318, $r7=var2679}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.CodeGen;	r1 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Keyword;	r0.<org.apache.ibatis.javassist.compiler.CodeGen: int arrayDim> = 0;	i0 = virtualinvoke r1.<org.apache.ibatis.javassist.compiler.ast.Keyword: int get()>();	lookupswitch(i0) {     case 336: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 339: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 410: goto $r4 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 411: goto $r3 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 412: goto $r2 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     default: goto staticinvoke <org.apache.ibatis.javassist.compiler.CodeGen: void fatal()>(); };	$z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;	if $z0 == 0 goto $r5 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;	$r5 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;	virtualinvoke $r5.<org.apache.ibatis.javassist.bytecode.Bytecode: void addAload(int)>(0);	r0.<org.apache.ibatis.javassist.compiler.CodeGen: int exprType> = 307;	if i0 != 339 goto $r6 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.CodeGen: java.lang.String getSuperName()>();	$r7 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.CodeGen: java.lang.String getThisName()>();	r0.<org.apache.ibatis.javassist.compiler.CodeGen: java.lang.String className> = $r7;	goto [?= return];	return
;block_num 5