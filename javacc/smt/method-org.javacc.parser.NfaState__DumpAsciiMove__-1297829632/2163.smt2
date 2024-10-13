(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3059 0)
(declare-sort var2241 0)
(declare-sort var1409 0)
(declare-sort var836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun selfLoop/-2129610754 (var3059) Bool)
(declare-fun var1409_size/-959786421 (var1409) Int)
(declare-fun asciiMoves/1847772117 (var3059) (Array Int Int))
(declare-fun var3059_OnlyOneBitSet/-1979413806 (Int) Int)
(declare-fun kindToPrint/1847772117 (var3059) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun next/1847772117 (var3059) var3059)
(declare-fun arr-var836-init () (Array Int var836))
(declare-fun cast-from-String-to-var836 (String) var836)
(declare-fun genCodeLine/787715242 (var2241 (Array Int var836)) void)
(declare-const null-var3059 var3059)
(declare-const null-var2241 var2241)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const var3059-allStates var1409)
(declare-const null-__Array__Int__var836__ (Array Int var836))
(declare-const var1330 var3059) ; Statement: r0 := @this: org.javacc.parser.NfaState 
(assert (not (= var1330 null-var3059)))
(declare-const var3027 var2241) ; Statement: r4 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var3027 null-var2241)))
(declare-const var1009 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1009 null-Int)))
(declare-const var2126 (Array Int Bool)) ; Statement: r145 := @parameter2: boolean[] 
(assert (not (= var2126 null-__Array__Int__Bool__)))
(assert true)
(define-const var402 Bool (selfLoop/-2129610754 var1330)) ; Statement: $z0 = specialinvoke r0.<org.javacc.parser.NfaState: boolean selfLoop()>() 
 ; Statement: if $z0 == 0 goto $z6 = 0 
