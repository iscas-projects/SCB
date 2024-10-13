(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2231 0)
(declare-sort var2919 0)
(declare-sort var1742 0)
(declare-sort var3237 0)
(declare-sort var1371 0)
(declare-sort var1048 0)
(declare-sort var2735 0)
(declare-sort var1661 0)
(declare-sort var1574 0)
(declare-sort var1621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLaExpansion/-240558564 (var2919) var1742)
(declare-fun isJavaDialect/-1894308792 (var2231) Bool)
(declare-fun codeGenerator/-1894308792 (var2231) var3237)
(declare-fun arr-var1371-init () (Array Int var1371))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1048_staticOpt/-1224446488 () String)
(declare-fun var2735_getBooleanType/-2111917935 () String)
(declare-fun internal_name/-1632124174 (var1742) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var1371 (String) var1371)
(declare-fun genCodeLine/787715242 (var3237 (Array Int var1371)) void)
(declare-fun var2735_getDepthLimit/667251003 () Int)
(declare-fun var2735_getErrorReporting/94094612 () Bool)
(declare-fun var1661-init () var1661)
(declare-fun getAmount/1890126783 (var2919) Int)
(declare-fun <init>/-1277854481 (var1661 var1742 Int) void)
(declare-fun phase3list/-1894308792 (var2231) var1574)
(declare-fun var1574_add/328494887 (var1574 var1371) Bool)
(declare-fun cast-from-var1661-to-var1371 (var1661) var1371)
(declare-fun phase3table/-1894308792 (var2231) var1621)
(declare-fun put/1981026245 (var1621 var1371 var1371) var1371)
(declare-fun cast-from-var1742-to-var1371 (var1742) var1371)
(declare-const null-var2231 var2231)
(declare-const null-var2919 var2919)
(declare-const null-__Array__Int__var1371__ (Array Int var1371))
(declare-const var1409 var2231) ; Statement: r2 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var1409 null-var2231)))
(declare-const var2516 var2919) ; Statement: r0 := @parameter0: org.javacc.parser.Lookahead 
(assert (not (= var2516 null-var2919)))
(assert true)
(define-const var36 var1742 (getLaExpansion/-240558564 var2516)) ; Statement: r1 = virtualinvoke r0.<org.javacc.parser.Lookahead: org.javacc.parser.Expansion getLaExpansion()>() 
(define-const var2295 Bool (isJavaDialect/-1894308792 var1409)) ; Statement: $z0 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect> 
 ; Statement: if $z0 == 0 goto $r5 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert (not (= (ite var2295 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var11 var3237 (codeGenerator/-1894308792 var1409)) ; Statement: $r51 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var3792 (Array Int var1371) arr-var1371-init) ; Statement: $r49 = newarray (java.lang.Object)[1] 
(define-const var1970 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1970)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1970!1 String)
(assert (= var1970!1 ""))
(assert true)
(define-const var3576 String (append/672562846 var1970!1 "  ")) ; Statement: $r53 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1970!2 String)
(assert (= var1970!2 (str.++ var1970!1 "  ")))
(define-const var2519 String var1048_staticOpt/-1224446488) ; Statement: $r52 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String staticOpt()>() 
(assert true)
(define-const var3350 String (append/672562846 var3576 var2519)) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52) 
(declare-const var3576!1 String)
(assert (= var3576!1 (str.++ var3576 var2519)))
(assert true)
(define-const var90 String (append/672562846 var3350 "private ")) ; Statement: $r56 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private ") 
(declare-const var3350!1 String)
(assert (= var3350!1 (str.++ var3350 "private ")))
(define-const var320 String var2735_getBooleanType/-2111917935) ; Statement: $r55 = staticinvoke <org.javacc.parser.Options: java.lang.String getBooleanType()>() 
(assert true)
(define-const var1139 String (append/672562846 var90 var320)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var90!1 String)
(assert (= var90!1 (str.++ var90 var320)))
(assert true)
(define-const var3828 String (append/672562846 var1139 " jj_2")) ; Statement: $r59 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" jj_2") 
(declare-const var1139!1 String)
(assert (= var1139!1 (str.++ var1139 " jj_2")))
(define-const var666 String (internal_name/-1632124174 var36)) ; Statement: $r58 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name> 
(assert true)
(define-const var1508 String (append/672562846 var3828 var666)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r58) 
(declare-const var3828!1 String)
(assert (= var3828!1 (str.++ var3828 var666)))
(assert true)
(define-const var3201 String (append/672562846 var1508 "(int xla)")) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(int xla)") 
(declare-const var1508!1 String)
(assert (= var1508!1 (str.++ var1508 "(int xla)")))
(assert true)
(define-const var63 String (toString/-2075883882 var3201)) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3792!1 (Array Int var1371))
(assert (not (= var3792!1 null-__Array__Int__var1371__)))
(assert (= (select var3792!1 0) (cast-from-String-to-var1371 var63))) ; Statement: $r49[0] = $r62 
(assert true)
;(assert (genCodeLine/787715242 var11 var3792!1)) ; Statement: virtualinvoke $r51.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r49) 

