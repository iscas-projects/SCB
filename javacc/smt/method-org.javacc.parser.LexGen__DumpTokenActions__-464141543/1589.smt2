(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1309 0)
(declare-sort var196 0)
(declare-sort var3703 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var196-init () (Array Int var196))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var196 (String) var196)
(declare-fun genCodeLine/787715242 (var3703 (Array Int var196)) void)
(declare-fun cast-from-var1309-to-var3703 (var1309) var3703)
(declare-const null-var1309 var1309)
(declare-const var1309-staticString String)
(declare-const null-__Array__Int__var196__ (Array Int var196))
(declare-const var1309-maxOrdinal Int)
(declare-const var2275 var1309) ; Statement: r0 := @this: org.javacc.parser.LexGen 
(assert (not (= var2275 null-var1309)))
(define-const var3009 (Array Int var196) arr-var196-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var3119 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3119)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3119!1 String)
(assert (= var3119!1 ""))
(define-const var2906 String var1309-staticString) ; Statement: $r3 = <org.javacc.parser.LexGen: java.lang.String staticString> 
(assert true)
(define-const var3193 String (append/672562846 var3119!1 var2906)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3119!2 String)
(assert (= var3119!2 (str.++ var3119!1 var2906)))
(assert true)
(define-const var702 String (append/672562846 var3193 "void TokenLexicalActions(Token matchedToken)")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void TokenLexicalActions(Token matchedToken)") 
(declare-const var3193!1 String)
(assert (= var3193!1 (str.++ var3193 "void TokenLexicalActions(Token matchedToken)")))
(assert true)
(define-const var306 String (toString/-2075883882 var702)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3009!1 (Array Int var196))
(assert (not (= var3009!1 null-__Array__Int__var196__)))
(assert (= (select var3009!1 0) (cast-from-String-to-var196 var306))) ; Statement: $r1[0] = $r6 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1309-to-var3703 var2275) var3009!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var2275!1 var1309)
(declare-const var3009!2 (Array Int var196))
(define-const var2521 (Array Int var196) arr-var196-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var2521!1 (Array Int var196))
(assert (not (= var2521!1 null-__Array__Int__var196__)))
(assert (= (select var2521!1 0) (cast-from-String-to-var196 "{"))) ; Statement: $r7[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1309-to-var3703 var2275!1) var2521!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var2275!2 var1309)
(declare-const var2521!2 (Array Int var196))
(define-const var915 (Array Int var196) arr-var196-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var915!1 (Array Int var196))
(assert (not (= var915!1 null-__Array__Int__var196__)))
(assert (= (select var915!1 0) (cast-from-String-to-var196 "   switch(jjmatchedKind)"))) ; Statement: $r8[0] = "   switch(jjmatchedKind)" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1309-to-var3703 var2275!2) var915!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var2275!3 var1309)
(declare-const var915!2 (Array Int var196))
(define-const var1360 (Array Int var196) arr-var196-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var1360!1 (Array Int var196))
(assert (not (= var1360!1 null-__Array__Int__var196__)))
(assert (= (select var1360!1 0) (cast-from-String-to-var196 "   {"))) ; Statement: $r9[0] = "   {" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1309-to-var3703 var2275!3) var1360!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var2275!4 var1309)
(declare-const var1360!2 (Array Int var196))
(define-const var387 Int 0) ; Statement: i18 = 0 
(assert true) ; Non Conditional
(define-const var506 Int var1309-maxOrdinal) ; Statement: $i0 = <org.javacc.parser.LexGen: int maxOrdinal> 
 ; Statement: if i18 >= $i0 goto $r10 = newarray (java.lang.Object)[1] 
(assert (>= var387 var506)) ; Cond: i18 >= $i0 
(define-const var3770 (Array Int var196) arr-var196-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var3770!1 (Array Int var196))
(assert (not (= var3770!1 null-__Array__Int__var196__)))
(assert (= (select var3770!1 0) (cast-from-String-to-var196 "      default :"))) ; Statement: $r10[0] = "      default :" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1309-to-var3703 var2275!4) var3770!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var2275!5 var1309)
(declare-const var3770!2 (Array Int var196))
(define-const var3784 (Array Int var196) arr-var196-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var3784!1 (Array Int var196))
(assert (not (= var3784!1 null-__Array__Int__var196__)))
(assert (= (select var3784!1 0) (cast-from-String-to-var196 "         break;"))) ; Statement: $r11[0] = "         break;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1309-to-var3703 var2275!5) var3784!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var2275!6 var1309)
(declare-const var3784!2 (Array Int var196))
(define-const var1649 (Array Int var196) arr-var196-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var1649!1 (Array Int var196))
(assert (not (= var1649!1 null-__Array__Int__var196__)))
(assert (= (select var1649!1 0) (cast-from-String-to-var196 "   }"))) ; Statement: $r12[0] = "   }" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1309-to-var3703 var2275!6) var1649!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r12) 

(declare-const var2275!7 var1309)
(declare-const var1649!2 (Array Int var196))
(define-const var3471 (Array Int var196) arr-var196-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(declare-const var3471!1 (Array Int var196))
(assert (not (= var3471!1 null-__Array__Int__var196__)))
(assert (= (select var3471!1 0) (cast-from-String-to-var196 "}"))) ; Statement: $r13[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1309-to-var3703 var2275!7) var3471!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var2275!8 var1309)
(declare-const var3471!2 (Array Int var196))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var196-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var196=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), cast-from-var1309-to-var3703=([org.javacc.parser.LexGen], org.javacc.parser.CodeGenerator)}
; {var1309=org.javacc.parser.LexGen, var2275=r0, var196=java.lang.Object, var3009=$r1, var3119=$r2, var2906=$r3, var3193=$r4, var702=$r5, var306=$r6, var3703=org.javacc.parser.CodeGenerator, var2521=$r7, var915=$r8, var1360=$r9, var387=i18, var506=$i0, var3770=$r10, var3784=$r11, var1649=$r12, var3471=$r13}
; {org.javacc.parser.LexGen=var1309, r0=var2275, java.lang.Object=var196, $r1=var3009, $r2=var3119, $r3=var2906, $r4=var3193, $r5=var702, $r6=var306, org.javacc.parser.CodeGenerator=var3703, $r7=var2521, $r8=var915, $r9=var1360, i18=var387, $i0=var506, $r10=var3770, $r11=var3784, $r12=var1649, $r13=var3471}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.LexGen;	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = <org.javacc.parser.LexGen: java.lang.String staticString>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void TokenLexicalActions(Token matchedToken)");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r6;	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r1);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "{";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "   switch(jjmatchedKind)";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r9[0] = "   {";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r9);	i18 = 0;	$i0 = <org.javacc.parser.LexGen: int maxOrdinal>;	if i18 >= $i0 goto $r10 = newarray (java.lang.Object)[1];	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "      default :";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r10);	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "         break;";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r11);	$r12 = newarray (java.lang.Object)[1];	$r12[0] = "   }";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r12);	$r13 = newarray (java.lang.Object)[1];	$r13[0] = "}";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r13);	return
;block_num 3