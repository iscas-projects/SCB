(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1936 0)
(declare-sort var3546 0)
(declare-sort var1571 0)
(declare-sort var2698 0)
(declare-sort var2929 0)
(declare-sort var3333 0)
(declare-sort var344 0)
(declare-sort var1071 0)
(declare-sort var2193 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLaExpansion/-240558564 (var3546) var1571)
(declare-fun isJavaDialect/-1894308792 (var1936) Bool)
(declare-fun codeGenerator/-1894308792 (var1936) var2698)
(declare-fun arr-var2929-init () (Array Int var2929))
(declare-fun cast-from-String-to-var2929 (String) var2929)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun internal_name/-1632124174 (var1571) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun genCodeLine/787715242 (var2698 (Array Int var2929)) void)
(declare-fun var3333_getDepthLimit/667251003 () Int)
(declare-fun var3333_getErrorReporting/94094612 () Bool)
(declare-fun var344-init () var344)
(declare-fun getAmount/1890126783 (var3546) Int)
(declare-fun <init>/-1277854481 (var344 var1571 Int) void)
(declare-fun phase3list/-1894308792 (var1936) var1071)
(declare-fun var1071_add/328494887 (var1071 var2929) Bool)
(declare-fun cast-from-var344-to-var2929 (var344) var2929)
(declare-fun phase3table/-1894308792 (var1936) var2193)
(declare-fun put/1981026245 (var2193 var2929 var2929) var2929)
(declare-fun cast-from-var1571-to-var2929 (var1571) var2929)
(declare-const null-var1936 var1936)
(declare-const null-var3546 var3546)
(declare-const null-__Array__Int__var2929__ (Array Int var2929))
(declare-const var1715 var1936) ; Statement: r2 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var1715 null-var1936)))
(declare-const var1525 var3546) ; Statement: r0 := @parameter0: org.javacc.parser.Lookahead 
(assert (not (= var1525 null-var3546)))
(assert true)
(define-const var1938 var1571 (getLaExpansion/-240558564 var1525)) ; Statement: r1 = virtualinvoke r0.<org.javacc.parser.Lookahead: org.javacc.parser.Expansion getLaExpansion()>() 
(define-const var19 Bool (isJavaDialect/-1894308792 var1715)) ; Statement: $z0 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect> 
 ; Statement: if $z0 == 0 goto $r5 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert (= (ite var19 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2904 var2698 (codeGenerator/-1894308792 var1715)) ; Statement: $r5 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var3959 (Array Int var2929) arr-var2929-init) ; Statement: $r3 = newarray (java.lang.Object)[2] 
(declare-const var3959!1 (Array Int var2929))
(assert (not (= var3959!1 null-__Array__Int__var2929__)))
(assert (= (select var3959!1 0) (cast-from-String-to-var2929 " inline bool "))) ; Statement: $r3[0] = " inline bool " 
(define-const var3784 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3784)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3784!1 String)
(assert (= var3784!1 ""))
(assert true)
(define-const var666 String (append/672562846 var3784!1 "jj_2")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jj_2") 
(declare-const var3784!2 String)
(assert (= var3784!2 (str.++ var3784!1 "jj_2")))
(define-const var1482 String (internal_name/-1632124174 var1938)) ; Statement: $r6 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name> 
(assert true)
(define-const var1591 String (append/672562846 var666 var1482)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var666!1 String)
(assert (= var666!1 (str.++ var666 var1482)))
(assert true)
(define-const var972 String (append/672562846 var1591 "(int xla)")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(int xla)") 
(declare-const var1591!1 String)
(assert (= var1591!1 (str.++ var1591 "(int xla)")))
(assert true)
(define-const var3109 String (toString/-2075883882 var972)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3959!2 (Array Int var2929))
(assert (not (= var3959!2 null-__Array__Int__var2929__)))
(assert (= (select var3959!2 1) (cast-from-String-to-var2929 var3109))) ; Statement: $r3[1] = $r10 
(assert true)
;(assert (genCodeLine/787715242 var2904 var3959!2)) ; Statement: virtualinvoke $r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r3) 

(declare-const var2904!1 var2698)
(declare-const var3959!3 (Array Int var2929))
(assert true) ; Non Conditional
(define-const var3966 var2698 (codeGenerator/-1894308792 var1715)) ; Statement: $r12 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var1778 (Array Int var2929) arr-var2929-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var1778!1 (Array Int var2929))
(assert (not (= var1778!1 null-__Array__Int__var2929__)))
(assert (= (select var1778!1 0) (cast-from-String-to-var2929 " {"))) ; Statement: $r11[0] = " {" 
(assert true)
;(assert (genCodeLine/787715242 var3966 var1778!1)) ; Statement: virtualinvoke $r12.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var3966!1 var2698)
(declare-const var1778!2 (Array Int var2929))
(define-const var1967 var2698 (codeGenerator/-1894308792 var1715)) ; Statement: $r14 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var1583 (Array Int var2929) arr-var2929-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(declare-const var1583!1 (Array Int var2929))
(assert (not (= var1583!1 null-__Array__Int__var2929__)))
(assert (= (select var1583!1 0) (cast-from-String-to-var2929 "    jj_la = xla; jj_lastpos = jj_scanpos = token;"))) ; Statement: $r13[0] = "    jj_la = xla; jj_lastpos = jj_scanpos = token;" 
(assert true)
;(assert (genCodeLine/787715242 var1967 var1583!1)) ; Statement: virtualinvoke $r14.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var1967!1 var2698)
(declare-const var1583!2 (Array Int var2929))
(define-const var3394 String "") ; Statement: r63 = "" 
(define-const var1347 String "") ; Statement: r73 = "" 
(define-const var36 String "") ; Statement: r72 = "" 
(define-const var1301 Int var3333_getDepthLimit/667251003) ; Statement: $i0 = staticinvoke <org.javacc.parser.Options: int getDepthLimit()>() 
 ; Statement: if $i0 <= 0 goto $z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect> 
