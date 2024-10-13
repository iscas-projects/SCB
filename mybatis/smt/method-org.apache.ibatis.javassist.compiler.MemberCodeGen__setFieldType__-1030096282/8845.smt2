(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2496 0)
(declare-sort var3815 0)
(declare-sort var2457 0)
(declare-sort var700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescriptor/-1085906438 (var3815) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arrayDim/-21816708 (var2457) Int)
(declare-fun cast-from-var2496-to-var2457 (var2496) var2457)
(declare-fun var700_descToType/-1878891029 (Int) Int)
(declare-fun exprType/-21816708 (var2457) Int)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun className/-21816708 (var2457) String)
(declare-const null-var2496 var2496)
(declare-const null-var3815 var3815)
(declare-const var365 var2496) ; Statement: r2 := @this: org.apache.ibatis.javassist.compiler.MemberCodeGen 
(assert (not (= var365 null-var2496)))
(declare-const var2138 var3815) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.FieldInfo 
(assert (not (= var2138 null-var3815)))
(assert true)
(define-const var2739 String (getDescriptor/-1085906438 var2138)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>() 
(define-const var1103 Int 0) ; Statement: i4 = 0 
(define-const var3354 Int 0) ; Statement: i5 = 0 
(assert (and true (and (> (str.len var2739) 0) (<= 0 0))))
(define-const var3440 Int (charAt/698050440 var2739 0)) ; Statement: c6 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(assert true) ; Non Conditional
(define-const var2525 Int (cast-from-Int-to-Int var3440)) ; Statement: $i7 = (int) c6 
 ; Statement: if $i7 != 91 goto r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int arrayDim> = i5 
(assert (not (= var2525 91))) ; Cond: $i7 != 91 
(declare-const var365!1 var2496)
(assert (not (= var365!1 null-var2496)))
(assert (= (arrayDim/-21816708 (cast-from-var2496-to-var2457 var365!1)) var3354)) ; Statement: r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int arrayDim> = i5 
(define-const var1960 Int (var700_descToType/-1878891029 var3440)) ; Statement: $i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6) 
(declare-const var365!2 var2496)
(assert (not (= var365!2 null-var2496)))
(assert (= (exprType/-21816708 (cast-from-var2496-to-var2457 var365!2)) var1960)) ; Statement: r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int exprType> = $i0 
(define-const var138 Int (cast-from-Int-to-Int var3440)) ; Statement: $i8 = (int) c6 
 ; Statement: if $i8 != 76 goto r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: java.lang.String className> = null 
(assert (not (not (= var138 76)))) ; Negate: Cond: $i8 != 76  
(define-const var1926 Int (+ var1103 1)) ; Statement: $i3 = i4 + 1 
(define-const var404 Int (+ var1103 1)) ; Statement: $i1 = i4 + 1 
(assert true)
(define-const var3688 Int (indexOf/1426977840 var2739 59 var404)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(59, $i1) 
(assert (and true (and (>= var1926 0) (>= (str.len var2739) var3688) (>= var3688 var1926))))
(define-const var616 String (substring/-1240304868 var2739 var1926 var3688)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i3, $i2) 
(declare-const var365!3 var2496)
(assert (not (= var365!3 null-var2496)))
(assert (= (className/-21816708 (cast-from-var2496-to-var2457 var365!3)) var616)) ; Statement: r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: java.lang.String className> = $r3 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i5 != 0 goto $z0 = 0 
(assert (not (= var3354 0))) ; Cond: i5 != 0 
(define-const var982 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescriptor/-1085906438=([org.apache.ibatis.javassist.bytecode.FieldInfo], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), arrayDim/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), cast-from-var2496-to-var2457=([org.apache.ibatis.javassist.compiler.MemberCodeGen], org.apache.ibatis.javassist.compiler.CodeGen), var700_descToType/-1878891029=([char], int), exprType/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), indexOf/1426977840=([java.lang.String, int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), className/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], java.lang.String)}
; {var2496=org.apache.ibatis.javassist.compiler.MemberCodeGen, var365=r2, var3815=org.apache.ibatis.javassist.bytecode.FieldInfo, var2138=r0, var2739=r1, var1103=i4, var3354=i5, var3440=c6, var2525=$i7, var2457=org.apache.ibatis.javassist.compiler.CodeGen, var700=org.apache.ibatis.javassist.compiler.MemberResolver, var1960=$i0, var138=$i8, var1926=$i3, var404=$i1, var3688=$i2, var616=$r3, var982=$z0}
; {org.apache.ibatis.javassist.compiler.MemberCodeGen=var2496, r2=var365, org.apache.ibatis.javassist.bytecode.FieldInfo=var3815, r0=var2138, r1=var2739, i4=var1103, i5=var3354, c6=var3440, $i7=var2525, org.apache.ibatis.javassist.compiler.CodeGen=var2457, org.apache.ibatis.javassist.compiler.MemberResolver=var700, $i0=var1960, $i8=var138, $i3=var1926, $i1=var404, $i2=var3688, $r3=var616, $z0=var982}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.compiler.MemberCodeGen;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.FieldInfo;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>();	i4 = 0;	i5 = 0;	c6 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$i7 = (int) c6;	if $i7 != 91 goto r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int arrayDim> = i5;	r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int arrayDim> = i5;	$i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6);	r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int exprType> = $i0;	$i8 = (int) c6;	if $i8 != 76 goto r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: java.lang.String className> = null;	$i3 = i4 + 1;	$i1 = i4 + 1;	$i2 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(59, $i1);	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i3, $i2);	r2.<org.apache.ibatis.javassist.compiler.MemberCodeGen: java.lang.String className> = $r3;	goto [?= (branch)];	if i5 != 0 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 7