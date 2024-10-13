(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2331 0)
(declare-sort var716 0)
(declare-sort var2778 0)
(declare-sort var997 0)
(declare-sort var3313 0)
(declare-sort var1101 0)
(declare-sort var3298 0)
(declare-sort var2247 0)
(declare-sort var1202 0)
(declare-sort var453 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLaExpansion/-240558564 (var716) var2778)
(declare-fun isJavaDialect/-1894308792 (var2331) Bool)
(declare-fun codeGenerator/-1894308792 (var2331) var997)
(declare-fun arr-var3313-init () (Array Int var3313))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1101_staticOpt/-1224446488 () String)
(declare-fun var3298_getBooleanType/-2111917935 () String)
(declare-fun internal_name/-1632124174 (var2778) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var3313 (String) var3313)
(declare-fun genCodeLine/787715242 (var997 (Array Int var3313)) void)
(declare-fun var3298_getDepthLimit/667251003 () Int)
(declare-fun var3298_getErrorReporting/94094612 () Bool)
(declare-fun var2247-init () var2247)
(declare-fun getAmount/1890126783 (var716) Int)
(declare-fun <init>/-1277854481 (var2247 var2778 Int) void)
(declare-fun phase3list/-1894308792 (var2331) var1202)
(declare-fun var1202_add/328494887 (var1202 var3313) Bool)
(declare-fun cast-from-var2247-to-var3313 (var2247) var3313)
(declare-fun phase3table/-1894308792 (var2331) var453)
(declare-fun put/1981026245 (var453 var3313 var3313) var3313)
(declare-fun cast-from-var2778-to-var3313 (var2778) var3313)
(declare-const null-var2331 var2331)
(declare-const null-var716 var716)
(declare-const null-__Array__Int__var3313__ (Array Int var3313))
(declare-const var3665 var2331) ; Statement: r2 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var3665 null-var2331)))
(declare-const var1854 var716) ; Statement: r0 := @parameter0: org.javacc.parser.Lookahead 
(assert (not (= var1854 null-var716)))
(assert true)
(define-const var1924 var2778 (getLaExpansion/-240558564 var1854)) ; Statement: r1 = virtualinvoke r0.<org.javacc.parser.Lookahead: org.javacc.parser.Expansion getLaExpansion()>() 
(define-const var2957 Bool (isJavaDialect/-1894308792 var3665)) ; Statement: $z0 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect> 
 ; Statement: if $z0 == 0 goto $r5 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert (not (= (ite var2957 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1145 var997 (codeGenerator/-1894308792 var3665)) ; Statement: $r51 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var742 (Array Int var3313) arr-var3313-init) ; Statement: $r49 = newarray (java.lang.Object)[1] 
(define-const var1234 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1234)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1234!1 String)
(assert (= var1234!1 ""))
(assert true)
(define-const var767 String (append/672562846 var1234!1 "  ")) ; Statement: $r53 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1234!2 String)
(assert (= var1234!2 (str.++ var1234!1 "  ")))
(define-const var3436 String var1101_staticOpt/-1224446488) ; Statement: $r52 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String staticOpt()>() 
(assert true)
(define-const var2553 String (append/672562846 var767 var3436)) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52) 
(declare-const var767!1 String)
(assert (= var767!1 (str.++ var767 var3436)))
(assert true)
(define-const var2097 String (append/672562846 var2553 "private ")) ; Statement: $r56 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private ") 
(declare-const var2553!1 String)
(assert (= var2553!1 (str.++ var2553 "private ")))
(define-const var19 String var3298_getBooleanType/-2111917935) ; Statement: $r55 = staticinvoke <org.javacc.parser.Options: java.lang.String getBooleanType()>() 
(assert true)
(define-const var3286 String (append/672562846 var2097 var19)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var2097!1 String)
(assert (= var2097!1 (str.++ var2097 var19)))
(assert true)
(define-const var3339 String (append/672562846 var3286 " jj_2")) ; Statement: $r59 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" jj_2") 
(declare-const var3286!1 String)
(assert (= var3286!1 (str.++ var3286 " jj_2")))
(define-const var3913 String (internal_name/-1632124174 var1924)) ; Statement: $r58 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name> 
(assert true)
(define-const var1131 String (append/672562846 var3339 var3913)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r58) 
(declare-const var3339!1 String)
(assert (= var3339!1 (str.++ var3339 var3913)))
(assert true)
(define-const var3684 String (append/672562846 var1131 "(int xla)")) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(int xla)") 
(declare-const var1131!1 String)
(assert (= var1131!1 (str.++ var1131 "(int xla)")))
(assert true)
(define-const var3300 String (toString/-2075883882 var3684)) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var742!1 (Array Int var3313))
(assert (not (= var742!1 null-__Array__Int__var3313__)))
(assert (= (select var742!1 0) (cast-from-String-to-var3313 var3300))) ; Statement: $r49[0] = $r62 
(assert true)
;(assert (genCodeLine/787715242 var1145 var742!1)) ; Statement: virtualinvoke $r51.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r49) 

