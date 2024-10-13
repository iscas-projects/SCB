(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3962 0)
(declare-sort var1072 0)
(declare-sort var2487 0)
(declare-sort var3866 0)
(declare-sort var2260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3866_getLongType/-387263599 () String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3866_isOutputLanguageJava/1735442213 () Bool)
(declare-fun var3866_getOutputLanguage/-1523304050 () String)
(declare-fun var2260-init () var2260)
(declare-fun <init>/-1084991535 (var2260 String) void)
(declare-const null-__Array__Int__var3962__ (Array Int var3962))
(declare-const null-var1072 var1072)
(declare-const var2487-maxStrKind Int)
(declare-const var2825 (Array Int var3962)) ; Statement: r109 := @parameter0: java.util.Hashtable[] 
(assert (not (= var2825 null-__Array__Int__var3962__)))
(declare-const var2564 var1072) ; Statement: r16 := @parameter1: org.javacc.parser.CodeGenerator 
(assert (not (= var2564 null-var1072)))
(define-const var2553 Int var2487-maxStrKind) ; Statement: $i0 = <org.javacc.parser.RStringLiteral: int maxStrKind> 
 ; Statement: if $i0 != 0 goto $i1 = <org.javacc.parser.RStringLiteral: int maxStrKind> 
(assert (not (= var2553 0))) ; Cond: $i0 != 0 
(define-const var2033 Int var2487-maxStrKind) ; Statement: $i1 = <org.javacc.parser.RStringLiteral: int maxStrKind> 
(define-const var3552 Int (div var2033 64)) ; Statement: $i2 = $i1 / 64 
(define-const var704 Int (+ var3552 1)) ; Statement: i3 = $i2 + 1 
(define-const var78 Bool (ite (= 1 0) true false)) ; Statement: z14 = 0 
(define-const var2345 Bool (ite (= 1 0) true false)) ; Statement: z17 = 0 
(define-const var1817 Bool (ite (= 1 0) true false)) ; Statement: z16 = 0 
(define-const var316 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var316)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var316!1 String)
(define-const var3622 Int 0) ; Statement: i22 = 0 
(assert true) ; Non Conditional
(define-const var2346 Int (- var704 1)) ; Statement: $i4 = i3 - 1 
 ; Statement: if i22 >= $i4 goto $r1 = new java.lang.StringBuilder 
(assert (>= var3622 var2346)) ; Cond: i22 >= $i4 
(define-const var1963 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1963)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1963!1 String)
(assert (= var1963!1 ""))
(assert true)
(define-const var669 String (append/672562846 var1963!1 "")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var1963!2 String)
(assert (= var1963!2 (str.++ var1963!1 "")))
(define-const var1561 String var3866_getLongType/-387263599) ; Statement: $r2 = staticinvoke <org.javacc.parser.Options: java.lang.String getLongType()>() 
(assert true)
(define-const var2992 String (append/672562846 var669 var1561)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var669!1 String)
(assert (= var669!1 (str.++ var669 var1561)))
(assert true)
(define-const var1104 String (append/672562846 var2992 " active")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" active") 
(declare-const var2992!1 String)
(assert (= var2992!1 (str.++ var2992 " active")))
(assert true)
(define-const var2711 String (append/-1001720160 var1104 var3622)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i22) 
(declare-const var1104!1 String)
(assert (str.prefixof var1104 var1104!1))
(assert true)
(define-const var2475 String (append/672562846 var2711 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2711!1 String)
(assert (= var2711!1 (str.++ var2711 ")")))
(assert true)
(define-const var1996 String (toString/-2075883882 var2475)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var316!1 var1996)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8) 
(declare-const var316!2 String)
(assert (str.prefixof var316!1 var316!2))
(define-const var907 Bool var3866_isOutputLanguageJava/1735442213) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>() 
 ; Statement: if $z0 == 0 goto $r9 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert (= (ite var907 1 0) 0)) ; Cond: $z0 == 0 
