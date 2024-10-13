(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1835 0)
(declare-sort var3005 0)
(declare-sort var79 0)
(declare-sort var3951 0)
(declare-sort var2478 0)
(declare-sort var75 0)
(declare-sort var900 0)
(declare-sort var3589 0)
(declare-sort var667 0)
(declare-sort var3908 0)
(declare-sort var387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var79-to-var3951 (var79) var3951)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var900-init () var900)
(declare-fun getOutputFileName/1535357316 (var3951) String)
(declare-fun <init>/-1681595970 (var900 String) void)
(declare-fun getName/1128186653 (var900) String)
(declare-fun var3589_getIdString/-267384014 (var2478 String) String)
(declare-fun var667_booleanValue/1280995494 (String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var3951 String) void)
(declare-fun print/-1652180213 (var3951 String) void)
(declare-fun childrenAccept/-572725015 (var3908 var387 var79) var79)
(declare-fun cast-from-var3005-to-var3908 (var3005) var3908)
(declare-fun cast-from-var1835-to-var387 (var1835) var387)
(declare-fun cast-from-var3951-to-var79 (var3951) var79)
(declare-const null-var1835 var1835)
(declare-const null-var3005 var3005)
(declare-const null-var79 var79)
(declare-const var75-toolList var2478)
(declare-const var2876 var1835) ; Statement: r17 := @this: org.javacc.jjtree.CPPCodeGenerator 
(assert (not (= var2876 null-var1835)))
(declare-const var1629 var3005) ; Statement: r16 := @parameter0: org.javacc.jjtree.ASTGrammar 
(assert (not (= var1629 null-var3005)))
(declare-const var1718 var79) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1718 null-var79)))
(define-const var412 var3951 (cast-from-var79-to-var3951 var1718)) ; Statement: r1 = (org.javacc.jjtree.IO) r0 
(define-const var3329 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3329)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3329!1 String)
(assert (= var3329!1 ""))
(assert true)
(define-const var2952 String (append/672562846 var3329!1 "/*@bgen(jjtree) ")) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ") 
(declare-const var3329!2 String)
(assert (= var3329!2 (str.++ var3329!1 "/*@bgen(jjtree) ")))
(define-const var372 var2478 var75-toolList) ; Statement: $r4 = <org.javacc.jjtree.JJTreeGlobals: java.util.List toolList> 
(define-const var1595 var900 var900-init) ; Statement: $r3 = new java.io.File 
(assert true)
(define-const var2228 String (getOutputFileName/1535357316 var412)) ; Statement: $r5 = virtualinvoke r1.<org.javacc.jjtree.IO: java.lang.String getOutputFileName()>() 
(assert true)
;(assert (<init>/-1681595970 var1595 var2228)) ; Statement: specialinvoke $r3.<java.io.File: void <init>(java.lang.String)>($r5) 

