(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3344 0)
(declare-sort var3065 0)
(declare-sort var2669 0)
(declare-sort var2613 0)
(declare-sort var2163 0)
(declare-sort var361 0)
(declare-sort var2592 0)
(declare-sort var263 0)
(declare-sort var3214 0)
(declare-sort var2940 0)
(declare-sort var1645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2669-to-var2613 (var2669) var2613)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2592-init () var2592)
(declare-fun getOutputFileName/1535357316 (var2613) String)
(declare-fun <init>/-1681595970 (var2592 String) void)
(declare-fun getName/1128186653 (var2592) String)
(declare-fun var263_getIdString/-267384014 (var2163 String) String)
(declare-fun var3214_booleanValue/1280995494 (String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var2613 String) void)
(declare-fun print/-1652180213 (var2613 String) void)
(declare-fun childrenAccept/-572725015 (var2940 var1645 var2669) var2669)
(declare-fun cast-from-var3065-to-var2940 (var3065) var2940)
(declare-fun cast-from-var3344-to-var1645 (var3344) var1645)
(declare-fun cast-from-var2613-to-var2669 (var2613) var2669)
(declare-const null-var3344 var3344)
(declare-const null-var3065 var3065)
(declare-const null-var2669 var2669)
(declare-const var361-toolList var2163)
(declare-const var2654 var3344) ; Statement: r17 := @this: org.javacc.jjtree.CPPCodeGenerator 
(assert (not (= var2654 null-var3344)))
(declare-const var2071 var3065) ; Statement: r16 := @parameter0: org.javacc.jjtree.ASTGrammar 
(assert (not (= var2071 null-var3065)))
(declare-const var728 var2669) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var728 null-var2669)))
(define-const var197 var2613 (cast-from-var2669-to-var2613 var728)) ; Statement: r1 = (org.javacc.jjtree.IO) r0 
(define-const var3243 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3243)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3243!1 String)
(assert (= var3243!1 ""))
(assert true)
(define-const var2121 String (append/672562846 var3243!1 "/*@bgen(jjtree) ")) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ") 
(declare-const var3243!2 String)
(assert (= var3243!2 (str.++ var3243!1 "/*@bgen(jjtree) ")))
(define-const var2250 var2163 var361-toolList) ; Statement: $r4 = <org.javacc.jjtree.JJTreeGlobals: java.util.List toolList> 
(define-const var299 var2592 var2592-init) ; Statement: $r3 = new java.io.File 
(assert true)
(define-const var3583 String (getOutputFileName/1535357316 var197)) ; Statement: $r5 = virtualinvoke r1.<org.javacc.jjtree.IO: java.lang.String getOutputFileName()>() 
(assert true)
;(assert (<init>/-1681595970 var299 var3583)) ; Statement: specialinvoke $r3.<java.io.File: void <init>(java.lang.String)>($r5) 