(declare-const var1145!1 var997)
(declare-const var742!2 (Array Int var3313))
 ; Statement: goto [?= $r12 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>] 
(assert true) ; Non Conditional
(define-const var2031 var997 (codeGenerator/-1894308792 var3665)) ; Statement: $r12 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var2640 (Array Int var3313) arr-var3313-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var2640!1 (Array Int var3313))
(assert (not (= var2640!1 null-__Array__Int__var3313__)))
(assert (= (select var2640!1 0) (cast-from-String-to-var3313 " {"))) ; Statement: $r11[0] = " {" 
(assert true)
;(assert (genCodeLine/787715242 var2031 var2640!1)) ; Statement: virtualinvoke $r12.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var2031!1 var997)
(declare-const var2640!2 (Array Int var3313))
(define-const var3129 var997 (codeGenerator/-1894308792 var3665)) ; Statement: $r14 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var2213 (Array Int var3313) arr-var3313-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(declare-const var2213!1 (Array Int var3313))
(assert (not (= var2213!1 null-__Array__Int__var3313__)))
(assert (= (select var2213!1 0) (cast-from-String-to-var3313 "    jj_la = xla; jj_lastpos = jj_scanpos = token;"))) ; Statement: $r13[0] = "    jj_la = xla; jj_lastpos = jj_scanpos = token;" 
(assert true)
;(assert (genCodeLine/787715242 var3129 var2213!1)) ; Statement: virtualinvoke $r14.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var3129!1 var997)
(declare-const var2213!2 (Array Int var3313))
(define-const var3847 String "") ; Statement: r63 = "" 
(define-const var3946 String "") ; Statement: r73 = "" 
(define-const var3622 String "") ; Statement: r72 = "" 
(define-const var3026 Int var3298_getDepthLimit/667251003) ; Statement: $i0 = staticinvoke <org.javacc.parser.Options: int getDepthLimit()>() 
 ; Statement: if $i0 <= 0 goto $z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect> 
(assert (<= var3026 0)) ; Cond: $i0 <= 0 
(define-const var1444 Bool (isJavaDialect/-1894308792 var3665)) ; Statement: $z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect> 
 ; Statement: if $z1 == 0 goto $r16 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert (= (ite var1444 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3947 var997 (codeGenerator/-1894308792 var3665)) ; Statement: $r16 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var2115 (Array Int var3313) arr-var3313-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(declare-const var2115!1 (Array Int var3313))
(assert (not (= var2115!1 null-__Array__Int__var3313__)))
(assert (= (select var2115!1 0) (cast-from-String-to-var3313 "    jj_done = false;"))) ; Statement: $r15[0] = "    jj_done = false;" 
(assert true)
;(assert (genCodeLine/787715242 var3947 var2115!1)) ; Statement: virtualinvoke $r16.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r15) 

