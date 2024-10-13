(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1763 0)
(declare-sort var509 0)
(declare-sort var366 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var509-init () (Array Int var509))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var509 (String) var509)
(declare-fun genCodeLine/787715242 (var366 (Array Int var509)) void)
(declare-fun cast-from-var1763-to-var366 (var1763) var366)
(declare-const null-var1763 var1763)
(declare-const var1763-staticString String)
(declare-const null-__Array__Int__var509__ (Array Int var509))
(declare-const var1763-maxOrdinal Int)
(declare-const var3299 var1763) ; Statement: r0 := @this: org.javacc.parser.LexGen 
(assert (not (= var3299 null-var1763)))
(define-const var3090 (Array Int var509) arr-var509-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var1897 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1897)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1897!1 String)
(assert (= var1897!1 ""))
(define-const var905 String var1763-staticString) ; Statement: $r3 = <org.javacc.parser.LexGen: java.lang.String staticString> 
(assert true)
(define-const var2773 String (append/672562846 var1897!1 var905)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1897!2 String)
(assert (= var1897!2 (str.++ var1897!1 var905)))
(assert true)
(define-const var1091 String (append/672562846 var2773 "void MoreLexicalActions()")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void MoreLexicalActions()") 
(declare-const var2773!1 String)
(assert (= var2773!1 (str.++ var2773 "void MoreLexicalActions()")))
(assert true)
(define-const var2532 String (toString/-2075883882 var1091)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3090!1 (Array Int var509))
(assert (not (= var3090!1 null-__Array__Int__var509__)))
(assert (= (select var3090!1 0) (cast-from-String-to-var509 var2532))) ; Statement: $r1[0] = $r6 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1763-to-var366 var3299) var3090!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var3299!1 var1763)
(declare-const var3090!2 (Array Int var509))
(define-const var814 (Array Int var509) arr-var509-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var814!1 (Array Int var509))
(assert (not (= var814!1 null-__Array__Int__var509__)))
(assert (= (select var814!1 0) (cast-from-String-to-var509 "{"))) ; Statement: $r7[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1763-to-var366 var3299!1) var814!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var3299!2 var1763)
(declare-const var814!2 (Array Int var509))
(define-const var1026 (Array Int var509) arr-var509-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var1026!1 (Array Int var509))
(assert (not (= var1026!1 null-__Array__Int__var509__)))
(assert (= (select var1026!1 0) (cast-from-String-to-var509 "   jjimageLen += (lengthOfMatch = jjmatchedPos + 1);"))) ; Statement: $r8[0] = "   jjimageLen += (lengthOfMatch = jjmatchedPos + 1);" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1763-to-var366 var3299!2) var1026!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var3299!3 var1763)
(declare-const var1026!2 (Array Int var509))
(define-const var2316 (Array Int var509) arr-var509-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var2316!1 (Array Int var509))
(assert (not (= var2316!1 null-__Array__Int__var509__)))
(assert (= (select var2316!1 0) (cast-from-String-to-var509 "   switch(jjmatchedKind)"))) ; Statement: $r9[0] = "   switch(jjmatchedKind)" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1763-to-var366 var3299!3) var2316!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var3299!4 var1763)
(declare-const var2316!2 (Array Int var509))
(define-const var391 (Array Int var509) arr-var509-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var391!1 (Array Int var509))
(assert (not (= var391!1 null-__Array__Int__var509__)))
(assert (= (select var391!1 0) (cast-from-String-to-var509 "   {"))) ; Statement: $r10[0] = "   {" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1763-to-var366 var3299!4) var391!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var3299!5 var1763)
(declare-const var391!2 (Array Int var509))
(define-const var235 Int 0) ; Statement: i18 = 0 
(assert true) ; Non Conditional
(define-const var644 Int var1763-maxOrdinal) ; Statement: $i0 = <org.javacc.parser.LexGen: int maxOrdinal> 
 ; Statement: if i18 >= $i0 goto $r11 = newarray (java.lang.Object)[1] 
