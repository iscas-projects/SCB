(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var306 0)
(declare-sort var2017 0)
(declare-sort var681 0)
(declare-sort var848 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getConstPool/-1165582126 (var681) var2017)
(declare-fun cast-from-var306-to-var681 (var306) var681)
(declare-fun currentPos/-68443994 (var681) Int)
(declare-fun iterator/-68443994 (var681) var848)
(declare-fun byteAt/822625918 (var848 Int) Int)
(declare-fun u16bitAt/1097213481 (var848 Int) Int)
(declare-fun getInterfaceMethodrefClassName/-37161157 (var2017 Int) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var306 var306)
(declare-const var1401 var306) ; Statement: r0 := @this: org.apache.ibatis.javassist.expr.MethodCall 
(assert (not (= var1401 null-var306)))
(assert true)
(define-const var2780 var2017 (getConstPool/-1165582126 (cast-from-var306-to-var681 var1401))) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.expr.MethodCall: org.apache.ibatis.javassist.bytecode.ConstPool getConstPool()>() 
(define-const var547 Int (currentPos/-68443994 (cast-from-var306-to-var681 var1401))) ; Statement: i0 = r0.<org.apache.ibatis.javassist.expr.MethodCall: int currentPos> 
(define-const var1889 var848 (iterator/-68443994 (cast-from-var306-to-var681 var1401))) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.expr.MethodCall: org.apache.ibatis.javassist.bytecode.CodeIterator iterator> 
(assert true)
(define-const var2549 Int (byteAt/822625918 var1889 var547)) ; Statement: i1 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0) 
(define-const var1190 var848 (iterator/-68443994 (cast-from-var306-to-var681 var1401))) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.expr.MethodCall: org.apache.ibatis.javassist.bytecode.CodeIterator iterator> 
(define-const var1613 Int (+ var547 1)) ; Statement: $i2 = i0 + 1 
(assert true)
(define-const var1852 Int (u16bitAt/1097213481 var1190 var1613)) ; Statement: i3 = virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i2) 
 ; Statement: if i1 != 185 goto r4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getMethodrefClassName(int)>(i3) 
(assert (not (not (= var2549 185)))) ; Negate: Cond: i1 != 185  
(assert true)
(define-const var1838 String (getInterfaceMethodrefClassName/-37161157 var2780 var1852)) ; Statement: r4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getInterfaceMethodrefClassName(int)>(i3) 
 ; Statement: goto [?= $c4 = virtualinvoke r4.<java.lang.String: char charAt(int)>(0)] 
(assert true) ; Non Conditional
(assert (not (and true (and (> (str.len var1838) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getConstPool/-1165582126=([org.apache.ibatis.javassist.expr.Expr], org.apache.ibatis.javassist.bytecode.ConstPool), cast-from-var306-to-var681=([org.apache.ibatis.javassist.expr.MethodCall], org.apache.ibatis.javassist.expr.Expr), currentPos/-68443994=([org.apache.ibatis.javassist.expr.Expr], int), iterator/-68443994=([org.apache.ibatis.javassist.expr.Expr], org.apache.ibatis.javassist.bytecode.CodeIterator), byteAt/822625918=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), u16bitAt/1097213481=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), getInterfaceMethodrefClassName/-37161157=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var306=org.apache.ibatis.javassist.expr.MethodCall, var1401=r0, var2017=org.apache.ibatis.javassist.bytecode.ConstPool, var681=org.apache.ibatis.javassist.expr.Expr, var2780=r1, var547=i0, var848=org.apache.ibatis.javassist.bytecode.CodeIterator, var1889=$r2, var2549=i1, var1190=$r3, var1613=$i2, var1852=i3, var1838=r4, var820=$c4, var1483=$i5}
; {org.apache.ibatis.javassist.expr.MethodCall=var306, r0=var1401, org.apache.ibatis.javassist.bytecode.ConstPool=var2017, org.apache.ibatis.javassist.expr.Expr=var681, r1=var2780, i0=var547, org.apache.ibatis.javassist.bytecode.CodeIterator=var848, $r2=var1889, i1=var2549, $r3=var1190, $i2=var1613, i3=var1852, r4=var1838, $c4=var820, $i5=var1483}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.expr.MethodCall;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.expr.MethodCall: org.apache.ibatis.javassist.bytecode.ConstPool getConstPool()>();	i0 = r0.<org.apache.ibatis.javassist.expr.MethodCall: int currentPos>;	$r2 = r0.<org.apache.ibatis.javassist.expr.MethodCall: org.apache.ibatis.javassist.bytecode.CodeIterator iterator>;	i1 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0);	$r3 = r0.<org.apache.ibatis.javassist.expr.MethodCall: org.apache.ibatis.javassist.bytecode.CodeIterator iterator>;	$i2 = i0 + 1;	i3 = virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i2);	if i1 != 185 goto r4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getMethodrefClassName(int)>(i3);	r4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getInterfaceMethodrefClassName(int)>(i3);	goto [?= $c4 = virtualinvoke r4.<java.lang.String: char charAt(int)>(0)];	$c4 = virtualinvoke r4.<java.lang.String: char charAt(int)>(0);	$i5 = (int) $c4;	if $i5 != 91 goto return r4;	return r4
;block_num 4