(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1606 0)
(declare-sort var3164 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inNextOf/1847772117 (var1606) Int)
(declare-fun stateName/1847772117 (var1606) Int)
(declare-fun nonAsciiMethod/1847772117 (var1606) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1606 var1606)
(declare-const null-var3164 var3164)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const var262 var1606) ; Statement: r0 := @this: org.javacc.parser.NfaState 
(assert (not (= var262 null-var1606)))
(declare-const var3486 var3164) ; Statement: r7 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var3486 null-var3164)))
(declare-const var1959 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1959 null-Int)))
(declare-const var3178 (Array Int Bool)) ; Statement: r1 := @parameter2: boolean[] 
(assert (not (= var3178 null-__Array__Int__Bool__)))
(define-const var440 Int (inNextOf/1847772117 var262)) ; Statement: $i0 = r0.<org.javacc.parser.NfaState: int inNextOf> 
 ; Statement: if $i0 == 1 goto $i1 = r0.<org.javacc.parser.NfaState: int stateName> 
(assert (= var440 1)) ; Cond: $i0 == 1 
(define-const var3160 Int (stateName/1847772117 var262)) ; Statement: $i1 = r0.<org.javacc.parser.NfaState: int stateName> 
(declare-const var3178!1 (Array Int Bool))
(assert (not (= var3178!1 null-__Array__Int__Bool__)))
(assert (= (select var3178!1 var3160) (ite (= 1 1) true false))) ; Statement: r1[$i1] = 1 
 ; Statement: if i2 < 0 goto $i3 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod> 
(assert (< var1959 0)) ; Cond: i2 < 0 
(define-const var1827 Int (nonAsciiMethod/1847772117 var262)) ; Statement: $i3 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod> 
(define-const var1897 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 == $i10 goto $r25 = new java.lang.StringBuilder 
(assert (= var1827 var1897)) ; Cond: $i3 == $i10 
(define-const var3313 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3313)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3313!1 String)
(assert (= var3313!1 ""))
(assert true)
(define-const var3223 String (append/672562846 var3313!1 "               case ")) ; Statement: $r3 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("               case ") 
(declare-const var3313!2 String)
(assert (= var3313!2 (str.++ var3313!1 "               case ")))
(define-const var2529 Int (stateName/1847772117 var262)) ; Statement: $i4 = r0.<org.javacc.parser.NfaState: int stateName> 
(assert true)
(define-const var3139 String (append/-1001720160 var3223 var2529)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var3223!1 String)
(assert (str.prefixof var3223 var3223!1))
(assert true)
(define-const var1376 String (append/672562846 var3139 ":\n")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":\n") 
(declare-const var3139!1 String)
(assert (= var3139!1 (str.++ var3139 ":\n")))
(assert true)
(define-const var625 String (toString/-2075883882 var1376)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {inNextOf/1847772117=([org.javacc.parser.NfaState], int), stateName/1847772117=([org.javacc.parser.NfaState], int), nonAsciiMethod/1847772117=([org.javacc.parser.NfaState], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1606=org.javacc.parser.NfaState, var262=r0, var3164=org.javacc.parser.CodeGenerator, var3486=r7, var1959=i2, var3178=r1, var440=$i0, var3160=$i1, var1827=$i3, var1897=$i10, var3313=$r25, var3223=$r3, var2529=$i4, var3139=$r4, var1376=$r5, var625=$r6}
; {org.javacc.parser.NfaState=var1606, r0=var262, org.javacc.parser.CodeGenerator=var3164, r7=var3486, i2=var1959, r1=var3178, $i0=var440, $i1=var3160, $i3=var1827, $i10=var1897, $r25=var3313, $r3=var3223, $i4=var2529, $r4=var3139, $r5=var1376, $r6=var625}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.NfaState;	r7 := @parameter0: org.javacc.parser.CodeGenerator;	i2 := @parameter1: int;	r1 := @parameter2: boolean[];	$i0 = r0.<org.javacc.parser.NfaState: int inNextOf>;	if $i0 == 1 goto $i1 = r0.<org.javacc.parser.NfaState: int stateName>;	$i1 = r0.<org.javacc.parser.NfaState: int stateName>;	r1[$i1] = 1;	if i2 < 0 goto $i3 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod>;	$i3 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod>;	$i10 = (int) -1;	if $i3 == $i10 goto $r25 = new java.lang.StringBuilder;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("               case ");	$i4 = r0.<org.javacc.parser.NfaState: int stateName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":\n");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 4