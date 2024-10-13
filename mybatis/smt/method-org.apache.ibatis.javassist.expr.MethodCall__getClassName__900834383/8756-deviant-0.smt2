(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3478 0)
(declare-sort var2589 0)
(declare-sort var66 0)
(declare-sort var2271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getConstPool/-1165582126 (var66) var2589)
(declare-fun cast-from-var3478-to-var66 (var3478) var66)
(declare-fun currentPos/-68443994 (var66) Int)
(declare-fun iterator/-68443994 (var66) var2271)
(declare-fun byteAt/822625918 (var2271 Int) Int)
(declare-fun u16bitAt/1097213481 (var2271 Int) Int)
(declare-fun getMethodrefClassName/-1362593064 (var2589 Int) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3478 var3478)
(declare-const var1870 var3478) ; Statement: r0 := @this: org.apache.ibatis.javassist.expr.MethodCall 
(assert (not (= var1870 null-var3478)))
(assert true)
(define-const var2309 var2589 (getConstPool/-1165582126 (cast-from-var3478-to-var66 var1870))) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.expr.MethodCall: org.apache.ibatis.javassist.bytecode.ConstPool getConstPool()>() 
(define-const var1082 Int (currentPos/-68443994 (cast-from-var3478-to-var66 var1870))) ; Statement: i0 = r0.<org.apache.ibatis.javassist.expr.MethodCall: int currentPos> 
(define-const var3605 var2271 (iterator/-68443994 (cast-from-var3478-to-var66 var1870))) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.expr.MethodCall: org.apache.ibatis.javassist.bytecode.CodeIterator iterator> 
(assert true)
(define-const var3047 Int (byteAt/822625918 var3605 var1082)) ; Statement: i1 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0) 
(define-const var124 var2271 (iterator/-68443994 (cast-from-var3478-to-var66 var1870))) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.expr.MethodCall: org.apache.ibatis.javassist.bytecode.CodeIterator iterator> 
(define-const var3213 Int (+ var1082 1)) ; Statement: $i2 = i0 + 1 
(assert true)
(define-const var3519 Int (u16bitAt/1097213481 var124 var3213)) ; Statement: i3 = virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i2) 
 ; Statement: if i1 != 185 goto r4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getMethodrefClassName(int)>(i3) 
(assert (not (= var3047 185))) ; Cond: i1 != 185 
(assert true)
(define-const var3098 String (getMethodrefClassName/-1362593064 var2309 var3519)) ; Statement: r4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getMethodrefClassName(int)>(i3) 
(assert true) ; Non Conditional
(assert (not (and true (and (> (str.len var3098) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getConstPool/-1165582126=([org.apache.ibatis.javassist.expr.Expr], org.apache.ibatis.javassist.bytecode.ConstPool), cast-from-var3478-to-var66=([org.apache.ibatis.javassist.expr.MethodCall], org.apache.ibatis.javassist.expr.Expr), currentPos/-68443994=([org.apache.ibatis.javassist.expr.Expr], int), iterator/-68443994=([org.apache.ibatis.javassist.expr.Expr], org.apache.ibatis.javassist.bytecode.CodeIterator), byteAt/822625918=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), u16bitAt/1097213481=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), getMethodrefClassName/-1362593064=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3478=org.apache.ibatis.javassist.expr.MethodCall, var1870=r0, var2589=org.apache.ibatis.javassist.bytecode.ConstPool, var66=org.apache.ibatis.javassist.expr.Expr, var2309=r1, var1082=i0, var2271=org.apache.ibatis.javassist.bytecode.CodeIterator, var3605=$r2, var3047=i1, var124=$r3, var3213=$i2, var3519=i3, var3098=r4, var2464=$c4, var2909=$i5}
; {org.apache.ibatis.javassist.expr.MethodCall=var3478, r0=var1870, org.apache.ibatis.javassist.bytecode.ConstPool=var2589, org.apache.ibatis.javassist.expr.Expr=var66, r1=var2309, i0=var1082, org.apache.ibatis.javassist.bytecode.CodeIterator=var2271, $r2=var3605, i1=var3047, $r3=var124, $i2=var3213, i3=var3519, r4=var3098, $c4=var2464, $i5=var2909}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.expr.MethodCall;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.expr.MethodCall: org.apache.ibatis.javassist.bytecode.ConstPool getConstPool()>();	i0 = r0.<org.apache.ibatis.javassist.expr.MethodCall: int currentPos>;	$r2 = r0.<org.apache.ibatis.javassist.expr.MethodCall: org.apache.ibatis.javassist.bytecode.CodeIterator iterator>;	i1 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0);	$r3 = r0.<org.apache.ibatis.javassist.expr.MethodCall: org.apache.ibatis.javassist.bytecode.CodeIterator iterator>;	$i2 = i0 + 1;	i3 = virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i2);	if i1 != 185 goto r4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getMethodrefClassName(int)>(i3);	r4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getMethodrefClassName(int)>(i3);	$c4 = virtualinvoke r4.<java.lang.String: char charAt(int)>(0);	$i5 = (int) $c4;	if $i5 != 91 goto return r4;	return r4
;block_num 4