(assert (<= var1301 0)) ; Cond: $i0 <= 0 
(define-const var1285 Bool (isJavaDialect/-1894308792 var1715)) ; Statement: $z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect> 
 ; Statement: if $z1 == 0 goto $r16 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert (not (= (ite var1285 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2274 var2698 (codeGenerator/-1894308792 var1715)) ; Statement: $r39 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var581 (Array Int var2929) arr-var2929-init) ; Statement: $r37 = newarray (java.lang.Object)[1] 
(define-const var2958 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2958)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2958!1 String)
(assert (= var2958!1 ""))
(assert true)
(define-const var65 String (append/672562846 var2958!1 "    try { return (!jj_3")) ; Statement: $r41 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    try { return (!jj_3") 
(declare-const var2958!2 String)
(assert (= var2958!2 (str.++ var2958!1 "    try { return (!jj_3")))
(define-const var1202 String (internal_name/-1632124174 var1938)) ; Statement: $r40 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name> 
(assert true)
(define-const var2026 String (append/672562846 var65 var1202)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var65!1 String)
(assert (= var65!1 (str.++ var65 var1202)))
(assert true)
(define-const var3907 String (append/672562846 var2026 "()")) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var2026!1 String)
(assert (= var2026!1 (str.++ var2026 "()")))
(assert true)
(define-const var1567 String (append/672562846 var3907 var36)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r72) 
(declare-const var3907!1 String)
(assert (= var3907!1 (str.++ var3907 var36)))
(assert true)
(define-const var1908 String (append/672562846 var1567 "); }")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("); }") 
(declare-const var1567!1 String)
(assert (= var1567!1 (str.++ var1567 "); }")))
(assert true)
(define-const var3446 String (toString/-2075883882 var1908)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var581!1 (Array Int var2929))
(assert (not (= var581!1 null-__Array__Int__var2929__)))
(assert (= (select var581!1 0) (cast-from-String-to-var2929 var3446))) ; Statement: $r37[0] = $r46 
(assert true)
;(assert (genCodeLine/787715242 var2274 var581!1)) ; Statement: virtualinvoke $r39.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r37) 

(declare-const var2274!1 var2698)
(declare-const var581!2 (Array Int var2929))
(define-const var3097 var2698 (codeGenerator/-1894308792 var1715)) ; Statement: $r48 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var2315 (Array Int var2929) arr-var2929-init) ; Statement: $r47 = newarray (java.lang.Object)[1] 
(declare-const var2315!1 (Array Int var2929))
(assert (not (= var2315!1 null-__Array__Int__var2929__)))
(assert (= (select var2315!1 0) (cast-from-String-to-var2929 "    catch(LookaheadSuccess ls) { return true; }"))) ; Statement: $r47[0] = "    catch(LookaheadSuccess ls) { return true; }" 
(assert true)
;(assert (genCodeLine/787715242 var3097 var2315!1)) ; Statement: virtualinvoke $r48.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r47) 

(declare-const var3097!1 var2698)
(declare-const var2315!2 (Array Int var2929))
 ; Statement: goto [?= $z2 = staticinvoke <org.javacc.parser.Options: boolean getErrorReporting()>()] 
