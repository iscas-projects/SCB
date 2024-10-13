(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3794 0)
(declare-sort var3226 0)
(declare-sort var1775 0)
(declare-sort var761 0)
(declare-sort var2247 0)
(declare-sort var1398 0)
(declare-sort var1316 0)
(declare-sort var2545 0)
(declare-sort var2412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLaExpansion/-240558564 (var3226) var1775)
(declare-fun isJavaDialect/-1894308792 (var3794) Bool)
(declare-fun codeGenerator/-1894308792 (var3794) var761)
(declare-fun arr-var2247-init () (Array Int var2247))
(declare-fun cast-from-String-to-var2247 (String) var2247)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun internal_name/-1632124174 (var1775) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun genCodeLine/787715242 (var761 (Array Int var2247)) void)
(declare-fun var1398_getDepthLimit/667251003 () Int)
(declare-fun var1398_getErrorReporting/94094612 () Bool)
(declare-fun var1316-init () var1316)
(declare-fun getAmount/1890126783 (var3226) Int)
(declare-fun <init>/-1277854481 (var1316 var1775 Int) void)
(declare-fun phase3list/-1894308792 (var3794) var2545)
(declare-fun var2545_add/328494887 (var2545 var2247) Bool)
(declare-fun cast-from-var1316-to-var2247 (var1316) var2247)
(declare-fun phase3table/-1894308792 (var3794) var2412)
(declare-fun put/1981026245 (var2412 var2247 var2247) var2247)
(declare-fun cast-from-var1775-to-var2247 (var1775) var2247)
(declare-const null-var3794 var3794)
(declare-const null-var3226 var3226)
(declare-const null-__Array__Int__var2247__ (Array Int var2247))
(declare-const var2962 var3794) ; Statement: r2 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var2962 null-var3794)))
(declare-const var1717 var3226) ; Statement: r0 := @parameter0: org.javacc.parser.Lookahead 
(assert (not (= var1717 null-var3226)))
(assert true)
(define-const var3969 var1775 (getLaExpansion/-240558564 var1717)) ; Statement: r1 = virtualinvoke r0.<org.javacc.parser.Lookahead: org.javacc.parser.Expansion getLaExpansion()>() 
(define-const var700 Bool (isJavaDialect/-1894308792 var2962)) ; Statement: $z0 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect> 
 ; Statement: if $z0 == 0 goto $r5 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert (= (ite var700 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3012 var761 (codeGenerator/-1894308792 var2962)) ; Statement: $r5 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var3704 (Array Int var2247) arr-var2247-init) ; Statement: $r3 = newarray (java.lang.Object)[2] 
(declare-const var3704!1 (Array Int var2247))
(assert (not (= var3704!1 null-__Array__Int__var2247__)))
(assert (= (select var3704!1 0) (cast-from-String-to-var2247 " inline bool "))) ; Statement: $r3[0] = " inline bool " 
(define-const var3420 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3420)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3420!1 String)
(assert (= var3420!1 ""))
(assert true)
(define-const var1807 String (append/672562846 var3420!1 "jj_2")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jj_2") 
(declare-const var3420!2 String)
(assert (= var3420!2 (str.++ var3420!1 "jj_2")))
(define-const var2334 String (internal_name/-1632124174 var3969)) ; Statement: $r6 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name> 
(assert true)
(define-const var2430 String (append/672562846 var1807 var2334)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1807!1 String)
(assert (= var1807!1 (str.++ var1807 var2334)))
(assert true)
(define-const var3664 String (append/672562846 var2430 "(int xla)")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(int xla)") 
(declare-const var2430!1 String)
(assert (= var2430!1 (str.++ var2430 "(int xla)")))
(assert true)
(define-const var1417 String (toString/-2075883882 var3664)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3704!2 (Array Int var2247))
(assert (not (= var3704!2 null-__Array__Int__var2247__)))
(assert (= (select var3704!2 1) (cast-from-String-to-var2247 var1417))) ; Statement: $r3[1] = $r10 
(assert true)
;(assert (genCodeLine/787715242 var3012 var3704!2)) ; Statement: virtualinvoke $r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r3) 

(declare-const var3012!1 var761)
(declare-const var3704!3 (Array Int var2247))
(assert true) ; Non Conditional
(define-const var3549 var761 (codeGenerator/-1894308792 var2962)) ; Statement: $r12 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var716 (Array Int var2247) arr-var2247-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var716!1 (Array Int var2247))
(assert (not (= var716!1 null-__Array__Int__var2247__)))
(assert (= (select var716!1 0) (cast-from-String-to-var2247 " {"))) ; Statement: $r11[0] = " {" 
(assert true)
;(assert (genCodeLine/787715242 var3549 var716!1)) ; Statement: virtualinvoke $r12.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var3549!1 var761)
(declare-const var716!2 (Array Int var2247))
(define-const var1821 var761 (codeGenerator/-1894308792 var2962)) ; Statement: $r14 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var2238 (Array Int var2247) arr-var2247-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(declare-const var2238!1 (Array Int var2247))
(assert (not (= var2238!1 null-__Array__Int__var2247__)))
(assert (= (select var2238!1 0) (cast-from-String-to-var2247 "    jj_la = xla; jj_lastpos = jj_scanpos = token;"))) ; Statement: $r13[0] = "    jj_la = xla; jj_lastpos = jj_scanpos = token;" 
(assert true)
;(assert (genCodeLine/787715242 var1821 var2238!1)) ; Statement: virtualinvoke $r14.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var1821!1 var761)
(declare-const var2238!2 (Array Int var2247))
(define-const var2855 String "") ; Statement: r63 = "" 
(define-const var828 String "") ; Statement: r73 = "" 
(define-const var2965 String "") ; Statement: r72 = "" 
(define-const var634 Int var1398_getDepthLimit/667251003) ; Statement: $i0 = staticinvoke <org.javacc.parser.Options: int getDepthLimit()>() 
 ; Statement: if $i0 <= 0 goto $z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect> 