(define-const var175 String var3866_getOutputLanguage/-1523304050) ; Statement: $r9 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var58 Bool (= var175 "c++")) ; Statement: $z1 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>("c++") 
 ; Statement: if $z1 == 0 goto $r10 = new java.lang.RuntimeException 
(assert (= (ite var58 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2436 var2260 var2260-init) ; Statement: $r10 = new java.lang.RuntimeException 
(define-const var253 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var253)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var253!1 String)
(assert (= var253!1 ""))
(assert true)
(define-const var3305 String (append/672562846 var253!1 "Output language type not fully implemented : ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Output language type not fully implemented : ") 
(declare-const var253!2 String)
(assert (= var253!2 (str.++ var253!1 "Output language type not fully implemented : ")))
(define-const var3970 String var3866_getOutputLanguage/-1523304050) ; Statement: $r12 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var2918 String (append/672562846 var3305 var3970)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3305!1 String)
(assert (= var3305!1 (str.++ var3305 var3970)))
(assert true)
(define-const var1138 String (toString/-2075883882 var2918)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2436 var1138)) ; Statement: specialinvoke $r10.<java.lang.RuntimeException: void <init>(java.lang.String)>($r15) 

(declare-const var2436!1 var2260)
(declare-const var1138!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3866_getLongType/-387263599=([], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var3866_isOutputLanguageJava/1735442213=([], boolean), var3866_getOutputLanguage/-1523304050=([], java.lang.String), var2260-init=([], java.lang.RuntimeException), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3962=java.util.Hashtable, var2825=r109, var1072=org.javacc.parser.CodeGenerator, var2564=r16, var2487=org.javacc.parser.RStringLiteral, var2553=$i0, var2033=$i1, var3552=$i2, var704=i3, var78=z14, var2345=z17, var1817=z16, var316=$r0, var3622=i22, var2346=$i4, var1963=$r1, var669=$r3, var3866=org.javacc.parser.Options, var1561=$r2, var2992=$r4, var1104=$r5, var2711=$r6, var2475=$r7, var1996=$r8, var907=$z0, var175=$r9, var58=$z1, var2260=java.lang.RuntimeException, var2436=$r10, var253=$r11, var3305=$r13, var3970=$r12, var2918=$r14, var1138=$r15}
; {java.util.Hashtable=var3962, r109=var2825, org.javacc.parser.CodeGenerator=var1072, r16=var2564, org.javacc.parser.RStringLiteral=var2487, $i0=var2553, $i1=var2033, $i2=var3552, i3=var704, z14=var78, z17=var2345, z16=var1817, $r0=var316, i22=var3622, $i4=var2346, $r1=var1963, $r3=var669, org.javacc.parser.Options=var3866, $r2=var1561, $r4=var2992, $r5=var1104, $r6=var2711, $r7=var2475, $r8=var1996, $z0=var907, $r9=var175, $z1=var58, java.lang.RuntimeException=var2260, $r10=var2436, $r11=var253, $r13=var3305, $r12=var3970, $r14=var2918, $r15=var1138}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r109 := @parameter0: java.util.Hashtable[];	r16 := @parameter1: org.javacc.parser.CodeGenerator;	$i0 = <org.javacc.parser.RStringLiteral: int maxStrKind>;	if $i0 != 0 goto $i1 = <org.javacc.parser.RStringLiteral: int maxStrKind>;	$i1 = <org.javacc.parser.RStringLiteral: int maxStrKind>;	$i2 = $i1 / 64;	i3 = $i2 + 1;	z14 = 0;	z17 = 0;	z16 = 0;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	i22 = 0;	$i4 = i3 - 1;	if i22 >= $i4 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$r2 = staticinvoke <org.javacc.parser.Options: java.lang.String getLongType()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" active");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i22);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8);	$z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>();	if $z0 == 0 goto $r9 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r9 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$z1 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>("c++");	if $z1 == 0 goto $r10 = new java.lang.RuntimeException;	$r10 = new java.lang.RuntimeException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Output language type not fully implemented : ");	$r12 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.RuntimeException: void <init>(java.lang.String)>($r15);	throw $r10
;block_num 6