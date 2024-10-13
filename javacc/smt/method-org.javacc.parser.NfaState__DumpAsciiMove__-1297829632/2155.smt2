(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3639 0)
(declare-sort var3538 0)
(declare-sort var912 0)
(declare-sort var179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun selfLoop/-2129610754 (var3639) Bool)
(declare-fun var912_size/-959786421 (var912) Int)
(declare-fun asciiMoves/1847772117 (var3639) (Array Int Int))
(declare-fun var3639_OnlyOneBitSet/-1979413806 (Int) Int)
(declare-fun kindToPrint/1847772117 (var3639) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-var179-init () (Array Int var179))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var179 (String) var179)
(declare-fun genCodeLine/787715242 (var3538 (Array Int var179)) void)
(declare-fun next/1847772117 (var3639) var3639)
(declare-const null-var3639 var3639)
(declare-const null-var3538 var3538)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const var3639-allStates var912)
(declare-const null-__Array__Int__var179__ (Array Int var179))
(declare-const var235 var3639) ; Statement: r0 := @this: org.javacc.parser.NfaState 
(assert (not (= var235 null-var3639)))
(declare-const var3225 var3538) ; Statement: r4 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var3225 null-var3538)))
(declare-const var3465 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3465 null-Int)))
(declare-const var878 (Array Int Bool)) ; Statement: r145 := @parameter2: boolean[] 
(assert (not (= var878 null-__Array__Int__Bool__)))
(assert true)
(define-const var3697 Bool (selfLoop/-2129610754 var235)) ; Statement: $z0 = specialinvoke r0.<org.javacc.parser.NfaState: boolean selfLoop()>() 
 ; Statement: if $z0 == 0 goto $z6 = 0 
(assert (= (ite var3697 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2673 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var1099 Bool var2673) ; Statement: z7 = $z6 
(define-const var2598 Bool (ite (= 1 1) true false)) ; Statement: z8 = 1 
(define-const var2450 Bool (ite (= 1 1) true false)) ; Statement: z15 = 1 
(define-const var2383 Bool (ite (= 1 1) true false)) ; Statement: z14 = 1 
(define-const var3217 Bool (ite (= 1 1) true false)) ; Statement: z13 = 1 
(define-const var1972 Bool (ite (= 1 1) true false)) ; Statement: z12 = 1 
(define-const var80 Bool (ite (= 1 1) true false)) ; Statement: z11 = 1 
(define-const var2455 Int 0) ; Statement: i52 = 0 
(assert true) ; Non Conditional
(define-const var2624 var912 var3639-allStates) ; Statement: $r172 = <org.javacc.parser.NfaState: java.util.List allStates> 
(define-const var359 Int (var912_size/-959786421 var2624)) ; Statement: $i53 = interfaceinvoke $r172.<java.util.List: int size()>() 
 ; Statement: if i52 >= $i53 goto $r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(assert (>= var2455 var359)) ; Cond: i52 >= $i53 
(define-const var1226 (Array Int Int) (asciiMoves/1847772117 var235)) ; Statement: $r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(define-const var162 Int (select var1226 var3465)) ; Statement: $l1 = $r1[i0] 
(define-const var1936 Int (var3639_OnlyOneBitSet/-1979413806 var162)) ; Statement: i55 = staticinvoke <org.javacc.parser.NfaState: int OnlyOneBitSet(long)>($l1) 
(define-const var1868 (Array Int Int) (asciiMoves/1847772117 var235)) ; Statement: $r2 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(define-const var834 Int (select var1868 var3465)) ; Statement: $l2 = $r2[i0] 
(define-const var1822 Int (ite (> var834 (- 1)) 1 (ite (< var834 (- 1)) (- 1) 0))) ; Statement: $b3 = $l2 cmp -1L 
 ; Statement: if $b3 == 0 goto r175 = "" 
(assert (= var1822 0)) ; Cond: $b3 == 0 
(define-const var3889 String "") ; Statement: r175 = "" 
(define-const var1832 String "") ; Statement: r181 = "" 
(define-const var519 String "") ; Statement: r180 = "" 
(define-const var2224 String "") ; Statement: r179 = "" 
(define-const var3761 String "") ; Statement: r178 = "" 
(define-const var3252 String "") ; Statement: r177 = "" 
(define-const var3833 Int (kindToPrint/1847772117 var235)) ; Statement: $i56 = r0.<org.javacc.parser.NfaState: int kindToPrint> 
 ; Statement: if $i56 == 2147483647 goto $i65 = (int) -1 
(assert (= var3833 2147483647)) ; Cond: $i56 == 2147483647 
(define-const var2482 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i65 = (int) -1 
 ; Statement: if i55 == $i65 goto $r3 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(assert (not (= var1936 var2482))) ; Negate: Cond: i55 == $i65  
(define-const var1558 (Array Int var179) arr-var179-init) ; Statement: $r71 = newarray (java.lang.Object)[1] 
(define-const var2923 String String-init) ; Statement: $r192 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2923)) ; Statement: specialinvoke $r192.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2923!1 String)
(assert (= var2923!1 ""))
(assert true)
(define-const var307 String (append/672562846 var2923!1 "                  if (curChar == ")) ; Statement: $r73 = virtualinvoke $r192.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("                  if (curChar == ") 
(declare-const var2923!2 String)
(assert (= var2923!2 (str.++ var2923!1 "                  if (curChar == ")))
(define-const var1707 Int (* 64 var3465)) ; Statement: $i19 = 64 * i0 
(define-const var3047 Int (+ var1707 var1936)) ; Statement: $i20 = $i19 + i55 
(assert true)
(define-const var1740 String (append/-1001720160 var307 var3047)) ; Statement: $r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i20) 
(declare-const var307!1 String)
(assert (str.prefixof var307 var307!1))
(assert true)
(define-const var844 String (append/672562846 var1740 ")")) ; Statement: $r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1740!1 String)
(assert (= var1740!1 (str.++ var1740 ")")))
(assert true)
(define-const var3635 String (toString/-2075883882 var844)) ; Statement: $r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1558!1 (Array Int var179))
(assert (not (= var1558!1 null-__Array__Int__var179__)))
(assert (= (select var1558!1 0) (cast-from-String-to-var179 var3635))) ; Statement: $r71[0] = $r76 
(assert true)
;(assert (genCodeLine/787715242 var3225 var1558!1)) ; Statement: virtualinvoke r4.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r71) 