(assert (>= var235 var644)) ; Cond: i18 >= $i0 
(define-const var71 (Array Int var509) arr-var509-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var71!1 (Array Int var509))
(assert (not (= var71!1 null-__Array__Int__var509__)))
(assert (= (select var71!1 0) (cast-from-String-to-var509 "      default :"))) ; Statement: $r11[0] = "      default :" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1763-to-var366 var3299!5) var71!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var3299!6 var1763)
(declare-const var71!2 (Array Int var509))
(define-const var123 (Array Int var509) arr-var509-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var123!1 (Array Int var509))
(assert (not (= var123!1 null-__Array__Int__var509__)))
(assert (= (select var123!1 0) (cast-from-String-to-var509 "         break;"))) ; Statement: $r12[0] = "         break;" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1763-to-var366 var3299!6) var123!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r12) 

(declare-const var3299!7 var1763)
(declare-const var123!2 (Array Int var509))
(define-const var3074 (Array Int var509) arr-var509-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(declare-const var3074!1 (Array Int var509))
(assert (not (= var3074!1 null-__Array__Int__var509__)))
(assert (= (select var3074!1 0) (cast-from-String-to-var509 "   }"))) ; Statement: $r13[0] = "   }" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1763-to-var366 var3299!7) var3074!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var3299!8 var1763)
(declare-const var3074!2 (Array Int var509))
(define-const var1322 (Array Int var509) arr-var509-init) ; Statement: $r14 = newarray (java.lang.Object)[1] 
(declare-const var1322!1 (Array Int var509))
(assert (not (= var1322!1 null-__Array__Int__var509__)))
(assert (= (select var1322!1 0) (cast-from-String-to-var509 "}"))) ; Statement: $r14[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 (cast-from-var1763-to-var366 var3299!8) var1322!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r14) 

(declare-const var3299!9 var1763)
(declare-const var1322!2 (Array Int var509))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var509-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var509=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), cast-from-var1763-to-var366=([org.javacc.parser.LexGen], org.javacc.parser.CodeGenerator)}
; {var1763=org.javacc.parser.LexGen, var3299=r0, var509=java.lang.Object, var3090=$r1, var1897=$r2, var905=$r3, var2773=$r4, var1091=$r5, var2532=$r6, var366=org.javacc.parser.CodeGenerator, var814=$r7, var1026=$r8, var2316=$r9, var391=$r10, var235=i18, var644=$i0, var71=$r11, var123=$r12, var3074=$r13, var1322=$r14}
; {org.javacc.parser.LexGen=var1763, r0=var3299, java.lang.Object=var509, $r1=var3090, $r2=var1897, $r3=var905, $r4=var2773, $r5=var1091, $r6=var2532, org.javacc.parser.CodeGenerator=var366, $r7=var814, $r8=var1026, $r9=var2316, $r10=var391, i18=var235, $i0=var644, $r11=var71, $r12=var123, $r13=var3074, $r14=var1322}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.LexGen;	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = <org.javacc.parser.LexGen: java.lang.String staticString>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void MoreLexicalActions()");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r6;	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r1);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "{";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "   jjimageLen += (lengthOfMatch = jjmatchedPos + 1);";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r9[0] = "   switch(jjmatchedKind)";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r9);	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "   {";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r10);	i18 = 0;	$i0 = <org.javacc.parser.LexGen: int maxOrdinal>;	if i18 >= $i0 goto $r11 = newarray (java.lang.Object)[1];	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "      default :";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r11);	$r12 = newarray (java.lang.Object)[1];	$r12[0] = "         break;";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r12);	$r13 = newarray (java.lang.Object)[1];	$r13[0] = "   }";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r13);	$r14 = newarray (java.lang.Object)[1];	$r14[0] = "}";	virtualinvoke r0.<org.javacc.parser.LexGen: void genCodeLine(java.lang.Object[])>($r14);	return
;block_num 3