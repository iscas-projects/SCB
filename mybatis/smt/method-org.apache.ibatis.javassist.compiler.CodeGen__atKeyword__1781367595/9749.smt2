(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var44 0)
(declare-sort var2812 0)
(declare-sort var168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arrayDim/-21816708 (var44) Int)
(declare-fun get/-162042672 (var2812) Int)
(declare-fun inStaticMethod/-21816708 (var44) Bool)
(declare-fun bytecode/-21816708 (var44) var168)
(declare-fun addAload/-2055620002 (var168 Int) void)
(declare-fun exprType/-21816708 (var44) Int)
(declare-fun getSuperName/-620595824 (var44) String)
(declare-fun className/-21816708 (var44) String)
(declare-const null-var44 var44)
(declare-const null-var2812 var2812)
(declare-const var165 var44) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.CodeGen 
(assert (not (= var165 null-var44)))
(declare-const var3583 var2812) ; Statement: r1 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Keyword 
(assert (not (= var3583 null-var2812)))
(declare-const var165!1 var44)
(assert (not (= var165!1 null-var44)))
(assert (= (arrayDim/-21816708 var165!1) 0)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.CodeGen: int arrayDim> = 0 
(assert true)
(define-const var2939 Int (get/-162042672 var3583)) ; Statement: i0 = virtualinvoke r1.<org.apache.ibatis.javassist.compiler.ast.Keyword: int get()>() 
 ; Statement: lookupswitch(i0) {     case 336: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 339: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 410: goto $r4 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 411: goto $r3 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 412: goto $r2 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     default: goto staticinvoke <org.apache.ibatis.javassist.compiler.CodeGen: void fatal()>(); } 
(assert (and (= var2939 336) true)) ; Intersect: Cond: i0 == 336  and Non Conditional 
(define-const var3717 Bool (inStaticMethod/-21816708 var165!1)) ; Statement: $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod> 
 ; Statement: if $z0 == 0 goto $r5 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode> 
(assert (= (ite var3717 1 0) 0)) ; Cond: $z0 == 0 
(define-const var339 var168 (bytecode/-21816708 var165!1)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode> 
(assert true)
;(assert (addAload/-2055620002 var339 0)) ; Statement: virtualinvoke $r5.<org.apache.ibatis.javassist.bytecode.Bytecode: void addAload(int)>(0) 

(declare-const var339!1 var168)
(declare-const var2917 Int)
(declare-const var165!2 var44)
(assert (not (= var165!2 null-var44)))
(assert (= (exprType/-21816708 var165!2) 307)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.CodeGen: int exprType> = 307 
 ; Statement: if i0 != 339 goto $r6 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.CodeGen: java.lang.String getSuperName()>() 
(assert (not (= var2939 339))) ; Cond: i0 != 339 
(assert true)
(define-const var2058 String (getSuperName/-620595824 var165!2)) ; Statement: $r6 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.CodeGen: java.lang.String getSuperName()>() 
(declare-const var165!3 var44)
(assert (not (= var165!3 null-var44)))
(assert (= (className/-21816708 var165!3) var2058)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.CodeGen: java.lang.String className> = $r6 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arrayDim/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), get/-162042672=([org.apache.ibatis.javassist.compiler.ast.Keyword], int), inStaticMethod/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], boolean), bytecode/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], org.apache.ibatis.javassist.bytecode.Bytecode), addAload/-2055620002=([org.apache.ibatis.javassist.bytecode.Bytecode, int], void), exprType/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), getSuperName/-620595824=([org.apache.ibatis.javassist.compiler.CodeGen], java.lang.String), className/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], java.lang.String)}
; {var44=org.apache.ibatis.javassist.compiler.CodeGen, var165=r0, var2812=org.apache.ibatis.javassist.compiler.ast.Keyword, var3583=r1, var2939=i0, var3717=$z0, var168=org.apache.ibatis.javassist.bytecode.Bytecode, var339=$r5, var2917=0, var2058=$r6}
; {org.apache.ibatis.javassist.compiler.CodeGen=var44, r0=var165, org.apache.ibatis.javassist.compiler.ast.Keyword=var2812, r1=var3583, i0=var2939, $z0=var3717, org.apache.ibatis.javassist.bytecode.Bytecode=var168, $r5=var339, 0=var2917, $r6=var2058}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.CodeGen;	r1 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Keyword;	r0.<org.apache.ibatis.javassist.compiler.CodeGen: int arrayDim> = 0;	i0 = virtualinvoke r1.<org.apache.ibatis.javassist.compiler.ast.Keyword: int get()>();	lookupswitch(i0) {     case 336: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 339: goto $z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;     case 410: goto $r4 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 411: goto $r3 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     case 412: goto $r2 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;     default: goto staticinvoke <org.apache.ibatis.javassist.compiler.CodeGen: void fatal()>(); };	$z0 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: boolean inStaticMethod>;	if $z0 == 0 goto $r5 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;	$r5 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;	virtualinvoke $r5.<org.apache.ibatis.javassist.bytecode.Bytecode: void addAload(int)>(0);	r0.<org.apache.ibatis.javassist.compiler.CodeGen: int exprType> = 307;	if i0 != 339 goto $r6 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.CodeGen: java.lang.String getSuperName()>();	$r6 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.CodeGen: java.lang.String getSuperName()>();	r0.<org.apache.ibatis.javassist.compiler.CodeGen: java.lang.String className> = $r6;	goto [?= return];	return
;block_num 5