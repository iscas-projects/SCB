(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2012 0)
(declare-sort var1449 0)
(declare-sort var3478 0)
(declare-sort var1953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSort/-803576920 (var1449) Int)
(declare-fun mv/-1017828445 (var1953) var1953)
(declare-fun cast-from-var2012-to-var1953 (var2012) var1953)
(declare-fun visitJumpInsn/1574050770 (var1953 Int var3478) void)
(declare-const null-var2012 var2012)
(declare-const null-var1449 var1449)
(declare-const null-Int Int)
(declare-const null-var3478 var3478)
(declare-const var2175 var2012) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.commons.GeneratorAdapter 
(assert (not (= var2175 null-var2012)))
(declare-const var1593 var1449) ; Statement: r0 := @parameter0: jdk.internal.org.objectweb.asm.Type 
(assert (not (= var1593 null-var1449)))
(declare-const var3259 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3259 null-Int)))
(declare-const var3494 var3478) ; Statement: r2 := @parameter2: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3494 null-var3478)))
(assert true)
(define-const var2212 Int (getSort/-803576920 var1593)) ; Statement: $i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Type: int getSort()>() 
 ; Statement: tableswitch($i0) {     case 6: goto $r12 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 7: goto $r11 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 8: goto $r10 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 9: goto lookupswitch(i1) {     case 153: goto $r4 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 154: goto $r3 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     default: goto $r5 = new java.lang.IllegalArgumentException; };     case 10: goto lookupswitch(i1) {     case 153: goto $r4 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 154: goto $r3 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     default: goto $r5 = new java.lang.IllegalArgumentException; };     default: goto s4 = -1; } 
(assert (and (not (= var2212 10)) (and (not (= var2212 9)) (and (not (= var2212 8)) (and (not (= var2212 7)) (and (not (= var2212 6)) true)))))) ; Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 9   and Intersect: Negate: Cond: $i0 == 8   and Intersect: Negate: Cond: $i0 == 7   and Intersect: Negate: Cond: $i0 == 6   and Non Conditional     
(define-const var114 Int (- 1)) ; Statement: s4 = -1 
 ; Statement: tableswitch(i1) {     case 153: goto s4 = 159;     case 154: goto s4 = 160;     case 155: goto s4 = 161;     case 156: goto s4 = 162;     case 157: goto s4 = 163;     case 158: goto s4 = 164;     default: goto $r13 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>; } 
(assert (and (not (= var3259 158)) (and (not (= var3259 157)) (and (not (= var3259 156)) (and (not (= var3259 155)) (and (not (= var3259 154)) (and (not (= var3259 153)) true))))))) ; Intersect: Negate: Cond: i1 == 158   and Intersect: Negate: Cond: i1 == 157   and Intersect: Negate: Cond: i1 == 156   and Intersect: Negate: Cond: i1 == 155   and Intersect: Negate: Cond: i1 == 154   and Intersect: Negate: Cond: i1 == 153   and Non Conditional      
(define-const var1241 var1953 (mv/-1017828445 (cast-from-var2012-to-var1953 var2175))) ; Statement: $r13 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv> 
(assert true)
;(assert (visitJumpInsn/1574050770 var1241 var114 var3494)) ; Statement: virtualinvoke $r13.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitJumpInsn(int,jdk.internal.org.objectweb.asm.Label)>(s4, r2) 

(declare-const var1241!1 var1953)
(declare-const var114!1 Int)
(declare-const var3494!1 var3478)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getSort/-803576920=([jdk.internal.org.objectweb.asm.Type], int), mv/-1017828445=([jdk.internal.org.objectweb.asm.MethodVisitor], jdk.internal.org.objectweb.asm.MethodVisitor), cast-from-var2012-to-var1953=([jdk.internal.org.objectweb.asm.commons.GeneratorAdapter], jdk.internal.org.objectweb.asm.MethodVisitor), visitJumpInsn/1574050770=([jdk.internal.org.objectweb.asm.MethodVisitor, int, jdk.internal.org.objectweb.asm.Label], void)}
; {var2012=jdk.internal.org.objectweb.asm.commons.GeneratorAdapter, var2175=r1, var1449=jdk.internal.org.objectweb.asm.Type, var1593=r0, var3259=i1, var3478=jdk.internal.org.objectweb.asm.Label, var3494=r2, var2212=$i0, var114=s4, var1953=jdk.internal.org.objectweb.asm.MethodVisitor, var1241=$r13}
; {jdk.internal.org.objectweb.asm.commons.GeneratorAdapter=var2012, r1=var2175, jdk.internal.org.objectweb.asm.Type=var1449, r0=var1593, i1=var3259, jdk.internal.org.objectweb.asm.Label=var3478, r2=var3494, $i0=var2212, s4=var114, jdk.internal.org.objectweb.asm.MethodVisitor=var1953, $r13=var1241}
;seq 
;cnt {}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.commons.GeneratorAdapter;	r0 := @parameter0: jdk.internal.org.objectweb.asm.Type;	i1 := @parameter1: int;	r2 := @parameter2: jdk.internal.org.objectweb.asm.Label;	$i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Type: int getSort()>();	tableswitch($i0) {     case 6: goto $r12 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 7: goto $r11 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 8: goto $r10 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 9: goto lookupswitch(i1) {     case 153: goto $r4 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 154: goto $r3 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     default: goto $r5 = new java.lang.IllegalArgumentException; };     case 10: goto lookupswitch(i1) {     case 153: goto $r4 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 154: goto $r3 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     default: goto $r5 = new java.lang.IllegalArgumentException; };     default: goto s4 = -1; };	s4 = -1;	tableswitch(i1) {     case 153: goto s4 = 159;     case 154: goto s4 = 160;     case 155: goto s4 = 161;     case 156: goto s4 = 162;     case 157: goto s4 = 163;     case 158: goto s4 = 164;     default: goto $r13 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>; };	$r13 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;	virtualinvoke $r13.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitJumpInsn(int,jdk.internal.org.objectweb.asm.Label)>(s4, r2);	return
;block_num 3