(declare-const var11!1 var3237)
(declare-const var3792!2 (Array Int var1371))
 ; Statement: goto [?= $r12 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>] 
(assert true) ; Non Conditional
(define-const var1922 var3237 (codeGenerator/-1894308792 var1409)) ; Statement: $r12 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var1532 (Array Int var1371) arr-var1371-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var1532!1 (Array Int var1371))
(assert (not (= var1532!1 null-__Array__Int__var1371__)))
(assert (= (select var1532!1 0) (cast-from-String-to-var1371 " {"))) ; Statement: $r11[0] = " {" 
(assert true)
;(assert (genCodeLine/787715242 var1922 var1532!1)) ; Statement: virtualinvoke $r12.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var1922!1 var3237)
(declare-const var1532!2 (Array Int var1371))
(define-const var2486 var3237 (codeGenerator/-1894308792 var1409)) ; Statement: $r14 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var2819 (Array Int var1371) arr-var1371-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(declare-const var2819!1 (Array Int var1371))
(assert (not (= var2819!1 null-__Array__Int__var1371__)))
(assert (= (select var2819!1 0) (cast-from-String-to-var1371 "    jj_la = xla; jj_lastpos = jj_scanpos = token;"))) ; Statement: $r13[0] = "    jj_la = xla; jj_lastpos = jj_scanpos = token;" 
(assert true)
;(assert (genCodeLine/787715242 var2486 var2819!1)) ; Statement: virtualinvoke $r14.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var2486!1 var3237)
(declare-const var2819!2 (Array Int var1371))
(define-const var1768 String "") ; Statement: r63 = "" 
(define-const var3772 String "") ; Statement: r73 = "" 
(define-const var1461 String "") ; Statement: r72 = "" 
(define-const var3930 Int var2735_getDepthLimit/667251003) ; Statement: $i0 = staticinvoke <org.javacc.parser.Options: int getDepthLimit()>() 
 ; Statement: if $i0 <= 0 goto $z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect> 
