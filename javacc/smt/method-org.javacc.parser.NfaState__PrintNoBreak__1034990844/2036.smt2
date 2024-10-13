(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3632 0)
(declare-sort var402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inNextOf/1847772117 (var3632) Int)
(declare-fun stateName/1847772117 (var3632) Int)
(declare-fun asciiMoves/1847772117 (var3632) (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3632 var3632)
(declare-const null-var402 var402)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const var776 var3632) ; Statement: r0 := @this: org.javacc.parser.NfaState 
(assert (not (= var776 null-var3632)))
(declare-const var1788 var402) ; Statement: r7 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var1788 null-var402)))
(declare-const var2294 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2294 null-Int)))
(declare-const var752 (Array Int Bool)) ; Statement: r1 := @parameter2: boolean[] 
(assert (not (= var752 null-__Array__Int__Bool__)))
(define-const var341 Int (inNextOf/1847772117 var776)) ; Statement: $i0 = r0.<org.javacc.parser.NfaState: int inNextOf> 
 ; Statement: if $i0 == 1 goto $i1 = r0.<org.javacc.parser.NfaState: int stateName> 
(assert (= var341 1)) ; Cond: $i0 == 1 
(define-const var1411 Int (stateName/1847772117 var776)) ; Statement: $i1 = r0.<org.javacc.parser.NfaState: int stateName> 
(declare-const var752!1 (Array Int Bool))
(assert (not (= var752!1 null-__Array__Int__Bool__)))
(assert (= (select var752!1 var1411) (ite (= 1 1) true false))) ; Statement: r1[$i1] = 1 
 ; Statement: if i2 < 0 goto $i3 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod> 
(assert (not (< var2294 0))) ; Negate: Cond: i2 < 0  
(define-const var1146 (Array Int Int) (asciiMoves/1847772117 var776)) ; Statement: $r14 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(define-const var1499 Int (select var1146 var2294)) ; Statement: $l6 = $r14[i2] 
(define-const var1662 Int (ite (> var1499 0) 1 (ite (< var1499 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 == 0 goto $r25 = new java.lang.StringBuilder 
(assert (= var1662 0)) ; Cond: $b7 == 0 
(define-const var3399 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3399)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3399!1 String)
(assert (= var3399!1 ""))
(assert true)
(define-const var3803 String (append/672562846 var3399!1 "               case ")) ; Statement: $r3 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("               case ") 
(declare-const var3399!2 String)
(assert (= var3399!2 (str.++ var3399!1 "               case ")))
(define-const var2590 Int (stateName/1847772117 var776)) ; Statement: $i4 = r0.<org.javacc.parser.NfaState: int stateName> 
(assert true)
(define-const var2427 String (append/-1001720160 var3803 var2590)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var3803!1 String)
(assert (str.prefixof var3803 var3803!1))
(assert true)
(define-const var2562 String (append/672562846 var2427 ":\n")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":\n") 
(declare-const var2427!1 String)
(assert (= var2427!1 (str.++ var2427 ":\n")))
(assert true)
(define-const var1317 String (toString/-2075883882 var2562)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {inNextOf/1847772117=([org.javacc.parser.NfaState], int), stateName/1847772117=([org.javacc.parser.NfaState], int), asciiMoves/1847772117=([org.javacc.parser.NfaState], long[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3632=org.javacc.parser.NfaState, var776=r0, var402=org.javacc.parser.CodeGenerator, var1788=r7, var2294=i2, var752=r1, var341=$i0, var1411=$i1, var1146=$r14, var1499=$l6, var1662=$b7, var3399=$r25, var3803=$r3, var2590=$i4, var2427=$r4, var2562=$r5, var1317=$r6}
; {org.javacc.parser.NfaState=var3632, r0=var776, org.javacc.parser.CodeGenerator=var402, r7=var1788, i2=var2294, r1=var752, $i0=var341, $i1=var1411, $r14=var1146, $l6=var1499, $b7=var1662, $r25=var3399, $r3=var3803, $i4=var2590, $r4=var2427, $r5=var2562, $r6=var1317}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.NfaState;	r7 := @parameter0: org.javacc.parser.CodeGenerator;	i2 := @parameter1: int;	r1 := @parameter2: boolean[];	$i0 = r0.<org.javacc.parser.NfaState: int inNextOf>;	if $i0 == 1 goto $i1 = r0.<org.javacc.parser.NfaState: int stateName>;	$i1 = r0.<org.javacc.parser.NfaState: int stateName>;	r1[$i1] = 1;	if i2 < 0 goto $i3 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod>;	$r14 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$l6 = $r14[i2];	$b7 = $l6 cmp 0L;	if $b7 == 0 goto $r25 = new java.lang.StringBuilder;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("               case ");	$i4 = r0.<org.javacc.parser.NfaState: int stateName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":\n");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 4