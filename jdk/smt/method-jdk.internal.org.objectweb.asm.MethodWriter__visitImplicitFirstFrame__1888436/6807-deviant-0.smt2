(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun descriptor/-1797295458 (var314) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun startFrame/-1422620090 (var314 Int Int Int) Int)
(declare-fun access/-1797295458 (var314) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun frame/-1797295458 (var314) (Array Int Int))
(declare-fun endFrame/-574198841 (var314) void)
(declare-const null-var314 var314)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var926 var314) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.MethodWriter 
(assert (not (= var926 null-var314)))
(define-const var534 String (descriptor/-1797295458 var926)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor> 
(assert true)
(define-const var3339 Int (length/-134980193 var534)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var421 Int (+ var3339 1)) ; Statement: $i1 = $i0 + 1 
(assert true)
(define-const var627 Int (startFrame/-1422620090 var926 0 var421 0)) ; Statement: i28 = specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodWriter: int startFrame(int,int,int)>(0, $i1, 0) 
(define-const var30 Int (access/-1797295458 var926)) ; Statement: $i2 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int access> 
(define-const var1264 Int (bv2nat (bvand ((_ int2bv 64) var30) ((_ int2bv 64) 8)))) ; Statement: $i3 = $i2 & 8 
 ; Statement: if $i3 != 0 goto i29 = 1 
(assert (not (= var1264 0))) ; Cond: $i3 != 0 
(define-const var437 Int 1) ; Statement: i29 = 1 
(assert true) ; Non Conditional
(define-const var1559 Int var437) ; Statement: i4 = i29 
(define-const var3791 String (descriptor/-1797295458 var926)) ; Statement: $r24 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor> 
(define-const var683 Int var437) ; Statement: $i30 = i29 
(define-const var437!1 Int (+ var437 1)) ; Statement: i29 = i29 + 1 
(assert (not (and true (and (> (str.len var3791) var683) (<= 0 var683)))))
(check-sat)
(get-model)
(get-unsat-core)
; {descriptor/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], java.lang.String), length/-134980193=([java.lang.String], int), startFrame/-1422620090=([jdk.internal.org.objectweb.asm.MethodWriter, int, int, int], int), access/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), frame/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int[]), endFrame/-574198841=([jdk.internal.org.objectweb.asm.MethodWriter], void)}
; {var314=jdk.internal.org.objectweb.asm.MethodWriter, var926=r0, var534=$r1, var3339=$i0, var421=$i1, var627=i28, var30=$i2, var1264=$i3, var437=i29, var1559=i4, var3791=$r24, var683=$i30, var3422=$c31, var1006=$i32, var2838=$r18, var2748=$i21}
; {jdk.internal.org.objectweb.asm.MethodWriter=var314, r0=var926, $r1=var534, $i0=var3339, $i1=var421, i28=var627, $i2=var30, $i3=var1264, i29=var437, i4=var1559, $r24=var3791, $i30=var683, $c31=var3422, $i32=var1006, $r18=var2838, $i21=var2748}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.MethodWriter;	$r1 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$i1 = $i0 + 1;	i28 = specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodWriter: int startFrame(int,int,int)>(0, $i1, 0);	$i2 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int access>;	$i3 = $i2 & 8;	if $i3 != 0 goto i29 = 1;	i29 = 1;	i4 = i29;	$r24 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;	$i30 = i29;	i29 = i29 + 1;	$c31 = virtualinvoke $r24.<java.lang.String: char charAt(int)>($i30);	$i32 = (int) $c31;	tableswitch($i32) {     case 66: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 67: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 68: goto $r16 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 69: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 70: goto $r15 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 71: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 72: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 73: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 74: goto $r14 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 75: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 76: goto $r9 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;     case 77: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 78: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 79: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 80: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 81: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 82: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 83: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 84: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 85: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 86: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 87: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 88: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 89: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 90: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 91: goto $r2 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;     default: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>]; };	goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];	$r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;	$i21 = i28 - 3;	$r18[1] = $i21;	specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodWriter: void endFrame()>();	return
;block_num 5