(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1321 0)
(declare-sort var2801 0)
(declare-sort var3007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inNextOf/1847772117 (var1321) Int)
(declare-fun stateName/1847772117 (var1321) Int)
(declare-fun nonAsciiMethod/1847772117 (var1321) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-var3007-init () (Array Int var3007))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var3007 (String) var3007)
(declare-fun genCodeLine/787715242 (var2801 (Array Int var3007)) void)
(declare-fun DumpNonAsciiMoveForCompositeState/1800165787 (var1321 var2801) void)
(declare-const null-var1321 var1321)
(declare-const null-var2801 var2801)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const null-__Array__Int__var3007__ (Array Int var3007))
(declare-const var2727 var1321) ; Statement: r0 := @this: org.javacc.parser.NfaState 
(assert (not (= var2727 null-var1321)))
(declare-const var1344 var2801) ; Statement: r7 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var1344 null-var2801)))
(declare-const var1459 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1459 null-Int)))
(declare-const var3239 (Array Int Bool)) ; Statement: r1 := @parameter2: boolean[] 
(assert (not (= var3239 null-__Array__Int__Bool__)))
(define-const var2911 Int (inNextOf/1847772117 var2727)) ; Statement: $i0 = r0.<org.javacc.parser.NfaState: int inNextOf> 
 ; Statement: if $i0 == 1 goto $i1 = r0.<org.javacc.parser.NfaState: int stateName> 
(assert (= var2911 1)) ; Cond: $i0 == 1 
(define-const var3554 Int (stateName/1847772117 var2727)) ; Statement: $i1 = r0.<org.javacc.parser.NfaState: int stateName> 
(declare-const var3239!1 (Array Int Bool))
(assert (not (= var3239!1 null-__Array__Int__Bool__)))
(assert (= (select var3239!1 var3554) (ite (= 1 1) true false))) ; Statement: r1[$i1] = 1 
 ; Statement: if i2 < 0 goto $i3 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod> 
(assert (< var1459 0)) ; Cond: i2 < 0 
(define-const var519 Int (nonAsciiMethod/1847772117 var2727)) ; Statement: $i3 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod> 
(define-const var1160 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 == $i10 goto $r25 = new java.lang.StringBuilder 
(assert (not (= var519 var1160))) ; Negate: Cond: $i3 == $i10  
(define-const var3085 (Array Int var3007) arr-var3007-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(define-const var2123 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2123)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2123!1 String)
(assert (= var2123!1 ""))
(assert true)
(define-const var3852 String (append/672562846 var2123!1 "               case ")) ; Statement: $r10 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("               case ") 
(declare-const var2123!2 String)
(assert (= var2123!2 (str.++ var2123!1 "               case ")))
(define-const var142 Int (stateName/1847772117 var2727)) ; Statement: $i5 = r0.<org.javacc.parser.NfaState: int stateName> 
(assert true)
(define-const var2299 String (append/-1001720160 var3852 var142)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var3852!1 String)
(assert (str.prefixof var3852 var3852!1))
(assert true)
(define-const var536 String (append/672562846 var2299 ":")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2299!1 String)
(assert (= var2299!1 (str.++ var2299 ":")))
(assert true)
(define-const var1798 String (toString/-2075883882 var536)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3085!1 (Array Int var3007))
(assert (not (= var3085!1 null-__Array__Int__var3007__)))
(assert (= (select var3085!1 0) (cast-from-String-to-var3007 var1798))) ; Statement: $r8[0] = $r13 
(assert true)
;(assert (genCodeLine/787715242 var1344 var3085!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var1344!1 var2801)
(declare-const var3085!2 (Array Int var3007))
(assert true)
;(assert (DumpNonAsciiMoveForCompositeState/1800165787 var2727 var1344!1)) ; Statement: specialinvoke r0.<org.javacc.parser.NfaState: void DumpNonAsciiMoveForCompositeState(org.javacc.parser.CodeGenerator)>(r7) 

(declare-const var2727!1 var1321)
(declare-const var1344!2 var2801)
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {inNextOf/1847772117=([org.javacc.parser.NfaState], int), stateName/1847772117=([org.javacc.parser.NfaState], int), nonAsciiMethod/1847772117=([org.javacc.parser.NfaState], int), cast-from-Int-to-Int=([int], int), arr-var3007-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var3007=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), DumpNonAsciiMoveForCompositeState/1800165787=([org.javacc.parser.NfaState, org.javacc.parser.CodeGenerator], void)}
; {var1321=org.javacc.parser.NfaState, var2727=r0, var2801=org.javacc.parser.CodeGenerator, var1344=r7, var1459=i2, var3239=r1, var2911=$i0, var3554=$i1, var519=$i3, var1160=$i10, var3007=java.lang.Object, var3085=$r8, var2123=$r24, var3852=$r10, var142=$i5, var2299=$r11, var536=$r12, var1798=$r13}
; {org.javacc.parser.NfaState=var1321, r0=var2727, org.javacc.parser.CodeGenerator=var2801, r7=var1344, i2=var1459, r1=var3239, $i0=var2911, $i1=var3554, $i3=var519, $i10=var1160, java.lang.Object=var3007, $r8=var3085, $r24=var2123, $r10=var3852, $i5=var142, $r11=var2299, $r12=var536, $r13=var1798}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.NfaState;	r7 := @parameter0: org.javacc.parser.CodeGenerator;	i2 := @parameter1: int;	r1 := @parameter2: boolean[];	$i0 = r0.<org.javacc.parser.NfaState: int inNextOf>;	if $i0 == 1 goto $i1 = r0.<org.javacc.parser.NfaState: int stateName>;	$i1 = r0.<org.javacc.parser.NfaState: int stateName>;	r1[$i1] = 1;	if i2 < 0 goto $i3 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod>;	$i3 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod>;	$i10 = (int) -1;	if $i3 == $i10 goto $r25 = new java.lang.StringBuilder;	$r8 = newarray (java.lang.Object)[1];	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("               case ");	$i5 = r0.<org.javacc.parser.NfaState: int stateName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r8[0] = $r13;	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8);	specialinvoke r0.<org.javacc.parser.NfaState: void DumpNonAsciiMoveForCompositeState(org.javacc.parser.CodeGenerator)>(r7);	return ""
;block_num 4