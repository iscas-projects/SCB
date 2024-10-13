(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3460 0)
(declare-sort var762 0)
(declare-sort var3640 0)
(declare-sort var2084 0)
(declare-sort var3957 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun selfLoop/-2129610754 (var3460) Bool)
(declare-fun var3640_size/-959786421 (var3640) Int)
(declare-fun next/1847772117 (var3460) var3460)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun kindToPrint/1847772117 (var3460) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2084_getJavaUnicodeEscape/752328068 () Bool)
(declare-fun arr-var3957-init () (Array Int var3957))
(declare-fun nonAsciiMethod/1847772117 (var3460) Int)
(declare-fun cast-from-String-to-var3957 (String) var3957)
(declare-fun genCodeLine/787715242 (var762 (Array Int var3957)) void)
(declare-const null-var3460 var3460)
(declare-const null-var762 var762)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const var3460-allStates var3640)
(declare-const null-__Array__Int__var3957__ (Array Int var3957))
(declare-const var3164 var3460) ; Statement: r0 := @this: org.javacc.parser.NfaState 
(assert (not (= var3164 null-var3460)))
(declare-const var1988 var762) ; Statement: r5 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var1988 null-var762)))
(declare-const var3790 (Array Int Bool)) ; Statement: r122 := @parameter1: boolean[] 
(assert (not (= var3790 null-__Array__Int__Bool__)))
(assert true)
(define-const var2431 Bool (selfLoop/-2129610754 var3164)) ; Statement: $z0 = specialinvoke r0.<org.javacc.parser.NfaState: boolean selfLoop()>() 
 ; Statement: if $z0 == 0 goto $z12 = 0 
(assert (= (ite var2431 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2734 Bool (ite (= 1 0) true false)) ; Statement: $z12 = 0 
(assert true) ; Non Conditional
(define-const var1425 Bool var2734) ; Statement: z13 = $z12 
(define-const var3736 Int 0) ; Statement: i34 = 0 
(assert true) ; Non Conditional
(define-const var2687 var3640 var3460-allStates) ; Statement: $r145 = <org.javacc.parser.NfaState: java.util.List allStates> 
(define-const var2718 Int (var3640_size/-959786421 var2687)) ; Statement: $i35 = interfaceinvoke $r145.<java.util.List: int size()>() 
 ; Statement: if i34 >= $i35 goto $r1 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next> 
(assert (>= var3736 var2718)) ; Cond: i34 >= $i35 
(define-const var1118 var3460 (next/1847772117 var3164)) ; Statement: $r1 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next> 
 ; Statement: if $r1 == null goto $r176 = new java.lang.StringBuilder 
(assert (= var1118 null-var3460)) ; Cond: $r1 == null 
(define-const var2089 String String-init) ; Statement: $r176 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2089)) ; Statement: specialinvoke $r176.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2089!1 String)
(assert (= var2089!1 ""))
(assert true)
(define-const var2269 String (append/672562846 var2089!1 " && kind > ")) ; Statement: $r3 = virtualinvoke $r176.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" && kind > ") 
(declare-const var2089!2 String)
(assert (= var2089!2 (str.++ var2089!1 " && kind > ")))
(define-const var3720 Int (kindToPrint/1847772117 var3164)) ; Statement: $i0 = r0.<org.javacc.parser.NfaState: int kindToPrint> 
(assert true)
(define-const var3059 String (append/-1001720160 var2269 var3720)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2269!1 String)
(assert (str.prefixof var2269 var2269!1))
(assert true)
(define-const var394 String (toString/-2075883882 var3059)) ; Statement: $r119 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2177 Bool var2084_getJavaUnicodeEscape/752328068) ; Statement: $z1 = staticinvoke <org.javacc.parser.Options: boolean getJavaUnicodeEscape()>() 
 ; Statement: if $z1 != 0 goto $r6 = newarray (java.lang.Object)[1] 