(assert (= (ite var402 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2605 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var3476 Bool var2605) ; Statement: z7 = $z6 
(define-const var3297 Bool (ite (= 1 1) true false)) ; Statement: z8 = 1 
(define-const var799 Bool (ite (= 1 1) true false)) ; Statement: z15 = 1 
(define-const var308 Bool (ite (= 1 1) true false)) ; Statement: z14 = 1 
(define-const var25 Bool (ite (= 1 1) true false)) ; Statement: z13 = 1 
(define-const var2367 Bool (ite (= 1 1) true false)) ; Statement: z12 = 1 
(define-const var1536 Bool (ite (= 1 1) true false)) ; Statement: z11 = 1 
(define-const var326 Int 0) ; Statement: i52 = 0 
(assert true) ; Non Conditional
(define-const var2040 var1409 var3059-allStates) ; Statement: $r172 = <org.javacc.parser.NfaState: java.util.List allStates> 
(define-const var3513 Int (var1409_size/-959786421 var2040)) ; Statement: $i53 = interfaceinvoke $r172.<java.util.List: int size()>() 
 ; Statement: if i52 >= $i53 goto $r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(assert (>= var326 var3513)) ; Cond: i52 >= $i53 
(define-const var3369 (Array Int Int) (asciiMoves/1847772117 var1330)) ; Statement: $r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(define-const var913 Int (select var3369 var1009)) ; Statement: $l1 = $r1[i0] 
(define-const var2580 Int (var3059_OnlyOneBitSet/-1979413806 var913)) ; Statement: i55 = staticinvoke <org.javacc.parser.NfaState: int OnlyOneBitSet(long)>($l1) 
(define-const var3502 (Array Int Int) (asciiMoves/1847772117 var1330)) ; Statement: $r2 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(define-const var433 Int (select var3502 var1009)) ; Statement: $l2 = $r2[i0] 
(define-const var3940 Int (ite (> var433 (- 1)) 1 (ite (< var433 (- 1)) (- 1) 0))) ; Statement: $b3 = $l2 cmp -1L 
 ; Statement: if $b3 == 0 goto r175 = "" 
(assert (= var3940 0)) ; Cond: $b3 == 0 
(define-const var195 String "") ; Statement: r175 = "" 
(define-const var3290 String "") ; Statement: r181 = "" 
(define-const var165 String "") ; Statement: r180 = "" 
(define-const var2128 String "") ; Statement: r179 = "" 
(define-const var832 String "") ; Statement: r178 = "" 
(define-const var1537 String "") ; Statement: r177 = "" 
(define-const var2875 Int (kindToPrint/1847772117 var1330)) ; Statement: $i56 = r0.<org.javacc.parser.NfaState: int kindToPrint> 
 ; Statement: if $i56 == 2147483647 goto $i65 = (int) -1 
(assert (= var2875 2147483647)) ; Cond: $i56 == 2147483647 
(define-const var1101 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i65 = (int) -1 
 ; Statement: if i55 == $i65 goto $r3 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(assert (= var2580 var1101)) ; Cond: i55 == $i65 
(define-const var1931 (Array Int Int) (asciiMoves/1847772117 var1330)) ; Statement: $r3 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(define-const var2156 Int (select var1931 var1009)) ; Statement: $l4 = $r3[i0] 
(define-const var806 Int (ite (> var2156 (- 1)) 1 (ite (< var2156 (- 1)) (- 1) 0))) ; Statement: $b5 = $l4 cmp -1L 
 ; Statement: if $b5 == 0 goto $r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next> 
(assert (= var806 0)) ; Cond: $b5 == 0 
(define-const var3137 var3059 (next/1847772117 var1330)) ; Statement: $r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next> 
 ; Statement: if $r176 == null goto (branch) 
(assert (= var3137 null-var3059)) ; Cond: $r176 == null 
 ; Statement: if z12 == 0 goto $r5 = newarray (java.lang.Object)[1] 
(assert (not (= (ite var2367 1 0) 0))) ; Negate: Cond: z12 == 0  
(define-const var3272 (Array Int var836) arr-var836-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var3272!1 (Array Int var836))
(assert (not (= var3272!1 null-__Array__Int__var836__)))
(assert (= (select var3272!1 0) (cast-from-String-to-var836 "                  break;"))) ; Statement: $r6[0] = "                  break;" 
(assert true)
;(assert (genCodeLine/787715242 var3027 var3272!1)) ; Statement: virtualinvoke r4.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var3027!1 var2241)
(declare-const var3272!2 (Array Int var836))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {selfLoop/-2129610754=([org.javacc.parser.NfaState], boolean), var1409_size/-959786421=([java.util.List], int), asciiMoves/1847772117=([org.javacc.parser.NfaState], long[]), var3059_OnlyOneBitSet/-1979413806=([long], int), kindToPrint/1847772117=([org.javacc.parser.NfaState], int), cast-from-Int-to-Int=([int], int), next/1847772117=([org.javacc.parser.NfaState], org.javacc.parser.NfaState), arr-var836-init=([], java.lang.Object[]), cast-from-String-to-var836=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var3059=org.javacc.parser.NfaState, var1330=r0, var2241=org.javacc.parser.CodeGenerator, var3027=r4, var1009=i0, var2126=r145, var402=$z0, var2605=$z6, var3476=z7, var3297=z8, var799=z15, var308=z14, var25=z13, var2367=z12, var1536=z11, var326=i52, var1409=java.util.List, var2040=$r172, var3513=$i53, var3369=$r1, var913=$l1, var2580=i55, var3502=$r2, var433=$l2, var3940=$b3, var195=r175, var3290=r181, var165=r180, var2128=r179, var832=r178, var1537=r177, var2875=$i56, var1101=$i65, var1931=$r3, var2156=$l4, var806=$b5, var3137=$r176, var836=java.lang.Object, var3272=$r6}
; {org.javacc.parser.NfaState=var3059, r0=var1330, org.javacc.parser.CodeGenerator=var2241, r4=var3027, i0=var1009, r145=var2126, $z0=var402, $z6=var2605, z7=var3476, z8=var3297, z15=var799, z14=var308, z13=var25, z12=var2367, z11=var1536, i52=var326, java.util.List=var1409, $r172=var2040, $i53=var3513, $r1=var3369, $l1=var913, i55=var2580, $r2=var3502, $l2=var433, $b3=var3940, r175=var195, r181=var3290, r180=var165, r179=var2128, r178=var832, r177=var1537, $i56=var2875, $i65=var1101, $r3=var1931, $l4=var2156, $b5=var806, $r176=var3137, java.lang.Object=var836, $r6=var3272}
;seq 
;cnt {}
;stmts r0 := @this: org.javacc.parser.NfaState;	r4 := @parameter0: org.javacc.parser.CodeGenerator;	i0 := @parameter1: int;	r145 := @parameter2: boolean[];	$z0 = specialinvoke r0.<org.javacc.parser.NfaState: boolean selfLoop()>();	if $z0 == 0 goto $z6 = 0;	$z6 = 0;	z7 = $z6;	z8 = 1;	z15 = 1;	z14 = 1;	z13 = 1;	z12 = 1;	z11 = 1;	i52 = 0;	$r172 = <org.javacc.parser.NfaState: java.util.List allStates>;	$i53 = interfaceinvoke $r172.<java.util.List: int size()>();	if i52 >= $i53 goto $r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$l1 = $r1[i0];	i55 = staticinvoke <org.javacc.parser.NfaState: int OnlyOneBitSet(long)>($l1);	$r2 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$l2 = $r2[i0];	$b3 = $l2 cmp -1L;	if $b3 == 0 goto r175 = "";	r175 = "";	r181 = "";	r180 = "";	r179 = "";	r178 = "";	r177 = "";	$i56 = r0.<org.javacc.parser.NfaState: int kindToPrint>;	if $i56 == 2147483647 goto $i65 = (int) -1;	$i65 = (int) -1;	if i55 == $i65 goto $r3 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$r3 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$l4 = $r3[i0];	$b5 = $l4 cmp -1L;	if $b5 == 0 goto $r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next>;	$r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next>;	if $r176 == null goto (branch);	if z12 == 0 goto $r5 = newarray (java.lang.Object)[1];	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "                  break;";	virtualinvoke r4.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6);	goto [?= return];	return
;block_num 12