(declare-const var3947!1 var997)
(declare-const var2115!2 (Array Int var3313))
(define-const var2126 var997 (codeGenerator/-1894308792 var3665)) ; Statement: $r19 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var332 (Array Int var3313) arr-var3313-init) ; Statement: $r17 = newarray (java.lang.Object)[1] 
(define-const var1121 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1121)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1121!1 String)
(assert (= var1121!1 ""))
(assert true)
(define-const var1053 String (append/672562846 var1121!1 "    return (!jj_3")) ; Statement: $r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    return (!jj_3") 
(declare-const var1121!2 String)
(assert (= var1121!2 (str.++ var1121!1 "    return (!jj_3")))
(define-const var1832 String (internal_name/-1632124174 var1924)) ; Statement: $r20 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name> 
(assert true)
(define-const var937 String (append/672562846 var1053 var1832)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1053!1 String)
(assert (= var1053!1 (str.++ var1053 var1832)))
(assert true)
(define-const var838 String (append/672562846 var937 "() || jj_done)")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() || jj_done)") 
(declare-const var937!1 String)
(assert (= var937!1 (str.++ var937 "() || jj_done)")))
(assert true)
(define-const var1934 String (append/672562846 var838 var3946)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r73) 
(declare-const var838!1 String)
(assert (= var838!1 (str.++ var838 var3946)))
(assert true)
(define-const var3966 String (append/672562846 var1934 ";")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";") 
(declare-const var1934!1 String)
(assert (= var1934!1 (str.++ var1934 ";")))
(assert true)
(define-const var3475 String (toString/-2075883882 var3966)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var332!1 (Array Int var3313))
(assert (not (= var332!1 null-__Array__Int__var3313__)))
(assert (= (select var332!1 0) (cast-from-String-to-var3313 var3475))) ; Statement: $r17[0] = $r26 
(assert true)
;(assert (genCodeLine/787715242 var2126 var332!1)) ; Statement: virtualinvoke $r19.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r17) 

(declare-const var2126!1 var997)
(declare-const var332!2 (Array Int var3313))
(assert true) ; Non Conditional
(define-const var1526 Bool var3298_getErrorReporting/94094612) ; Statement: $z2 = staticinvoke <org.javacc.parser.Options: boolean getErrorReporting()>() 
 ; Statement: if $z2 == 0 goto $r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert (= (ite var1526 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1971 var997 (codeGenerator/-1894308792 var3665)) ; Statement: $r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var3520 (Array Int var3313) arr-var3313-init) ; Statement: $r66 = newarray (java.lang.Object)[1] 
(declare-const var3520!1 (Array Int var3313))
(assert (not (= var3520!1 null-__Array__Int__var3313__)))
(assert (= (select var3520!1 0) (cast-from-String-to-var3313 "  }"))) ; Statement: $r66[0] = "  }" 
(assert true)
;(assert (genCodeLine/787715242 var1971 var3520!1)) ; Statement: virtualinvoke $r65.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r66) 

(declare-const var1971!1 var997)
(declare-const var3520!2 (Array Int var3313))
(define-const var831 var997 (codeGenerator/-1894308792 var3665)) ; Statement: $r67 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var3944 (Array Int var3313) arr-var3313-init) ; Statement: $r68 = newarray (java.lang.Object)[1] 
(declare-const var3944!1 (Array Int var3313))
(assert (not (= var3944!1 null-__Array__Int__var3313__)))
(assert (= (select var3944!1 0) (cast-from-String-to-var3313 ""))) ; Statement: $r68[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 var831 var3944!1)) ; Statement: virtualinvoke $r67.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r68) 

(declare-const var831!1 var997)
(declare-const var3944!2 (Array Int var3313))
(define-const var3853 var2247 var2247-init) ; Statement: $r69 = new org.javacc.parser.Phase3Data 
(assert true)
(define-const var2722 Int (getAmount/1890126783 var1854)) ; Statement: $i3 = virtualinvoke r0.<org.javacc.parser.Lookahead: int getAmount()>() 
(assert true)
;(assert (<init>/-1277854481 var3853 var1924 var2722)) ; Statement: specialinvoke $r69.<org.javacc.parser.Phase3Data: void <init>(org.javacc.parser.Expansion,int)>(r1, $i3) 