(declare-const var3225!1 var3538)
(declare-const var1558!2 (Array Int var179))
(define-const var3889!1 String "   ") ; Statement: r175 = "   " 
(define-const var1832!1 String "   ") ; Statement: r181 = "   " 
(define-const var519!1 String "   ") ; Statement: r180 = "   " 
(define-const var2224!1 String "   ") ; Statement: r179 = "   " 
(define-const var3761!1 String "   ") ; Statement: r178 = "   " 
(define-const var3252!1 String "   ") ; Statement: r177 = "   " 
 ; Statement: goto [?= $r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next>] 
(assert true) ; Non Conditional
(define-const var1601 var3639 (next/1847772117 var235)) ; Statement: $r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next> 
 ; Statement: if $r176 == null goto (branch) 
(assert (= var1601 null-var3639)) ; Cond: $r176 == null 
 ; Statement: if z12 == 0 goto $r5 = newarray (java.lang.Object)[1] 
(assert (= (ite var1972 1 0) 0)) ; Cond: z12 == 0 
(define-const var3960 (Array Int var179) arr-var179-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(declare-const var3960!1 (Array Int var179))
(assert (not (= var3960!1 null-__Array__Int__var179__)))
(assert (= (select var3960!1 0) (cast-from-String-to-var179 "                  break;"))) ; Statement: $r5[0] = "                  break;" 
(assert true)
;(assert (genCodeLine/787715242 var3225!1 var3960!1)) ; Statement: virtualinvoke r4.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r5) 

