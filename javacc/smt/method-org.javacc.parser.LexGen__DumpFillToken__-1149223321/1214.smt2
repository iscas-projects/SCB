(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1080 0)
(declare-sort var3732 0)
(declare-sort var3049 0)
(declare-sort var706 0)
(declare-sort var2345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3732_getVersion/-480450141 (String) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-var3049-init () (Array Int var3049))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var3049 (String) var3049)
(declare-fun genCodeLine/787715242 (var706 (Array Int var3049)) void)
(declare-fun cast-from-var1080-to-var706 (var1080) var706)
(declare-fun var2345_getTokenFactory/552112054 () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1080 var1080)
(declare-const var1080-staticString String)
(declare-const null-__Array__Int__var3049__ (Array Int var3049))
(declare-const var1080-keepLineCol Bool)
(declare-const var1080-hasEmptyMatch Bool)
(declare-const var237 var1080) ; Statement: r0 := @this: org.javacc.parser.LexGen 
(assert (not (= var237 null-var1080)))
(define-const var270 Float64 (var3732_getVersion/-480450141 "Token.java")) ; Statement: d0 = staticinvoke <org.javacc.parser.JavaFiles: double getVersion(java.lang.String)>("Token.java") 
(define-const var2500 Int (ite (fp.gt var270 ((_ to_fp 11 53) #x40105c28f5c28f5c)) 1 (ite (fp.lt var270 ((_ to_fp 11 53) #x40105c28f5c28f5c)) (- 1) 0))) ; Statement: $b0 = d0 cmpl 4.09 
(define-const var2528 Int (cast-from-Int-to-Int var2500)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 <= 0 goto $z6 = 0 
(assert (not (<= var2528 0))) ; Negate: Cond: $i2 <= 0  
(define-const var3328 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= z0 = $z6] 
(assert true) ; Non Conditional
(define-const var3800 Bool var3328) ; Statement: z0 = $z6 
(define-const var1509 (Array Int var3049) arr-var3049-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var1529 String String-init) ; Statement: $r58 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1529)) ; Statement: specialinvoke $r58.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1529!1 String)
(assert (= var1529!1 ""))
(define-const var1439 String var1080-staticString) ; Statement: $r3 = <org.javacc.parser.LexGen: java.lang.String staticString> 
(assert true)
(define-const var0 String (append/672562846 var1529!1 var1439)) ; Statement: $r4 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1529!2 String)
(assert (= var1529!2 (str.++ var1529!1 var1439)))
(assert true)
(define-const var3354 String (append/672562846 var0 "protected Token jjFillToken()")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("protected Token jjFillToken()") 
(declare-const var0!1 String)
(assert (= var0!1 (str.++ var0 "protected Token jjFillToken()")))
(assert true)
(define-const var2049 String (toString/-2075883882 var3354)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1509!1 (Array Int var3049))
(assert (not (= var1509!1 null-__Array__Int__var3049__)))
(assert (= (select var1509!1 0) (cast-from-String-to-var3049 var2049))) ; Statement: $r1[0] = $r6 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1080-to-var706 var237) var1509!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var237!1 var1080)
(declare-const var1509!2 (Array Int var3049))
(define-const var239 (Array Int var3049) arr-var3049-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var239!1 (Array Int var3049))
(assert (not (= var239!1 null-__Array__Int__var3049__)))
(assert (= (select var239!1 0) (cast-from-String-to-var3049 "{"))) ; Statement: $r7[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1080-to-var706 var237!1) var239!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var237!2 var1080)
(declare-const var239!2 (Array Int var3049))
(define-const var1771 (Array Int var3049) arr-var3049-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var1771!1 (Array Int var3049))
(assert (not (= var1771!1 null-__Array__Int__var3049__)))
(assert (= (select var1771!1 0) (cast-from-String-to-var3049 "   final Token t;"))) ; Statement: $r8[0] = "   final Token t;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1080-to-var706 var237!2) var1771!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var237!3 var1080)
(declare-const var1771!2 (Array Int var3049))
(define-const var3942 (Array Int var3049) arr-var3049-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var3942!1 (Array Int var3049))
(assert (not (= var3942!1 null-__Array__Int__var3049__)))
(assert (= (select var3942!1 0) (cast-from-String-to-var3049 "   final String curTokenImage;"))) ; Statement: $r9[0] = "   final String curTokenImage;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1080-to-var706 var237!3) var3942!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var237!4 var1080)
(declare-const var3942!2 (Array Int var3049))
(define-const var1908 Bool var1080-keepLineCol) ; Statement: $z1 = <org.javacc.parser.LexGen: boolean keepLineCol> 
 ; Statement: if $z1 == 0 goto $z2 = <org.javacc.parser.LexGen: boolean hasEmptyMatch> 
