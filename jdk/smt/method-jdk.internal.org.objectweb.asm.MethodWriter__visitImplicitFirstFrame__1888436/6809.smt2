(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2339 0)
(declare-sort var916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun descriptor/-1797295458 (var2339) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun startFrame/-1422620090 (var2339 Int Int Int) Int)
(declare-fun access/-1797295458 (var2339) Int)
(declare-fun frame/-1797295458 (var2339) (Array Int Int))
(declare-fun cw/-1797295458 (var2339) var916)
(declare-fun thisName/790748385 (var916) String)
(declare-fun addType/2103704251 (var916 String) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun endFrame/-574198841 (var2339) void)
(declare-const null-var2339 var2339)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var169 var2339) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.MethodWriter 
(assert (not (= var169 null-var2339)))
(define-const var1970 String (descriptor/-1797295458 var169)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor> 
(assert true)
(define-const var165 Int (length/-134980193 var1970)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var3990 Int (+ var165 1)) ; Statement: $i1 = $i0 + 1 
(assert true)
(define-const var587 Int (startFrame/-1422620090 var169 0 var3990 0)) ; Statement: i28 = specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodWriter: int startFrame(int,int,int)>(0, $i1, 0) 
(define-const var1712 Int (access/-1797295458 var169)) ; Statement: $i2 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int access> 
(define-const var1476 Int (bv2nat (bvand ((_ int2bv 64) var1712) ((_ int2bv 64) 8)))) ; Statement: $i3 = $i2 & 8 
 ; Statement: if $i3 != 0 goto i29 = 1 
(assert (not (not (= var1476 0)))) ; Negate: Cond: $i3 != 0  
(define-const var250 Int (access/-1797295458 var169)) ; Statement: $i22 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int access> 
(define-const var578 Int (bv2nat (bvand ((_ int2bv 64) var250) ((_ int2bv 64) 524288)))) ; Statement: $i23 = $i22 & 524288 
 ; Statement: if $i23 != 0 goto $r19 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame> 
(assert (not (not (= var578 0)))) ; Negate: Cond: $i23 != 0  
(define-const var1564 (Array Int Int) (frame/-1797295458 var169)) ; Statement: $r23 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame> 
(define-const var2174 Int var587) ; Statement: $i25 = i28 
(define-const var587!1 Int (+ var587 1)) ; Statement: i28 = i28 + 1 
(define-const var2779 var916 (cw/-1797295458 var169)) ; Statement: $r22 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw> 
(define-const var3247 var916 (cw/-1797295458 var169)) ; Statement: $r20 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw> 
(define-const var976 String (thisName/790748385 var3247)) ; Statement: $r21 = $r20.<jdk.internal.org.objectweb.asm.ClassWriter: java.lang.String thisName> 
(assert true)
(define-const var1673 Int (addType/2103704251 var2779 var976)) ; Statement: $i26 = virtualinvoke $r22.<jdk.internal.org.objectweb.asm.ClassWriter: int addType(java.lang.String)>($r21) 
(define-const var1056 Int (bv2nat (bvor ((_ int2bv 64) 24117248) ((_ int2bv 64) var1673)))) ; Statement: $i27 = 24117248 | $i26 
(declare-const var1564!1 (Array Int Int))
(assert (not (= var1564!1 null-__Array__Int__Int__)))
(assert (= (select var1564!1 var2174) var1056)) ; Statement: $r23[$i25] = $i27 
 ; Statement: goto [?= i29 = 1] 
(assert true) ; Non Conditional
(define-const var1025 Int 1) ; Statement: i29 = 1 
(assert true) ; Non Conditional
(define-const var1503 Int var1025) ; Statement: i4 = i29 
(define-const var2285 String (descriptor/-1797295458 var169)) ; Statement: $r24 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor> 
(define-const var1767 Int var1025) ; Statement: $i30 = i29 
(define-const var1025!1 Int (+ var1025 1)) ; Statement: i29 = i29 + 1 
(assert (and true (and (> (str.len var2285) var1767) (<= 0 var1767))))
(define-const var1888 Int (charAt/698050440 var2285 var1767)) ; Statement: $c31 = virtualinvoke $r24.<java.lang.String: char charAt(int)>($i30) 
(define-const var713 Int (cast-from-Int-to-Int var1888)) ; Statement: $i32 = (int) $c31 
 ; Statement: tableswitch($i32) {     case 66: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 67: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 68: goto $r16 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 69: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 70: goto $r15 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 71: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 72: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 73: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 74: goto $r14 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 75: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 76: goto $r9 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;     case 77: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 78: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 79: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 80: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 81: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 82: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 83: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 84: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 85: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 86: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 87: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 88: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 89: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 90: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 91: goto $r2 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;     default: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>]; } 
