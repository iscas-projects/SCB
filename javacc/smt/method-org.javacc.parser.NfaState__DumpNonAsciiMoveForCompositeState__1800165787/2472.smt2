(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var778 0)
(declare-sort var1375 0)
(declare-sort var974 0)
(declare-sort var3599 0)
(declare-sort var2244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun selfLoop/-2129610754 (var778) Bool)
(declare-fun var974_size/-959786421 (var974) Int)
(declare-fun var3599_getJavaUnicodeEscape/752328068 () Bool)
(declare-fun arr-var2244-init () (Array Int var2244))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nonAsciiMethod/1847772117 (var778) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var2244 (String) var2244)
(declare-fun genCodeLine/787715242 (var1375 (Array Int var2244)) void)
(declare-fun kindToPrint/1847772117 (var778) Int)
(declare-fun next/1847772117 (var778) var778)
(declare-const null-var778 var778)
(declare-const null-var1375 var1375)
(declare-const var778-allStates var974)
(declare-const null-__Array__Int__var2244__ (Array Int var2244))
(declare-const var1511 var778) ; Statement: r0 := @this: org.javacc.parser.NfaState 
(assert (not (= var1511 null-var778)))
(declare-const var2826 var1375) ; Statement: r2 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var2826 null-var1375)))
(assert true)
(define-const var2603 Bool (selfLoop/-2129610754 var1511)) ; Statement: z4 = specialinvoke r0.<org.javacc.parser.NfaState: boolean selfLoop()>() 
(define-const var2963 Int 0) ; Statement: i22 = 0 
(assert true) ; Non Conditional
(define-const var2082 var974 var778-allStates) ; Statement: $r1 = <org.javacc.parser.NfaState: java.util.List allStates> 
(define-const var2461 Int (var974_size/-959786421 var2082)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
 ; Statement: if i22 >= $i0 goto $z0 = staticinvoke <org.javacc.parser.Options: boolean getJavaUnicodeEscape()>() 
(assert (>= var2963 var2461)) ; Cond: i22 >= $i0 
(define-const var3990 Bool var3599_getJavaUnicodeEscape/752328068) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean getJavaUnicodeEscape()>() 
 ; Statement: if $z0 != 0 goto $r3 = newarray (java.lang.Object)[1] 
(assert (not (= (ite var3990 1 0) 0))) ; Cond: $z0 != 0 
(define-const var611 (Array Int var2244) arr-var2244-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(define-const var1407 String String-init) ; Statement: $r94 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1407)) ; Statement: specialinvoke $r94.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1407!1 String)
(assert (= var1407!1 ""))
(assert true)
(define-const var881 String (append/672562846 var1407!1 "                  if (jjCanMove_")) ; Statement: $r5 = virtualinvoke $r94.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("                  if (jjCanMove_") 
(declare-const var1407!2 String)
(assert (= var1407!2 (str.++ var1407!1 "                  if (jjCanMove_")))
(define-const var24 Int (nonAsciiMethod/1847772117 var1511)) ; Statement: $i1 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod> 
(assert true)
(define-const var3921 String (append/-1001720160 var881 var24)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var881!1 String)
(assert (str.prefixof var881 var881!1))
(assert true)
(define-const var2399 String (append/672562846 var3921 "(hiByte, i1, i2, l1, l2))")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(hiByte, i1, i2, l1, l2))") 
(declare-const var3921!1 String)
(assert (= var3921!1 (str.++ var3921 "(hiByte, i1, i2, l1, l2))")))
(assert true)
(define-const var298 String (toString/-2075883882 var2399)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var611!1 (Array Int var2244))
(assert (not (= var611!1 null-__Array__Int__var2244__)))
(assert (= (select var611!1 0) (cast-from-String-to-var2244 var298))) ; Statement: $r3[0] = $r8 
(assert true)
;(assert (genCodeLine/787715242 var2826 var611!1)) ; Statement: virtualinvoke r2.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r3) 