(declare-const var1595!1 var900)
(declare-const var2228!1 String)
(assert true)
(define-const var3323 String (getName/1128186653 var1595!1)) ; Statement: $r6 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>() 
(define-const var183 String (var3589_getIdString/-267384014 var372 var3323)) ; Statement: $r7 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getIdString(java.util.List,java.lang.String)>($r4, $r6) 
(assert true)
(define-const var3170 String (append/672562846 var2952 var183)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2952!1 String)
(assert (= var2952!1 (str.++ var2952 var183)))
(define-const var1032 Bool (var667_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z0 == 0 goto $r19 = " */" 
(assert (= (ite var1032 1 0) 0)) ; Cond: $z0 == 0 
(define-const var136 String " */") ; Statement: $r19 = " */" 
(assert true) ; Non Conditional
(assert true)
(define-const var1659 String (append/672562846 var3170 var136)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3170!1 String)
(assert (= var3170!1 (str.++ var3170 var136)))
(assert true)
(define-const var3351 String (toString/-2075883882 var1659)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var412 var3351)) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void println(java.lang.String)>($r11) 

(declare-const var412!1 var3951)
(declare-const var3351!1 String)
(define-const var2892 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2892)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2892!1 String)
(assert (= var2892!1 ""))
(define-const var3109 Bool (var667_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z1 == 0 goto $r20 = "/*" 
(assert (not (= (ite var3109 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var789 String "") ; Statement: $r20 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)] 
(assert true) ; Non Conditional
(assert true)
(define-const var121 String (append/672562846 var2892!1 var789)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2892!2 String)
(assert (= var2892!2 (str.++ var2892!1 var789)))
(assert true)
(define-const var3978 String (append/672562846 var121 "@egen*/")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@egen*/") 
(declare-const var121!1 String)
(assert (= var121!1 (str.++ var121 "@egen*/")))
(assert true)
(define-const var2103 String (toString/-2075883882 var3978)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var412!1 var2103)) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r15) 

(declare-const var412!2 var3951)
(declare-const var2103!1 String)
(assert true)
(define-const var2239 var79 (childrenAccept/-572725015 (cast-from-var3005-to-var3908 var1629) (cast-from-var1835-to-var387 var2876) (cast-from-var3951-to-var79 var412!2))) ; Statement: $r18 = virtualinvoke r16.<org.javacc.jjtree.ASTGrammar: java.lang.Object childrenAccept(org.javacc.jjtree.JJTreeParserVisitor,java.lang.Object)>(r17, r1) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var79-to-var3951=([java.lang.Object], org.javacc.jjtree.IO), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var900-init=([], java.io.File), getOutputFileName/1535357316=([org.javacc.jjtree.IO], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), var3589_getIdString/-267384014=([java.util.List, java.lang.String], java.lang.String), var667_booleanValue/1280995494=([java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void), childrenAccept/-572725015=([org.javacc.jjtree.SimpleNode, org.javacc.jjtree.JJTreeParserVisitor, java.lang.Object], java.lang.Object), cast-from-var3005-to-var3908=([org.javacc.jjtree.ASTGrammar], org.javacc.jjtree.SimpleNode), cast-from-var1835-to-var387=([org.javacc.jjtree.CPPCodeGenerator], org.javacc.jjtree.JJTreeParserVisitor), cast-from-var3951-to-var79=([org.javacc.jjtree.IO], java.lang.Object)}
; {var1835=org.javacc.jjtree.CPPCodeGenerator, var2876=r17, var3005=org.javacc.jjtree.ASTGrammar, var1629=r16, var79=java.lang.Object, var1718=r0, var3951=org.javacc.jjtree.IO, var412=r1, var3329=$r2, var2952=$r8, var2478=java.util.List, var75=org.javacc.jjtree.JJTreeGlobals, var372=$r4, var900=java.io.File, var1595=$r3, var2228=$r5, var3323=$r6, var3589=org.javacc.parser.JavaCCGlobals, var183=$r7, var3170=$r9, var667=org.javacc.parser.Options, var1032=$z0, var136=$r19, var1659=$r10, var3351=$r11, var2892=$r12, var3109=$z1, var789=$r20, var121=$r13, var3978=$r14, var2103=$r15, var3908=org.javacc.jjtree.SimpleNode, var387=org.javacc.jjtree.JJTreeParserVisitor, var2239=$r18}
; {org.javacc.jjtree.CPPCodeGenerator=var1835, r17=var2876, org.javacc.jjtree.ASTGrammar=var3005, r16=var1629, java.lang.Object=var79, r0=var1718, org.javacc.jjtree.IO=var3951, r1=var412, $r2=var3329, $r8=var2952, java.util.List=var2478, org.javacc.jjtree.JJTreeGlobals=var75, $r4=var372, java.io.File=var900, $r3=var1595, $r5=var2228, $r6=var3323, org.javacc.parser.JavaCCGlobals=var3589, $r7=var183, $r9=var3170, org.javacc.parser.Options=var667, $z0=var1032, $r19=var136, $r10=var1659, $r11=var3351, $r12=var2892, $z1=var3109, $r20=var789, $r13=var121, $r14=var3978, $r15=var2103, org.javacc.jjtree.SimpleNode=var3908, org.javacc.jjtree.JJTreeParserVisitor=var387, $r18=var2239}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r17 := @this: org.javacc.jjtree.CPPCodeGenerator;	r16 := @parameter0: org.javacc.jjtree.ASTGrammar;	r0 := @parameter1: java.lang.Object;	r1 = (org.javacc.jjtree.IO) r0;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ");	$r4 = <org.javacc.jjtree.JJTreeGlobals: java.util.List toolList>;	$r3 = new java.io.File;	$r5 = virtualinvoke r1.<org.javacc.jjtree.IO: java.lang.String getOutputFileName()>();	specialinvoke $r3.<java.io.File: void <init>(java.lang.String)>($r5);	$r6 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>();	$r7 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getIdString(java.util.List,java.lang.String)>($r4, $r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z0 == 0 goto $r19 = " */";	$r19 = " */";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.javacc.jjtree.IO: void println(java.lang.String)>($r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z1 == 0 goto $r20 = "/*";	$r20 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@egen*/");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r15);	$r18 = virtualinvoke r16.<org.javacc.jjtree.ASTGrammar: java.lang.Object childrenAccept(org.javacc.jjtree.JJTreeParserVisitor,java.lang.Object)>(r17, r1);	return $r18
;block_num 5