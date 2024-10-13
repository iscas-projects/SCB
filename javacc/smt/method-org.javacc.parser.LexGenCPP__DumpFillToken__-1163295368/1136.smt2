(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3079 0)
(declare-sort var3575 0)
(declare-sort var1604 0)
(declare-sort var3983 0)
(declare-sort var2403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3575_getVersion/-480450141 (String) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun generateMethodDefHeader/-453602513 (var1604 String String String) void)
(declare-fun cast-from-var3079-to-var1604 (var3079) var1604)
(declare-fun arr-var3983-init () (Array Int var3983))
(declare-fun cast-from-String-to-var3983 (String) var3983)
(declare-fun genCodeLine/787715242 (var1604 (Array Int var3983)) void)
(declare-fun var2403_getTokenFactory/552112054 () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClassQualifier/-1168673550 (var1604 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3079 var3079)
(declare-const var3079-tokMgrClassName String)
(declare-const null-__Array__Int__var3983__ (Array Int var3983))
(declare-const var3079-keepLineCol Bool)
(declare-const var3079-hasEmptyMatch Bool)
(declare-const var922 var3079) ; Statement: r0 := @this: org.javacc.parser.LexGenCPP 
(assert (not (= var922 null-var3079)))
(define-const var2836 Float64 (var3575_getVersion/-480450141 "Token.java")) ; Statement: d0 = staticinvoke <org.javacc.parser.JavaFiles: double getVersion(java.lang.String)>("Token.java") 
(define-const var3963 Int (ite (fp.gt var2836 ((_ to_fp 11 53) #x40105c28f5c28f5c)) 1 (ite (fp.lt var2836 ((_ to_fp 11 53) #x40105c28f5c28f5c)) (- 1) 0))) ; Statement: $b0 = d0 cmpl 4.09 
(define-const var3598 Int (cast-from-Int-to-Int var3963)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 <= 0 goto $z6 = 0 
(assert (not (<= var3598 0))) ; Negate: Cond: $i2 <= 0  
(define-const var2262 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= z0 = $z6] 
(assert true) ; Non Conditional
(define-const var3825 Bool var2262) ; Statement: z0 = $z6 
(define-const var2892 String var3079-tokMgrClassName) ; Statement: $r1 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName> 
(assert true)
;(assert (generateMethodDefHeader/-453602513 (cast-from-var3079-to-var1604 var922) "Token *" var2892 "jjFillToken()")) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String)>("Token *", $r1, "jjFillToken()") 

(declare-const var922!1 var3079)
(declare-const var3820 String)
(declare-const var2892!1 String)
(declare-const var3033 String)
(define-const var2848 (Array Int var3983) arr-var3983-init) ; Statement: $r2 = newarray (java.lang.Object)[1] 
(declare-const var2848!1 (Array Int var3983))
(assert (not (= var2848!1 null-__Array__Int__var3983__)))
(assert (= (select var2848!1 0) (cast-from-String-to-var3983 "{"))) ; Statement: $r2[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3079-to-var1604 var922!1) var2848!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r2) 

(declare-const var922!2 var3079)
(declare-const var2848!2 (Array Int var3983))
(define-const var1397 (Array Int var3983) arr-var3983-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var1397!1 (Array Int var3983))
(assert (not (= var1397!1 null-__Array__Int__var3983__)))
(assert (= (select var1397!1 0) (cast-from-String-to-var3983 "   Token *t;"))) ; Statement: $r3[0] = "   Token *t;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3079-to-var1604 var922!2) var1397!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r3) 

(declare-const var922!3 var3079)
(declare-const var1397!2 (Array Int var3983))
(define-const var489 (Array Int var3983) arr-var3983-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(declare-const var489!1 (Array Int var3983))
(assert (not (= var489!1 null-__Array__Int__var3983__)))
(assert (= (select var489!1 0) (cast-from-String-to-var3983 "   JJString curTokenImage;"))) ; Statement: $r4[0] = "   JJString curTokenImage;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3079-to-var1604 var922!3) var489!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r4) 

(declare-const var922!4 var3079)
(declare-const var489!2 (Array Int var3983))
(define-const var3954 Bool var3079-keepLineCol) ; Statement: $z1 = <org.javacc.parser.LexGenCPP: boolean keepLineCol> 
 ; Statement: if $z1 == 0 goto $z2 = <org.javacc.parser.LexGenCPP: boolean hasEmptyMatch> 
(assert (= (ite var3954 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3814 Bool var3079-hasEmptyMatch) ; Statement: $z2 = <org.javacc.parser.LexGenCPP: boolean hasEmptyMatch> 
 ; Statement: if $z2 == 0 goto $r5 = newarray (java.lang.Object)[1] 
(assert (= (ite var3814 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2884 (Array Int var3983) arr-var3983-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(declare-const var2884!1 (Array Int var3983))
(assert (not (= var2884!1 null-__Array__Int__var3983__)))
(assert (= (select var2884!1 0) (cast-from-String-to-var3983 "   JJString im = jjstrLiteralImages[jjmatchedKind];"))) ; Statement: $r5[0] = "   JJString im = jjstrLiteralImages[jjmatchedKind];" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3079-to-var1604 var922!4) var2884!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r5) 

(declare-const var922!5 var3079)
(declare-const var2884!2 (Array Int var3983))
(define-const var2456 (Array Int var3983) arr-var3983-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var2456!1 (Array Int var3983))
(assert (not (= var2456!1 null-__Array__Int__var3983__)))
(assert (= (select var2456!1 0) (cast-from-String-to-var3983 "   curTokenImage = (im.length() == 0) ? input_stream->GetImage() : im;"))) ; Statement: $r6[0] = "   curTokenImage = (im.length() == 0) ? input_stream->GetImage() : im;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3079-to-var1604 var922!5) var2456!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var922!6 var3079)
(declare-const var2456!2 (Array Int var3983))
(define-const var3595 Bool var3079-keepLineCol) ; Statement: $z3 = <org.javacc.parser.LexGenCPP: boolean keepLineCol> 
 ; Statement: if $z3 == 0 goto $r70 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>() 
(assert (= (ite var3595 1 0) 0)) ; Cond: $z3 == 0 
(define-const var145 String var2403_getTokenFactory/552112054) ; Statement: $r70 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>() 
(assert true)
(define-const var39 Int (length/-134980193 var145)) ; Statement: $i1 = virtualinvoke $r70.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 0 goto (branch) 
(assert (not (<= var39 0))) ; Negate: Cond: $i1 <= 0  
(define-const var2355 (Array Int var3983) arr-var3983-init) ; Statement: $r33 = newarray (java.lang.Object)[1] 
(define-const var3727 String String-init) ; Statement: $r73 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3727)) ; Statement: specialinvoke $r73.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3727!1 String)
(assert (= var3727!1 ""))
(assert true)
(define-const var2806 String (append/672562846 var3727!1 "   t = ")) ; Statement: $r37 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("   t = ") 
(declare-const var3727!2 String)
(assert (= var3727!2 (str.++ var3727!1 "   t = ")))
(define-const var53 String var2403_getTokenFactory/552112054) ; Statement: $r35 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>() 
(assert true)
(define-const var1103 String (getClassQualifier/-1168673550 (cast-from-var3079-to-var1604 var922!6) var53)) ; Statement: $r36 = virtualinvoke r0.<org.javacc.parser.LexGenCPP: java.lang.String getClassQualifier(java.lang.String)>($r35) 
(assert true)
(define-const var2448 String (append/672562846 var2806 var1103)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var2806!1 String)
(assert (= var2806!1 (str.++ var2806 var1103)))
(assert true)
(define-const var3259 String (append/672562846 var2448 "newToken(jjmatchedKind, curTokenImage);")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("newToken(jjmatchedKind, curTokenImage);") 
(declare-const var2448!1 String)
(assert (= var2448!1 (str.++ var2448 "newToken(jjmatchedKind, curTokenImage);")))
(assert true)
(define-const var788 String (toString/-2075883882 var3259)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2355!1 (Array Int var3983))
(assert (not (= var2355!1 null-__Array__Int__var3983__)))
(assert (= (select var2355!1 0) (cast-from-String-to-var3983 var788))) ; Statement: $r33[0] = $r40 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3079-to-var1604 var922!6) var2355!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r33) 

(declare-const var922!7 var3079)
(declare-const var2355!2 (Array Int var3983))
 ; Statement: goto [?= $r71 = newarray (java.lang.Object)[1]] 
(assert true) ; Non Conditional
(define-const var1781 (Array Int var3983) arr-var3983-init) ; Statement: $r71 = newarray (java.lang.Object)[1] 
(declare-const var1781!1 (Array Int var3983))
(assert (not (= var1781!1 null-__Array__Int__var3983__)))
(assert (= (select var1781!1 0) (cast-from-String-to-var3983 "   t->specialToken = nullptr;"))) ; Statement: $r71[0] = "   t->specialToken = nullptr;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3079-to-var1604 var922!7) var1781!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r71) 

(declare-const var922!8 var3079)
(declare-const var1781!2 (Array Int var3983))
(define-const var3659 (Array Int var3983) arr-var3983-init) ; Statement: $r72 = newarray (java.lang.Object)[1] 
(declare-const var3659!1 (Array Int var3983))
(assert (not (= var3659!1 null-__Array__Int__var3983__)))
(assert (= (select var3659!1 0) (cast-from-String-to-var3983 "   t->next = nullptr;"))) ; Statement: $r72[0] = "   t->next = nullptr;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3079-to-var1604 var922!8) var3659!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r72) 

(declare-const var922!9 var3079)
(declare-const var3659!2 (Array Int var3983))
(define-const var3343 Bool var3079-keepLineCol) ; Statement: $z7 = <org.javacc.parser.LexGenCPP: boolean keepLineCol> 
 ; Statement: if $z7 == 0 goto $r16 = newarray (java.lang.Object)[1] 
(assert (= (ite var3343 1 0) 0)) ; Cond: $z7 == 0 
(define-const var3142 (Array Int var3983) arr-var3983-init) ; Statement: $r16 = newarray (java.lang.Object)[1] 
(declare-const var3142!1 (Array Int var3983))
(assert (not (= var3142!1 null-__Array__Int__var3983__)))
(assert (= (select var3142!1 0) (cast-from-String-to-var3983 ""))) ; Statement: $r16[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3079-to-var1604 var922!9) var3142!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r16) 

(declare-const var922!10 var3079)
(declare-const var3142!2 (Array Int var3983))
(define-const var462 (Array Int var3983) arr-var3983-init) ; Statement: $r17 = newarray (java.lang.Object)[1] 
(declare-const var462!1 (Array Int var3983))
(assert (not (= var462!1 null-__Array__Int__var3983__)))
(assert (= (select var462!1 0) (cast-from-String-to-var3983 "   return t;"))) ; Statement: $r17[0] = "   return t;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3079-to-var1604 var922!10) var462!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r17) 

(declare-const var922!11 var3079)
(declare-const var462!2 (Array Int var3983))
(define-const var657 (Array Int var3983) arr-var3983-init) ; Statement: $r18 = newarray (java.lang.Object)[1] 
(declare-const var657!1 (Array Int var3983))
(assert (not (= var657!1 null-__Array__Int__var3983__)))
(assert (= (select var657!1 0) (cast-from-String-to-var3983 "}"))) ; Statement: $r18[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3079-to-var1604 var922!11) var657!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r18) 

(declare-const var922!12 var3079)
(declare-const var657!2 (Array Int var3983))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3575_getVersion/-480450141=([java.lang.String], double), cast-from-Int-to-Int=([byte], int), generateMethodDefHeader/-453602513=([org.javacc.parser.CodeGenerator, java.lang.String, java.lang.String, java.lang.String], void), cast-from-var3079-to-var1604=([org.javacc.parser.LexGenCPP], org.javacc.parser.CodeGenerator), arr-var3983-init=([], java.lang.Object[]), cast-from-String-to-var3983=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), var2403_getTokenFactory/552112054=([], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClassQualifier/-1168673550=([org.javacc.parser.CodeGenerator, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3079=org.javacc.parser.LexGenCPP, var922=r0, var3575=org.javacc.parser.JavaFiles, var2836=d0, var3963=$b0, var3598=$i2, var2262=$z6, var3825=z0, var2892=$r1, var1604=org.javacc.parser.CodeGenerator, var3820="Token *", var3033="jjFillToken()", var3983=java.lang.Object, var2848=$r2, var1397=$r3, var489=$r4, var3954=$z1, var3814=$z2, var2884=$r5, var2456=$r6, var3595=$z3, var2403=org.javacc.parser.Options, var145=$r70, var39=$i1, var2355=$r33, var3727=$r73, var2806=$r37, var53=$r35, var1103=$r36, var2448=$r38, var3259=$r39, var788=$r40, var1781=$r71, var3659=$r72, var3343=$z7, var3142=$r16, var462=$r17, var657=$r18}
; {org.javacc.parser.LexGenCPP=var3079, r0=var922, org.javacc.parser.JavaFiles=var3575, d0=var2836, $b0=var3963, $i2=var3598, $z6=var2262, z0=var3825, $r1=var2892, org.javacc.parser.CodeGenerator=var1604, "Token *"=var3820, "jjFillToken()"=var3033, java.lang.Object=var3983, $r2=var2848, $r3=var1397, $r4=var489, $z1=var3954, $z2=var3814, $r5=var2884, $r6=var2456, $z3=var3595, org.javacc.parser.Options=var2403, $r70=var145, $i1=var39, $r33=var2355, $r73=var3727, $r37=var2806, $r35=var53, $r36=var1103, $r38=var2448, $r39=var3259, $r40=var788, $r71=var1781, $r72=var3659, $z7=var3343, $r16=var3142, $r17=var462, $r18=var657}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.LexGenCPP;	d0 = staticinvoke <org.javacc.parser.JavaFiles: double getVersion(java.lang.String)>("Token.java");	$b0 = d0 cmpl 4.09;	$i2 = (int) $b0;	if $i2 <= 0 goto $z6 = 0;	$z6 = 1;	goto [?= z0 = $z6];	z0 = $z6;	$r1 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName>;	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String)>("Token *", $r1, "jjFillToken()");	$r2 = newarray (java.lang.Object)[1];	$r2[0] = "{";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r2);	$r3 = newarray (java.lang.Object)[1];	$r3[0] = "   Token *t;";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r3);	$r4 = newarray (java.lang.Object)[1];	$r4[0] = "   JJString curTokenImage;";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r4);	$z1 = <org.javacc.parser.LexGenCPP: boolean keepLineCol>;	if $z1 == 0 goto $z2 = <org.javacc.parser.LexGenCPP: boolean hasEmptyMatch>;	$z2 = <org.javacc.parser.LexGenCPP: boolean hasEmptyMatch>;	if $z2 == 0 goto $r5 = newarray (java.lang.Object)[1];	$r5 = newarray (java.lang.Object)[1];	$r5[0] = "   JJString im = jjstrLiteralImages[jjmatchedKind];";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r5);	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "   curTokenImage = (im.length() == 0) ? input_stream->GetImage() : im;";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r6);	$z3 = <org.javacc.parser.LexGenCPP: boolean keepLineCol>;	if $z3 == 0 goto $r70 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>();	$r70 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>();	$i1 = virtualinvoke $r70.<java.lang.String: int length()>();	if $i1 <= 0 goto (branch);	$r33 = newarray (java.lang.Object)[1];	$r73 = new java.lang.StringBuilder;	specialinvoke $r73.<java.lang.StringBuilder: void <init>()>();	$r37 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("   t = ");	$r35 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>();	$r36 = virtualinvoke r0.<org.javacc.parser.LexGenCPP: java.lang.String getClassQualifier(java.lang.String)>($r35);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("newToken(jjmatchedKind, curTokenImage);");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	$r33[0] = $r40;	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r33);	goto [?= $r71 = newarray (java.lang.Object)[1]];	$r71 = newarray (java.lang.Object)[1];	$r71[0] = "   t->specialToken = nullptr;";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r71);	$r72 = newarray (java.lang.Object)[1];	$r72[0] = "   t->next = nullptr;";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r72);	$z7 = <org.javacc.parser.LexGenCPP: boolean keepLineCol>;	if $z7 == 0 goto $r16 = newarray (java.lang.Object)[1];	$r16 = newarray (java.lang.Object)[1];	$r16[0] = "";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r16);	$r17 = newarray (java.lang.Object)[1];	$r17[0] = "   return t;";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r17);	$r18 = newarray (java.lang.Object)[1];	$r18[0] = "}";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r18);	return
;block_num 9