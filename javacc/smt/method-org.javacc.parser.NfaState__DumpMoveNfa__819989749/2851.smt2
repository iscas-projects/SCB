(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var912 0)
(declare-sort var3750 0)
(declare-sort var484 0)
(declare-sort var3359 0)
(declare-sort var965 0)
(declare-sort var130 0)
(declare-sort var2267 0)
(declare-sort var535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3750_ReArrange/558573273 () void)
(declare-fun var484_size/-959786421 (var484) Int)
(declare-fun keys/-63145882 (var3359) var965)
(declare-fun var965_hasMoreElements/-1180312480 (var965) Bool)
(declare-fun size/-623529951 (var3359) Int)
(declare-fun isJavaLanguage/-1752064482 (var912) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun generateMethodDefHeader/-453602513 (var912 String String String) void)
(declare-fun arr-var535-init () (Array Int var535))
(declare-fun cast-from-String-to-var535 (String) var535)
(declare-fun genCodeLine/787715242 (var912 (Array Int var535)) void)
(declare-const null-var912 var912)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3750-kinds (Array Int (Array Int Int)))
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var3750-allStates var484)
(declare-const var3750-stateNameForComposite var3359)
(declare-const var3750-stateSetsToFix var3359)
(declare-const var2267-lg var130)
(declare-const var130-lexStateIndex Int)
(declare-const var130-tokMgrClassName String)
(declare-const var130-lexStateSuffix String)
(declare-const null-__Array__Int__var535__ (Array Int var535))
(declare-const var3750-generatedStates Int)
(declare-const var446 var912) ; Statement: r5 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var446 null-var912)))
(define-const var2410 (Array Int Int) null-__Array__Int__Int__) ; Statement: r159 = null 
(define-const var98 (Array Int (Array Int Int)) var3750-kinds) ; Statement: $r0 = <org.javacc.parser.NfaState: int[][] kinds> 
 ; Statement: if $r0 != null goto staticinvoke <org.javacc.parser.NfaState: void ReArrange()>() 
(assert (not (= var98 null-__Array__Int____Array__Int__Int____))) ; Cond: $r0 != null 
;(assert var3750_ReArrange/558573273) ; Statement: staticinvoke <org.javacc.parser.NfaState: void ReArrange()>() 
(define-const var1536 Int 0) ; Statement: i28 = 0 
(assert true) ; Non Conditional
(define-const var812 var484 var3750-allStates) ; Statement: $r160 = <org.javacc.parser.NfaState: java.util.List allStates> 
(define-const var2273 Int (var484_size/-959786421 var812)) ; Statement: $i29 = interfaceinvoke $r160.<java.util.List: int size()>() 
 ; Statement: if i28 >= $i29 goto $r1 = <org.javacc.parser.NfaState: java.util.Hashtable stateNameForComposite> 
(assert (>= var1536 var2273)) ; Cond: i28 >= $i29 
(define-const var3819 var3359 var3750-stateNameForComposite) ; Statement: $r1 = <org.javacc.parser.NfaState: java.util.Hashtable stateNameForComposite> 
(assert true)
(define-const var2819 var965 (keys/-63145882 var3819)) ; Statement: r162 = virtualinvoke $r1.<java.util.Hashtable: java.util.Enumeration keys()>() 
(assert true) ; Non Conditional
(define-const var2005 Bool (var965_hasMoreElements/-1180312480 var2819)) ; Statement: $z0 = interfaceinvoke r162.<java.util.Enumeration: boolean hasMoreElements()>() 
 ; Statement: if $z0 == 0 goto $r2 = <org.javacc.parser.NfaState: java.util.Hashtable stateSetsToFix> 
(assert (= (ite var2005 1 0) 0)) ; Cond: $z0 == 0 
(define-const var333 var3359 var3750-stateSetsToFix) ; Statement: $r2 = <org.javacc.parser.NfaState: java.util.Hashtable stateSetsToFix> 
(assert true)
(define-const var1358 Int (size/-623529951 var333)) ; Statement: $i0 = virtualinvoke $r2.<java.util.Hashtable: int size()>() 
 ; Statement: if $i0 == 0 goto $r4 = <org.javacc.parser.NfaState: int[][] kinds> 
