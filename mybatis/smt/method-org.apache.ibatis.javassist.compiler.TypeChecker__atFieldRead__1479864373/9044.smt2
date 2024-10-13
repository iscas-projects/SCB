(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var445 0)
(declare-sort var1539 0)
(declare-sort var2907 0)
(declare-sort var3316 0)
(declare-sort var904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFieldInfo2/589325723 (var1539) var2907)
(declare-fun getDescriptor/-1085906438 (var2907) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arrayDim/1960993524 (var445) Int)
(declare-fun var3316_descToType/-1878891029 (Int) Int)
(declare-fun exprType/1960993524 (var445) Int)
(declare-fun className/1960993524 (var445) String)
(declare-const null-var445 var445)
(declare-const null-var1539 var1539)
(declare-const null-String String)
(declare-const var3897 var445) ; Statement: r3 := @this: org.apache.ibatis.javassist.compiler.TypeChecker 
(assert (not (= var3897 null-var445)))
(declare-const var739 var1539) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.CtField 
(assert (not (= var739 null-var1539)))
(assert true)
(define-const var2640 var2907 (getFieldInfo2/589325723 var739)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.bytecode.FieldInfo getFieldInfo2()>() 
(assert true)
(define-const var129 String (getDescriptor/-1085906438 var2640)) ; Statement: r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>() 
(define-const var970 Int 0) ; Statement: i4 = 0 
(define-const var1735 Int 0) ; Statement: i5 = 0 
(assert (and true (and (> (str.len var129) 0) (<= 0 0))))
(define-const var1878 Int (charAt/698050440 var129 0)) ; Statement: c6 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0) 
(assert true) ; Non Conditional
(define-const var3245 Int (cast-from-Int-to-Int var1878)) ; Statement: $i7 = (int) c6 
 ; Statement: if $i7 != 91 goto r3.<org.apache.ibatis.javassist.compiler.TypeChecker: int arrayDim> = i5 
(assert (not (= var3245 91))) ; Cond: $i7 != 91 
(declare-const var3897!1 var445)
(assert (not (= var3897!1 null-var445)))
(assert (= (arrayDim/1960993524 var3897!1) var1735)) ; Statement: r3.<org.apache.ibatis.javassist.compiler.TypeChecker: int arrayDim> = i5 
(define-const var2918 Int (var3316_descToType/-1878891029 var1878)) ; Statement: $i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6) 
(declare-const var3897!2 var445)
(assert (not (= var3897!2 null-var445)))
(assert (= (exprType/1960993524 var3897!2) var2918)) ; Statement: r3.<org.apache.ibatis.javassist.compiler.TypeChecker: int exprType> = $i0 
(define-const var2057 Int (cast-from-Int-to-Int var1878)) ; Statement: $i8 = (int) c6 
 ; Statement: if $i8 != 76 goto r3.<org.apache.ibatis.javassist.compiler.TypeChecker: java.lang.String className> = null 
(assert (not (= var2057 76))) ; Cond: $i8 != 76 
(declare-const var3897!3 var445)
(assert (not (= var3897!3 null-var445)))
(assert (= (className/1960993524 var3897!3) null-String)) ; Statement: r3.<org.apache.ibatis.javassist.compiler.TypeChecker: java.lang.String className> = null 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getFieldInfo2/589325723=([org.apache.ibatis.javassist.CtField], org.apache.ibatis.javassist.bytecode.FieldInfo), getDescriptor/-1085906438=([org.apache.ibatis.javassist.bytecode.FieldInfo], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), arrayDim/1960993524=([org.apache.ibatis.javassist.compiler.TypeChecker], int), var3316_descToType/-1878891029=([char], int), exprType/1960993524=([org.apache.ibatis.javassist.compiler.TypeChecker], int), className/1960993524=([org.apache.ibatis.javassist.compiler.TypeChecker], java.lang.String)}
; {var445=org.apache.ibatis.javassist.compiler.TypeChecker, var3897=r3, var1539=org.apache.ibatis.javassist.CtField, var739=r0, var2907=org.apache.ibatis.javassist.bytecode.FieldInfo, var2640=r1, var129=r2, var970=i4, var1735=i5, var1878=c6, var3245=$i7, var3316=org.apache.ibatis.javassist.compiler.MemberResolver, var2918=$i0, var2057=$i8, var904=null_type}
; {org.apache.ibatis.javassist.compiler.TypeChecker=var445, r3=var3897, org.apache.ibatis.javassist.CtField=var1539, r0=var739, org.apache.ibatis.javassist.bytecode.FieldInfo=var2907, r1=var2640, r2=var129, i4=var970, i5=var1735, c6=var1878, $i7=var3245, org.apache.ibatis.javassist.compiler.MemberResolver=var3316, $i0=var2918, $i8=var2057, null_type=var904}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.compiler.TypeChecker;	r0 := @parameter0: org.apache.ibatis.javassist.CtField;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtField: org.apache.ibatis.javassist.bytecode.FieldInfo getFieldInfo2()>();	r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>();	i4 = 0;	i5 = 0;	c6 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0);	$i7 = (int) c6;	if $i7 != 91 goto r3.<org.apache.ibatis.javassist.compiler.TypeChecker: int arrayDim> = i5;	r3.<org.apache.ibatis.javassist.compiler.TypeChecker: int arrayDim> = i5;	$i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6);	r3.<org.apache.ibatis.javassist.compiler.TypeChecker: int exprType> = $i0;	$i8 = (int) c6;	if $i8 != 76 goto r3.<org.apache.ibatis.javassist.compiler.TypeChecker: java.lang.String className> = null;	r3.<org.apache.ibatis.javassist.compiler.TypeChecker: java.lang.String className> = null;	return
;block_num 5