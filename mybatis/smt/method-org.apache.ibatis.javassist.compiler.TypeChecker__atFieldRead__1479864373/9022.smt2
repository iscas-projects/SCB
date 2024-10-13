(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3645 0)
(declare-sort var1530 0)
(declare-sort var3914 0)
(declare-sort var525 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFieldInfo2/589325723 (var1530) var3914)
(declare-fun getDescriptor/-1085906438 (var3914) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arrayDim/1960993524 (var3645) Int)
(declare-fun var525_descToType/-1878891029 (Int) Int)
(declare-fun exprType/1960993524 (var3645) Int)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun className/1960993524 (var3645) String)
(declare-const null-var3645 var3645)
(declare-const null-var1530 var1530)
(declare-const var1014 var3645) ; Statement: r3 := @this: org.apache.ibatis.javassist.compiler.TypeChecker 
(assert (not (= var1014 null-var3645)))
(declare-const var3863 var1530) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.CtField 
(assert (not (= var3863 null-var1530)))
(assert true)
(define-const var3400 var3914 (getFieldInfo2/589325723 var3863)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.bytecode.FieldInfo getFieldInfo2()>() 
(assert true)
(define-const var743 String (getDescriptor/-1085906438 var3400)) ; Statement: r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>() 
(define-const var2220 Int 0) ; Statement: i4 = 0 
(define-const var3093 Int 0) ; Statement: i5 = 0 
(assert (and true (and (> (str.len var743) 0) (<= 0 0))))
(define-const var3883 Int (charAt/698050440 var743 0)) ; Statement: c6 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0) 
(assert true) ; Non Conditional
(define-const var1616 Int (cast-from-Int-to-Int var3883)) ; Statement: $i7 = (int) c6 
 ; Statement: if $i7 != 91 goto r3.<org.apache.ibatis.javassist.compiler.TypeChecker: int arrayDim> = i5 
(assert (not (= var1616 91))) ; Cond: $i7 != 91 
(declare-const var1014!1 var3645)
(assert (not (= var1014!1 null-var3645)))
(assert (= (arrayDim/1960993524 var1014!1) var3093)) ; Statement: r3.<org.apache.ibatis.javassist.compiler.TypeChecker: int arrayDim> = i5 
(define-const var507 Int (var525_descToType/-1878891029 var3883)) ; Statement: $i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6) 
(declare-const var1014!2 var3645)
(assert (not (= var1014!2 null-var3645)))
(assert (= (exprType/1960993524 var1014!2) var507)) ; Statement: r3.<org.apache.ibatis.javassist.compiler.TypeChecker: int exprType> = $i0 
(define-const var808 Int (cast-from-Int-to-Int var3883)) ; Statement: $i8 = (int) c6 
 ; Statement: if $i8 != 76 goto r3.<org.apache.ibatis.javassist.compiler.TypeChecker: java.lang.String className> = null 
(assert (not (not (= var808 76)))) ; Negate: Cond: $i8 != 76  
(define-const var3110 Int (+ var2220 1)) ; Statement: $i3 = i4 + 1 
(define-const var1876 Int (+ var2220 1)) ; Statement: $i1 = i4 + 1 
(assert true)
(define-const var323 Int (indexOf/1426977840 var743 59 var1876)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int indexOf(int,int)>(59, $i1) 
(assert (and true (and (>= var3110 0) (>= (str.len var743) var323) (>= var323 var3110))))
(define-const var235 String (substring/-1240304868 var743 var3110 var323)) ; Statement: $r4 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>($i3, $i2) 
(declare-const var1014!3 var3645)
(assert (not (= var1014!3 null-var3645)))
(assert (= (className/1960993524 var1014!3) var235)) ; Statement: r3.<org.apache.ibatis.javassist.compiler.TypeChecker: java.lang.String className> = $r4 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getFieldInfo2/589325723=([org.apache.ibatis.javassist.CtField], org.apache.ibatis.javassist.bytecode.FieldInfo), getDescriptor/-1085906438=([org.apache.ibatis.javassist.bytecode.FieldInfo], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), arrayDim/1960993524=([org.apache.ibatis.javassist.compiler.TypeChecker], int), var525_descToType/-1878891029=([char], int), exprType/1960993524=([org.apache.ibatis.javassist.compiler.TypeChecker], int), indexOf/1426977840=([java.lang.String, int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), className/1960993524=([org.apache.ibatis.javassist.compiler.TypeChecker], java.lang.String)}
; {var3645=org.apache.ibatis.javassist.compiler.TypeChecker, var1014=r3, var1530=org.apache.ibatis.javassist.CtField, var3863=r0, var3914=org.apache.ibatis.javassist.bytecode.FieldInfo, var3400=r1, var743=r2, var2220=i4, var3093=i5, var3883=c6, var1616=$i7, var525=org.apache.ibatis.javassist.compiler.MemberResolver, var507=$i0, var808=$i8, var3110=$i3, var1876=$i1, var323=$i2, var235=$r4}
; {org.apache.ibatis.javassist.compiler.TypeChecker=var3645, r3=var1014, org.apache.ibatis.javassist.CtField=var1530, r0=var3863, org.apache.ibatis.javassist.bytecode.FieldInfo=var3914, r1=var3400, r2=var743, i4=var2220, i5=var3093, c6=var3883, $i7=var1616, org.apache.ibatis.javassist.compiler.MemberResolver=var525, $i0=var507, $i8=var808, $i3=var3110, $i1=var1876, $i2=var323, $r4=var235}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.compiler.TypeChecker;	r0 := @parameter0: org.apache.ibatis.javassist.CtField;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.bytecode.FieldInfo getFieldInfo2()>();	r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>();	i4 = 0;	i5 = 0;	c6 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0);	$i7 = (int) c6;	if $i7 != 91 goto r3.<org.apache.ibatis.javassist.compiler.TypeChecker: int arrayDim> = i5;	r3.<org.apache.ibatis.javassist.compiler.TypeChecker: int arrayDim> = i5;	$i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6);	r3.<org.apache.ibatis.javassist.compiler.TypeChecker: int exprType> = $i0;	$i8 = (int) c6;	if $i8 != 76 goto r3.<org.apache.ibatis.javassist.compiler.TypeChecker: java.lang.String className> = null;	$i3 = i4 + 1;	$i1 = i4 + 1;	$i2 = virtualinvoke r2.<java.lang.String: int indexOf(int,int)>(59, $i1);	$r4 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>($i3, $i2);	r3.<org.apache.ibatis.javassist.compiler.TypeChecker: java.lang.String className> = $r4;	goto [?= return];	return
;block_num 5