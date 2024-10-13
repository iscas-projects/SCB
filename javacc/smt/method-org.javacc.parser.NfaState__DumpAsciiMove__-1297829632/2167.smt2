(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3123 0)
(declare-sort var2156 0)
(declare-sort var3941 0)
(declare-sort var169 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun selfLoop/-2129610754 (var3123) Bool)
(declare-fun var3941_size/-959786421 (var3941) Int)
(declare-fun asciiMoves/1847772117 (var3123) (Array Int Int))
(declare-fun var3123_OnlyOneBitSet/-1979413806 (Int) Int)
(declare-fun kindToPrint/1847772117 (var3123) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun next/1847772117 (var3123) var3123)
(declare-fun arr-var169-init () (Array Int var169))
(declare-fun cast-from-String-to-var169 (String) var169)
(declare-fun genCodeLine/787715242 (var2156 (Array Int var169)) void)
(declare-const null-var3123 var3123)
(declare-const null-var2156 var2156)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const var3123-allStates var3941)
(declare-const null-__Array__Int__var169__ (Array Int var169))
(declare-const var3810 var3123) ; Statement: r0 := @this: org.javacc.parser.NfaState 
(assert (not (= var3810 null-var3123)))
(declare-const var3261 var2156) ; Statement: r4 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var3261 null-var2156)))
(declare-const var3605 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3605 null-Int)))
(declare-const var1306 (Array Int Bool)) ; Statement: r145 := @parameter2: boolean[] 
(assert (not (= var1306 null-__Array__Int__Bool__)))
(assert true)
(define-const var2574 Bool (selfLoop/-2129610754 var3810)) ; Statement: $z0 = specialinvoke r0.<org.javacc.parser.NfaState: boolean selfLoop()>() 
 ; Statement: if $z0 == 0 goto $z6 = 0 
