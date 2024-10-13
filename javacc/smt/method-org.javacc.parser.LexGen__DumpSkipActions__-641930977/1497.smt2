(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3326 0)
(declare-sort var2389 0)
(declare-sort var2107 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2389-init () (Array Int var2389))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var2389 (String) var2389)
(declare-fun genCodeLine/787715242 (var2107 (Array Int var2389)) void)
(declare-fun cast-from-var3326-to-var2107 (var3326) var2107)
(declare-const null-var3326 var3326)
(declare-const var3326-staticString String)
(declare-const null-__Array__Int__var2389__ (Array Int var2389))
(declare-const var3326-maxOrdinal Int)
(declare-const var2315 var3326) ; Statement: r0 := @this: org.javacc.parser.LexGen 
(assert (not (= var2315 null-var3326)))
(define-const var1441 (Array Int var2389) arr-var2389-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var283 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var283)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var283!1 String)
(assert (= var283!1 ""))
(define-const var344 String var3326-staticString) ; Statement: $r3 = <org.javacc.parser.LexGen: java.lang.String staticString> 
(assert true)
(define-const var3786 String (append/672562846 var283!1 var344)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var283!2 String)
(assert (= var283!2 (str.++ var283!1 var344)))
(assert true)
(define-const var3539 String (append/672562846 var3786 "void SkipLexicalActions(Token matchedToken)")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void SkipLexicalActions(Token matchedToken)") 
(declare-const var3786!1 String)
(assert (= var3786!1 (str.++ var3786 "void SkipLexicalActions(Token matchedToken)")))
(assert true)
(define-const var921 String (toString/-2075883882 var3539)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1441!1 (Array Int var2389))
(assert (not (= var1441!1 null-__Array__Int__var2389__)))
(assert (= (select var1441!1 0) (cast-from-String-to-var2389 var921))) ; Statement: $r1[0] = $r6 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3326-to-var2107 var2315) var1441!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var2315!1 var3326)
(declare-const var1441!2 (Array Int var2389))
(define-const var781 (Array Int var2389) arr-var2389-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var781!1 (Array Int var2389))
(assert (not (= var781!1 null-__Array__Int__var2389__)))
(assert (= (select var781!1 0) (cast-from-String-to-var2389 "{"))) ; Statement: $r7[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3326-to-var2107 var2315!1) var781!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var2315!2 var3326)
(declare-const var781!2 (Array Int var2389))
(define-const var2239 (Array Int var2389) arr-var2389-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var2239!1 (Array Int var2389))
(assert (not (= var2239!1 null-__Array__Int__var2389__)))
(assert (= (select var2239!1 0) (cast-from-String-to-var2389 "   switch(jjmatchedKind)"))) ; Statement: $r8[0] = "   switch(jjmatchedKind)" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3326-to-var2107 var2315!2) var2239!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var2315!3 var3326)
(declare-const var2239!2 (Array Int var2389))
(define-const var3906 (Array Int var2389) arr-var2389-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var3906!1 (Array Int var2389))
(assert (not (= var3906!1 null-__Array__Int__var2389__)))
(assert (= (select var3906!1 0) (cast-from-String-to-var2389 "   {"))) ; Statement: $r9[0] = "   {" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3326-to-var2107 var2315!3) var3906!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var2315!4 var3326)
(declare-const var3906!2 (Array Int var2389))
(define-const var2468 Int 0) ; Statement: i18 = 0 
(assert true) ; Non Conditional
(define-const var1918 Int var3326-maxOrdinal) ; Statement: $i0 = <org.javacc.parser.LexGen: int maxOrdinal> 
 ; Statement: if i18 >= $i0 goto $r10 = newarray (java.lang.Object)[1] 
(assert (>= var2468 var1918)) ; Cond: i18 >= $i0 
(define-const var3693 (Array Int var2389) arr-var2389-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var3693!1 (Array Int var2389))
(assert (not (= var3693!1 null-__Array__Int__var2389__)))
(assert (= (select var3693!1 0) (cast-from-String-to-var2389 "      default :"))) ; Statement: $r10[0] = "      default :" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3326-to-var2107 var2315!4) var3693!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var2315!5 var3326)
(declare-const var3693!2 (Array Int var2389))
(define-const var182 (Array Int var2389) arr-var2389-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var182!1 (Array Int var2389))
(assert (not (= var182!1 null-__Array__Int__var2389__)))
(assert (= (select var182!1 0) (cast-from-String-to-var2389 "         break;"))) ; Statement: $r11[0] = "         break;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3326-to-var2107 var2315!5) var182!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var2315!6 var3326)
(declare-const var182!2 (Array Int var2389))
(define-const var1026 (Array Int var2389) arr-var2389-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var1026!1 (Array Int var2389))
(assert (not (= var1026!1 null-__Array__Int__var2389__)))
(assert (= (select var1026!1 0) (cast-from-String-to-var2389 "   }"))) ; Statement: $r12[0] = "   }" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3326-to-var2107 var2315!6) var1026!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r12) 

(declare-const var2315!7 var3326)
(declare-const var1026!2 (Array Int var2389))
(define-const var700 (Array Int var2389) arr-var2389-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(declare-const var700!1 (Array Int var2389))
(assert (not (= var700!1 null-__Array__Int__var2389__)))
(assert (= (select var700!1 0) (cast-from-String-to-var2389 "}"))) ; Statement: $r13[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var3326-to-var2107 var2315!7) var700!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var2315!8 var3326)
(declare-const var700!2 (Array Int var2389))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2389-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var2389=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), cast-from-var3326-to-var2107=([org.javacc.parser.LexGen], org.javacc.parser.CodeGenerator)}
; {var3326=org.javacc.parser.LexGen, var2315=r0, var2389=java.lang.Object, var1441=$r1, var283=$r2, var344=$r3, var3786=$r4, var3539=$r5, var921=$r6, var2107=org.javacc.parser.CodeGenerator, var781=$r7, var2239=$r8, var3906=$r9, var2468=i18, var1918=$i0, var3693=$r10, var182=$r11, var1026=$r12, var700=$r13}
; {org.javacc.parser.LexGen=var3326, r0=var2315, java.lang.Object=var2389, $r1=var1441, $r2=var283, $r3=var344, $r4=var3786, $r5=var3539, $r6=var921, org.javacc.parser.CodeGenerator=var2107, $r7=var781, $r8=var2239, $r9=var3906, i18=var2468, $i0=var1918, $r10=var3693, $r11=var182, $r12=var1026, $r13=var700}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.LexGen;	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = <org.javacc.parser.LexGen: java.lang.String staticString>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void SkipLexicalActions(Token matchedToken)");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r6;	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r1);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "{";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "   switch(jjmatchedKind)";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r9[0] = "   {";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r9);	i18 = 0;	$i0 = <org.javacc.parser.LexGen: int maxOrdinal>;	if i18 >= $i0 goto $r10 = newarray (java.lang.Object)[1];	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "      default :";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r10);	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "         break;";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r11);	$r12 = newarray (java.lang.Object)[1];	$r12[0] = "   }";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r12);	$r13 = newarray (java.lang.Object)[1];	$r13[0] = "}";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r13);	return
;block_num 3