(assert (= var1358 0)) ; Cond: $i0 == 0 
(define-const var1946 (Array Int (Array Int Int)) var3750-kinds) ; Statement: $r4 = <org.javacc.parser.NfaState: int[][] kinds> 
(define-const var2155 var130 var2267-lg) ; Statement: $r3 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg> 
(define-const var1550 Int var130-lexStateIndex) ; Statement: $i1 = <org.javacc.parser.LexGen: int lexStateIndex> 
(declare-const var1946!1 (Array Int (Array Int Int)))
(assert (not (= var1946!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1946!1 var1550) var2410)) ; Statement: $r4[$i1] = r159 
(assert true)
(define-const var1949 Bool (isJavaLanguage/-1752064482 var446)) ; Statement: $z1 = virtualinvoke r5.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>() 
 ; Statement: if $z1 == 0 goto $r6 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg> 
(assert (= (ite var1949 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3119 var130 var2267-lg) ; Statement: $r6 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg> 
(define-const var3678 String var130-tokMgrClassName) ; Statement: $r8 = <org.javacc.parser.LexGen: java.lang.String tokMgrClassName> 
(define-const var3054 String String-init) ; Statement: $r226 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3054)) ; Statement: specialinvoke $r226.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3054!1 String)
(assert (= var3054!1 ""))
(assert true)
(define-const var283 String (append/672562846 var3054!1 "jjMoveNfa")) ; Statement: $r11 = virtualinvoke $r226.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jjMoveNfa") 
(declare-const var3054!2 String)
(assert (= var3054!2 (str.++ var3054!1 "jjMoveNfa")))
(define-const var3970 var130 var2267-lg) ; Statement: $r9 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg> 
(define-const var2009 String var130-lexStateSuffix) ; Statement: $r10 = <org.javacc.parser.LexGen: java.lang.String lexStateSuffix> 
(assert true)
(define-const var2256 String (append/672562846 var283 var2009)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var283!1 String)
(assert (= var283!1 (str.++ var283 var2009)))
(assert true)
(define-const var3941 String (append/672562846 var2256 "(int startState, int curPos)")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(int startState, int curPos)") 
(declare-const var2256!1 String)
(assert (= var2256!1 (str.++ var2256 "(int startState, int curPos)")))
(assert true)
(define-const var1360 String (toString/-2075883882 var3941)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (generateMethodDefHeader/-453602513 var446 "int" var3678 var1360)) ; Statement: virtualinvoke r5.<org.javacc.parser.CodeGenerator: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String)>("int", $r8, $r14) 

(declare-const var446!1 var912)
(declare-const var3477 String)
(declare-const var3678!1 String)
(declare-const var1360!1 String)
(assert true) ; Non Conditional
(define-const var628 (Array Int var535) arr-var535-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(declare-const var628!1 (Array Int var535))
(assert (not (= var628!1 null-__Array__Int__var535__)))
(assert (= (select var628!1 0) (cast-from-String-to-var535 "{"))) ; Statement: $r15[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var446!1 var628!1)) ; Statement: virtualinvoke r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r15) 

(declare-const var446!2 var912)
(declare-const var628!2 (Array Int var535))
(define-const var2018 Int var3750-generatedStates) ; Statement: $i2 = <org.javacc.parser.NfaState: int generatedStates> 
 ; Statement: if $i2 != 0 goto $r16 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg> 
(assert (not (not (= var2018 0)))) ; Negate: Cond: $i2 != 0  
(define-const var3108 (Array Int var535) arr-var535-init) ; Statement: $r122 = newarray (java.lang.Object)[1] 
(declare-const var3108!1 (Array Int var535))
(assert (not (= var3108!1 null-__Array__Int__var535__)))
(assert (= (select var3108!1 0) (cast-from-String-to-var535 "   return curPos;"))) ; Statement: $r122[0] = "   return curPos;" 
(assert true)
;(assert (genCodeLine/787715242 var446!2 var3108!1)) ; Statement: virtualinvoke r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r122) 

(declare-const var446!3 var912)
(declare-const var3108!2 (Array Int var535))
(define-const var3533 (Array Int var535) arr-var535-init) ; Statement: $r123 = newarray (java.lang.Object)[1] 
(declare-const var3533!1 (Array Int var535))
(assert (not (= var3533!1 null-__Array__Int__var535__)))
(assert (= (select var3533!1 0) (cast-from-String-to-var535 "}"))) ; Statement: $r123[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var446!3 var3533!1)) ; Statement: virtualinvoke r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r123) 

