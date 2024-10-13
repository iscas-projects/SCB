(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3776 0)
(declare-sort var1010 0)
(declare-sort var3589 0)
(declare-sort var3714 0)
(declare-sort var2329 0)
(declare-sort var2265 0)
(declare-sort var156 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun doTypeCheck/-1218898491 (var3776 var1010) void)
(declare-fun var3714_stripPlusExpr/1438112708 (var1010) var1010)
(declare-fun cast-from-var1010-to-var2329 (var1010) var2329)
(declare-fun get/1933251064 (var2329) String)
(declare-fun bytecode/-21816708 (var3776) var2265)
(declare-fun addAload/-2055620002 (var2265 Int) void)
(declare-fun addLdc/-1440719556 (var2265 String) void)
(declare-fun addInvokevirtual/-1171567436 (var2265 String String String) void)
(declare-fun addOpcode/-1124257329 (var2265 Int) void)
(declare-fun currentPc/-1899423438 (var2265) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun addIndex/2009252393 (var2265 Int) void)
(declare-fun var3589_add/328494887 (var3589 var156) Bool)
(declare-fun cast-from-Int-to-var156 (Int) var156)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3776 var3776)
(declare-const null-var1010 var1010)
(declare-const null-Int Int)
(declare-const null-var3589 var3589)
(declare-const var128 var3776) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.CodeGen 
(assert (not (= var128 null-var3776)))
(declare-const var1753 var1010) ; Statement: r12 := @parameter0: org.apache.ibatis.javassist.compiler.ast.ASTree 
(assert (not (= var1753 null-var1010)))
(declare-const var1334 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1334 null-Int)))
(declare-const var968 var3589) ; Statement: r11 := @parameter2: java.util.List 
(assert (not (= var968 null-var3589)))
(assert true)
;(assert (doTypeCheck/-1218898491 var128 var1753)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.compiler.CodeGen: void doTypeCheck(org.apache.ibatis.javassist.compiler.ast.ASTree)>(r12) 

(declare-const var128!1 var3776)
(declare-const var1753!1 var1010)
(define-const var3265 var1010 (var3714_stripPlusExpr/1438112708 var1753!1)) ; Statement: r13 = staticinvoke <org.apache.ibatis.javassist.compiler.TypeChecker: org.apache.ibatis.javassist.compiler.ast.ASTree stripPlusExpr(org.apache.ibatis.javassist.compiler.ast.ASTree)>(r12) 
(define-const var3548 Bool false) ; Statement: $z0 = r13 instanceof org.apache.ibatis.javassist.compiler.ast.StringL 
 ; Statement: if $z0 == 0 goto $r1 = new org.apache.ibatis.javassist.compiler.CompileError 
(assert (not (= (ite var3548 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2745 var2329 (cast-from-var1010-to-var2329 var3265)) ; Statement: $r2 = (org.apache.ibatis.javassist.compiler.ast.StringL) r13 
(assert true)
(define-const var946 String (get/1933251064 var2745)) ; Statement: r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.compiler.ast.StringL: java.lang.String get()>() 
(define-const var450 var2265 (bytecode/-21816708 var128!1)) ; Statement: $r4 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode> 
(assert true)
;(assert (addAload/-2055620002 var450 var1334)) ; Statement: virtualinvoke $r4.<org.apache.ibatis.javassist.bytecode.Bytecode: void addAload(int)>(i0) 

(declare-const var450!1 var2265)
(declare-const var1334!1 Int)
(define-const var1979 var2265 (bytecode/-21816708 var128!1)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode> 
(assert true)
;(assert (addLdc/-1440719556 var1979 var946)) ; Statement: virtualinvoke $r5.<org.apache.ibatis.javassist.bytecode.Bytecode: void addLdc(java.lang.String)>(r3) 

(declare-const var1979!1 var2265)
(declare-const var946!1 String)
(define-const var1428 var2265 (bytecode/-21816708 var128!1)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode> 
(assert true)
;(assert (addInvokevirtual/-1171567436 var1428 "java/lang/String" "equals" "(Ljava/lang/Object;)Z")) ; Statement: virtualinvoke $r6.<org.apache.ibatis.javassist.bytecode.Bytecode: void addInvokevirtual(java.lang.String,java.lang.String,java.lang.String)>("java/lang/String", "equals", "(Ljava/lang/Object;)Z") 

(declare-const var1428!1 var2265)
(declare-const var3259 String)
(declare-const var3968 String)
(declare-const var1601 String)
(define-const var1313 var2265 (bytecode/-21816708 var128!1)) ; Statement: $r7 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode> 
(assert true)
;(assert (addOpcode/-1124257329 var1313 153)) ; Statement: virtualinvoke $r7.<org.apache.ibatis.javassist.bytecode.Bytecode: void addOpcode(int)>(153) 

(declare-const var1313!1 var2265)
(declare-const var3449 Int)
(define-const var2504 var2265 (bytecode/-21816708 var128!1)) ; Statement: $r8 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode> 
(assert true)
(define-const var1779 Int (currentPc/-1899423438 var2504)) ; Statement: $i1 = virtualinvoke $r8.<org.apache.ibatis.javassist.bytecode.Bytecode: int currentPc()>() 
(define-const var2754 Int (Int_valueOf/-1371140006 var1779)) ; Statement: r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(define-const var3901 var2265 (bytecode/-21816708 var128!1)) ; Statement: $r10 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode> 
(assert true)
;(assert (addIndex/2009252393 var3901 0)) ; Statement: virtualinvoke $r10.<org.apache.ibatis.javassist.bytecode.Bytecode: void addIndex(int)>(0) 

(declare-const var3901!1 var2265)
(declare-const var2297 Int)
;(assert (var3589_add/328494887 var968 (cast-from-Int-to-var156 var2754))) ; Statement: interfaceinvoke r11.<java.util.List: boolean add(java.lang.Object)>(r9) 

(declare-const var968!1 var3589)
(declare-const var2754!1 Int)
(assert true)
(define-const var2288 Int (hashCode/-467973558 var946!1)) ; Statement: $i2 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {doTypeCheck/-1218898491=([org.apache.ibatis.javassist.compiler.CodeGen, org.apache.ibatis.javassist.compiler.ast.ASTree], void), var3714_stripPlusExpr/1438112708=([org.apache.ibatis.javassist.compiler.ast.ASTree], org.apache.ibatis.javassist.compiler.ast.ASTree), cast-from-var1010-to-var2329=([org.apache.ibatis.javassist.compiler.ast.ASTree], org.apache.ibatis.javassist.compiler.ast.StringL), get/1933251064=([org.apache.ibatis.javassist.compiler.ast.StringL], java.lang.String), bytecode/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], org.apache.ibatis.javassist.bytecode.Bytecode), addAload/-2055620002=([org.apache.ibatis.javassist.bytecode.Bytecode, int], void), addLdc/-1440719556=([org.apache.ibatis.javassist.bytecode.Bytecode, java.lang.String], void), addInvokevirtual/-1171567436=([org.apache.ibatis.javassist.bytecode.Bytecode, java.lang.String, java.lang.String, java.lang.String], void), addOpcode/-1124257329=([org.apache.ibatis.javassist.bytecode.Bytecode, int], void), currentPc/-1899423438=([org.apache.ibatis.javassist.bytecode.Bytecode], int), Int_valueOf/-1371140006=([int], java.lang.Integer), addIndex/2009252393=([org.apache.ibatis.javassist.bytecode.Bytecode, int], void), var3589_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-Int-to-var156=([java.lang.Integer], java.lang.Object), hashCode/-467973558=([java.lang.String], int)}
; {var3776=org.apache.ibatis.javassist.compiler.CodeGen, var128=r0, var1010=org.apache.ibatis.javassist.compiler.ast.ASTree, var1753=r12, var1334=i0, var3589=java.util.List, var968=r11, var3714=org.apache.ibatis.javassist.compiler.TypeChecker, var3265=r13, var3548=$z0, var2329=org.apache.ibatis.javassist.compiler.ast.StringL, var2745=$r2, var946=r3, var2265=org.apache.ibatis.javassist.bytecode.Bytecode, var450=$r4, var1979=$r5, var1428=$r6, var3259="java/lang/String", var3968="equals", var1601="(Ljava/lang/Object;)Z", var1313=$r7, var3449=153, var2504=$r8, var1779=$i1, var2754=r9, var3901=$r10, var2297=0, var156=java.lang.Object, var2288=$i2}
; {org.apache.ibatis.javassist.compiler.CodeGen=var3776, r0=var128, org.apache.ibatis.javassist.compiler.ast.ASTree=var1010, r12=var1753, i0=var1334, java.util.List=var3589, r11=var968, org.apache.ibatis.javassist.compiler.TypeChecker=var3714, r13=var3265, $z0=var3548, org.apache.ibatis.javassist.compiler.ast.StringL=var2329, $r2=var2745, r3=var946, org.apache.ibatis.javassist.bytecode.Bytecode=var2265, $r4=var450, $r5=var1979, $r6=var1428, "java/lang/String"=var3259, "equals"=var3968, "(Ljava/lang/Object;)Z"=var1601, $r7=var1313, 153=var3449, $r8=var2504, $i1=var1779, r9=var2754, $r10=var3901, 0=var2297, java.lang.Object=var156, $i2=var2288}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.CodeGen;	r12 := @parameter0: org.apache.ibatis.javassist.compiler.ast.ASTree;	i0 := @parameter1: int;	r11 := @parameter2: java.util.List;	virtualinvoke r0.<org.apache.ibatis.javassist.compiler.CodeGen: void doTypeCheck(org.apache.ibatis.javassist.compiler.ast.ASTree)>(r12);	r13 = staticinvoke <org.apache.ibatis.javassist.compiler.TypeChecker: org.apache.ibatis.javassist.compiler.ast.ASTree stripPlusExpr(org.apache.ibatis.javassist.compiler.ast.ASTree)>(r12);	$z0 = r13 instanceof org.apache.ibatis.javassist.compiler.ast.StringL;	if $z0 == 0 goto $r1 = new org.apache.ibatis.javassist.compiler.CompileError;	$r2 = (org.apache.ibatis.javassist.compiler.ast.StringL) r13;	r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.compiler.ast.StringL: java.lang.String get()>();	$r4 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;	virtualinvoke $r4.<org.apache.ibatis.javassist.bytecode.Bytecode: void addAload(int)>(i0);	$r5 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;	virtualinvoke $r5.<org.apache.ibatis.javassist.bytecode.Bytecode: void addLdc(java.lang.String)>(r3);	$r6 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;	virtualinvoke $r6.<org.apache.ibatis.javassist.bytecode.Bytecode: void addInvokevirtual(java.lang.String,java.lang.String,java.lang.String)>("java/lang/String", "equals", "(Ljava/lang/Object;)Z");	$r7 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;	virtualinvoke $r7.<org.apache.ibatis.javassist.bytecode.Bytecode: void addOpcode(int)>(153);	$r8 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;	$i1 = virtualinvoke $r8.<org.apache.ibatis.javassist.bytecode.Bytecode: int currentPc()>();	r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r10 = r0.<org.apache.ibatis.javassist.compiler.CodeGen: org.apache.ibatis.javassist.bytecode.Bytecode bytecode>;	virtualinvoke $r10.<org.apache.ibatis.javassist.bytecode.Bytecode: void addIndex(int)>(0);	interfaceinvoke r11.<java.util.List: boolean add(java.lang.Object)>(r9);	$i2 = virtualinvoke r3.<java.lang.String: int hashCode()>();	return $i2
;block_num 2