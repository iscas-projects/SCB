(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2615 0)
(declare-sort var3326 0)
(declare-sort var3269 0)
(declare-sort var984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun selfLoop/-2129610754 (var2615) Bool)
(declare-fun var3269_size/-959786421 (var3269) Int)
(declare-fun asciiMoves/1847772117 (var2615) (Array Int Int))
(declare-fun var2615_OnlyOneBitSet/-1979413806 (Int) Int)
(declare-fun kindToPrint/1847772117 (var2615) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-var984-init () (Array Int var984))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var984 (String) var984)
(declare-fun genCodeLine/787715242 (var3326 (Array Int var984)) void)
(declare-fun next/1847772117 (var2615) var2615)
(declare-const null-var2615 var2615)
(declare-const null-var3326 var3326)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const var2615-allStates var3269)
(declare-const null-__Array__Int__var984__ (Array Int var984))
(declare-const var2934 var2615) ; Statement: r0 := @this: org.javacc.parser.NfaState 
(assert (not (= var2934 null-var2615)))
(declare-const var1866 var3326) ; Statement: r4 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var1866 null-var3326)))
(declare-const var2309 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2309 null-Int)))
(declare-const var791 (Array Int Bool)) ; Statement: r145 := @parameter2: boolean[] 
(assert (not (= var791 null-__Array__Int__Bool__)))
(assert true)
(define-const var2174 Bool (selfLoop/-2129610754 var2934)) ; Statement: $z0 = specialinvoke r0.<org.javacc.parser.NfaState: boolean selfLoop()>() 
 ; Statement: if $z0 == 0 goto $z6 = 0 
(assert (= (ite var2174 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1862 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var1601 Bool var1862) ; Statement: z7 = $z6 
(define-const var837 Bool (ite (= 1 1) true false)) ; Statement: z8 = 1 
(define-const var3386 Bool (ite (= 1 1) true false)) ; Statement: z15 = 1 
(define-const var296 Bool (ite (= 1 1) true false)) ; Statement: z14 = 1 
(define-const var2770 Bool (ite (= 1 1) true false)) ; Statement: z13 = 1 
(define-const var3346 Bool (ite (= 1 1) true false)) ; Statement: z12 = 1 
(define-const var2616 Bool (ite (= 1 1) true false)) ; Statement: z11 = 1 
(define-const var59 Int 0) ; Statement: i52 = 0 
(assert true) ; Non Conditional
(define-const var1538 var3269 var2615-allStates) ; Statement: $r172 = <org.javacc.parser.NfaState: java.util.List allStates> 
(define-const var1529 Int (var3269_size/-959786421 var1538)) ; Statement: $i53 = interfaceinvoke $r172.<java.util.List: int size()>() 
 ; Statement: if i52 >= $i53 goto $r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(assert (>= var59 var1529)) ; Cond: i52 >= $i53 
(define-const var2361 (Array Int Int) (asciiMoves/1847772117 var2934)) ; Statement: $r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(define-const var2792 Int (select var2361 var2309)) ; Statement: $l1 = $r1[i0] 
(define-const var2668 Int (var2615_OnlyOneBitSet/-1979413806 var2792)) ; Statement: i55 = staticinvoke <org.javacc.parser.NfaState: int OnlyOneBitSet(long)>($l1) 
(define-const var1129 (Array Int Int) (asciiMoves/1847772117 var2934)) ; Statement: $r2 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(define-const var1384 Int (select var1129 var2309)) ; Statement: $l2 = $r2[i0] 
(define-const var1703 Int (ite (> var1384 (- 1)) 1 (ite (< var1384 (- 1)) (- 1) 0))) ; Statement: $b3 = $l2 cmp -1L 
 ; Statement: if $b3 == 0 goto r175 = "" 
(assert (= var1703 0)) ; Cond: $b3 == 0 
(define-const var2778 String "") ; Statement: r175 = "" 
(define-const var2685 String "") ; Statement: r181 = "" 
(define-const var1667 String "") ; Statement: r180 = "" 
(define-const var1567 String "") ; Statement: r179 = "" 
(define-const var197 String "") ; Statement: r178 = "" 
(define-const var1963 String "") ; Statement: r177 = "" 
(define-const var217 Int (kindToPrint/1847772117 var2934)) ; Statement: $i56 = r0.<org.javacc.parser.NfaState: int kindToPrint> 
 ; Statement: if $i56 == 2147483647 goto $i65 = (int) -1 
(assert (= var217 2147483647)) ; Cond: $i56 == 2147483647 
(define-const var3515 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i65 = (int) -1 
 ; Statement: if i55 == $i65 goto $r3 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(assert (not (= var2668 var3515))) ; Negate: Cond: i55 == $i65  
(define-const var2011 (Array Int var984) arr-var984-init) ; Statement: $r71 = newarray (java.lang.Object)[1] 
(define-const var548 String String-init) ; Statement: $r192 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var548)) ; Statement: specialinvoke $r192.<java.lang.StringBuilder: void <init>()>() 
(declare-const var548!1 String)
(assert (= var548!1 ""))
(assert true)
(define-const var3255 String (append/672562846 var548!1 "                  if (curChar == ")) ; Statement: $r73 = virtualinvoke $r192.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("                  if (curChar == ") 
(declare-const var548!2 String)
(assert (= var548!2 (str.++ var548!1 "                  if (curChar == ")))
(define-const var783 Int (* 64 var2309)) ; Statement: $i19 = 64 * i0 
(define-const var1440 Int (+ var783 var2668)) ; Statement: $i20 = $i19 + i55 
(assert true)
(define-const var131 String (append/-1001720160 var3255 var1440)) ; Statement: $r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i20) 
(declare-const var3255!1 String)
(assert (str.prefixof var3255 var3255!1))
(assert true)
(define-const var2777 String (append/672562846 var131 ")")) ; Statement: $r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var131!1 String)
(assert (= var131!1 (str.++ var131 ")")))
(assert true)
(define-const var1919 String (toString/-2075883882 var2777)) ; Statement: $r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2011!1 (Array Int var984))
(assert (not (= var2011!1 null-__Array__Int__var984__)))
(assert (= (select var2011!1 0) (cast-from-String-to-var984 var1919))) ; Statement: $r71[0] = $r76 
(assert true)
;(assert (genCodeLine/787715242 var1866 var2011!1)) ; Statement: virtualinvoke r4.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r71) 