(assert (<= var3930 0)) ; Cond: $i0 <= 0 
(define-const var2915 Bool (isJavaDialect/-1894308792 var1409)) ; Statement: $z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect> 
 ; Statement: if $z1 == 0 goto $r16 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert (not (= (ite var2915 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3591 var3237 (codeGenerator/-1894308792 var1409)) ; Statement: $r39 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var2009 (Array Int var1371) arr-var1371-init) ; Statement: $r37 = newarray (java.lang.Object)[1] 
(define-const var735 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var735)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var735!1 String)
(assert (= var735!1 ""))
(assert true)
(define-const var2160 String (append/672562846 var735!1 "    try { return (!jj_3")) ; Statement: $r41 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    try { return (!jj_3") 
(declare-const var735!2 String)
(assert (= var735!2 (str.++ var735!1 "    try { return (!jj_3")))
(define-const var2767 String (internal_name/-1632124174 var36)) ; Statement: $r40 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name> 
(assert true)
(define-const var2507 String (append/672562846 var2160 var2767)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var2160!1 String)
(assert (= var2160!1 (str.++ var2160 var2767)))
(assert true)
(define-const var1392 String (append/672562846 var2507 "()")) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var2507!1 String)
(assert (= var2507!1 (str.++ var2507 "()")))
(assert true)
(define-const var3629 String (append/672562846 var1392 var1461)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r72) 
(declare-const var1392!1 String)
(assert (= var1392!1 (str.++ var1392 var1461)))
(assert true)
(define-const var1633 String (append/672562846 var3629 "); }")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("); }") 
(declare-const var3629!1 String)
(assert (= var3629!1 (str.++ var3629 "); }")))
(assert true)
(define-const var2593 String (toString/-2075883882 var1633)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2009!1 (Array Int var1371))
(assert (not (= var2009!1 null-__Array__Int__var1371__)))
(assert (= (select var2009!1 0) (cast-from-String-to-var1371 var2593))) ; Statement: $r37[0] = $r46 
(assert true)
;(assert (genCodeLine/787715242 var3591 var2009!1)) ; Statement: virtualinvoke $r39.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r37) 

(declare-const var3591!1 var3237)
(declare-const var2009!2 (Array Int var1371))
(define-const var483 var3237 (codeGenerator/-1894308792 var1409)) ; Statement: $r48 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var737 (Array Int var1371) arr-var1371-init) ; Statement: $r47 = newarray (java.lang.Object)[1] 
(declare-const var737!1 (Array Int var1371))
(assert (not (= var737!1 null-__Array__Int__var1371__)))
(assert (= (select var737!1 0) (cast-from-String-to-var1371 "    catch(LookaheadSuccess ls) { return true; }"))) ; Statement: $r47[0] = "    catch(LookaheadSuccess ls) { return true; }" 
(assert true)
;(assert (genCodeLine/787715242 var483 var737!1)) ; Statement: virtualinvoke $r48.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r47) 

(declare-const var483!1 var3237)
(declare-const var737!2 (Array Int var1371))
 ; Statement: goto [?= $z2 = staticinvoke <org.javacc.parser.Options: boolean getErrorReporting()>()] 
(assert true) ; Non Conditional
(define-const var503 Bool var2735_getErrorReporting/94094612) ; Statement: $z2 = staticinvoke <org.javacc.parser.Options: boolean getErrorReporting()>() 
 ; Statement: if $z2 == 0 goto $r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert (= (ite var503 1 0) 0)) ; Cond: $z2 == 0 
(define-const var96 var3237 (codeGenerator/-1894308792 var1409)) ; Statement: $r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var1454 (Array Int var1371) arr-var1371-init) ; Statement: $r66 = newarray (java.lang.Object)[1] 
(declare-const var1454!1 (Array Int var1371))
(assert (not (= var1454!1 null-__Array__Int__var1371__)))
(assert (= (select var1454!1 0) (cast-from-String-to-var1371 "  }"))) ; Statement: $r66[0] = "  }" 
(assert true)
;(assert (genCodeLine/787715242 var96 var1454!1)) ; Statement: virtualinvoke $r65.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r66) 

(declare-const var96!1 var3237)
(declare-const var1454!2 (Array Int var1371))
(define-const var2955 var3237 (codeGenerator/-1894308792 var1409)) ; Statement: $r67 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var2394 (Array Int var1371) arr-var1371-init) ; Statement: $r68 = newarray (java.lang.Object)[1] 
(declare-const var2394!1 (Array Int var1371))
(assert (not (= var2394!1 null-__Array__Int__var1371__)))
(assert (= (select var2394!1 0) (cast-from-String-to-var1371 ""))) ; Statement: $r68[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 var2955 var2394!1)) ; Statement: virtualinvoke $r67.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r68) 

(declare-const var2955!1 var3237)
(declare-const var2394!2 (Array Int var1371))
(define-const var370 var1661 var1661-init) ; Statement: $r69 = new org.javacc.parser.Phase3Data 
(assert true)
(define-const var634 Int (getAmount/1890126783 var2516)) ; Statement: $i3 = virtualinvoke r0.<org.javacc.parser.Lookahead: int getAmount()>() 
(assert true)
;(assert (<init>/-1277854481 var370 var36 var634)) ; Statement: specialinvoke $r69.<org.javacc.parser.Phase3Data: void <init>(org.javacc.parser.Expansion,int)>(r1, $i3) 

