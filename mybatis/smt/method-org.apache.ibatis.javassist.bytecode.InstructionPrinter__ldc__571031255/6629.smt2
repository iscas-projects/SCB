(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3332 0)
(declare-sort var2918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTag/-2079556831 (var3332 Int) Int)
(declare-fun var2918_classInfo/-33311140 (var3332 Int) String)
(declare-const null-var3332 var3332)
(declare-const null-Int Int)
(declare-const var3992 var3332) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var3992 null-var3332)))
(declare-const var3065 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3065 null-Int)))
(assert true)
(define-const var65 Int (getTag/-2079556831 var3992 var3065)) ; Statement: i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0) 
 ; Statement: tableswitch(i1) {     case 3: goto $r28 = new java.lang.StringBuilder;     case 4: goto $r22 = new java.lang.StringBuilder;     case 5: goto $r16 = new java.lang.StringBuilder;     case 6: goto $r10 = new java.lang.StringBuilder;     case 7: goto $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);     case 8: goto $r1 = new java.lang.StringBuilder;     default: goto $r34 = new java.lang.RuntimeException; } 
(assert (and (= var65 7) (and (not (= var65 6)) (and (not (= var65 5)) (and (not (= var65 4)) (and (not (= var65 3)) true)))))) ; Intersect: Cond: i1 == 7  and Intersect: Negate: Cond: i1 == 6   and Intersect: Negate: Cond: i1 == 5   and Intersect: Negate: Cond: i1 == 4   and Intersect: Negate: Cond: i1 == 3   and Non Conditional     
(define-const var2570 String (var2918_classInfo/-33311140 var3992 var3065)) ; Statement: $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getTag/-2079556831=([org.apache.ibatis.javassist.bytecode.ConstPool, int], int), var2918_classInfo/-33311140=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String)}
; {var3332=org.apache.ibatis.javassist.bytecode.ConstPool, var3992=r0, var3065=i0, var65=i1, var2918=org.apache.ibatis.javassist.bytecode.InstructionPrinter, var2570=$r9}
; {org.apache.ibatis.javassist.bytecode.ConstPool=var3332, r0=var3992, i0=var3065, i1=var65, org.apache.ibatis.javassist.bytecode.InstructionPrinter=var2918, $r9=var2570}
;seq 
;cnt {}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	i0 := @parameter1: int;	i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0);	tableswitch(i1) {     case 3: goto $r28 = new java.lang.StringBuilder;     case 4: goto $r22 = new java.lang.StringBuilder;     case 5: goto $r16 = new java.lang.StringBuilder;     case 6: goto $r10 = new java.lang.StringBuilder;     case 7: goto $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);     case 8: goto $r1 = new java.lang.StringBuilder;     default: goto $r34 = new java.lang.RuntimeException; };	$r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);	return $r9
;block_num 2