(declare-const var1866!1 var3326)
(declare-const var2011!2 (Array Int var984))
(define-const var2778!1 String "   ") ; Statement: r175 = "   " 
(define-const var2685!1 String "   ") ; Statement: r181 = "   " 
(define-const var1667!1 String "   ") ; Statement: r180 = "   " 
(define-const var1567!1 String "   ") ; Statement: r179 = "   " 
(define-const var197!1 String "   ") ; Statement: r178 = "   " 
(define-const var1963!1 String "   ") ; Statement: r177 = "   " 
 ; Statement: goto [?= $r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next>] 
(assert true) ; Non Conditional
(define-const var2873 var2615 (next/1847772117 var2934)) ; Statement: $r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next> 
 ; Statement: if $r176 == null goto (branch) 
(assert (= var2873 null-var2615)) ; Cond: $r176 == null 
 ; Statement: if z12 == 0 goto $r5 = newarray (java.lang.Object)[1] 
(assert (not (= (ite var3346 1 0) 0))) ; Negate: Cond: z12 == 0  
(define-const var234 (Array Int var984) arr-var984-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var234!1 (Array Int var984))
(assert (not (= var234!1 null-__Array__Int__var984__)))
(assert (= (select var234!1 0) (cast-from-String-to-var984 "                  break;"))) ; Statement: $r6[0] = "                  break;" 
(assert true)
;(assert (genCodeLine/787715242 var1866!1 var234!1)) ; Statement: virtualinvoke r4.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var1866!2 var3326)
(declare-const var234!2 (Array Int var984))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {selfLoop/-2129610754=([org.javacc.parser.NfaState], boolean), var3269_size/-959786421=([java.util.List], int), asciiMoves/1847772117=([org.javacc.parser.NfaState], long[]), var2615_OnlyOneBitSet/-1979413806=([long], int), kindToPrint/1847772117=([org.javacc.parser.NfaState], int), cast-from-Int-to-Int=([int], int), arr-var984-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var984=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), next/1847772117=([org.javacc.parser.NfaState], org.javacc.parser.NfaState)}
; {var2615=org.javacc.parser.NfaState, var2934=r0, var3326=org.javacc.parser.CodeGenerator, var1866=r4, var2309=i0, var791=r145, var2174=$z0, var1862=$z6, var1601=z7, var837=z8, var3386=z15, var296=z14, var2770=z13, var3346=z12, var2616=z11, var59=i52, var3269=java.util.List, var1538=$r172, var1529=$i53, var2361=$r1, var2792=$l1, var2668=i55, var1129=$r2, var1384=$l2, var1703=$b3, var2778=r175, var2685=r181, var1667=r180, var1567=r179, var197=r178, var1963=r177, var217=$i56, var3515=$i65, var984=java.lang.Object, var2011=$r71, var548=$r192, var3255=$r73, var783=$i19, var1440=$i20, var131=$r74, var2777=$r75, var1919=$r76, var2873=$r176, var234=$r6}
; {org.javacc.parser.NfaState=var2615, r0=var2934, org.javacc.parser.CodeGenerator=var3326, r4=var1866, i0=var2309, r145=var791, $z0=var2174, $z6=var1862, z7=var1601, z8=var837, z15=var3386, z14=var296, z13=var2770, z12=var3346, z11=var2616, i52=var59, java.util.List=var3269, $r172=var1538, $i53=var1529, $r1=var2361, $l1=var2792, i55=var2668, $r2=var1129, $l2=var1384, $b3=var1703, r175=var2778, r181=var2685, r180=var1667, r179=var1567, r178=var197, r177=var1963, $i56=var217, $i65=var3515, java.lang.Object=var984, $r71=var2011, $r192=var548, $r73=var3255, $i19=var783, $i20=var1440, $r74=var131, $r75=var2777, $r76=var1919, $r176=var2873, $r6=var234}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.NfaState;	r4 := @parameter0: org.javacc.parser.CodeGenerator;	i0 := @parameter1: int;	r145 := @parameter2: boolean[];	$z0 = specialinvoke r0.<org.javacc.parser.NfaState: boolean selfLoop()>();	if $z0 == 0 goto $z6 = 0;	$z6 = 0;	z7 = $z6;	z8 = 1;	z15 = 1;	z14 = 1;	z13 = 1;	z12 = 1;	z11 = 1;	i52 = 0;	$r172 = <org.javacc.parser.NfaState: java.util.List allStates>;	$i53 = interfaceinvoke $r172.<java.util.List: int size()>();	if i52 >= $i53 goto $r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$r1 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$l1 = $r1[i0];	i55 = staticinvoke <org.javacc.parser.NfaState: int OnlyOneBitSet(long)>($l1);	$r2 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$l2 = $r2[i0];	$b3 = $l2 cmp -1L;	if $b3 == 0 goto r175 = "";	r175 = "";	r181 = "";	r180 = "";	r179 = "";	r178 = "";	r177 = "";	$i56 = r0.<org.javacc.parser.NfaState: int kindToPrint>;	if $i56 == 2147483647 goto $i65 = (int) -1;	$i65 = (int) -1;	if i55 == $i65 goto $r3 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$r71 = newarray (java.lang.Object)[1];	$r192 = new java.lang.StringBuilder;	specialinvoke $r192.<java.lang.StringBuilder: void <init>()>();	$r73 = virtualinvoke $r192.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("                  if (curChar == ");	$i19 = 64 * i0;	$i20 = $i19 + i55;	$r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i20);	$r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.String toString()>();	$r71[0] = $r76;	virtualinvoke r4.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r71);	r175 = "   ";	r181 = "   ";	r180 = "   ";	r179 = "   ";	r178 = "   ";	r177 = "   ";	goto [?= $r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next>];	$r176 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next>;	if $r176 == null goto (branch);	if z12 == 0 goto $r5 = newarray (java.lang.Object)[1];	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "                  break;";	virtualinvoke r4.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6);	goto [?= return];	return
;block_num 12