(assert true) ; Non Conditional
(define-const var2747 Bool var3333_getErrorReporting/94094612) ; Statement: $z2 = staticinvoke <org.javacc.parser.Options: boolean getErrorReporting()>() 
 ; Statement: if $z2 == 0 goto $r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert (= (ite var2747 1 0) 0)) ; Cond: $z2 == 0 
(define-const var915 var2698 (codeGenerator/-1894308792 var1715)) ; Statement: $r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var937 (Array Int var2929) arr-var2929-init) ; Statement: $r66 = newarray (java.lang.Object)[1] 
(declare-const var937!1 (Array Int var2929))
(assert (not (= var937!1 null-__Array__Int__var2929__)))
(assert (= (select var937!1 0) (cast-from-String-to-var2929 "  }"))) ; Statement: $r66[0] = "  }" 
(assert true)
;(assert (genCodeLine/787715242 var915 var937!1)) ; Statement: virtualinvoke $r65.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r66) 

(declare-const var915!1 var2698)
(declare-const var937!2 (Array Int var2929))
(define-const var1526 var2698 (codeGenerator/-1894308792 var1715)) ; Statement: $r67 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var1314 (Array Int var2929) arr-var2929-init) ; Statement: $r68 = newarray (java.lang.Object)[1] 
(declare-const var1314!1 (Array Int var2929))
(assert (not (= var1314!1 null-__Array__Int__var2929__)))
(assert (= (select var1314!1 0) (cast-from-String-to-var2929 ""))) ; Statement: $r68[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 var1526 var1314!1)) ; Statement: virtualinvoke $r67.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r68) 

(declare-const var1526!1 var2698)
(declare-const var1314!2 (Array Int var2929))
(define-const var3254 var344 var344-init) ; Statement: $r69 = new org.javacc.parser.Phase3Data 
(assert true)
(define-const var2882 Int (getAmount/1890126783 var1525)) ; Statement: $i3 = virtualinvoke r0.<org.javacc.parser.Lookahead: int getAmount()>() 
(assert true)
;(assert (<init>/-1277854481 var3254 var1938 var2882)) ; Statement: specialinvoke $r69.<org.javacc.parser.Phase3Data: void <init>(org.javacc.parser.Expansion,int)>(r1, $i3) 

(declare-const var3254!1 var344)
(declare-const var1938!1 var1571)
(declare-const var2882!1 Int)
(define-const var331 var1071 (phase3list/-1894308792 var1715)) ; Statement: $r70 = r2.<org.javacc.parser.ParseEngine: java.util.List phase3list> 
;(assert (var1071_add/328494887 var331 (cast-from-var344-to-var2929 var3254!1))) ; Statement: interfaceinvoke $r70.<java.util.List: boolean add(java.lang.Object)>($r69) 

(declare-const var331!1 var1071)
(declare-const var3254!2 var344)
(define-const var2591 var2193 (phase3table/-1894308792 var1715)) ; Statement: $r71 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table> 
(assert true)
;(assert (put/1981026245 var2591 (cast-from-var1571-to-var2929 var1938!1) (cast-from-var344-to-var2929 var3254!2))) ; Statement: virtualinvoke $r71.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r69) 