(declare-const var370!1 var1661)
(declare-const var36!1 var1742)
(declare-const var634!1 Int)
(define-const var2780 var1574 (phase3list/-1894308792 var1409)) ; Statement: $r70 = r2.<org.javacc.parser.ParseEngine: java.util.List phase3list> 
;(assert (var1574_add/328494887 var2780 (cast-from-var1661-to-var1371 var370!1))) ; Statement: interfaceinvoke $r70.<java.util.List: boolean add(java.lang.Object)>($r69) 

(declare-const var2780!1 var1574)
(declare-const var370!2 var1661)
(define-const var1365 var1621 (phase3table/-1894308792 var1409)) ; Statement: $r71 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table> 
(assert true)
;(assert (put/1981026245 var1365 (cast-from-var1742-to-var1371 var36!1) (cast-from-var1661-to-var1371 var370!2))) ; Statement: virtualinvoke $r71.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r69) 

(declare-const var1365!1 var1621)
(declare-const var36!2 var1742)
(declare-const var370!3 var1661)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLaExpansion/-240558564=([org.javacc.parser.Lookahead], org.javacc.parser.Expansion), isJavaDialect/-1894308792=([org.javacc.parser.ParseEngine], boolean), codeGenerator/-1894308792=([org.javacc.parser.ParseEngine], org.javacc.parser.CodeGenerator), arr-var1371-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1048_staticOpt/-1224446488=([], java.lang.String), var2735_getBooleanType/-2111917935=([], java.lang.String), internal_name/-1632124174=([org.javacc.parser.Expansion], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var1371=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), var2735_getDepthLimit/667251003=([], int), var2735_getErrorReporting/94094612=([], boolean), var1661-init=([], org.javacc.parser.Phase3Data), getAmount/1890126783=([org.javacc.parser.Lookahead], int), <init>/-1277854481=([org.javacc.parser.Phase3Data, org.javacc.parser.Expansion, int], void), phase3list/-1894308792=([org.javacc.parser.ParseEngine], java.util.List), var1574_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1661-to-var1371=([org.javacc.parser.Phase3Data], java.lang.Object), phase3table/-1894308792=([org.javacc.parser.ParseEngine], java.util.Hashtable), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1742-to-var1371=([org.javacc.parser.Expansion], java.lang.Object)}
; {var2231=org.javacc.parser.ParseEngine, var1409=r2, var2919=org.javacc.parser.Lookahead, var2516=r0, var1742=org.javacc.parser.Expansion, var36=r1, var2295=$z0, var3237=org.javacc.parser.CodeGenerator, var11=$r51, var1371=java.lang.Object, var3792=$r49, var1970=$r50, var3576=$r53, var1048=org.javacc.parser.JavaCCGlobals, var2519=$r52, var3350=$r54, var90=$r56, var2735=org.javacc.parser.Options, var320=$r55, var1139=$r57, var3828=$r59, var666=$r58, var1508=$r60, var3201=$r61, var63=$r62, var1922=$r12, var1532=$r11, var2486=$r14, var2819=$r13, var1768=r63, var3772=r73, var1461=r72, var3930=$i0, var2915=$z1, var3591=$r39, var2009=$r37, var735=$r38, var2160=$r41, var2767=$r40, var2507=$r42, var1392=$r43, var3629=$r44, var1633=$r45, var2593=$r46, var483=$r48, var737=$r47, var503=$z2, var96=$r65, var1454=$r66, var2955=$r67, var2394=$r68, var1661=org.javacc.parser.Phase3Data, var370=$r69, var634=$i3, var1574=java.util.List, var2780=$r70, var1621=java.util.Hashtable, var1365=$r71}
; {org.javacc.parser.ParseEngine=var2231, r2=var1409, org.javacc.parser.Lookahead=var2919, r0=var2516, org.javacc.parser.Expansion=var1742, r1=var36, $z0=var2295, org.javacc.parser.CodeGenerator=var3237, $r51=var11, java.lang.Object=var1371, $r49=var3792, $r50=var1970, $r53=var3576, org.javacc.parser.JavaCCGlobals=var1048, $r52=var2519, $r54=var3350, $r56=var90, org.javacc.parser.Options=var2735, $r55=var320, $r57=var1139, $r59=var3828, $r58=var666, $r60=var1508, $r61=var3201, $r62=var63, $r12=var1922, $r11=var1532, $r14=var2486, $r13=var2819, r63=var1768, r73=var3772, r72=var1461, $i0=var3930, $z1=var2915, $r39=var3591, $r37=var2009, $r38=var735, $r41=var2160, $r40=var2767, $r42=var2507, $r43=var1392, $r44=var3629, $r45=var1633, $r46=var2593, $r48=var483, $r47=var737, $z2=var503, $r65=var96, $r66=var1454, $r67=var2955, $r68=var2394, org.javacc.parser.Phase3Data=var1661, $r69=var370, $i3=var634, java.util.List=var1574, $r70=var2780, java.util.Hashtable=var1621, $r71=var1365}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: org.javacc.parser.ParseEngine;	r0 := @parameter0: org.javacc.parser.Lookahead;	r1 = virtualinvoke r0.<org.javacc.parser.Lookahead: org.javacc.parser.Expansion getLaExpansion()>();	$z0 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect>;	if $z0 == 0 goto $r5 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r51 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r49 = newarray (java.lang.Object)[1];	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r53 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r52 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String staticOpt()>();	$r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52);	$r56 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private ");	$r55 = staticinvoke <org.javacc.parser.Options: java.lang.String getBooleanType()>();	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r59 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" jj_2");	$r58 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name>;	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r58);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(int xla)");	$r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.String toString()>();	$r49[0] = $r62;	virtualinvoke $r51.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r49);	goto [?= $r12 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>];	$r12 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r11 = newarray (java.lang.Object)[1];	$r11[0] = " {";	virtualinvoke $r12.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	$r14 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r13 = newarray (java.lang.Object)[1];	$r13[0] = "    jj_la = xla; jj_lastpos = jj_scanpos = token;";	virtualinvoke $r14.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13);	r63 = "";	r73 = "";	r72 = "";	$i0 = staticinvoke <org.javacc.parser.Options: int getDepthLimit()>();	if $i0 <= 0 goto $z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect>;	$z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect>;	if $z1 == 0 goto $r16 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r39 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r37 = newarray (java.lang.Object)[1];	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r41 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    try { return (!jj_3");	$r40 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name>;	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r72);	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("); }");	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>();	$r37[0] = $r46;	virtualinvoke $r39.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r37);	$r48 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r47 = newarray (java.lang.Object)[1];	$r47[0] = "    catch(LookaheadSuccess ls) { return true; }";	virtualinvoke $r48.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r47);	goto [?= $z2 = staticinvoke <org.javacc.parser.Options: boolean getErrorReporting()>()];	$z2 = staticinvoke <org.javacc.parser.Options: boolean getErrorReporting()>();	if $z2 == 0 goto $r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r66 = newarray (java.lang.Object)[1];	$r66[0] = "  }";	virtualinvoke $r65.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r66);	$r67 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r68 = newarray (java.lang.Object)[1];	$r68[0] = "";	virtualinvoke $r67.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r68);	$r69 = new org.javacc.parser.Phase3Data;	$i3 = virtualinvoke r0.<org.javacc.parser.Lookahead: int getAmount()>();	specialinvoke $r69.<org.javacc.parser.Phase3Data: void <init>(org.javacc.parser.Expansion,int)>(r1, $i3);	$r70 = r2.<org.javacc.parser.ParseEngine: java.util.List phase3list>;	interfaceinvoke $r70.<java.util.List: boolean add(java.lang.Object)>($r69);	$r71 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table>;	virtualinvoke $r71.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r69);	return
;block_num 7