(assert (and (not (= var713 68)) (and (not (= var713 67)) (and (not (= var713 66)) true)))) ; Intersect: Negate: Cond: $i32 == 68   and Intersect: Negate: Cond: $i32 == 67   and Intersect: Negate: Cond: $i32 == 66   and Non Conditional   
 ; Statement: goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>] 
(assert true) ; Non Conditional
(define-const var1486 (Array Int Int) (frame/-1797295458 var169)) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame> 
(define-const var1722 Int (- var587!1 3)) ; Statement: $i21 = i28 - 3 
(declare-const var1486!1 (Array Int Int))
(assert (not (= var1486!1 null-__Array__Int__Int__)))
(assert (= (select var1486!1 1) var1722)) ; Statement: $r18[1] = $i21 
(assert true)
;(assert (endFrame/-574198841 var169)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodWriter: void endFrame()>() 

(declare-const var169!1 var2339)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {descriptor/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], java.lang.String), length/-134980193=([java.lang.String], int), startFrame/-1422620090=([jdk.internal.org.objectweb.asm.MethodWriter, int, int, int], int), access/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int), frame/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int[]), cw/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], jdk.internal.org.objectweb.asm.ClassWriter), thisName/790748385=([jdk.internal.org.objectweb.asm.ClassWriter], java.lang.String), addType/2103704251=([jdk.internal.org.objectweb.asm.ClassWriter, java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), endFrame/-574198841=([jdk.internal.org.objectweb.asm.MethodWriter], void)}
; {var2339=jdk.internal.org.objectweb.asm.MethodWriter, var169=r0, var1970=$r1, var165=$i0, var3990=$i1, var587=i28, var1712=$i2, var1476=$i3, var250=$i22, var578=$i23, var1564=$r23, var2174=$i25, var916=jdk.internal.org.objectweb.asm.ClassWriter, var2779=$r22, var3247=$r20, var976=$r21, var1673=$i26, var1056=$i27, var1025=i29, var1503=i4, var2285=$r24, var1767=$i30, var1888=$c31, var713=$i32, var1486=$r18, var1722=$i21}
; {jdk.internal.org.objectweb.asm.MethodWriter=var2339, r0=var169, $r1=var1970, $i0=var165, $i1=var3990, i28=var587, $i2=var1712, $i3=var1476, $i22=var250, $i23=var578, $r23=var1564, $i25=var2174, jdk.internal.org.objectweb.asm.ClassWriter=var916, $r22=var2779, $r20=var3247, $r21=var976, $i26=var1673, $i27=var1056, i29=var1025, i4=var1503, $r24=var2285, $i30=var1767, $c31=var1888, $i32=var713, $r18=var1486, $i21=var1722}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.MethodWriter;	$r1 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$i1 = $i0 + 1;	i28 = specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodWriter: int startFrame(int,int,int)>(0, $i1, 0);	$i2 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int access>;	$i3 = $i2 & 8;	if $i3 != 0 goto i29 = 1;	$i22 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int access>;	$i23 = $i22 & 524288;	if $i23 != 0 goto $r19 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;	$r23 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;	$i25 = i28;	i28 = i28 + 1;	$r22 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw>;	$r20 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw>;	$r21 = $r20.<jdk.internal.org.objectweb.asm.ClassWriter: java.lang.String thisName>;	$i26 = virtualinvoke $r22.<jdk.internal.org.objectweb.asm.ClassWriter: int addType(java.lang.String)>($r21);	$i27 = 24117248 | $i26;	$r23[$i25] = $i27;	goto [?= i29 = 1];	i29 = 1;	i4 = i29;	$r24 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;	$i30 = i29;	i29 = i29 + 1;	$c31 = virtualinvoke $r24.<java.lang.String: char charAt(int)>($i30);	$i32 = (int) $c31;	tableswitch($i32) {     case 66: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 67: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 68: goto $r16 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 69: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 70: goto $r15 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 71: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 72: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 73: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 74: goto $r14 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 75: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 76: goto $r9 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;     case 77: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 78: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 79: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 80: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 81: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 82: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 83: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 84: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 85: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 86: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 87: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 88: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 89: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];     case 90: goto $r17 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;     case 91: goto $r2 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;     default: goto goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>]; };	goto [?= $r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>];	$r18 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: int[] frame>;	$i21 = i28 - 3;	$r18[1] = $i21;	specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodWriter: void endFrame()>();	return
;block_num 7