(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2180 0)
(declare-sort var2414 0)
(declare-sort var1712 0)
(declare-sort var316 0)
(declare-sort var1104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2414_getVersion/-480450141 (String) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-var1712-init () (Array Int var1712))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var1712 (String) var1712)
(declare-fun genCodeLine/787715242 (var316 (Array Int var1712)) void)
(declare-fun cast-from-var2180-to-var316 (var2180) var316)
(declare-fun var1104_getTokenFactory/552112054 () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2180 var2180)
(declare-const var2180-staticString String)
(declare-const null-__Array__Int__var1712__ (Array Int var1712))
(declare-const var2180-keepLineCol Bool)
(declare-const var2180-hasEmptyMatch Bool)
(declare-const var613 var2180) ; Statement: r0 := @this: org.javacc.parser.LexGen 
(assert (not (= var613 null-var2180)))
(define-const var3885 Float64 (var2414_getVersion/-480450141 "Token.java")) ; Statement: d0 = staticinvoke <org.javacc.parser.JavaFiles: double getVersion(java.lang.String)>("Token.java") 
(define-const var321 Int (ite (fp.gt var3885 ((_ to_fp 11 53) #x40105c28f5c28f5c)) 1 (ite (fp.lt var3885 ((_ to_fp 11 53) #x40105c28f5c28f5c)) (- 1) 0))) ; Statement: $b0 = d0 cmpl 4.09 
(define-const var646 Int (cast-from-Int-to-Int var321)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 <= 0 goto $z6 = 0 
(assert (<= var646 0)) ; Cond: $i2 <= 0 
(define-const var1151 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var1204 Bool var1151) ; Statement: z0 = $z6 
(define-const var207 (Array Int var1712) arr-var1712-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var235 String String-init) ; Statement: $r58 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var235)) ; Statement: specialinvoke $r58.<java.lang.StringBuilder: void <init>()>() 
(declare-const var235!1 String)
(assert (= var235!1 ""))
(define-const var1140 String var2180-staticString) ; Statement: $r3 = <org.javacc.parser.LexGen: java.lang.String staticString> 
(assert true)
(define-const var1459 String (append/672562846 var235!1 var1140)) ; Statement: $r4 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var235!2 String)
(assert (= var235!2 (str.++ var235!1 var1140)))
(assert true)
(define-const var590 String (append/672562846 var1459 "protected Token jjFillToken()")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("protected Token jjFillToken()") 
(declare-const var1459!1 String)
(assert (= var1459!1 (str.++ var1459 "protected Token jjFillToken()")))
(assert true)
(define-const var2160 String (toString/-2075883882 var590)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var207!1 (Array Int var1712))
(assert (not (= var207!1 null-__Array__Int__var1712__)))
(assert (= (select var207!1 0) (cast-from-String-to-var1712 var2160))) ; Statement: $r1[0] = $r6 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var2180-to-var316 var613) var207!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var613!1 var2180)
(declare-const var207!2 (Array Int var1712))
(define-const var1310 (Array Int var1712) arr-var1712-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var1310!1 (Array Int var1712))
(assert (not (= var1310!1 null-__Array__Int__var1712__)))
(assert (= (select var1310!1 0) (cast-from-String-to-var1712 "{"))) ; Statement: $r7[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var2180-to-var316 var613!1) var1310!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var613!2 var2180)
(declare-const var1310!2 (Array Int var1712))
(define-const var2732 (Array Int var1712) arr-var1712-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var2732!1 (Array Int var1712))
(assert (not (= var2732!1 null-__Array__Int__var1712__)))
(assert (= (select var2732!1 0) (cast-from-String-to-var1712 "   final Token t;"))) ; Statement: $r8[0] = "   final Token t;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var2180-to-var316 var613!2) var2732!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var613!3 var2180)
(declare-const var2732!2 (Array Int var1712))
(define-const var3310 (Array Int var1712) arr-var1712-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var3310!1 (Array Int var1712))
(assert (not (= var3310!1 null-__Array__Int__var1712__)))
(assert (= (select var3310!1 0) (cast-from-String-to-var1712 "   final String curTokenImage;"))) ; Statement: $r9[0] = "   final String curTokenImage;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var2180-to-var316 var613!3) var3310!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var613!4 var2180)
(declare-const var3310!2 (Array Int var1712))
(define-const var3811 Bool var2180-keepLineCol) ; Statement: $z1 = <org.javacc.parser.LexGen: boolean keepLineCol> 
 ; Statement: if $z1 == 0 goto $z2 = <org.javacc.parser.LexGen: boolean hasEmptyMatch> 