(assert (<= var634 0)) ; Cond: $i0 <= 0 
(define-const var1288 Bool (isJavaDialect/-1894308792 var2962)) ; Statement: $z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect> 
 ; Statement: if $z1 == 0 goto $r16 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert (= (ite var1288 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2431 var761 (codeGenerator/-1894308792 var2962)) ; Statement: $r16 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var2057 (Array Int var2247) arr-var2247-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(declare-const var2057!1 (Array Int var2247))
(assert (not (= var2057!1 null-__Array__Int__var2247__)))
(assert (= (select var2057!1 0) (cast-from-String-to-var2247 "    jj_done = false;"))) ; Statement: $r15[0] = "    jj_done = false;" 
(assert true)
;(assert (genCodeLine/787715242 var2431 var2057!1)) ; Statement: virtualinvoke $r16.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r15) 

(declare-const var2431!1 var761)
(declare-const var2057!2 (Array Int var2247))
(define-const var2700 var761 (codeGenerator/-1894308792 var2962)) ; Statement: $r19 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var390 (Array Int var2247) arr-var2247-init) ; Statement: $r17 = newarray (java.lang.Object)[1] 
(define-const var1475 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1475)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1475!1 String)
(assert (= var1475!1 ""))
(assert true)
(define-const var187 String (append/672562846 var1475!1 "    return (!jj_3")) ; Statement: $r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    return (!jj_3") 
(declare-const var1475!2 String)
(assert (= var1475!2 (str.++ var1475!1 "    return (!jj_3")))
(define-const var1270 String (internal_name/-1632124174 var3969)) ; Statement: $r20 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name> 
(assert true)
(define-const var1563 String (append/672562846 var187 var1270)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var187!1 String)
(assert (= var187!1 (str.++ var187 var1270)))
(assert true)
(define-const var2001 String (append/672562846 var1563 "() || jj_done)")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() || jj_done)") 
(declare-const var1563!1 String)
(assert (= var1563!1 (str.++ var1563 "() || jj_done)")))
(assert true)
(define-const var3166 String (append/672562846 var2001 var828)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r73) 
(declare-const var2001!1 String)
(assert (= var2001!1 (str.++ var2001 var828)))
(assert true)
(define-const var1062 String (append/672562846 var3166 ";")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";") 
(declare-const var3166!1 String)
(assert (= var3166!1 (str.++ var3166 ";")))
(assert true)
(define-const var3355 String (toString/-2075883882 var1062)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var390!1 (Array Int var2247))
(assert (not (= var390!1 null-__Array__Int__var2247__)))
(assert (= (select var390!1 0) (cast-from-String-to-var2247 var3355))) ; Statement: $r17[0] = $r26 
(assert true)
;(assert (genCodeLine/787715242 var2700 var390!1)) ; Statement: virtualinvoke $r19.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r17) 

