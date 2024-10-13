(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1853 0)
(declare-sort var1122 0)
(declare-sort var2848 0)
(declare-sort var2751 0)
(declare-sort var2992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1122_getVersion/-480450141 (String) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun generateMethodDefHeader/-453602513 (var2848 String String String) void)
(declare-fun cast-from-var1853-to-var2848 (var1853) var2848)
(declare-fun arr-var2751-init () (Array Int var2751))
(declare-fun cast-from-String-to-var2751 (String) var2751)
(declare-fun genCodeLine/787715242 (var2848 (Array Int var2751)) void)
(declare-fun var2992_getTokenFactory/552112054 () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClassQualifier/-1168673550 (var2848 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1853 var1853)
(declare-const var1853-tokMgrClassName String)
(declare-const null-__Array__Int__var2751__ (Array Int var2751))
(declare-const var1853-keepLineCol Bool)
(declare-const var1853-hasEmptyMatch Bool)
(declare-const var654 var1853) ; Statement: r0 := @this: org.javacc.parser.LexGenCPP 
(assert (not (= var654 null-var1853)))
(define-const var1893 Float64 (var1122_getVersion/-480450141 "Token.java")) ; Statement: d0 = staticinvoke <org.javacc.parser.JavaFiles: double getVersion(java.lang.String)>("Token.java") 
(define-const var1803 Int (ite (fp.gt var1893 ((_ to_fp 11 53) #x40105c28f5c28f5c)) 1 (ite (fp.lt var1893 ((_ to_fp 11 53) #x40105c28f5c28f5c)) (- 1) 0))) ; Statement: $b0 = d0 cmpl 4.09 
(define-const var2053 Int (cast-from-Int-to-Int var1803)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 <= 0 goto $z6 = 0 
(assert (<= var2053 0)) ; Cond: $i2 <= 0 
(define-const var764 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var3037 Bool var764) ; Statement: z0 = $z6 
(define-const var622 String var1853-tokMgrClassName) ; Statement: $r1 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName> 
(assert true)
;(assert (generateMethodDefHeader/-453602513 (cast-from-var1853-to-var2848 var654) "Token *" var622 "jjFillToken()")) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String)>("Token *", $r1, "jjFillToken()") 

(declare-const var654!1 var1853)
(declare-const var1248 String)
(declare-const var622!1 String)
(declare-const var2834 String)
(define-const var1423 (Array Int var2751) arr-var2751-init) ; Statement: $r2 = newarray (java.lang.Object)[1] 
(declare-const var1423!1 (Array Int var2751))
(assert (not (= var1423!1 null-__Array__Int__var2751__)))
(assert (= (select var1423!1 0) (cast-from-String-to-var2751 "{"))) ; Statement: $r2[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1853-to-var2848 var654!1) var1423!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r2) 

(declare-const var654!2 var1853)
(declare-const var1423!2 (Array Int var2751))
(define-const var2836 (Array Int var2751) arr-var2751-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var2836!1 (Array Int var2751))
(assert (not (= var2836!1 null-__Array__Int__var2751__)))
(assert (= (select var2836!1 0) (cast-from-String-to-var2751 "   Token *t;"))) ; Statement: $r3[0] = "   Token *t;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1853-to-var2848 var654!2) var2836!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r3) 

(declare-const var654!3 var1853)
(declare-const var2836!2 (Array Int var2751))
(define-const var1618 (Array Int var2751) arr-var2751-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(declare-const var1618!1 (Array Int var2751))
(assert (not (= var1618!1 null-__Array__Int__var2751__)))
(assert (= (select var1618!1 0) (cast-from-String-to-var2751 "   JJString curTokenImage;"))) ; Statement: $r4[0] = "   JJString curTokenImage;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1853-to-var2848 var654!3) var1618!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r4) 

(declare-const var654!4 var1853)
(declare-const var1618!2 (Array Int var2751))
(define-const var2995 Bool var1853-keepLineCol) ; Statement: $z1 = <org.javacc.parser.LexGenCPP: boolean keepLineCol> 
 ; Statement: if $z1 == 0 goto $z2 = <org.javacc.parser.LexGenCPP: boolean hasEmptyMatch> 
(assert (= (ite var2995 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3763 Bool var1853-hasEmptyMatch) ; Statement: $z2 = <org.javacc.parser.LexGenCPP: boolean hasEmptyMatch> 
 ; Statement: if $z2 == 0 goto $r5 = newarray (java.lang.Object)[1] 
(assert (= (ite var3763 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2099 (Array Int var2751) arr-var2751-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(declare-const var2099!1 (Array Int var2751))
(assert (not (= var2099!1 null-__Array__Int__var2751__)))
(assert (= (select var2099!1 0) (cast-from-String-to-var2751 "   JJString im = jjstrLiteralImages[jjmatchedKind];"))) ; Statement: $r5[0] = "   JJString im = jjstrLiteralImages[jjmatchedKind];" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1853-to-var2848 var654!4) var2099!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r5) 

(declare-const var654!5 var1853)
(declare-const var2099!2 (Array Int var2751))
(define-const var1418 (Array Int var2751) arr-var2751-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var1418!1 (Array Int var2751))
(assert (not (= var1418!1 null-__Array__Int__var2751__)))
(assert (= (select var1418!1 0) (cast-from-String-to-var2751 "   curTokenImage = (im.length() == 0) ? input_stream->GetImage() : im;"))) ; Statement: $r6[0] = "   curTokenImage = (im.length() == 0) ? input_stream->GetImage() : im;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1853-to-var2848 var654!5) var1418!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var654!6 var1853)
(declare-const var1418!2 (Array Int var2751))
(define-const var2013 Bool var1853-keepLineCol) ; Statement: $z3 = <org.javacc.parser.LexGenCPP: boolean keepLineCol> 
 ; Statement: if $z3 == 0 goto $r70 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>() 
(assert (= (ite var2013 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3133 String var2992_getTokenFactory/552112054) ; Statement: $r70 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>() 
(assert true)
(define-const var3682 Int (length/-134980193 var3133)) ; Statement: $i1 = virtualinvoke $r70.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 0 goto (branch) 
(assert (not (<= var3682 0))) ; Negate: Cond: $i1 <= 0  
(define-const var2808 (Array Int var2751) arr-var2751-init) ; Statement: $r33 = newarray (java.lang.Object)[1] 
(define-const var1806 String String-init) ; Statement: $r73 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1806)) ; Statement: specialinvoke $r73.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1806!1 String)
(assert (= var1806!1 ""))
(assert true)
(define-const var2859 String (append/672562846 var1806!1 "   t = ")) ; Statement: $r37 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("   t = ") 
(declare-const var1806!2 String)
(assert (= var1806!2 (str.++ var1806!1 "   t = ")))
(define-const var1471 String var2992_getTokenFactory/552112054) ; Statement: $r35 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>() 
(assert true)
(define-const var3458 String (getClassQualifier/-1168673550 (cast-from-var1853-to-var2848 var654!6) var1471)) ; Statement: $r36 = virtualinvoke r0.<org.javacc.parser.LexGenCPP: java.lang.String getClassQualifier(java.lang.String)>($r35) 
(assert true)
(define-const var2405 String (append/672562846 var2859 var3458)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var2859!1 String)
(assert (= var2859!1 (str.++ var2859 var3458)))
(assert true)
(define-const var1111 String (append/672562846 var2405 "newToken(jjmatchedKind, curTokenImage);")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("newToken(jjmatchedKind, curTokenImage);") 
(declare-const var2405!1 String)
(assert (= var2405!1 (str.++ var2405 "newToken(jjmatchedKind, curTokenImage);")))
(assert true)
(define-const var2523 String (toString/-2075883882 var1111)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2808!1 (Array Int var2751))
(assert (not (= var2808!1 null-__Array__Int__var2751__)))
(assert (= (select var2808!1 0) (cast-from-String-to-var2751 var2523))) ; Statement: $r33[0] = $r40 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1853-to-var2848 var654!6) var2808!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r33) 

(declare-const var654!7 var1853)
(declare-const var2808!2 (Array Int var2751))
 ; Statement: goto [?= $r71 = newarray (java.lang.Object)[1]] 
(assert true) ; Non Conditional
(define-const var3075 (Array Int var2751) arr-var2751-init) ; Statement: $r71 = newarray (java.lang.Object)[1] 
(declare-const var3075!1 (Array Int var2751))
(assert (not (= var3075!1 null-__Array__Int__var2751__)))
(assert (= (select var3075!1 0) (cast-from-String-to-var2751 "   t->specialToken = nullptr;"))) ; Statement: $r71[0] = "   t->specialToken = nullptr;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1853-to-var2848 var654!7) var3075!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r71) 

(declare-const var654!8 var1853)
(declare-const var3075!2 (Array Int var2751))
(define-const var136 (Array Int var2751) arr-var2751-init) ; Statement: $r72 = newarray (java.lang.Object)[1] 
(declare-const var136!1 (Array Int var2751))
(assert (not (= var136!1 null-__Array__Int__var2751__)))
(assert (= (select var136!1 0) (cast-from-String-to-var2751 "   t->next = nullptr;"))) ; Statement: $r72[0] = "   t->next = nullptr;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1853-to-var2848 var654!8) var136!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r72) 

(declare-const var654!9 var1853)
(declare-const var136!2 (Array Int var2751))
(define-const var2002 Bool var1853-keepLineCol) ; Statement: $z7 = <org.javacc.parser.LexGenCPP: boolean keepLineCol> 
 ; Statement: if $z7 == 0 goto $r16 = newarray (java.lang.Object)[1] 
(assert (= (ite var2002 1 0) 0)) ; Cond: $z7 == 0 
(define-const var3742 (Array Int var2751) arr-var2751-init) ; Statement: $r16 = newarray (java.lang.Object)[1] 
(declare-const var3742!1 (Array Int var2751))
(assert (not (= var3742!1 null-__Array__Int__var2751__)))
(assert (= (select var3742!1 0) (cast-from-String-to-var2751 ""))) ; Statement: $r16[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1853-to-var2848 var654!9) var3742!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r16) 

(declare-const var654!10 var1853)
(declare-const var3742!2 (Array Int var2751))
(define-const var738 (Array Int var2751) arr-var2751-init) ; Statement: $r17 = newarray (java.lang.Object)[1] 
(declare-const var738!1 (Array Int var2751))
(assert (not (= var738!1 null-__Array__Int__var2751__)))
(assert (= (select var738!1 0) (cast-from-String-to-var2751 "   return t;"))) ; Statement: $r17[0] = "   return t;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1853-to-var2848 var654!10) var738!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r17) 

(declare-const var654!11 var1853)
(declare-const var738!2 (Array Int var2751))
(define-const var2786 (Array Int var2751) arr-var2751-init) ; Statement: $r18 = newarray (java.lang.Object)[1] 
(declare-const var2786!1 (Array Int var2751))
(assert (not (= var2786!1 null-__Array__Int__var2751__)))
(assert (= (select var2786!1 0) (cast-from-String-to-var2751 "}"))) ; Statement: $r18[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1853-to-var2848 var654!11) var2786!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r18) 

(declare-const var654!12 var1853)
(declare-const var2786!2 (Array Int var2751))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1122_getVersion/-480450141=([java.lang.String], double), cast-from-Int-to-Int=([byte], int), generateMethodDefHeader/-453602513=([org.javacc.parser.CodeGenerator, java.lang.String, java.lang.String, java.lang.String], void), cast-from-var1853-to-var2848=([org.javacc.parser.LexGenCPP], org.javacc.parser.CodeGenerator), arr-var2751-init=([], java.lang.Object[]), cast-from-String-to-var2751=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), var2992_getTokenFactory/552112054=([], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClassQualifier/-1168673550=([org.javacc.parser.CodeGenerator, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1853=org.javacc.parser.LexGenCPP, var654=r0, var1122=org.javacc.parser.JavaFiles, var1893=d0, var1803=$b0, var2053=$i2, var764=$z6, var3037=z0, var622=$r1, var2848=org.javacc.parser.CodeGenerator, var1248="Token *", var2834="jjFillToken()", var2751=java.lang.Object, var1423=$r2, var2836=$r3, var1618=$r4, var2995=$z1, var3763=$z2, var2099=$r5, var1418=$r6, var2013=$z3, var2992=org.javacc.parser.Options, var3133=$r70, var3682=$i1, var2808=$r33, var1806=$r73, var2859=$r37, var1471=$r35, var3458=$r36, var2405=$r38, var1111=$r39, var2523=$r40, var3075=$r71, var136=$r72, var2002=$z7, var3742=$r16, var738=$r17, var2786=$r18}
; {org.javacc.parser.LexGenCPP=var1853, r0=var654, org.javacc.parser.JavaFiles=var1122, d0=var1893, $b0=var1803, $i2=var2053, $z6=var764, z0=var3037, $r1=var622, org.javacc.parser.CodeGenerator=var2848, "Token *"=var1248, "jjFillToken()"=var2834, java.lang.Object=var2751, $r2=var1423, $r3=var2836, $r4=var1618, $z1=var2995, $z2=var3763, $r5=var2099, $r6=var1418, $z3=var2013, org.javacc.parser.Options=var2992, $r70=var3133, $i1=var3682, $r33=var2808, $r73=var1806, $r37=var2859, $r35=var1471, $r36=var3458, $r38=var2405, $r39=var1111, $r40=var2523, $r71=var3075, $r72=var136, $z7=var2002, $r16=var3742, $r17=var738, $r18=var2786}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.LexGenCPP;	d0 = staticinvoke <org.javacc.parser.JavaFiles: double getVersion(java.lang.String)>("Token.java");	$b0 = d0 cmpl 4.09;	$i2 = (int) $b0;	if $i2 <= 0 goto $z6 = 0;	$z6 = 0;	z0 = $z6;	$r1 = <org.javacc.parser.LexGenCPP: java.lang.String tokMgrClassName>;	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String)>("Token *", $r1, "jjFillToken()");	$r2 = newarray (java.lang.Object)[1];	$r2[0] = "{";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r2);	$r3 = newarray (java.lang.Object)[1];	$r3[0] = "   Token *t;";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r3);	$r4 = newarray (java.lang.Object)[1];	$r4[0] = "   JJString curTokenImage;";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r4);	$z1 = <org.javacc.parser.LexGenCPP: boolean keepLineCol>;	if $z1 == 0 goto $z2 = <org.javacc.parser.LexGenCPP: boolean hasEmptyMatch>;	$z2 = <org.javacc.parser.LexGenCPP: boolean hasEmptyMatch>;	if $z2 == 0 goto $r5 = newarray (java.lang.Object)[1];	$r5 = newarray (java.lang.Object)[1];	$r5[0] = "   JJString im = jjstrLiteralImages[jjmatchedKind];";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r5);	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "   curTokenImage = (im.length() == 0) ? input_stream->GetImage() : im;";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r6);	$z3 = <org.javacc.parser.LexGenCPP: boolean keepLineCol>;	if $z3 == 0 goto $r70 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>();	$r70 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>();	$i1 = virtualinvoke $r70.<java.lang.String: int length()>();	if $i1 <= 0 goto (branch);	$r33 = newarray (java.lang.Object)[1];	$r73 = new java.lang.StringBuilder;	specialinvoke $r73.<java.lang.StringBuilder: void <init>()>();	$r37 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("   t = ");	$r35 = staticinvoke <org.javacc.parser.Options: java.lang.String getTokenFactory()>();	$r36 = virtualinvoke r0.<org.javacc.parser.LexGenCPP: java.lang.String getClassQualifier(java.lang.String)>($r35);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("newToken(jjmatchedKind, curTokenImage);");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	$r33[0] = $r40;	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r33);	goto [?= $r71 = newarray (java.lang.Object)[1]];	$r71 = newarray (java.lang.Object)[1];	$r71[0] = "   t->specialToken = nullptr;";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r71);	$r72 = newarray (java.lang.Object)[1];	$r72[0] = "   t->next = nullptr;";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r72);	$z7 = <org.javacc.parser.LexGenCPP: boolean keepLineCol>;	if $z7 == 0 goto $r16 = newarray (java.lang.Object)[1];	$r16 = newarray (java.lang.Object)[1];	$r16[0] = "";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r16);	$r17 = newarray (java.lang.Object)[1];	$r17[0] = "   return t;";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r17);	$r18 = newarray (java.lang.Object)[1];	$r18[0] = "}";	virtualinvoke r0.<org.javacc.parser.LexGenCPP: void genCodeLine(java.lang.Object[])>($r18);	return
;block_num 9