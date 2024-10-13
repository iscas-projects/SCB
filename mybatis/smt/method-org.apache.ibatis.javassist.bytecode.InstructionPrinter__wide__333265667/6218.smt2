(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1574 0)
(declare-sort var630 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun byteAt/822625918 (var1574 Int) Int)
(declare-fun u16bitAt/1097213481 (var1574 Int) Int)
(declare-fun var630-init () var630)
(declare-fun <init>/-1084991535 (var630 String) void)
(declare-const null-var1574 var1574)
(declare-const null-Int Int)
(declare-const var2337 var1574) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var2337 null-var1574)))
(declare-const var3004 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3004 null-Int)))
(define-const var2152 Int (+ var3004 1)) ; Statement: $i1 = i0 + 1 
(assert true)
(define-const var3240 Int (byteAt/822625918 var2337 var2152)) ; Statement: i2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>($i1) 
(define-const var942 Int (+ var3004 2)) ; Statement: $i3 = i0 + 2 
(assert true)
(define-const var3369 Int (u16bitAt/1097213481 var2337 var942)) ; Statement: i4 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i3) 
 ; Statement: lookupswitch(i2) {     case 21: goto $r1 = new java.lang.StringBuilder;     case 22: goto $r1 = new java.lang.StringBuilder;     case 23: goto $r1 = new java.lang.StringBuilder;     case 24: goto $r1 = new java.lang.StringBuilder;     case 25: goto $r1 = new java.lang.StringBuilder;     case 54: goto $r1 = new java.lang.StringBuilder;     case 55: goto $r1 = new java.lang.StringBuilder;     case 56: goto $r1 = new java.lang.StringBuilder;     case 57: goto $r1 = new java.lang.StringBuilder;     case 58: goto $r1 = new java.lang.StringBuilder;     case 132: goto $r1 = new java.lang.StringBuilder;     case 169: goto $r1 = new java.lang.StringBuilder;     default: goto $r8 = new java.lang.RuntimeException; } 
(assert (and (not (= var3240 169)) (and (not (= var3240 132)) (and (not (= var3240 58)) (and (not (= var3240 57)) (and (not (= var3240 56)) (and (not (= var3240 55)) (and (not (= var3240 54)) (and (not (= var3240 25)) (and (not (= var3240 24)) (and (not (= var3240 23)) (and (not (= var3240 22)) (and (not (= var3240 21)) true))))))))))))) ; Intersect: Negate: Cond: i2 == 169   and Intersect: Negate: Cond: i2 == 132   and Intersect: Negate: Cond: i2 == 58   and Intersect: Negate: Cond: i2 == 57   and Intersect: Negate: Cond: i2 == 56   and Intersect: Negate: Cond: i2 == 55   and Intersect: Negate: Cond: i2 == 54   and Intersect: Negate: Cond: i2 == 25   and Intersect: Negate: Cond: i2 == 24   and Intersect: Negate: Cond: i2 == 23   and Intersect: Negate: Cond: i2 == 22   and Intersect: Negate: Cond: i2 == 21   and Non Conditional            
(define-const var893 var630 var630-init) ; Statement: $r8 = new java.lang.RuntimeException 
(assert true)
;(assert (<init>/-1084991535 var893 "Invalid WIDE operand")) ; Statement: specialinvoke $r8.<java.lang.RuntimeException: void <init>(java.lang.String)>("Invalid WIDE operand") 

(declare-const var893!1 var630)
(declare-const var489 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {byteAt/822625918=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), u16bitAt/1097213481=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), var630-init=([], java.lang.RuntimeException), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1574=org.apache.ibatis.javassist.bytecode.CodeIterator, var2337=r0, var3004=i0, var2152=$i1, var3240=i2, var942=$i3, var3369=i4, var630=java.lang.RuntimeException, var893=$r8, var489="Invalid WIDE operand"}
; {org.apache.ibatis.javassist.bytecode.CodeIterator=var1574, r0=var2337, i0=var3004, $i1=var2152, i2=var3240, $i3=var942, i4=var3369, java.lang.RuntimeException=var630, $r8=var893, "Invalid WIDE operand"=var489}
;seq 
;cnt {}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.bytecode.CodeIterator;	i0 := @parameter1: int;	$i1 = i0 + 1;	i2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>($i1);	$i3 = i0 + 2;	i4 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i3);	lookupswitch(i2) {     case 21: goto $r1 = new java.lang.StringBuilder;     case 22: goto $r1 = new java.lang.StringBuilder;     case 23: goto $r1 = new java.lang.StringBuilder;     case 24: goto $r1 = new java.lang.StringBuilder;     case 25: goto $r1 = new java.lang.StringBuilder;     case 54: goto $r1 = new java.lang.StringBuilder;     case 55: goto $r1 = new java.lang.StringBuilder;     case 56: goto $r1 = new java.lang.StringBuilder;     case 57: goto $r1 = new java.lang.StringBuilder;     case 58: goto $r1 = new java.lang.StringBuilder;     case 132: goto $r1 = new java.lang.StringBuilder;     case 169: goto $r1 = new java.lang.StringBuilder;     default: goto $r8 = new java.lang.RuntimeException; };	$r8 = new java.lang.RuntimeException;	specialinvoke $r8.<java.lang.RuntimeException: void <init>(java.lang.String)>("Invalid WIDE operand");	throw $r8
;block_num 2