(assert (= (ite var1908 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1973 Bool var1080-hasEmptyMatch) ; Statement: $z2 = <org.javacc.parser.LexGen: boolean hasEmptyMatch> 
 ; Statement: if $z2 == 0 goto $r10 = newarray (java.lang.Object)[1] 
(assert (= (ite var1973 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1382 (Array Int var3049) arr-var3049-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var1382!1 (Array Int var3049))
(assert (not (= var1382!1 null-__Array__Int__var3049__)))
(assert (= (select var1382!1 0) (cast-from-String-to-var3049 "   String im = jjstrLiteralImages[jjmatchedKind];"))) ; Statement: $r10[0] = "   String im = jjstrLiteralImages[jjmatchedKind];" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1080-to-var706 var237!4) var1382!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var237!5 var1080)
(declare-const var1382!2 (Array Int var3049))
(define-const var2809 (Array Int var3049) arr-var3049-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var2809!1 (Array Int var3049))
(assert (not (= var2809!1 null-__Array__Int__var3049__)))
(assert (= (select var2809!1 0) (cast-from-String-to-var3049 "   curTokenImage = (im == null) ? input_stream.GetImage() : im;"))) ; Statement: $r11[0] = "   curTokenImage = (im == null) ? input_stream.GetImage() : im;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1080-to-var706 var237!5) var2809!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var237!6 var1080)
(declare-const var2809!2 (Array Int var3049))
(define-const var2444 Bool var1080-keepLineCol) ; Statement: $z3 = <org.javacc.parser.LexGen: boolean keepLineCol> 
 ; Statement: if $z3 == 0 goto $r57 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>() 
(assert (= (ite var2444 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2278 String var2345_getTokenFactory/552112054) ; Statement: $r57 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>() 
(assert true)
(define-const var2765 Int (length/-134980193 var2278)) ; Statement: $i1 = virtualinvoke $r57.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 0 goto (branch) 
(assert (not (<= var2765 0))) ; Negate: Cond: $i1 <= 0  
(define-const var80 (Array Int var3049) arr-var3049-init) ; Statement: $r24 = newarray (java.lang.Object)[1] 
(define-const var3725 String String-init) ; Statement: $r59 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3725)) ; Statement: specialinvoke $r59.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3725!1 String)
(assert (= var3725!1 ""))
(assert true)
(define-const var2305 String (append/672562846 var3725!1 "   t = ")) ; Statement: $r27 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("   t = ") 
(declare-const var3725!2 String)
(assert (= var3725!2 (str.++ var3725!1 "   t = ")))
(define-const var479 String var2345_getTokenFactory/552112054) ; Statement: $r26 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>() 
(assert true)
(define-const var2035 String (append/672562846 var2305 var479)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2305!1 String)
(assert (= var2305!1 (str.++ var2305 var479)))
(assert true)
(define-const var2882 String (append/672562846 var2035 ".newToken(jjmatchedKind, curTokenImage);")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".newToken(jjmatchedKind, curTokenImage);") 
(declare-const var2035!1 String)
(assert (= var2035!1 (str.++ var2035 ".newToken(jjmatchedKind, curTokenImage);")))
(assert true)
(define-const var995 String (toString/-2075883882 var2882)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var80!1 (Array Int var3049))
(assert (not (= var80!1 null-__Array__Int__var3049__)))
(assert (= (select var80!1 0) (cast-from-String-to-var3049 var995))) ; Statement: $r24[0] = $r30 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1080-to-var706 var237!6) var80!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r24) 

(declare-const var237!7 var1080)
(declare-const var80!2 (Array Int var3049))
 ; Statement: goto [?= $z7 = <org.javacc.parser.LexGen: boolean keepLineCol>] 
(assert true) ; Non Conditional
(define-const var508 Bool var1080-keepLineCol) ; Statement: $z7 = <org.javacc.parser.LexGen: boolean keepLineCol> 
 ; Statement: if $z7 == 0 goto $r15 = newarray (java.lang.Object)[1] 
(assert (= (ite var508 1 0) 0)) ; Cond: $z7 == 0 
(define-const var2083 (Array Int var3049) arr-var3049-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(declare-const var2083!1 (Array Int var3049))
(assert (not (= var2083!1 null-__Array__Int__var3049__)))
(assert (= (select var2083!1 0) (cast-from-String-to-var3049 ""))) ; Statement: $r15[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1080-to-var706 var237!7) var2083!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r15) 

(declare-const var237!8 var1080)
(declare-const var2083!2 (Array Int var3049))
(define-const var125 (Array Int var3049) arr-var3049-init) ; Statement: $r16 = newarray (java.lang.Object)[1] 
(declare-const var125!1 (Array Int var3049))
(assert (not (= var125!1 null-__Array__Int__var3049__)))
(assert (= (select var125!1 0) (cast-from-String-to-var3049 "   return t;"))) ; Statement: $r16[0] = "   return t;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1080-to-var706 var237!8) var125!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r16) 