(declare-const var446!4 var912)
(declare-const var3533!2 (Array Int var535))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3750_ReArrange/558573273=([], void), var484_size/-959786421=([java.util.List], int), keys/-63145882=([java.util.Hashtable], java.util.Enumeration), var965_hasMoreElements/-1180312480=([java.util.Enumeration], boolean), size/-623529951=([java.util.Hashtable], int), isJavaLanguage/-1752064482=([org.javacc.parser.CodeGenerator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), generateMethodDefHeader/-453602513=([org.javacc.parser.CodeGenerator, java.lang.String, java.lang.String, java.lang.String], void), arr-var535-init=([], java.lang.Object[]), cast-from-String-to-var535=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var912=org.javacc.parser.CodeGenerator, var446=r5, var2410=r159, var3750=org.javacc.parser.NfaState, var98=$r0, var1536=i28, var484=java.util.List, var812=$r160, var2273=$i29, var3359=java.util.Hashtable, var3819=$r1, var965=java.util.Enumeration, var2819=r162, var2005=$z0, var333=$r2, var1358=$i0, var1946=$r4, var130=org.javacc.parser.LexGen, var2267=org.javacc.parser.Main, var2155=$r3, var1550=$i1, var1949=$z1, var3119=$r6, var3678=$r8, var3054=$r226, var283=$r11, var3970=$r9, var2009=$r10, var2256=$r12, var3941=$r13, var1360=$r14, var3477="int", var535=java.lang.Object, var628=$r15, var2018=$i2, var3108=$r122, var3533=$r123}
; {org.javacc.parser.CodeGenerator=var912, r5=var446, r159=var2410, org.javacc.parser.NfaState=var3750, $r0=var98, i28=var1536, java.util.List=var484, $r160=var812, $i29=var2273, java.util.Hashtable=var3359, $r1=var3819, java.util.Enumeration=var965, r162=var2819, $z0=var2005, $r2=var333, $i0=var1358, $r4=var1946, org.javacc.parser.LexGen=var130, org.javacc.parser.Main=var2267, $r3=var2155, $i1=var1550, $z1=var1949, $r6=var3119, $r8=var3678, $r226=var3054, $r11=var283, $r9=var3970, $r10=var2009, $r12=var2256, $r13=var3941, $r14=var1360, "int"=var3477, java.lang.Object=var535, $r15=var628, $i2=var2018, $r122=var3108, $r123=var3533}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @parameter0: org.javacc.parser.CodeGenerator;	r159 = null;	$r0 = <org.javacc.parser.NfaState: int[][] kinds>;	if $r0 != null goto staticinvoke <org.javacc.parser.NfaState: void ReArrange()>();	staticinvoke <org.javacc.parser.NfaState: void ReArrange()>();	i28 = 0;	$r160 = <org.javacc.parser.NfaState: java.util.List allStates>;	$i29 = interfaceinvoke $r160.<java.util.List: int size()>();	if i28 >= $i29 goto $r1 = <org.javacc.parser.NfaState: java.util.Hashtable stateNameForComposite>;	$r1 = <org.javacc.parser.NfaState: java.util.Hashtable stateNameForComposite>;	r162 = virtualinvoke $r1.<java.util.Hashtable: java.util.Enumeration keys()>();	$z0 = interfaceinvoke r162.<java.util.Enumeration: boolean hasMoreElements()>();	if $z0 == 0 goto $r2 = <org.javacc.parser.NfaState: java.util.Hashtable stateSetsToFix>;	$r2 = <org.javacc.parser.NfaState: java.util.Hashtable stateSetsToFix>;	$i0 = virtualinvoke $r2.<java.util.Hashtable: int size()>();	if $i0 == 0 goto $r4 = <org.javacc.parser.NfaState: int[][] kinds>;	$r4 = <org.javacc.parser.NfaState: int[][] kinds>;	$r3 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg>;	$i1 = <org.javacc.parser.LexGen: int lexStateIndex>;	$r4[$i1] = r159;	$z1 = virtualinvoke r5.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>();	if $z1 == 0 goto $r6 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg>;	$r6 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg>;	$r8 = <org.javacc.parser.LexGen: java.lang.String tokMgrClassName>;	$r226 = new java.lang.StringBuilder;	specialinvoke $r226.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r226.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jjMoveNfa");	$r9 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg>;	$r10 = <org.javacc.parser.LexGen: java.lang.String lexStateSuffix>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(int startState, int curPos)");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r5.<org.javacc.parser.CodeGenerator: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String)>("int", $r8, $r14);	$r15 = newarray (java.lang.Object)[1];	$r15[0] = "{";	virtualinvoke r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r15);	$i2 = <org.javacc.parser.NfaState: int generatedStates>;	if $i2 != 0 goto $r16 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg>;	$r122 = newarray (java.lang.Object)[1];	$r122[0] = "   return curPos;";	virtualinvoke r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r122);	$r123 = newarray (java.lang.Object)[1];	$r123[0] = "}";	virtualinvoke r5.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r123);	return
;block_num 10