(declare-const var2826!1 var1375)
(declare-const var611!2 (Array Int var2244))
(assert true) ; Non Conditional
(define-const var430 Int (kindToPrint/1847772117 var1511)) ; Statement: $i23 = r0.<org.javacc.parser.NfaState: int kindToPrint> 
 ; Statement: if $i23 == 2147483647 goto $r9 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next> 
(assert (= var430 2147483647)) ; Cond: $i23 == 2147483647 
(define-const var2316 var778 (next/1847772117 var1511)) ; Statement: $r9 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next> 
 ; Statement: if $r9 == null goto $i25 = r0.<org.javacc.parser.NfaState: int kindToPrint> 
(assert (= var2316 null-var778)) ; Cond: $r9 == null 
(define-const var597 Int (kindToPrint/1847772117 var1511)) ; Statement: $i25 = r0.<org.javacc.parser.NfaState: int kindToPrint> 
 ; Statement: if $i25 == 2147483647 goto return 
(assert (= var597 2147483647)) ; Cond: $i25 == 2147483647 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {selfLoop/-2129610754=([org.javacc.parser.NfaState], boolean), var974_size/-959786421=([java.util.List], int), var3599_getJavaUnicodeEscape/752328068=([], boolean), arr-var2244-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nonAsciiMethod/1847772117=([org.javacc.parser.NfaState], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var2244=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), kindToPrint/1847772117=([org.javacc.parser.NfaState], int), next/1847772117=([org.javacc.parser.NfaState], org.javacc.parser.NfaState)}
; {var778=org.javacc.parser.NfaState, var1511=r0, var1375=org.javacc.parser.CodeGenerator, var2826=r2, var2603=z4, var2963=i22, var974=java.util.List, var2082=$r1, var2461=$i0, var3599=org.javacc.parser.Options, var3990=$z0, var2244=java.lang.Object, var611=$r3, var1407=$r94, var881=$r5, var24=$i1, var3921=$r6, var2399=$r7, var298=$r8, var430=$i23, var2316=$r9, var597=$i25}
; {org.javacc.parser.NfaState=var778, r0=var1511, org.javacc.parser.CodeGenerator=var1375, r2=var2826, z4=var2603, i22=var2963, java.util.List=var974, $r1=var2082, $i0=var2461, org.javacc.parser.Options=var3599, $z0=var3990, java.lang.Object=var2244, $r3=var611, $r94=var1407, $r5=var881, $i1=var24, $r6=var3921, $r7=var2399, $r8=var298, $i23=var430, $r9=var2316, $i25=var597}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.NfaState;	r2 := @parameter0: org.javacc.parser.CodeGenerator;	z4 = specialinvoke r0.<org.javacc.parser.NfaState: boolean selfLoop()>();	i22 = 0;	$r1 = <org.javacc.parser.NfaState: java.util.List allStates>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	if i22 >= $i0 goto $z0 = staticinvoke <org.javacc.parser.Options: boolean getJavaUnicodeEscape()>();	$z0 = staticinvoke <org.javacc.parser.Options: boolean getJavaUnicodeEscape()>();	if $z0 != 0 goto $r3 = newarray (java.lang.Object)[1];	$r3 = newarray (java.lang.Object)[1];	$r94 = new java.lang.StringBuilder;	specialinvoke $r94.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r94.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("                  if (jjCanMove_");	$i1 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(hiByte, i1, i2, l1, l2))");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r3[0] = $r8;	virtualinvoke r2.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r3);	$i23 = r0.<org.javacc.parser.NfaState: int kindToPrint>;	if $i23 == 2147483647 goto $r9 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next>;	$r9 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next>;	if $r9 == null goto $i25 = r0.<org.javacc.parser.NfaState: int kindToPrint>;	$i25 = r0.<org.javacc.parser.NfaState: int kindToPrint>;	if $i25 == 2147483647 goto return;	return
;block_num 8