(assert (not (= (ite var2177 1 0) 0))) ; Cond: $z1 != 0 
(define-const var2010 (Array Int var3957) arr-var3957-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(define-const var274 String String-init) ; Statement: $r178 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var274)) ; Statement: specialinvoke $r178.<java.lang.StringBuilder: void <init>()>() 
(declare-const var274!1 String)
(assert (= var274!1 ""))
(assert true)
(define-const var3838 String (append/672562846 var274!1 "                  if (jjCanMove_")) ; Statement: $r8 = virtualinvoke $r178.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("                  if (jjCanMove_") 
(declare-const var274!2 String)
(assert (= var274!2 (str.++ var274!1 "                  if (jjCanMove_")))
(define-const var3472 Int (nonAsciiMethod/1847772117 var3164)) ; Statement: $i1 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod> 
(assert true)
(define-const var2888 String (append/-1001720160 var3838 var3472)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3838!1 String)
(assert (str.prefixof var3838 var3838!1))
(assert true)
(define-const var2893 String (append/672562846 var2888 "(hiByte, i1, i2, l1, l2)")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(hiByte, i1, i2, l1, l2)") 
(declare-const var2888!1 String)
(assert (= var2888!1 (str.++ var2888 "(hiByte, i1, i2, l1, l2)")))
(assert true)
(define-const var739 String (append/672562846 var2893 var394)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r119) 
(declare-const var2893!1 String)
(assert (= var2893!1 (str.++ var2893 var394)))
(assert true)
(define-const var1894 String (append/672562846 var739 ")")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var739!1 String)
(assert (= var739!1 (str.++ var739 ")")))
(assert true)
(define-const var1341 String (toString/-2075883882 var1894)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2010!1 (Array Int var3957))
(assert (not (= var2010!1 null-__Array__Int__var3957__)))
(assert (= (select var2010!1 0) (cast-from-String-to-var3957 var1341))) ; Statement: $r6[0] = $r13 
(assert true)
;(assert (genCodeLine/787715242 var1988 var2010!1)) ; Statement: virtualinvoke r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var1988!1 var762)
(declare-const var2010!2 (Array Int var3957))
(assert true) ; Non Conditional
(define-const var3029 (Array Int var3957) arr-var3957-init) ; Statement: $r147 = newarray (java.lang.Object)[1] 
(define-const var1364 String String-init) ; Statement: $r179 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1364)) ; Statement: specialinvoke $r179.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1364!1 String)
(assert (= var1364!1 ""))
(assert true)
(define-const var1635 String (append/672562846 var1364!1 "                     kind = ")) ; Statement: $r149 = virtualinvoke $r179.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("                     kind = ") 
(declare-const var1364!2 String)
(assert (= var1364!2 (str.++ var1364!1 "                     kind = ")))
(define-const var2981 Int (kindToPrint/1847772117 var3164)) ; Statement: $i37 = r0.<org.javacc.parser.NfaState: int kindToPrint> 
(assert true)
(define-const var1992 String (append/-1001720160 var1635 var2981)) ; Statement: $r150 = virtualinvoke $r149.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i37) 
(declare-const var1635!1 String)
(assert (str.prefixof var1635 var1635!1))
(assert true)
(define-const var2736 String (append/672562846 var1992 ";")) ; Statement: $r151 = virtualinvoke $r150.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";") 
(declare-const var1992!1 String)
(assert (= var1992!1 (str.++ var1992 ";")))
(assert true)
(define-const var2493 String (toString/-2075883882 var2736)) ; Statement: $r152 = virtualinvoke $r151.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3029!1 (Array Int var3957))
(assert (not (= var3029!1 null-__Array__Int__var3957__)))
(assert (= (select var3029!1 0) (cast-from-String-to-var3957 var2493))) ; Statement: $r147[0] = $r152 
(assert true)
;(assert (genCodeLine/787715242 var1988!1 var3029!1)) ; Statement: virtualinvoke r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r147) 

(declare-const var1988!2 var762)
(declare-const var3029!2 (Array Int var3957))
(define-const var3518 (Array Int var3957) arr-var3957-init) ; Statement: $r153 = newarray (java.lang.Object)[1] 
(declare-const var3518!1 (Array Int var3957))
(assert (not (= var3518!1 null-__Array__Int__var3957__)))
(assert (= (select var3518!1 0) (cast-from-String-to-var3957 "                  break;"))) ; Statement: $r153[0] = "                  break;" 
(assert true)
;(assert (genCodeLine/787715242 var1988!2 var3518!1)) ; Statement: virtualinvoke r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r153) 