(assert (= (ite var3811 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1742 Bool var2180-hasEmptyMatch) ; Statement: $z2 = <org.javacc.parser.LexGen: boolean hasEmptyMatch> 
 ; Statement: if $z2 == 0 goto $r10 = newarray (java.lang.Object)[1] 
(assert (= (ite var1742 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2736 (Array Int var1712) arr-var1712-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var2736!1 (Array Int var1712))
(assert (not (= var2736!1 null-__Array__Int__var1712__)))
(assert (= (select var2736!1 0) (cast-from-String-to-var1712 "   String im = jjstrLiteralImages[jjmatchedKind];"))) ; Statement: $r10[0] = "   String im = jjstrLiteralImages[jjmatchedKind];" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var2180-to-var316 var613!4) var2736!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var613!5 var2180)
(declare-const var2736!2 (Array Int var1712))
(define-const var3141 (Array Int var1712) arr-var1712-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var3141!1 (Array Int var1712))
(assert (not (= var3141!1 null-__Array__Int__var1712__)))
(assert (= (select var3141!1 0) (cast-from-String-to-var1712 "   curTokenImage = (im == null) ? input_stream.GetImage() : im;"))) ; Statement: $r11[0] = "   curTokenImage = (im == null) ? input_stream.GetImage() : im;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var2180-to-var316 var613!5) var3141!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var613!6 var2180)
(declare-const var3141!2 (Array Int var1712))
(define-const var1538 Bool var2180-keepLineCol) ; Statement: $z3 = <org.javacc.parser.LexGen: boolean keepLineCol> 
 ; Statement: if $z3 == 0 goto $r57 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>() 
(assert (= (ite var1538 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3480 String var1104_getTokenFactory/552112054) ; Statement: $r57 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>() 
(assert true)
(define-const var2557 Int (length/-134980193 var3480)) ; Statement: $i1 = virtualinvoke $r57.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 0 goto (branch) 
(assert (not (<= var2557 0))) ; Negate: Cond: $i1 <= 0  
(define-const var3532 (Array Int var1712) arr-var1712-init) ; Statement: $r24 = newarray (java.lang.Object)[1] 
(define-const var76 String String-init) ; Statement: $r59 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var76)) ; Statement: specialinvoke $r59.<java.lang.StringBuilder: void <init>()>() 
(declare-const var76!1 String)
(assert (= var76!1 ""))
(assert true)
(define-const var288 String (append/672562846 var76!1 "   t = ")) ; Statement: $r27 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("   t = ") 
(declare-const var76!2 String)
(assert (= var76!2 (str.++ var76!1 "   t = ")))
(define-const var319 String var1104_getTokenFactory/552112054) ; Statement: $r26 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>() 
(assert true)
(define-const var3121 String (append/672562846 var288 var319)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var288!1 String)
(assert (= var288!1 (str.++ var288 var319)))
(assert true)
(define-const var770 String (append/672562846 var3121 ".newToken(jjmatchedKind, curTokenImage);")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".newToken(jjmatchedKind, curTokenImage);") 
(declare-const var3121!1 String)
(assert (= var3121!1 (str.++ var3121 ".newToken(jjmatchedKind, curTokenImage);")))
(assert true)
(define-const var1481 String (toString/-2075883882 var770)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3532!1 (Array Int var1712))
(assert (not (= var3532!1 null-__Array__Int__var1712__)))
(assert (= (select var3532!1 0) (cast-from-String-to-var1712 var1481))) ; Statement: $r24[0] = $r30 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var2180-to-var316 var613!6) var3532!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r24) 

(declare-const var613!7 var2180)
(declare-const var3532!2 (Array Int var1712))
 ; Statement: goto [?= $z7 = <org.javacc.parser.LexGen: boolean keepLineCol>] 
(assert true) ; Non Conditional
(define-const var1762 Bool var2180-keepLineCol) ; Statement: $z7 = <org.javacc.parser.LexGen: boolean keepLineCol> 
 ; Statement: if $z7 == 0 goto $r15 = newarray (java.lang.Object)[1] 
(assert (= (ite var1762 1 0) 0)) ; Cond: $z7 == 0 
(define-const var3117 (Array Int var1712) arr-var1712-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(declare-const var3117!1 (Array Int var1712))
(assert (not (= var3117!1 null-__Array__Int__var1712__)))
(assert (= (select var3117!1 0) (cast-from-String-to-var1712 ""))) ; Statement: $r15[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var2180-to-var316 var613!7) var3117!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r15) 

(declare-const var613!8 var2180)
(declare-const var3117!2 (Array Int var1712))
(define-const var1632 (Array Int var1712) arr-var1712-init) ; Statement: $r16 = newarray (java.lang.Object)[1] 
(declare-const var1632!1 (Array Int var1712))
(assert (not (= var1632!1 null-__Array__Int__var1712__)))
(assert (= (select var1632!1 0) (cast-from-String-to-var1712 "   return t;"))) ; Statement: $r16[0] = "   return t;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var2180-to-var316 var613!8) var1632!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r16) 