(declare-const var3853!1 var2247)
(declare-const var1924!1 var2778)
(declare-const var2722!1 Int)
(define-const var3694 var1202 (phase3list/-1894308792 var3665)) ; Statement: $r70 = r2.<org.javacc.parser.ParseEngine: java.util.List phase3list> 
;(assert (var1202_add/328494887 var3694 (cast-from-var2247-to-var3313 var3853!1))) ; Statement: interfaceinvoke $r70.<java.util.List: boolean add(java.lang.Object)>($r69) 

(declare-const var3694!1 var1202)
(declare-const var3853!2 var2247)
(define-const var1451 var453 (phase3table/-1894308792 var3665)) ; Statement: $r71 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table> 
(assert true)
;(assert (put/1981026245 var1451 (cast-from-var2778-to-var3313 var1924!1) (cast-from-var2247-to-var3313 var3853!2))) ; Statement: virtualinvoke $r71.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r69) 

(declare-const var1451!1 var453)
(declare-const var1924!2 var2778)
(declare-const var3853!3 var2247)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLaExpansion/-240558564=([org.javacc.parser.Lookahead], org.javacc.parser.Expansion), isJavaDialect/-1894308792=([org.javacc.parser.ParseEngine], boolean), codeGenerator/-1894308792=([org.javacc.parser.ParseEngine], org.javacc.parser.CodeGenerator), arr-var3313-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1101_staticOpt/-1224446488=([], java.lang.String), var3298_getBooleanType/-2111917935=([], java.lang.String), internal_name/-1632124174=([org.javacc.parser.Expansion], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var3313=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), var3298_getDepthLimit/667251003=([], int), var3298_getErrorReporting/94094612=([], boolean), var2247-init=([], org.javacc.parser.Phase3Data), getAmount/1890126783=([org.javacc.parser.Lookahead], int), <init>/-1277854481=([org.javacc.parser.Phase3Data, org.javacc.parser.Expansion, int], void), phase3list/-1894308792=([org.javacc.parser.ParseEngine], java.util.List), var1202_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var2247-to-var3313=([org.javacc.parser.Phase3Data], java.lang.Object), phase3table/-1894308792=([org.javacc.parser.ParseEngine], java.util.Hashtable), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var2778-to-var3313=([org.javacc.parser.Expansion], java.lang.Object)}
; {var2331=org.javacc.parser.ParseEngine, var3665=r2, var716=org.javacc.parser.Lookahead, var1854=r0, var2778=org.javacc.parser.Expansion, var1924=r1, var2957=$z0, var997=org.javacc.parser.CodeGenerator, var1145=$r51, var3313=java.lang.Object, var742=$r49, var1234=$r50, var767=$r53, var1101=org.javacc.parser.JavaCCGlobals, var3436=$r52, var2553=$r54, var2097=$r56, var3298=org.javacc.parser.Options, var19=$r55, var3286=$r57, var3339=$r59, var3913=$r58, var1131=$r60, var3684=$r61, var3300=$r62, var2031=$r12, var2640=$r11, var3129=$r14, var2213=$r13, var3847=r63, var3946=r73, var3622=r72, var3026=$i0, var1444=$z1, var3947=$r16, var2115=$r15, var2126=$r19, var332=$r17, var1121=$r18, var1053=$r21, var1832=$r20, var937=$r22, var838=$r23, var1934=$r24, var3966=$r25, var3475=$r26, var1526=$z2, var1971=$r65, var3520=$r66, var831=$r67, var3944=$r68, var2247=org.javacc.parser.Phase3Data, var3853=$r69, var2722=$i3, var1202=java.util.List, var3694=$r70, var453=java.util.Hashtable, var1451=$r71}
; {org.javacc.parser.ParseEngine=var2331, r2=var3665, org.javacc.parser.Lookahead=var716, r0=var1854, org.javacc.parser.Expansion=var2778, r1=var1924, $z0=var2957, org.javacc.parser.CodeGenerator=var997, $r51=var1145, java.lang.Object=var3313, $r49=var742, $r50=var1234, $r53=var767, org.javacc.parser.JavaCCGlobals=var1101, $r52=var3436, $r54=var2553, $r56=var2097, org.javacc.parser.Options=var3298, $r55=var19, $r57=var3286, $r59=var3339, $r58=var3913, $r60=var1131, $r61=var3684, $r62=var3300, $r12=var2031, $r11=var2640, $r14=var3129, $r13=var2213, r63=var3847, r73=var3946, r72=var3622, $i0=var3026, $z1=var1444, $r16=var3947, $r15=var2115, $r19=var2126, $r17=var332, $r18=var1121, $r21=var1053, $r20=var1832, $r22=var937, $r23=var838, $r24=var1934, $r25=var3966, $r26=var3475, $z2=var1526, $r65=var1971, $r66=var3520, $r67=var831, $r68=var3944, org.javacc.parser.Phase3Data=var2247, $r69=var3853, $i3=var2722, java.util.List=var1202, $r70=var3694, java.util.Hashtable=var453, $r71=var1451}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: org.javacc.parser.ParseEngine;	r0 := @parameter0: org.javacc.parser.Lookahead;	r1 = virtualinvoke r0.<org.javacc.parser.Lookahead: org.javacc.parser.Expansion getLaExpansion()>();	$z0 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect>;	if $z0 == 0 goto $r5 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r51 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r49 = newarray (java.lang.Object)[1];	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r53 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r52 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String staticOpt()>();	$r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52);	$r56 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private ");	$r55 = staticinvoke <org.javacc.parser.Options: java.lang.String getBooleanType()>();	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r59 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" jj_2");	$r58 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name>;	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r58);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(int xla)");	$r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.String toString()>();	$r49[0] = $r62;	virtualinvoke $r51.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r49);	goto [?= $r12 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>];	$r12 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r11 = newarray (java.lang.Object)[1];	$r11[0] = " {";	virtualinvoke $r12.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	$r14 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r13 = newarray (java.lang.Object)[1];	$r13[0] = "    jj_la = xla; jj_lastpos = jj_scanpos = token;";	virtualinvoke $r14.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13);	r63 = "";	r73 = "";	r72 = "";	$i0 = staticinvoke <org.javacc.parser.Options: int getDepthLimit()>();	if $i0 <= 0 goto $z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect>;	$z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect>;	if $z1 == 0 goto $r16 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r16 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r15 = newarray (java.lang.Object)[1];	$r15[0] = "    jj_done = false;";	virtualinvoke $r16.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r15);	$r19 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r17 = newarray (java.lang.Object)[1];	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    return (!jj_3");	$r20 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name>;	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() || jj_done)");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r73);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r17[0] = $r26;	virtualinvoke $r19.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r17);	$z2 = staticinvoke <org.javacc.parser.Options: boolean getErrorReporting()>();	if $z2 == 0 goto $r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r66 = newarray (java.lang.Object)[1];	$r66[0] = "  }";	virtualinvoke $r65.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r66);	$r67 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r68 = newarray (java.lang.Object)[1];	$r68[0] = "";	virtualinvoke $r67.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r68);	$r69 = new org.javacc.parser.Phase3Data;	$i3 = virtualinvoke r0.<org.javacc.parser.Lookahead: int getAmount()>();	specialinvoke $r69.<org.javacc.parser.Phase3Data: void <init>(org.javacc.parser.Expansion,int)>(r1, $i3);	$r70 = r2.<org.javacc.parser.ParseEngine: java.util.List phase3list>;	interfaceinvoke $r70.<java.util.List: boolean add(java.lang.Object)>($r69);	$r71 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table>;	virtualinvoke $r71.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r69);	return
;block_num 7