(declare-const var1988!3 var762)
(declare-const var3518!2 (Array Int var3957))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {selfLoop/-2129610754=([org.javacc.parser.NfaState], boolean), var3640_size/-959786421=([java.util.List], int), next/1847772117=([org.javacc.parser.NfaState], org.javacc.parser.NfaState), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), kindToPrint/1847772117=([org.javacc.parser.NfaState], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2084_getJavaUnicodeEscape/752328068=([], boolean), arr-var3957-init=([], java.lang.Object[]), nonAsciiMethod/1847772117=([org.javacc.parser.NfaState], int), cast-from-String-to-var3957=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var3460=org.javacc.parser.NfaState, var3164=r0, var762=org.javacc.parser.CodeGenerator, var1988=r5, var3790=r122, var2431=$z0, var2734=$z12, var1425=z13, var3736=i34, var3640=java.util.List, var2687=$r145, var2718=$i35, var1118=$r1, var2089=$r176, var2269=$r3, var3720=$i0, var3059=$r4, var394=$r119, var2084=org.javacc.parser.Options, var2177=$z1, var3957=java.lang.Object, var2010=$r6, var274=$r178, var3838=$r8, var3472=$i1, var2888=$r9, var2893=$r10, var739=$r11, var1894=$r12, var1341=$r13, var3029=$r147, var1364=$r179, var1635=$r149, var2981=$i37, var1992=$r150, var2736=$r151, var2493=$r152, var3518=$r153}
; {org.javacc.parser.NfaState=var3460, r0=var3164, org.javacc.parser.CodeGenerator=var762, r5=var1988, r122=var3790, $z0=var2431, $z12=var2734, z13=var1425, i34=var3736, java.util.List=var3640, $r145=var2687, $i35=var2718, $r1=var1118, $r176=var2089, $r3=var2269, $i0=var3720, $r4=var3059, $r119=var394, org.javacc.parser.Options=var2084, $z1=var2177, java.lang.Object=var3957, $r6=var2010, $r178=var274, $r8=var3838, $i1=var3472, $r9=var2888, $r10=var2893, $r11=var739, $r12=var1894, $r13=var1341, $r147=var3029, $r179=var1364, $r149=var1635, $i37=var2981, $r150=var1992, $r151=var2736, $r152=var2493, $r153=var3518}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: org.javacc.parser.NfaState;	r5 := @parameter0: org.javacc.parser.CodeGenerator;	r122 := @parameter1: boolean[];	$z0 = specialinvoke r0.<org.javacc.parser.NfaState: boolean selfLoop()>();	if $z0 == 0 goto $z12 = 0;	$z12 = 0;	z13 = $z12;	i34 = 0;	$r145 = <org.javacc.parser.NfaState: java.util.List allStates>;	$i35 = interfaceinvoke $r145.<java.util.List: int size()>();	if i34 >= $i35 goto $r1 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next>;	$r1 = r0.<org.javacc.parser.NfaState: org.javacc.parser.NfaState next>;	if $r1 == null goto $r176 = new java.lang.StringBuilder;	$r176 = new java.lang.StringBuilder;	specialinvoke $r176.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r176.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" && kind > ");	$i0 = r0.<org.javacc.parser.NfaState: int kindToPrint>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r119 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$z1 = staticinvoke <org.javacc.parser.Options: boolean getJavaUnicodeEscape()>();	if $z1 != 0 goto $r6 = newarray (java.lang.Object)[1];	$r6 = newarray (java.lang.Object)[1];	$r178 = new java.lang.StringBuilder;	specialinvoke $r178.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r178.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("                  if (jjCanMove_");	$i1 = r0.<org.javacc.parser.NfaState: int nonAsciiMethod>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(hiByte, i1, i2, l1, l2)");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r119);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r6[0] = $r13;	virtualinvoke r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6);	$r147 = newarray (java.lang.Object)[1];	$r179 = new java.lang.StringBuilder;	specialinvoke $r179.<java.lang.StringBuilder: void <init>()>();	$r149 = virtualinvoke $r179.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("                     kind = ");	$i37 = r0.<org.javacc.parser.NfaState: int kindToPrint>;	$r150 = virtualinvoke $r149.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i37);	$r151 = virtualinvoke $r150.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";");	$r152 = virtualinvoke $r151.<java.lang.StringBuilder: java.lang.String toString()>();	$r147[0] = $r152;	virtualinvoke r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r147);	$r153 = newarray (java.lang.Object)[1];	$r153[0] = "                  break;";	virtualinvoke r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r153);	return
;block_num 8