(declare-const var299!1 var2592)
(declare-const var3583!1 String)
(assert true)
(define-const var1744 String (getName/1128186653 var299!1)) ; Statement: $r6 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>() 
(define-const var1772 String (var263_getIdString/-267384014 var2250 var1744)) ; Statement: $r7 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getIdString(java.util.List,java.lang.String)>($r4, $r6) 
(assert true)
(define-const var1088 String (append/672562846 var2121 var1772)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2121!1 String)
(assert (= var2121!1 (str.++ var2121 var1772)))
(define-const var3731 Bool (var3214_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z0 == 0 goto $r19 = " */" 
(assert (not (= (ite var3731 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var451 String "") ; Statement: $r19 = "" 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var358 String (append/672562846 var1088 var451)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1088!1 String)
(assert (= var1088!1 (str.++ var1088 var451)))
(assert true)
(define-const var2109 String (toString/-2075883882 var358)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var197 var2109)) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void println(java.lang.String)>($r11) 

(declare-const var197!1 var2613)
(declare-const var2109!1 String)
(define-const var428 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var428)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var428!1 String)
(assert (= var428!1 ""))
(define-const var1292 Bool (var3214_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z1 == 0 goto $r20 = "/*" 
(assert (= (ite var1292 1 0) 0)) ; Cond: $z1 == 0 
(define-const var821 String "/*") ; Statement: $r20 = "/*" 
(assert true) ; Non Conditional
(assert true)
(define-const var2540 String (append/672562846 var428!1 var821)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var428!2 String)
(assert (= var428!2 (str.++ var428!1 var821)))
(assert true)
(define-const var906 String (append/672562846 var2540 "@egen*/")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@egen*/") 
(declare-const var2540!1 String)
(assert (= var2540!1 (str.++ var2540 "@egen*/")))
(assert true)
(define-const var1389 String (toString/-2075883882 var906)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var197!1 var1389)) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r15) 

(declare-const var197!2 var2613)
(declare-const var1389!1 String)
(assert true)
(define-const var3675 var2669 (childrenAccept/-572725015 (cast-from-var3065-to-var2940 var2071) (cast-from-var3344-to-var1645 var2654) (cast-from-var2613-to-var2669 var197!2))) ; Statement: $r18 = virtualinvoke r16.<org.javacc.jjtree.ASTGrammar: java.lang.Object childrenAccept(org.javacc.jjtree.JJTreeParserVisitor,java.lang.Object)>(r17, r1) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2669-to-var2613=([java.lang.Object], org.javacc.jjtree.IO), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2592-init=([], java.io.File), getOutputFileName/1535357316=([org.javacc.jjtree.IO], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), var263_getIdString/-267384014=([java.util.List, java.lang.String], java.lang.String), var3214_booleanValue/1280995494=([java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void), childrenAccept/-572725015=([org.javacc.jjtree.SimpleNode, org.javacc.jjtree.JJTreeParserVisitor, java.lang.Object], java.lang.Object), cast-from-var3065-to-var2940=([org.javacc.jjtree.ASTGrammar], org.javacc.jjtree.SimpleNode), cast-from-var3344-to-var1645=([org.javacc.jjtree.CPPCodeGenerator], org.javacc.jjtree.JJTreeParserVisitor), cast-from-var2613-to-var2669=([org.javacc.jjtree.IO], java.lang.Object)}
; {var3344=org.javacc.jjtree.CPPCodeGenerator, var2654=r17, var3065=org.javacc.jjtree.ASTGrammar, var2071=r16, var2669=java.lang.Object, var728=r0, var2613=org.javacc.jjtree.IO, var197=r1, var3243=$r2, var2121=$r8, var2163=java.util.List, var361=org.javacc.jjtree.JJTreeGlobals, var2250=$r4, var2592=java.io.File, var299=$r3, var3583=$r5, var1744=$r6, var263=org.javacc.parser.JavaCCGlobals, var1772=$r7, var1088=$r9, var3214=org.javacc.parser.Options, var3731=$z0, var451=$r19, var358=$r10, var2109=$r11, var428=$r12, var1292=$z1, var821=$r20, var2540=$r13, var906=$r14, var1389=$r15, var2940=org.javacc.jjtree.SimpleNode, var1645=org.javacc.jjtree.JJTreeParserVisitor, var3675=$r18}
; {org.javacc.jjtree.CPPCodeGenerator=var3344, r17=var2654, org.javacc.jjtree.ASTGrammar=var3065, r16=var2071, java.lang.Object=var2669, r0=var728, org.javacc.jjtree.IO=var2613, r1=var197, $r2=var3243, $r8=var2121, java.util.List=var2163, org.javacc.jjtree.JJTreeGlobals=var361, $r4=var2250, java.io.File=var2592, $r3=var299, $r5=var3583, $r6=var1744, org.javacc.parser.JavaCCGlobals=var263, $r7=var1772, $r9=var1088, org.javacc.parser.Options=var3214, $z0=var3731, $r19=var451, $r10=var358, $r11=var2109, $r12=var428, $z1=var1292, $r20=var821, $r13=var2540, $r14=var906, $r15=var1389, org.javacc.jjtree.SimpleNode=var2940, org.javacc.jjtree.JJTreeParserVisitor=var1645, $r18=var3675}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r17 := @this: org.javacc.jjtree.CPPCodeGenerator;	r16 := @parameter0: org.javacc.jjtree.ASTGrammar;	r0 := @parameter1: java.lang.Object;	r1 = (org.javacc.jjtree.IO) r0;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ");	$r4 = <org.javacc.jjtree.JJTreeGlobals: java.util.List toolList>;	$r3 = new java.io.File;	$r5 = virtualinvoke r1.<org.javacc.jjtree.IO: java.lang.String getOutputFileName()>();	specialinvoke $r3.<java.io.File: void <init>(java.lang.String)>($r5);	$r6 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>();	$r7 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getIdString(java.util.List,java.lang.String)>($r4, $r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z0 == 0 goto $r19 = " */";	$r19 = "";	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.javacc.jjtree.IO: void println(java.lang.String)>($r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z1 == 0 goto $r20 = "/*";	$r20 = "/*";	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@egen*/");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r15);	$r18 = virtualinvoke r16.<org.javacc.jjtree.ASTGrammar: java.lang.Object childrenAccept(org.javacc.jjtree.JJTreeParserVisitor,java.lang.Object)>(r17, r1);	return $r18
;block_num 5