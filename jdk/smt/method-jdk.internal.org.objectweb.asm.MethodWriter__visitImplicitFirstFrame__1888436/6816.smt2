(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1364 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun descriptor/-1797295458 (var1364) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun startFrame/-1422620090 (var1364 Int Int Int) Int)
(declare-fun access/-1797295458 (var1364) Int)
(declare-fun frame/-1797295458 (var1364) (Array Int Int))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun endFrame/-574198841 (var1364) void)
(declare-const null-var1364 var1364)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var730 var1364) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.MethodWriter 
(assert (not (= var730 null-var1364)))
(define-const var2061 String (descriptor/-1797295458 var730)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor> 
(assert true)
(define-const var3626 Int (length/-134980193 var2061)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var3038 Int (+ var3626 1)) ; Statement: $i1 = $i0 + 1 
(assert true)
(define-const var2892 Int (startFrame/-1422620090 var730 0 var3038 0)) ; Statement: i28 = specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodWriter: int startFrame(int,int,int)>(0, $i1, 0) 
(define-const var2014 Int (access/-1797295458 var730)) ; Statement: $i2 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int access> 
(define-const var2623 Int (bv2nat (bvand ((_ int2bv 64) var2014) ((_ int2bv 64) 8)))) ; Statement: $i3 = $i2 & 8 
 ; Statement: if $i3 != 0 goto i29 = 1 
(assert (not (not (= var2623 0)))) ; Negate: Cond: $i3 != 0  
(define-const var2350 Int (access/-1797295458 var730)) ; Statement: $i22 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int access> 
(define-const var2662 Int (bv2nat (bvand ((_ int2bv 64) var2350) ((_ int2bv 64) 524288)))) ; Statement: $i23 = $i22 & 524288 
 ; Statement: if $i23 != 0 goto $r19 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame> 
(assert (not (= var2662 0))) ; Cond: $i23 != 0 
(define-const var800 (Array Int Int) (frame/-1797295458 var730)) ; Statement: $r19 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame> 
(define-const var3555 Int var2892) ; Statement: $i24 = i28 
(define-const var2892!1 Int (+ var2892 1)) ; Statement: i28 = i28 + 1 
(declare-const var800!1 (Array Int Int))
(assert (not (= var800!1 null-__Array__Int__Int__)))
(assert (= (select var800!1 var3555) 6)) ; Statement: $r19[$i24] = 6 
(assert true) ; Non Conditional
(define-const var3439 Int 1) ; Statement: i29 = 1 
(assert true) ; Non Conditional
(define-const var1495 Int var3439) ; Statement: i4 = i29 
(define-const var1887 String (descriptor/-1797295458 var730)) ; Statement: $r24 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor> 
(define-const var3247 Int var3439) ; Statement: $i30 = i29 
(define-const var3439!1 Int (+ var3439 1)) ; Statement: i29 = i29 + 1 
(assert (and true (and (> (str.len var1887) var3247) (<= 0 var3247))))
(define-const var2645 Int (charAt/698050440 var1887 var3247)) ; Statement: $c31 = virtualinvoke $r24.<java.lang.String: char charAt(int)>($i30) 
(define-const var2154 Int (cast-from-Int-to-Int var2645)) ; Statement: $i32 = (int) $c31 
 ; Statement: tableswitch($i32) {     case 66: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 67: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 68: goto $r16 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 69: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 70: goto $r15 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 71: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 72: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 73: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 74: goto $r14 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 75: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 76: goto $r9 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;     case 77: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 78: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 79: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 80: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 81: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 82: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 83: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 84: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 85: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 86: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 87: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 88: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 89: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 90: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 91: goto $r2 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;     default: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>]; } 
(assert (and (not (= var2154 68)) (and (not (= var2154 67)) (and (not (= var2154 66)) true)))) ; Intersect: Negate: Cond: $i32 == 68   and Intersect: Negate: Cond: $i32 == 67   and Intersect: Negate: Cond: $i32 == 66   and Non Conditional   
 ; Statement: goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>] 
(assert true) ; Non Conditional
(define-const var159 (Array Int Int) (frame/-1797295458 var730)) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame> 
(define-const var3273 Int (- var2892!1 3)) ; Statement: $i21 = i28 - 3 
(declare-const var159!1 (Array Int Int))
(assert (not (= var159!1 null-__Array__Int__Int__)))
(assert (= (select var159!1 1) var3273)) ; Statement: $r18[1] = $i21 
(assert true)
;(assert (endFrame/-574198841 var730)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodWriter: void endFrame()>() 

(declare-const var730!1 var1364)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {descriptor/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], java.lang.String), length/-134980193=([java.lang.String], int), startFrame/-1422620090=([jdk.internal.org.objectweb.asm.MethodWriter, int, int, int], int), access/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int), frame/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int[]), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), endFrame/-574198841=([jdk.internal.org.objectweb.asm.MethodWriter], void)}
; {var1364=jdk.internal.org.objectweb.asm.MethodWriter, var730=r0, var2061=$r1, var3626=$i0, var3038=$i1, var2892=i28, var2014=$i2, var2623=$i3, var2350=$i22, var2662=$i23, var800=$r19, var3555=$i24, var3439=i29, var1495=i4, var1887=$r24, var3247=$i30, var2645=$c31, var2154=$i32, var159=$r18, var3273=$i21}
; {jdk.internal.org.objectweb.asm.MethodWriter=var1364, r0=var730, $r1=var2061, $i0=var3626, $i1=var3038, i28=var2892, $i2=var2014, $i3=var2623, $i22=var2350, $i23=var2662, $r19=var800, $i24=var3555, i29=var3439, i4=var1495, $r24=var1887, $i30=var3247, $c31=var2645, $i32=var2154, $r18=var159, $i21=var3273}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.MethodWriter;	$r1 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$i1 = $i0 + 1;	i28 = specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodWriter: int startFrame(int,int,int)>(0, $i1, 0);	$i2 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int access>;	$i3 = $i2 & 8;	if $i3 != 0 goto i29 = 1;	$i22 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int access>;	$i23 = $i22 & 524288;	if $i23 != 0 goto $r19 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;	$r19 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;	$i24 = i28;	i28 = i28 + 1;	$r19[$i24] = 6;	i29 = 1;	i4 = i29;	$r24 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;	$i30 = i29;	i29 = i29 + 1;	$c31 = virtualinvoke $r24.<java.lang.String: char charAt(int)>($i30);	$i32 = (int) $c31;	tableswitch($i32) {     case 66: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 67: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 68: goto $r16 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 69: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 70: goto $r15 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 71: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 72: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 73: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 74: goto $r14 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 75: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 76: goto $r9 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;     case 77: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 78: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 79: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 80: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 81: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 82: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 83: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 84: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 85: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 86: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 87: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 88: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 89: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 90: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 91: goto $r2 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;     default: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>]; };	goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];	$r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;	$i21 = i28 - 3;	$r18[1] = $i21;	specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodWriter: void endFrame()>();	return
;block_num 7