(declare-const var3225!2 var3538)
(declare-const var3960!2 (Array Int var179))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {selfLoop/-2129610754=([org.javacc.parser.NfaState], boolean), var912_size/-959786421=([java.util.List], int), asciiMoves/1847772117=([org.javacc.parser.NfaState], long[]), var3639_OnlyOneBitSet/-1979413806=([long], int), kindToPrint/1847772117=([org.javacc.parser.NfaState], int), cast-from-Int-to-Int=([int], int), arr-var179-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var179=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), next/1847772117=([org.javacc.parser.NfaState], org.javacc.parser.NfaState)}
; {var3639=org.javacc.parser.NfaState, var235=r0, var3538=org.javacc.parser.CodeGenerator, var3225=r4, var3465=i0, var878=r145, var3697=$z0, var2673=$z6, var1099=z7, var2598=z8, var2450=z15, var2383=z14, var3217=z13, var1972=z12, var80=z11, var2455=i52, var912=java.util.List, var2624=$r172, var359=$i53, var1226=$r1, var162=$l1, var1936=i55, var1868=$r2, var834=$l2, var1822=$b3, var3889=r175, var1832=r181, var519=r180, var2224=r179, var3761=r178, var3252=r177, var3833=$i56, var2482=$i65, var179=java.lang.Object, var1558=$r71, var2923=$r192, var307=$r73, var1707=$i19, var3047=$i20, var1740=$r74, var844=$r75, var3635=$r76, var1601=$r176, var3960=$r5}
; {org.javacc.parser.NfaState=var3639, r0=var235, org.javacc.parser.CodeGenerator=var3538, r4=var3225, i0=var3465, r145=var878, $z0=var3697, $z6=var2673, z7=var1099, z8=var2598, z15=var2450, z14=var2383, z13=var3217, z12=var1972, z11=var80, i52=var2455, java.util.List=var912, $r172=var2624, $i53=var359, $r1=var1226, $l1=var162, i55=var1936, $r2=var1868, $l2=var834, $b3=var1822, r175=var3889, r181=var1832, r180=var519, r179=var2224, r178=var3761, r177=var3252, $i56=var3833, $i65=var2482, java.lang.Object=var179, $r71=var1558, $r192=var2923, $r73=var307, $i19=var1707, $i20=var3047, $r74=var1740, $r75=var844, $r76=var3635, $r176=var1601, $r5=var3960}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.NfaState;	r4 := @parameter0: org.javacc.parser.CodeGenerator;	i0 := @parameter1: int;	r145 := @parameter2: boolean[];	$z0 = specialinvoke r0.<org.javacc.parser.NfaState: boolean selfLoop()>();	if $z0 == 0 goto $z6 = 0;	$z6 = 0;	z7 = $z6;	z8 = 1;	z15 = 1;	z14 = 1;	z13 = 1;	z12 = 1;	z11 = 1;	i52 = 0;	$r172 = <org.javacc.parser.NfaState: java.util.List allStates>;	$i53 = interfaceinvoke $r172.<java.util.List: int size()>();	if i52 >= $i53 goto $r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$l1 = $r1[i0];	i55 = staticinvoke <org.javacc.parser.NfaState: int OnlyOneBitSet(long)>($l1);	$r2 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$l2 = $r2[i0];	$b3 = $l2 cmp -1L;	if $b3 == 0 goto r175 = "";	r175 = "";	r181 = "";	r180 = "";	r179 = "";	r178 = "";	r177 = "";	$i56 = r0.<org.javacc.parser.NfaState: int kindToPrint>;	if $i56 == 2147483647 goto $i65 = (int) -1;	$i65 = (int) -1;	if i55 == $i65 goto $r3 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$r71 = newarray (java.lang.Object)[1];	$r192 = new java.lang.StringBuilder;	specialinvoke $r192.<java.lang.StringBuilder: void <init>()>();	$r73 = virtualinvoke $r192.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("                  if (curChar == ");	$i19 = 64 * i0;	$i20 = $i19 + i55;	$r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i20);	$r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.String toString()>();	$r71[0] = $r76;	virtualinvoke r4.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r71);	r175 = "   ";	r181 = "   ";	r180 = "   ";	r179 = "   ";	r178 = "   ";	r177 = "   ";	goto [?= $r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next>];	$r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next>;	if $r176 == null goto (branch);	if z12 == 0 goto $r5 = newarray (java.lang.Object)[1];	$r5 = newarray (java.lang.Object)[1];	$r5[0] = "                  break;";	virtualinvoke r4.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r5);	return
;block_num 12