(declare-const var2591!1 var2193)
(declare-const var1938!2 var1571)
(declare-const var3254!3 var344)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLaExpansion/-240558564=([org.javacc.parser.Lookahead], org.javacc.parser.Expansion), isJavaDialect/-1894308792=([org.javacc.parser.ParseEngine], boolean), codeGenerator/-1894308792=([org.javacc.parser.ParseEngine], org.javacc.parser.CodeGenerator), arr-var2929-init=([], java.lang.Object[]), cast-from-String-to-var2929=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), internal_name/-1632124174=([org.javacc.parser.Expansion], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), var3333_getDepthLimit/667251003=([], int), var3333_getErrorReporting/94094612=([], boolean), var344-init=([], org.javacc.parser.Phase3Data), getAmount/1890126783=([org.javacc.parser.Lookahead], int), <init>/-1277854481=([org.javacc.parser.Phase3Data, org.javacc.parser.Expansion, int], void), phase3list/-1894308792=([org.javacc.parser.ParseEngine], java.util.List), var1071_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var344-to-var2929=([org.javacc.parser.Phase3Data], java.lang.Object), phase3table/-1894308792=([org.javacc.parser.ParseEngine], java.util.Hashtable), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1571-to-var2929=([org.javacc.parser.Expansion], java.lang.Object)}
; {var1936=org.javacc.parser.ParseEngine, var1715=r2, var3546=org.javacc.parser.Lookahead, var1525=r0, var1571=org.javacc.parser.Expansion, var1938=r1, var19=$z0, var2698=org.javacc.parser.CodeGenerator, var2904=$r5, var2929=java.lang.Object, var3959=$r3, var3784=$r4, var666=$r7, var1482=$r6, var1591=$r8, var972=$r9, var3109=$r10, var3966=$r12, var1778=$r11, var1967=$r14, var1583=$r13, var3394=r63, var1347=r73, var36=r72, var3333=org.javacc.parser.Options, var1301=$i0, var1285=$z1, var2274=$r39, var581=$r37, var2958=$r38, var65=$r41, var1202=$r40, var2026=$r42, var3907=$r43, var1567=$r44, var1908=$r45, var3446=$r46, var3097=$r48, var2315=$r47, var2747=$z2, var915=$r65, var937=$r66, var1526=$r67, var1314=$r68, var344=org.javacc.parser.Phase3Data, var3254=$r69, var2882=$i3, var1071=java.util.List, var331=$r70, var2193=java.util.Hashtable, var2591=$r71}
; {org.javacc.parser.ParseEngine=var1936, r2=var1715, org.javacc.parser.Lookahead=var3546, r0=var1525, org.javacc.parser.Expansion=var1571, r1=var1938, $z0=var19, org.javacc.parser.CodeGenerator=var2698, $r5=var2904, java.lang.Object=var2929, $r3=var3959, $r4=var3784, $r7=var666, $r6=var1482, $r8=var1591, $r9=var972, $r10=var3109, $r12=var3966, $r11=var1778, $r14=var1967, $r13=var1583, r63=var3394, r73=var1347, r72=var36, org.javacc.parser.Options=var3333, $i0=var1301, $z1=var1285, $r39=var2274, $r37=var581, $r38=var2958, $r41=var65, $r40=var1202, $r42=var2026, $r43=var3907, $r44=var1567, $r45=var1908, $r46=var3446, $r48=var3097, $r47=var2315, $z2=var2747, $r65=var915, $r66=var937, $r67=var1526, $r68=var1314, org.javacc.parser.Phase3Data=var344, $r69=var3254, $i3=var2882, java.util.List=var1071, $r70=var331, java.util.Hashtable=var2193, $r71=var2591}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: org.javacc.parser.ParseEngine;	r0 := @parameter0: org.javacc.parser.Lookahead;	r1 = virtualinvoke r0.<org.javacc.parser.Lookahead: org.javacc.parser.Expansion getLaExpansion()>();	$z0 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect>;	if $z0 == 0 goto $r5 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r5 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r3 = newarray (java.lang.Object)[2];	$r3[0] = " inline bool ";	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jj_2");	$r6 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(int xla)");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r3[1] = $r10;	virtualinvoke $r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r3);	$r12 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r11 = newarray (java.lang.Object)[1];	$r11[0] = " {";	virtualinvoke $r12.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	$r14 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r13 = newarray (java.lang.Object)[1];	$r13[0] = "    jj_la = xla; jj_lastpos = jj_scanpos = token;";	virtualinvoke $r14.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13);	r63 = "";	r73 = "";	r72 = "";	$i0 = staticinvoke <org.javacc.parser.Options: int getDepthLimit()>();	if $i0 <= 0 goto $z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect>;	$z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect>;	if $z1 == 0 goto $r16 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r39 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r37 = newarray (java.lang.Object)[1];	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r41 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    try { return (!jj_3");	$r40 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name>;	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r72);	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("); }");	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>();	$r37[0] = $r46;	virtualinvoke $r39.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r37);	$r48 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r47 = newarray (java.lang.Object)[1];	$r47[0] = "    catch(LookaheadSuccess ls) { return true; }";	virtualinvoke $r48.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r47);	goto [?= $z2 = staticinvoke <org.javacc.parser.Options: boolean getErrorReporting()>()];	$z2 = staticinvoke <org.javacc.parser.Options: boolean getErrorReporting()>();	if $z2 == 0 goto $r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r66 = newarray (java.lang.Object)[1];	$r66[0] = "  }";	virtualinvoke $r65.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r66);	$r67 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r68 = newarray (java.lang.Object)[1];	$r68[0] = "";	virtualinvoke $r67.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r68);	$r69 = new org.javacc.parser.Phase3Data;	$i3 = virtualinvoke r0.<org.javacc.parser.Lookahead: int getAmount()>();	specialinvoke $r69.<org.javacc.parser.Phase3Data: void <init>(org.javacc.parser.Expansion,int)>(r1, $i3);	$r70 = r2.<org.javacc.parser.ParseEngine: java.util.List phase3list>;	interfaceinvoke $r70.<java.util.List: boolean add(java.lang.Object)>($r69);	$r71 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table>;	virtualinvoke $r71.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r69);	return
;block_num 7