(declare-const var237!9 var1080)
(declare-const var125!2 (Array Int var3049))
(define-const var2485 (Array Int var3049) arr-var3049-init) ; Statement: $r17 = newarray (java.lang.Object)[1] 
(declare-const var2485!1 (Array Int var3049))
(assert (not (= var2485!1 null-__Array__Int__var3049__)))
(assert (= (select var2485!1 0) (cast-from-String-to-var3049 "}"))) ; Statement: $r17[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1080-to-var706 var237!9) var2485!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r17) 

(declare-const var237!10 var1080)
(declare-const var2485!2 (Array Int var3049))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3732_getVersion/-480450141=([java.lang.String], double), cast-from-Int-to-Int=([byte], int), arr-var3049-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var3049=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), cast-from-var1080-to-var706=([org.javacc.parser.LexGen], org.javacc.parser.CodeGenerator), var2345_getTokenFactory/552112054=([], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1080=org.javacc.parser.LexGen, var237=r0, var3732=org.javacc.parser.JavaFiles, var270=d0, var2500=$b0, var2528=$i2, var3328=$z6, var3800=z0, var3049=java.lang.Object, var1509=$r1, var1529=$r58, var1439=$r3, var0=$r4, var3354=$r5, var2049=$r6, var706=org.javacc.parser.CodeGenerator, var239=$r7, var1771=$r8, var3942=$r9, var1908=$z1, var1973=$z2, var1382=$r10, var2809=$r11, var2444=$z3, var2345=org.javacc.parser.Options, var2278=$r57, var2765=$i1, var80=$r24, var3725=$r59, var2305=$r27, var479=$r26, var2035=$r28, var2882=$r29, var995=$r30, var508=$z7, var2083=$r15, var125=$r16, var2485=$r17}
; {org.javacc.parser.LexGen=var1080, r0=var237, org.javacc.parser.JavaFiles=var3732, d0=var270, $b0=var2500, $i2=var2528, $z6=var3328, z0=var3800, java.lang.Object=var3049, $r1=var1509, $r58=var1529, $r3=var1439, $r4=var0, $r5=var3354, $r6=var2049, org.javacc.parser.CodeGenerator=var706, $r7=var239, $r8=var1771, $r9=var3942, $z1=var1908, $z2=var1973, $r10=var1382, $r11=var2809, $z3=var2444, org.javacc.parser.Options=var2345, $r57=var2278, $i1=var2765, $r24=var80, $r59=var3725, $r27=var2305, $r26=var479, $r28=var2035, $r29=var2882, $r30=var995, $z7=var508, $r15=var2083, $r16=var125, $r17=var2485}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.javacc.parser.LexGen;	d0 = staticinvoke <org.javacc.parser.JavaFiles: double getVersion(java.lang.String)>("Token.java");	$b0 = d0 cmpl 4.09;	$i2 = (int) $b0;	if $i2 <= 0 goto $z6 = 0;	$z6 = 1;	goto [?= z0 = $z6];	z0 = $z6;	$r1 = newarray (java.lang.Object)[1];	$r58 = new java.lang.StringBuilder;	specialinvoke $r58.<java.lang.StringBuilder: void <init>()>();	$r3 = <org.javacc.parser.LexGen: java.lang.String staticString>;	$r4 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("protected Token jjFillToken()");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r6;	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r1);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "{";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "   final Token t;";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r9[0] = "   final String curTokenImage;";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r9);	$z1 = <org.javacc.parser.LexGen: boolean keepLineCol>;	if $z1 == 0 goto $z2 = <org.javacc.parser.LexGen: boolean hasEmptyMatch>;	$z2 = <org.javacc.parser.LexGen: boolean hasEmptyMatch>;	if $z2 == 0 goto $r10 = newarray (java.lang.Object)[1];	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "   String im = jjstrLiteralImages[jjmatchedKind];";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r10);	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "   curTokenImage = (im == null) ? input_stream.GetImage() : im;";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r11);	$z3 = <org.javacc.parser.LexGen: boolean keepLineCol>;	if $z3 == 0 goto $r57 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>();	$r57 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>();	$i1 = virtualinvoke $r57.<java.lang.String: int length()>();	if $i1 <= 0 goto (branch);	$r24 = newarray (java.lang.Object)[1];	$r59 = new java.lang.StringBuilder;	specialinvoke $r59.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("   t = ");	$r26 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".newToken(jjmatchedKind, curTokenImage);");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r24[0] = $r30;	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r24);	goto [?= $z7 = <org.javacc.parser.LexGen: boolean keepLineCol>];	$z7 = <org.javacc.parser.LexGen: boolean keepLineCol>;	if $z7 == 0 goto $r15 = newarray (java.lang.Object)[1];	$r15 = newarray (java.lang.Object)[1];	$r15[0] = "";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r15);	$r16 = newarray (java.lang.Object)[1];	$r16[0] = "   return t;";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r16);	$r17 = newarray (java.lang.Object)[1];	$r17[0] = "}";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r17);	return
;block_num 9