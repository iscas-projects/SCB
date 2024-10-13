(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1433 0)
(declare-sort var2775 0)
(declare-sort var3938 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inNextOf/1847772117 (var1433) Int)
(declare-fun stateName/1847772117 (var1433) Int)
(declare-fun asciiMoves/1847772117 (var1433) (Array Int Int))
(declare-fun arr-var3938-init () (Array Int var3938))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var3938 (String) var3938)
(declare-fun genCodeLine/787715242 (var2775 (Array Int var3938)) void)
(declare-fun DumpAsciiMoveForCompositeState/-651801697 (var1433 var2775 Int Bool) void)
(declare-const null-var1433 var1433)
(declare-const null-var2775 var2775)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const null-__Array__Int__var3938__ (Array Int var3938))
(declare-const var1658 var1433) ; Statement: r0 := @this: org.javacc.parser.NfaState 
(assert (not (= var1658 null-var1433)))
(declare-const var530 var2775) ; Statement: r7 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var530 null-var2775)))
(declare-const var1688 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1688 null-Int)))
(declare-const var2805 (Array Int Bool)) ; Statement: r1 := @parameter2: boolean[] 
(assert (not (= var2805 null-__Array__Int__Bool__)))
(define-const var3556 Int (inNextOf/1847772117 var1658)) ; Statement: $i0 = r0.<org.javacc.parser.NfaState: int inNextOf> 
 ; Statement: if $i0 == 1 goto $i1 = r0.<org.javacc.parser.NfaState: int stateName> 
(assert (= var3556 1)) ; Cond: $i0 == 1 
(define-const var2629 Int (stateName/1847772117 var1658)) ; Statement: $i1 = r0.<org.javacc.parser.NfaState: int stateName> 
(declare-const var2805!1 (Array Int Bool))
(assert (not (= var2805!1 null-__Array__Int__Bool__)))
(assert (= (select var2805!1 var2629) (ite (= 1 1) true false))) ; Statement: r1[$i1] = 1 
 ; Statement: if i2 < 0 goto $i3 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod> 
(assert (not (< var1688 0))) ; Negate: Cond: i2 < 0  
(define-const var307 (Array Int Int) (asciiMoves/1847772117 var1658)) ; Statement: $r14 = r0.<org.javacc.parser.NfaState: long[] asciiMoves> 
(define-const var571 Int (select var307 var1688)) ; Statement: $l6 = $r14[i2] 
(define-const var3833 Int (ite (> var571 0) 1 (ite (< var571 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 == 0 goto $r25 = new java.lang.StringBuilder 
(assert (not (= var3833 0))) ; Negate: Cond: $b7 == 0  
(define-const var3449 (Array Int var3938) arr-var3938-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(define-const var920 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var920)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var920!1 String)
(assert (= var920!1 ""))
(assert true)
(define-const var3627 String (append/672562846 var920!1 "               case ")) ; Statement: $r17 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("               case ") 
(declare-const var920!2 String)
(assert (= var920!2 (str.++ var920!1 "               case ")))
(define-const var1242 Int (stateName/1847772117 var1658)) ; Statement: $i8 = r0.<org.javacc.parser.NfaState: int stateName> 
(assert true)
(define-const var497 String (append/-1001720160 var3627 var1242)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i8) 
(declare-const var3627!1 String)
(assert (str.prefixof var3627 var3627!1))
(assert true)
(define-const var3331 String (append/672562846 var497 ":")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var497!1 String)
(assert (= var497!1 (str.++ var497 ":")))
(assert true)
(define-const var3715 String (toString/-2075883882 var3331)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3449!1 (Array Int var3938))
(assert (not (= var3449!1 null-__Array__Int__var3938__)))
(assert (= (select var3449!1 0) (cast-from-String-to-var3938 var3715))) ; Statement: $r15[0] = $r20 
(assert true)
;(assert (genCodeLine/787715242 var530 var3449!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r15) 

(declare-const var530!1 var2775)
(declare-const var3449!2 (Array Int var3938))
(assert true)
;(assert (DumpAsciiMoveForCompositeState/-651801697 var1658 var530!1 var1688 (ite (= 1 0) true false))) ; Statement: specialinvoke r0.<org.javacc.parser.NfaState: void DumpAsciiMoveForCompositeState(org.javacc.parser.CodeGenerator,int,boolean)>(r7, i2, 0) 

(declare-const var1658!1 var1433)
(declare-const var530!2 var2775)
(declare-const var1688!1 Int)
(declare-const var995 Int)
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {inNextOf/1847772117=([org.javacc.parser.NfaState], int), stateName/1847772117=([org.javacc.parser.NfaState], int), asciiMoves/1847772117=([org.javacc.parser.NfaState], long[]), arr-var3938-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var3938=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), DumpAsciiMoveForCompositeState/-651801697=([org.javacc.parser.NfaState, org.javacc.parser.CodeGenerator, int, boolean], void)}
; {var1433=org.javacc.parser.NfaState, var1658=r0, var2775=org.javacc.parser.CodeGenerator, var530=r7, var1688=i2, var2805=r1, var3556=$i0, var2629=$i1, var307=$r14, var571=$l6, var3833=$b7, var3938=java.lang.Object, var3449=$r15, var920=$r23, var3627=$r17, var1242=$i8, var497=$r18, var3331=$r19, var3715=$r20, var995=0}
; {org.javacc.parser.NfaState=var1433, r0=var1658, org.javacc.parser.CodeGenerator=var2775, r7=var530, i2=var1688, r1=var2805, $i0=var3556, $i1=var2629, $r14=var307, $l6=var571, $b7=var3833, java.lang.Object=var3938, $r15=var3449, $r23=var920, $r17=var3627, $i8=var1242, $r18=var497, $r19=var3331, $r20=var3715, 0=var995}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.NfaState;	r7 := @parameter0: org.javacc.parser.CodeGenerator;	i2 := @parameter1: int;	r1 := @parameter2: boolean[];	$i0 = r0.<org.javacc.parser.NfaState: int inNextOf>;	if $i0 == 1 goto $i1 = r0.<org.javacc.parser.NfaState: int stateName>;	$i1 = r0.<org.javacc.parser.NfaState: int stateName>;	r1[$i1] = 1;	if i2 < 0 goto $i3 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod>;	$r14 = r0.<org.javacc.parser.NfaState: long[] asciiMoves>;	$l6 = $r14[i2];	$b7 = $l6 cmp 0L;	if $b7 == 0 goto $r25 = new java.lang.StringBuilder;	$r15 = newarray (java.lang.Object)[1];	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("               case ");	$i8 = r0.<org.javacc.parser.NfaState: int stateName>;	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i8);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	$r15[0] = $r20;	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r15);	specialinvoke r0.<org.javacc.parser.NfaState: void DumpAsciiMoveForCompositeState(org.javacc.parser.CodeGenerator,int,boolean)>(r7, i2, 0);	return ""
;block_num 4