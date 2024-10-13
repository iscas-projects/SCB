(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1177 0)
(declare-sort var404 0)
(declare-sort var1783 0)
(declare-sort var2475 0)
(declare-sort var3314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var404-init () (Array Int var404))
(declare-fun cast-from-String-to-var404 (String) var404)
(declare-fun genCodeLine/787715242 (var1177 (Array Int var404)) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1783_InitStateName/1714614009 () Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1177 var1177)
(declare-const null-__Array__Int__var404__ (Array Int var404))
(declare-const var1783-generatedStates Int)
(declare-const var3314-lg var2475)
(declare-const var2475-lexStateSuffix String)
(declare-const var2173 var1177) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var2173 null-var1177)))
(define-const var3735 (Array Int var404) arr-var404-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var3735!1 (Array Int var404))
(assert (not (= var3735!1 null-__Array__Int__var404__)))
(assert (= (select var3735!1 0) (cast-from-String-to-var404 "{"))) ; Statement: $r1[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var2173 var3735!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var2173!1 var1177)
(declare-const var3735!2 (Array Int var404))
(define-const var2732 Int var1783-generatedStates) ; Statement: $i0 = <org.javacc.parser.NfaState: int generatedStates> 
 ; Statement: if $i0 == 0 goto $r2 = newarray (java.lang.Object)[1] 
(assert (not (= var2732 0))) ; Negate: Cond: $i0 == 0  
(define-const var1477 (Array Int var404) arr-var404-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(define-const var221 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var221)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var221!1 String)
(assert (= var221!1 ""))
(assert true)
(define-const var2289 String (append/672562846 var221!1 "   return jjMoveNfa")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("   return jjMoveNfa") 
(declare-const var221!2 String)
(assert (= var221!2 (str.++ var221!1 "   return jjMoveNfa")))
(define-const var3940 var2475 var3314-lg) ; Statement: $r6 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg> 
(define-const var667 String var2475-lexStateSuffix) ; Statement: $r7 = <org.javacc.parser.LexGen: java.lang.String lexStateSuffix> 
(assert true)
(define-const var574 String (append/672562846 var2289 var667)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2289!1 String)
(assert (= var2289!1 (str.++ var2289 var667)))
(assert true)
(define-const var1544 String (append/672562846 var574 "(")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var574!1 String)
(assert (= var574!1 (str.++ var574 "(")))
(define-const var0 Int var1783_InitStateName/1714614009) ; Statement: $i1 = staticinvoke <org.javacc.parser.NfaState: int InitStateName()>() 
(assert true)
(define-const var2278 String (append/-1001720160 var1544 var0)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1544!1 String)
(assert (str.prefixof var1544 var1544!1))
(assert true)
(define-const var1813 String (append/672562846 var2278 ", 0);")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", 0);") 
(declare-const var2278!1 String)
(assert (= var2278!1 (str.++ var2278 ", 0);")))
(assert true)
(define-const var1616 String (toString/-2075883882 var1813)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1477!1 (Array Int var404))
(assert (not (= var1477!1 null-__Array__Int__var404__)))
(assert (= (select var1477!1 0) (cast-from-String-to-var404 var1616))) ; Statement: $r4[0] = $r13 
(assert true)
;(assert (genCodeLine/787715242 var2173!1 var1477!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r4) 

(declare-const var2173!2 var1177)
(declare-const var1477!2 (Array Int var404))
 ; Statement: goto [?= $r3 = newarray (java.lang.Object)[1]] 
(assert true) ; Non Conditional
(define-const var2895 (Array Int var404) arr-var404-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var2895!1 (Array Int var404))
(assert (not (= var2895!1 null-__Array__Int__var404__)))
(assert (= (select var2895!1 0) (cast-from-String-to-var404 "}"))) ; Statement: $r3[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var2173!2 var2895!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r3) 

(declare-const var2173!3 var1177)
(declare-const var2895!2 (Array Int var404))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var404-init=([], java.lang.Object[]), cast-from-String-to-var404=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1783_InitStateName/1714614009=([], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1177=org.javacc.parser.CodeGenerator, var2173=r0, var404=java.lang.Object, var3735=$r1, var1783=org.javacc.parser.NfaState, var2732=$i0, var1477=$r4, var221=$r5, var2289=$r8, var2475=org.javacc.parser.LexGen, var3314=org.javacc.parser.Main, var3940=$r6, var667=$r7, var574=$r9, var1544=$r10, var0=$i1, var2278=$r11, var1813=$r12, var1616=$r13, var2895=$r3}
; {org.javacc.parser.CodeGenerator=var1177, r0=var2173, java.lang.Object=var404, $r1=var3735, org.javacc.parser.NfaState=var1783, $i0=var2732, $r4=var1477, $r5=var221, $r8=var2289, org.javacc.parser.LexGen=var2475, org.javacc.parser.Main=var3314, $r6=var3940, $r7=var667, $r9=var574, $r10=var1544, $i1=var0, $r11=var2278, $r12=var1813, $r13=var1616, $r3=var2895}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.javacc.parser.CodeGenerator;	$r1 = newarray (java.lang.Object)[1];	$r1[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1);	$i0 = <org.javacc.parser.NfaState: int generatedStates>;	if $i0 == 0 goto $r2 = newarray (java.lang.Object)[1];	$r4 = newarray (java.lang.Object)[1];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("   return jjMoveNfa");	$r6 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg>;	$r7 = <org.javacc.parser.LexGen: java.lang.String lexStateSuffix>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$i1 = staticinvoke <org.javacc.parser.NfaState: int InitStateName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", 0);");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r4[0] = $r13;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r4);	goto [?= $r3 = newarray (java.lang.Object)[1]];	$r3 = newarray (java.lang.Object)[1];	$r3[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r3);	return
;block_num 3