(declare-const var2700!1 var761)
(declare-const var390!2 (Array Int var2247))
(assert true) ; Non Conditional
(define-const var3320 Bool var1398_getErrorReporting/94094612) ; Statement: $z2 = staticinvoke <org.javacc.parser.Options: boolean getErrorReporting()>() 
 ; Statement: if $z2 == 0 goto $r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert (= (ite var3320 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2185 var761 (codeGenerator/-1894308792 var2962)) ; Statement: $r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var2296 (Array Int var2247) arr-var2247-init) ; Statement: $r66 = newarray (java.lang.Object)[1] 
(declare-const var2296!1 (Array Int var2247))
(assert (not (= var2296!1 null-__Array__Int__var2247__)))
(assert (= (select var2296!1 0) (cast-from-String-to-var2247 "  }"))) ; Statement: $r66[0] = "  }" 
(assert true)
;(assert (genCodeLine/787715242 var2185 var2296!1)) ; Statement: virtualinvoke $r65.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r66) 

(declare-const var2185!1 var761)
(declare-const var2296!2 (Array Int var2247))
(define-const var2589 var761 (codeGenerator/-1894308792 var2962)) ; Statement: $r67 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var2044 (Array Int var2247) arr-var2247-init) ; Statement: $r68 = newarray (java.lang.Object)[1] 
(declare-const var2044!1 (Array Int var2247))
(assert (not (= var2044!1 null-__Array__Int__var2247__)))
(assert (= (select var2044!1 0) (cast-from-String-to-var2247 ""))) ; Statement: $r68[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 var2589 var2044!1)) ; Statement: virtualinvoke $r67.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r68) 

(declare-const var2589!1 var761)
(declare-const var2044!2 (Array Int var2247))
(define-const var97 var1316 var1316-init) ; Statement: $r69 = new org.javacc.parser.Phase3Data 
(assert true)
(define-const var91 Int (getAmount/1890126783 var1717)) ; Statement: $i3 = virtualinvoke r0.<org.javacc.parser.Lookahead: int getAmount()>() 
(assert true)
;(assert (<init>/-1277854481 var97 var3969 var91)) ; Statement: specialinvoke $r69.<org.javacc.parser.Phase3Data: void <init>(org.javacc.parser.Expansion,int)>(r1, $i3) 

(declare-const var97!1 var1316)
(declare-const var3969!1 var1775)
(declare-const var91!1 Int)
(define-const var25 var2545 (phase3list/-1894308792 var2962)) ; Statement: $r70 = r2.<org.javacc.parser.ParseEngine: java.util.List phase3list> 
;(assert (var2545_add/328494887 var25 (cast-from-var1316-to-var2247 var97!1))) ; Statement: interfaceinvoke $r70.<java.util.List: boolean add(java.lang.Object)>($r69) 

(declare-const var25!1 var2545)
(declare-const var97!2 var1316)
(define-const var950 var2412 (phase3table/-1894308792 var2962)) ; Statement: $r71 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table> 
(assert true)
;(assert (put/1981026245 var950 (cast-from-var1775-to-var2247 var3969!1) (cast-from-var1316-to-var2247 var97!2))) ; Statement: virtualinvoke $r71.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r69) 