(declare-const var613!9 var2180)
(declare-const var1632!2 (Array Int var1712))
(define-const var1929 (Array Int var1712) arr-var1712-init) ; Statement: $r17 = newarray (java.lang.Object)[1] 
(declare-const var1929!1 (Array Int var1712))
(assert (not (= var1929!1 null-__Array__Int__var1712__)))
(assert (= (select var1929!1 0) (cast-from-String-to-var1712 "}"))) ; Statement: $r17[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var2180-to-var316 var613!9) var1929!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r17) 

(declare-const var613!10 var2180)
(declare-const var1929!2 (Array Int var1712))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2414_getVersion/-480450141=([java.lang.String], double), cast-from-Int-to-Int=([byte], int), arr-var1712-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var1712=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), cast-from-var2180-to-var316=([org.javacc.parser.LexGen], org.javacc.parser.CodeGenerator), var1104_getTokenFactory/552112054=([], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2180=org.javacc.parser.LexGen, var613=r0, var2414=org.javacc.parser.JavaFiles, var3885=d0, var321=$b0, var646=$i2, var1151=$z6, var1204=z0, var1712=java.lang.Object, var207=$r1, var235=$r58, var1140=$r3, var1459=$r4, var590=$r5, var2160=$r6, var316=org.javacc.parser.CodeGenerator, var1310=$r7, var2732=$r8, var3310=$r9, var3811=$z1, var1742=$z2, var2736=$r10, var3141=$r11, var1538=$z3, var1104=org.javacc.parser.Options, var3480=$r57, var2557=$i1, var3532=$r24, var76=$r59, var288=$r27, var319=$r26, var3121=$r28, var770=$r29, var1481=$r30, var1762=$z7, var3117=$r15, var1632=$r16, var1929=$r17}
; {org.javacc.parser.LexGen=var2180, r0=var613, org.javacc.parser.JavaFiles=var2414, d0=var3885, $b0=var321, $i2=var646, $z6=var1151, z0=var1204, java.lang.Object=var1712, $r1=var207, $r58=var235, $r3=var1140, $r4=var1459, $r5=var590, $r6=var2160, org.javacc.parser.CodeGenerator=var316, $r7=var1310, $r8=var2732, $r9=var3310, $z1=var3811, $z2=var1742, $r10=var2736, $r11=var3141, $z3=var1538, org.javacc.parser.Options=var1104, $r57=var3480, $i1=var2557, $r24=var3532, $r59=var76, $r27=var288, $r26=var319, $r28=var3121, $r29=var770, $r30=var1481, $z7=var1762, $r15=var3117, $r16=var1632, $r17=var1929}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.javacc.parser.LexGen;	d0 = staticinvoke <org.javacc.parser.JavaFiles: double getVersion(java.lang.String)>("Token.java");	$b0 = d0 cmpl 4.09;	$i2 = (int) $b0;	if $i2 <= 0 goto $z6 = 0;	$z6 = 0;	z0 = $z6;	$r1 = newarray (java.lang.Object)[1];	$r58 = new java.lang.StringBuilder;	specialinvoke $r58.<java.lang.StringBuilder: void <init>()>();	$r3 = <org.javacc.parser.LexGen: java.lang.String staticString>;	$r4 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("protected Token jjFillToken()");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r6;	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r1);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "{";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "   final Token t;";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r9[0] = "   final String curTokenImage;";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r9);	$z1 = <org.javacc.parser.LexGen: boolean keepLineCol>;	if $z1 == 0 goto $z2 = <org.javacc.parser.LexGen: boolean hasEmptyMatch>;	$z2 = <org.javacc.parser.LexGen: boolean hasEmptyMatch>;	if $z2 == 0 goto $r10 = newarray (java.lang.Object)[1];	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "   String im = jjstrLiteralImages[jjmatchedKind];";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r10);	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "   curTokenImage = (im == null) ? input_stream.GetImage() : im;";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r11);	$z3 = <org.javacc.parser.LexGen: boolean keepLineCol>;	if $z3 == 0 goto $r57 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>();	$r57 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>();	$i1 = virtualinvoke $r57.<java.lang.String: int length()>();	if $i1 <= 0 goto (branch);	$r24 = newarray (java.lang.Object)[1];	$r59 = new java.lang.StringBuilder;	specialinvoke $r59.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("   t = ");	$r26 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".newToken(jjmatchedKind, curTokenImage);");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r24[0] = $r30;	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r24);	goto [?= $z7 = <org.javacc.parser.LexGen: boolean keepLineCol>];	$z7 = <org.javacc.parser.LexGen: boolean keepLineCol>;	if $z7 == 0 goto $r15 = newarray (java.lang.Object)[1];	$r15 = newarray (java.lang.Object)[1];	$r15[0] = "";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r15);	$r16 = newarray (java.lang.Object)[1];	$r16[0] = "   return t;";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r16);	$r17 = newarray (java.lang.Object)[1];	$r17[0] = "}";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r17);	return
;block_num 9