(assert (= (ite var2574 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2961 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var2076 Bool var2961) ; Statement: z7 = $z6 
(define-const var1592 Bool (ite (= 1 1) true false)) ; Statement: z8 = 1 
(define-const var2095 Bool (ite (= 1 1) true false)) ; Statement: z15 = 1 
(define-const var462 Bool (ite (= 1 1) true false)) ; Statement: z14 = 1 
(define-const var29 Bool (ite (= 1 1) true false)) ; Statement: z13 = 1 
(define-const var888 Bool (ite (= 1 1) true false)) ; Statement: z12 = 1 
(define-const var2866 Bool (ite (= 1 1) true false)) ; Statement: z11 = 1 
(define-const var2816 Int 0) ; Statement: i52 = 0 
(assert true) ; Non Conditional
(define-const var2931 var3941 var3123-allStates) ; Statement: $r172 = <org.javacc.parser.NfaState: java.util.List allStates> 
(define-const var555 Int (var3941_size/-959786421 var2931)) ; Statement: $i53 = interfaceinvoke $r172.<java.util.List: int size()>() 
 ; Statement: if i52 >= $i53 goto $r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(assert (>= var2816 var555)) ; Cond: i52 >= $i53 
(define-const var3386 (Array Int Int) (asciiMoves/1847772117 var3810)) ; Statement: $r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(define-const var3277 Int (select var3386 var3605)) ; Statement: $l1 = $r1[i0] 
(define-const var2192 Int (var3123_OnlyOneBitSet/-1979413806 var3277)) ; Statement: i55 = staticinvoke <org.javacc.parser.NfaState: int OnlyOneBitSet(long)>($l1) 
(define-const var257 (Array Int Int) (asciiMoves/1847772117 var3810)) ; Statement: $r2 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(define-const var2774 Int (select var257 var3605)) ; Statement: $l2 = $r2[i0] 
(define-const var664 Int (ite (> var2774 (- 1)) 1 (ite (< var2774 (- 1)) (- 1) 0))) ; Statement: $b3 = $l2 cmp -1L 
 ; Statement: if $b3 == 0 goto r175 = "" 
(assert (= var664 0)) ; Cond: $b3 == 0 
(define-const var3658 String "") ; Statement: r175 = "" 
(define-const var1315 String "") ; Statement: r181 = "" 
(define-const var1172 String "") ; Statement: r180 = "" 
(define-const var187 String "") ; Statement: r179 = "" 
(define-const var2263 String "") ; Statement: r178 = "" 
(define-const var2843 String "") ; Statement: r177 = "" 
(define-const var1474 Int (kindToPrint/1847772117 var3810)) ; Statement: $i56 = r0.<org.javacc.parser.NfaState: int kindToPrint> 
 ; Statement: if $i56 == 2147483647 goto $i65 = (int) -1 
(assert (= var1474 2147483647)) ; Cond: $i56 == 2147483647 
(define-const var3418 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i65 = (int) -1 
 ; Statement: if i55 == $i65 goto $r3 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(assert (= var2192 var3418)) ; Cond: i55 == $i65 
(define-const var817 (Array Int Int) (asciiMoves/1847772117 var3810)) ; Statement: $r3 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(define-const var1868 Int (select var817 var3605)) ; Statement: $l4 = $r3[i0] 
(define-const var1286 Int (ite (> var1868 (- 1)) 1 (ite (< var1868 (- 1)) (- 1) 0))) ; Statement: $b5 = $l4 cmp -1L 
 ; Statement: if $b5 == 0 goto $r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next> 
(assert (= var1286 0)) ; Cond: $b5 == 0 
(define-const var479 var3123 (next/1847772117 var3810)) ; Statement: $r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next> 
 ; Statement: if $r176 == null goto (branch) 
(assert (= var479 null-var3123)) ; Cond: $r176 == null 
 ; Statement: if z12 == 0 goto $r5 = newarray (java.lang.Object)[1] 
(assert (= (ite var888 1 0) 0)) ; Cond: z12 == 0 
(define-const var311 (Array Int var169) arr-var169-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(declare-const var311!1 (Array Int var169))
(assert (not (= var311!1 null-__Array__Int__var169__)))
(assert (= (select var311!1 0) (cast-from-String-to-var169 "                  break;"))) ; Statement: $r5[0] = "                  break;" 
(assert true)
;(assert (genCodeLine/787715242 var3261 var311!1)) ; Statement: virtualinvoke r4.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r5) 

(declare-const var3261!1 var2156)
(declare-const var311!2 (Array Int var169))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {selfLoop/-2129610754=([org.javacc.parser.NfaState], boolean), var3941_size/-959786421=([java.util.List], int), asciiMoves/1847772117=([org.javacc.parser.NfaState], long[]), var3123_OnlyOneBitSet/-1979413806=([long], int), kindToPrint/1847772117=([org.javacc.parser.NfaState], int), cast-from-Int-to-Int=([int], int), next/1847772117=([org.javacc.parser.NfaState], org.javacc.parser.NfaState), arr-var169-init=([], java.lang.Object[]), cast-from-String-to-var169=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var3123=org.javacc.parser.NfaState, var3810=r0, var2156=org.javacc.parser.CodeGenerator, var3261=r4, var3605=i0, var1306=r145, var2574=$z0, var2961=$z6, var2076=z7, var1592=z8, var2095=z15, var462=z14, var29=z13, var888=z12, var2866=z11, var2816=i52, var3941=java.util.List, var2931=$r172, var555=$i53, var3386=$r1, var3277=$l1, var2192=i55, var257=$r2, var2774=$l2, var664=$b3, var3658=r175, var1315=r181, var1172=r180, var187=r179, var2263=r178, var2843=r177, var1474=$i56, var3418=$i65, var817=$r3, var1868=$l4, var1286=$b5, var479=$r176, var169=java.lang.Object, var311=$r5}
; {org.javacc.parser.NfaState=var3123, r0=var3810, org.javacc.parser.CodeGenerator=var2156, r4=var3261, i0=var3605, r145=var1306, $z0=var2574, $z6=var2961, z7=var2076, z8=var1592, z15=var2095, z14=var462, z13=var29, z12=var888, z11=var2866, i52=var2816, java.util.List=var3941, $r172=var2931, $i53=var555, $r1=var3386, $l1=var3277, i55=var2192, $r2=var257, $l2=var2774, $b3=var664, r175=var3658, r181=var1315, r180=var1172, r179=var187, r178=var2263, r177=var2843, $i56=var1474, $i65=var3418, $r3=var817, $l4=var1868, $b5=var1286, $r176=var479, java.lang.Object=var169, $r5=var311}
;seq 
;cnt {}
;stmts r0 := @this: org.javacc.parser.NfaState;	r4 := @parameter0: org.javacc.parser.CodeGenerator;	i0 := @parameter1: int;	r145 := @parameter2: boolean[];	$z0 = specialinvoke r0.<org.javacc.parser.NfaState: boolean selfLoop()>();	if $z0 == 0 goto $z6 = 0;	$z6 = 0;	z7 = $z6;	z8 = 1;	z15 = 1;	z14 = 1;	z13 = 1;	z12 = 1;	z11 = 1;	i52 = 0;	$r172 = <org.javacc.parser.NfaState: java.util.List allStates>;	$i53 = interfaceinvoke $r172.<java.util.List: int size()>();	if i52 >= $i53 goto $r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$l1 = $r1[i0];	i55 = staticinvoke <org.javacc.parser.NfaState: int OnlyOneBitSet(long)>($l1);	$r2 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$l2 = $r2[i0];	$b3 = $l2 cmp -1L;	if $b3 == 0 goto r175 = "";	r175 = "";	r181 = "";	r180 = "";	r179 = "";	r178 = "";	r177 = "";	$i56 = r0.<org.javacc.parser.NfaState: int kindToPrint>;	if $i56 == 2147483647 goto $i65 = (int) -1;	$i65 = (int) -1;	if i55 == $i65 goto $r3 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$r3 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$l4 = $r3[i0];	$b5 = $l4 cmp -1L;	if $b5 == 0 goto $r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next>;	$r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next>;	if $r176 == null goto (branch);	if z12 == 0 goto $r5 = newarray (java.lang.Object)[1];	$r5 = newarray (java.lang.Object)[1];	$r5[0] = "                  break;";	virtualinvoke r4.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r5);	return
;block_num 12