(declare-const var950!1 var2412)
(declare-const var3969!2 var1775)
(declare-const var97!3 var1316)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLaExpansion/-240558564=([org.javacc.parser.Lookahead], org.javacc.parser.Expansion), isJavaDialect/-1894308792=([org.javacc.parser.ParseEngine], boolean), codeGenerator/-1894308792=([org.javacc.parser.ParseEngine], org.javacc.parser.CodeGenerator), arr-var2247-init=([], java.lang.Object[]), cast-from-String-to-var2247=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), internal_name/-1632124174=([org.javacc.parser.Expansion], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), var1398_getDepthLimit/667251003=([], int), var1398_getErrorReporting/94094612=([], boolean), var1316-init=([], org.javacc.parser.Phase3Data), getAmount/1890126783=([org.javacc.parser.Lookahead], int), <init>/-1277854481=([org.javacc.parser.Phase3Data, org.javacc.parser.Expansion, int], void), phase3list/-1894308792=([org.javacc.parser.ParseEngine], java.util.List), var2545_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1316-to-var2247=([org.javacc.parser.Phase3Data], java.lang.Object), phase3table/-1894308792=([org.javacc.parser.ParseEngine], java.util.Hashtable), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1775-to-var2247=([org.javacc.parser.Expansion], java.lang.Object)}
; {var3794=org.javacc.parser.ParseEngine, var2962=r2, var3226=org.javacc.parser.Lookahead, var1717=r0, var1775=org.javacc.parser.Expansion, var3969=r1, var700=$z0, var761=org.javacc.parser.CodeGenerator, var3012=$r5, var2247=java.lang.Object, var3704=$r3, var3420=$r4, var1807=$r7, var2334=$r6, var2430=$r8, var3664=$r9, var1417=$r10, var3549=$r12, var716=$r11, var1821=$r14, var2238=$r13, var2855=r63, var828=r73, var2965=r72, var1398=org.javacc.parser.Options, var634=$i0, var1288=$z1, var2431=$r16, var2057=$r15, var2700=$r19, var390=$r17, var1475=$r18, var187=$r21, var1270=$r20, var1563=$r22, var2001=$r23, var3166=$r24, var1062=$r25, var3355=$r26, var3320=$z2, var2185=$r65, var2296=$r66, var2589=$r67, var2044=$r68, var1316=org.javacc.parser.Phase3Data, var97=$r69, var91=$i3, var2545=java.util.List, var25=$r70, var2412=java.util.Hashtable, var950=$r71}
; {org.javacc.parser.ParseEngine=var3794, r2=var2962, org.javacc.parser.Lookahead=var3226, r0=var1717, org.javacc.parser.Expansion=var1775, r1=var3969, $z0=var700, org.javacc.parser.CodeGenerator=var761, $r5=var3012, java.lang.Object=var2247, $r3=var3704, $r4=var3420, $r7=var1807, $r6=var2334, $r8=var2430, $r9=var3664, $r10=var1417, $r12=var3549, $r11=var716, $r14=var1821, $r13=var2238, r63=var2855, r73=var828, r72=var2965, org.javacc.parser.Options=var1398, $i0=var634, $z1=var1288, $r16=var2431, $r15=var2057, $r19=var2700, $r17=var390, $r18=var1475, $r21=var187, $r20=var1270, $r22=var1563, $r23=var2001, $r24=var3166, $r25=var1062, $r26=var3355, $z2=var3320, $r65=var2185, $r66=var2296, $r67=var2589, $r68=var2044, org.javacc.parser.Phase3Data=var1316, $r69=var97, $i3=var91, java.util.List=var2545, $r70=var25, java.util.Hashtable=var2412, $r71=var950}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: org.javacc.parser.ParseEngine;	r0 := @parameter0: org.javacc.parser.Lookahead;	r1 = virtualinvoke r0.<org.javacc.parser.Lookahead: org.javacc.parser.Expansion getLaExpansion()>();	$z0 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect>;	if $z0 == 0 goto $r5 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r5 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r3 = newarray (java.lang.Object)[2];	$r3[0] = " inline bool ";	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jj_2");	$r6 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(int xla)");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r3[1] = $r10;	virtualinvoke $r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r3);	$r12 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r11 = newarray (java.lang.Object)[1];	$r11[0] = " {";	virtualinvoke $r12.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	$r14 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r13 = newarray (java.lang.Object)[1];	$r13[0] = "    jj_la = xla; jj_lastpos = jj_scanpos = token;";	virtualinvoke $r14.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13);	r63 = "";	r73 = "";	r72 = "";	$i0 = staticinvoke <org.javacc.parser.Options: int getDepthLimit()>();	if $i0 <= 0 goto $z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect>;	$z1 = r2.<org.javacc.parser.ParseEngine: boolean isJavaDialect>;	if $z1 == 0 goto $r16 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r16 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r15 = newarray (java.lang.Object)[1];	$r15[0] = "    jj_done = false;";	virtualinvoke $r16.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r15);	$r19 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r17 = newarray (java.lang.Object)[1];	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    return (!jj_3");	$r20 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name>;	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() || jj_done)");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r73);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r17[0] = $r26;	virtualinvoke $r19.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r17);	$z2 = staticinvoke <org.javacc.parser.Options: boolean getErrorReporting()>();	if $z2 == 0 goto $r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r65 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r66 = newarray (java.lang.Object)[1];	$r66[0] = "  }";	virtualinvoke $r65.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r66);	$r67 = r2.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r68 = newarray (java.lang.Object)[1];	$r68[0] = "";	virtualinvoke $r67.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r68);	$r69 = new org.javacc.parser.Phase3Data;	$i3 = virtualinvoke r0.<org.javacc.parser.Lookahead: int getAmount()>();	specialinvoke $r69.<org.javacc.parser.Phase3Data: void <init>(org.javacc.parser.Expansion,int)>(r1, $i3);	$r70 = r2.<org.javacc.parser.ParseEngine: java.util.List phase3list>;	interfaceinvoke $r70.<java.util.List: boolean add(java.lang.Object)>($r69);	$r71 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table>;	virtualinvoke $r71.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r69);	return
;block_num 7