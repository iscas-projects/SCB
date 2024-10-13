(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var552 0)
(declare-sort var1405 0)
(declare-sort var3488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun desc/-439833211 (var1405) String)
(declare-fun local/-439833211 (var1405) (Array Int var3488))
(declare-fun access/-439833211 (var1405) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun localCount/-439833211 (var1405) Int)
(declare-const null-var552 var552)
(declare-const null-var1405 var1405)
(declare-const var390 var552) ; Statement: r11 := @this: jdk.internal.org.objectweb.asm.ClassReader 
(assert (not (= var390 null-var552)))
(declare-const var2416 var1405) ; Statement: r0 := @parameter0: jdk.internal.org.objectweb.asm.Context 
(assert (not (= var2416 null-var1405)))
(define-const var3399 String (desc/-439833211 var2416)) ; Statement: r1 = r0.<jdk.internal.org.objectweb.asm.Context: java.lang.String desc> 
(define-const var1419 (Array Int var3488) (local/-439833211 var2416)) ; Statement: r2 = r0.<jdk.internal.org.objectweb.asm.Context: java.lang.Object[] local> 
(define-const var2600 Int 0) ; Statement: i17 = 0 
(define-const var3755 Int (access/-439833211 var2416)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.Context: int access> 
(define-const var2132 Int (bv2nat (bvand ((_ int2bv 64) var3755) ((_ int2bv 64) 8)))) ; Statement: $i1 = $i0 & 8 
 ; Statement: if $i1 != 0 goto i18 = 1 
(assert (not (= var2132 0))) ; Cond: $i1 != 0 
(define-const var1412 Int 1) ; Statement: i18 = 1 
(assert true) ; Non Conditional
(define-const var559 Int var1412) ; Statement: i2 = i18 
(define-const var1924 Int var1412) ; Statement: $i19 = i18 
(define-const var1412!1 Int (+ var1412 1)) ; Statement: i18 = i18 + 1 
(assert (and true (and (> (str.len var3399) var1924) (<= 0 var1924))))
(define-const var1704 Int (charAt/698050440 var3399 var1924)) ; Statement: $c20 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i19) 
(define-const var1882 Int (cast-from-Int-to-Int var1704)) ; Statement: $i21 = (int) $c20 
 ; Statement: tableswitch($i21) {     case 66: goto $i14 = i17;     case 67: goto $i14 = i17;     case 68: goto $i13 = i17;     case 69: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 70: goto $i12 = i17;     case 71: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 72: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 73: goto $i14 = i17;     case 74: goto $i11 = i17;     case 75: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 76: goto $c7 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i18);     case 77: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 78: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 79: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 80: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 81: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 82: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 83: goto $i14 = i17;     case 84: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 85: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 86: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 87: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 88: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 89: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 90: goto $i14 = i17;     case 91: goto $c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i18);     default: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17]; } 
(assert (and (not (= var1882 68)) (and (not (= var1882 67)) (and (not (= var1882 66)) true)))) ; Intersect: Negate: Cond: $i21 == 68   and Intersect: Negate: Cond: $i21 == 67   and Intersect: Negate: Cond: $i21 == 66   and Non Conditional   
 ; Statement: goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17] 
(assert true) ; Non Conditional
(declare-const var2416!1 var1405)
(assert (not (= var2416!1 null-var1405)))
(assert (= (localCount/-439833211 var2416!1) var2600)) ; Statement: r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desc/-439833211=([jdk.internal.org.objectweb.asm.Context], java.lang.String), local/-439833211=([jdk.internal.org.objectweb.asm.Context], java.lang.Object[]), access/-439833211=([jdk.internal.org.objectweb.asm.Context], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), localCount/-439833211=([jdk.internal.org.objectweb.asm.Context], int)}
; {var552=jdk.internal.org.objectweb.asm.ClassReader, var390=r11, var1405=jdk.internal.org.objectweb.asm.Context, var2416=r0, var3399=r1, var3488=java.lang.Object, var1419=r2, var2600=i17, var3755=$i0, var2132=$i1, var1412=i18, var559=i2, var1924=$i19, var1704=$c20, var1882=$i21}
; {jdk.internal.org.objectweb.asm.ClassReader=var552, r11=var390, jdk.internal.org.objectweb.asm.Context=var1405, r0=var2416, r1=var3399, java.lang.Object=var3488, r2=var1419, i17=var2600, $i0=var3755, $i1=var2132, i18=var1412, i2=var559, $i19=var1924, $c20=var1704, $i21=var1882}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r11 := @this: jdk.internal.org.objectweb.asm.ClassReader;	r0 := @parameter0: jdk.internal.org.objectweb.asm.Context;	r1 = r0.<jdk.internal.org.objectweb.asm.Context: java.lang.String desc>;	r2 = r0.<jdk.internal.org.objectweb.asm.Context: java.lang.Object[] local>;	i17 = 0;	$i0 = r0.<jdk.internal.org.objectweb.asm.Context: int access>;	$i1 = $i0 & 8;	if $i1 != 0 goto i18 = 1;	i18 = 1;	i2 = i18;	$i19 = i18;	i18 = i18 + 1;	$c20 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i19);	$i21 = (int) $c20;	tableswitch($i21) {     case 66: goto $i14 = i17;     case 67: goto $i14 = i17;     case 68: goto $i13 = i17;     case 69: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 70: goto $i12 = i17;     case 71: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 72: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 73: goto $i14 = i17;     case 74: goto $i11 = i17;     case 75: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 76: goto $c7 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i18);     case 77: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 78: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 79: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 80: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 81: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 82: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 83: goto $i14 = i17;     case 84: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 85: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 86: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 87: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 88: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 89: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];     case 90: goto $i14 = i17;     case 91: goto $c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i18);     default: goto goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17]; };	goto [?= r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17];	r0.<jdk.internal.org.objectweb.asm.Context: int localCount> = i17;	return
;block_num 5