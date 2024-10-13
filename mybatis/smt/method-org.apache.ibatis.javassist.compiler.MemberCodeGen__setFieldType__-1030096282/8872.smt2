(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var253 0)
(declare-sort var3195 0)
(declare-sort var3695 0)
(declare-sort var3983 0)
(declare-sort var2015 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescriptor/-1085906438 (var3195) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arrayDim/-21816708 (var3695) Int)
(declare-fun cast-from-var253-to-var3695 (var253) var3695)
(declare-fun var3983_descToType/-1878891029 (Int) Int)
(declare-fun exprType/-21816708 (var3695) Int)
(declare-fun className/-21816708 (var3695) String)
(declare-const null-var253 var253)
(declare-const null-var3195 var3195)
(declare-const null-String String)
(declare-const var2645 var253) ; Statement: r2 := @this: org.apache.ibatis.javassist.compiler.MemberCodeGen 
(assert (not (= var2645 null-var253)))
(declare-const var1870 var3195) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.FieldInfo 
(assert (not (= var1870 null-var3195)))
(assert true)
(define-const var3662 String (getDescriptor/-1085906438 var1870)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>() 
(define-const var2215 Int 0) ; Statement: i4 = 0 
(define-const var1221 Int 0) ; Statement: i5 = 0 
(assert (and true (and (> (str.len var3662) 0) (<= 0 0))))
(define-const var1837 Int (charAt/698050440 var3662 0)) ; Statement: c6 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(assert true) ; Non Conditional
(define-const var318 Int (cast-from-Int-to-Int var1837)) ; Statement: $i7 = (int) c6 
 ; Statement: if $i7 != 91 goto r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int arrayDim> = i5 
(assert (not (= var318 91))) ; Cond: $i7 != 91 
(declare-const var2645!1 var253)
(assert (not (= var2645!1 null-var253)))
(assert (= (arrayDim/-21816708 (cast-from-var253-to-var3695 var2645!1)) var1221)) ; Statement: r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int arrayDim> = i5 
(define-const var675 Int (var3983_descToType/-1878891029 var1837)) ; Statement: $i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6) 
(declare-const var2645!2 var253)
(assert (not (= var2645!2 null-var253)))
(assert (= (exprType/-21816708 (cast-from-var253-to-var3695 var2645!2)) var675)) ; Statement: r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int exprType> = $i0 
(define-const var2525 Int (cast-from-Int-to-Int var1837)) ; Statement: $i8 = (int) c6 
 ; Statement: if $i8 != 76 goto r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: java.lang.String className> = null 
(assert (not (= var2525 76))) ; Cond: $i8 != 76 
(declare-const var2645!3 var253)
(assert (not (= var2645!3 null-var253)))
(assert (= (className/-21816708 (cast-from-var253-to-var3695 var2645!3)) null-String)) ; Statement: r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: java.lang.String className> = null 
(assert true) ; Non Conditional
 ; Statement: if i5 != 0 goto $z0 = 0 
(assert (not (= var1221 0))) ; Cond: i5 != 0 
(define-const var431 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescriptor/-1085906438=([org.apache.ibatis.javassist.bytecode.FieldInfo], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), arrayDim/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), cast-from-var253-to-var3695=([org.apache.ibatis.javassist.compiler.MemberCodeGen], org.apache.ibatis.javassist.compiler.CodeGen), var3983_descToType/-1878891029=([char], int), exprType/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), className/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], java.lang.String)}
; {var253=org.apache.ibatis.javassist.compiler.MemberCodeGen, var2645=r2, var3195=org.apache.ibatis.javassist.bytecode.FieldInfo, var1870=r0, var3662=r1, var2215=i4, var1221=i5, var1837=c6, var318=$i7, var3695=org.apache.ibatis.javassist.compiler.CodeGen, var3983=org.apache.ibatis.javassist.compiler.MemberResolver, var675=$i0, var2525=$i8, var2015=null_type, var431=$z0}
; {org.apache.ibatis.javassist.compiler.MemberCodeGen=var253, r2=var2645, org.apache.ibatis.javassist.bytecode.FieldInfo=var3195, r0=var1870, r1=var3662, i4=var2215, i5=var1221, c6=var1837, $i7=var318, org.apache.ibatis.javassist.compiler.CodeGen=var3695, org.apache.ibatis.javassist.compiler.MemberResolver=var3983, $i0=var675, $i8=var2525, null_type=var2015, $z0=var431}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.compiler.MemberCodeGen;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.FieldInfo;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>();	i4 = 0;	i5 = 0;	c6 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$i7 = (int) c6;	if $i7 != 91 goto r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int arrayDim> = i5;	r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int arrayDim> = i5;	$i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6);	r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int exprType> = $i0;	$i8 = (int) c6;	if $i8 != 76 goto r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: java.lang.String className> = null;	r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: java.lang.String className> = null;	if i5 != 0 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 7