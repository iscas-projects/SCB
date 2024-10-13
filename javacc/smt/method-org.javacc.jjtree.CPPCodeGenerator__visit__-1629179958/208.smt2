(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var822 0)
(declare-sort var1249 0)
(declare-sort var3769 0)
(declare-sort var3135 0)
(declare-sort var2389 0)
(declare-sort var3726 0)
(declare-sort var1924 0)
(declare-sort var593 0)
(declare-sort var1763 0)
(declare-sort var2776 0)
(declare-sort var1787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3769-to-var3135 (var3769) var3135)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1924-init () var1924)
(declare-fun getOutputFileName/1535357316 (var3135) String)
(declare-fun <init>/-1681595970 (var1924 String) void)
(declare-fun getName/1128186653 (var1924) String)
(declare-fun var593_getIdString/-267384014 (var2389 String) String)
(declare-fun var1763_booleanValue/1280995494 (String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var3135 String) void)
(declare-fun print/-1652180213 (var3135 String) void)
(declare-fun childrenAccept/-572725015 (var2776 var1787 var3769) var3769)
(declare-fun cast-from-var1249-to-var2776 (var1249) var2776)
(declare-fun cast-from-var822-to-var1787 (var822) var1787)
(declare-fun cast-from-var3135-to-var3769 (var3135) var3769)
(declare-const null-var822 var822)
(declare-const null-var1249 var1249)
(declare-const null-var3769 var3769)
(declare-const var3726-toolList var2389)
(declare-const var775 var822) ; Statement: r17 := @this: org.javacc.jjtree.CPPCodeGenerator 
(assert (not (= var775 null-var822)))
(declare-const var3240 var1249) ; Statement: r16 := @parameter0: org.javacc.jjtree.ASTGrammar 
(assert (not (= var3240 null-var1249)))
(declare-const var2101 var3769) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2101 null-var3769)))
(define-const var3538 var3135 (cast-from-var3769-to-var3135 var2101)) ; Statement: r1 = (org.javacc.jjtree.IO) r0 
(define-const var1311 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1311)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1311!1 String)
(assert (= var1311!1 ""))
(assert true)
(define-const var2804 String (append/672562846 var1311!1 "/*@bgen(jjtree) ")) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ") 
(declare-const var1311!2 String)
(assert (= var1311!2 (str.++ var1311!1 "/*@bgen(jjtree) ")))
(define-const var296 var2389 var3726-toolList) ; Statement: $r4 = <org.javacc.jjtree.JJTreeGlobals: java.util.List toolList> 
(define-const var1436 var1924 var1924-init) ; Statement: $r3 = new java.io.File 
(assert true)
(define-const var1726 String (getOutputFileName/1535357316 var3538)) ; Statement: $r5 = virtualinvoke r1.<org.javacc.jjtree.IO: java.lang.String getOutputFileName()>() 
(assert true)
;(assert (<init>/-1681595970 var1436 var1726)) ; Statement: specialinvoke $r3.<java.io.File: void <init>(java.lang.String)>($r5) 

(declare-const var1436!1 var1924)
(declare-const var1726!1 String)
(assert true)
(define-const var338 String (getName/1128186653 var1436!1)) ; Statement: $r6 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>() 
(define-const var1123 String (var593_getIdString/-267384014 var296 var338)) ; Statement: $r7 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getIdString(java.util.List,java.lang.String)>($r4, $r6) 
(assert true)
(define-const var97 String (append/672562846 var2804 var1123)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2804!1 String)
(assert (= var2804!1 (str.++ var2804 var1123)))
(define-const var1762 Bool (var1763_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z0 == 0 goto $r19 = " */" 
(assert (not (= (ite var1762 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2309 String "") ; Statement: $r19 = "" 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2871 String (append/672562846 var97 var2309)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var97!1 String)
(assert (= var97!1 (str.++ var97 var2309)))
(assert true)
(define-const var3280 String (toString/-2075883882 var2871)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var3538 var3280)) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void println(java.lang.String)>($r11) 

(declare-const var3538!1 var3135)
(declare-const var3280!1 String)
(define-const var1275 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1275)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1275!1 String)
(assert (= var1275!1 ""))
(define-const var976 Bool (var1763_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z1 == 0 goto $r20 = "/*" 
(assert (not (= (ite var976 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2102 String "") ; Statement: $r20 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1455 String (append/672562846 var1275!1 var2102)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1275!2 String)
(assert (= var1275!2 (str.++ var1275!1 var2102)))
(assert true)
(define-const var3664 String (append/672562846 var1455 "@egen*/")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@egen*/") 
(declare-const var1455!1 String)
(assert (= var1455!1 (str.++ var1455 "@egen*/")))
(assert true)
(define-const var3292 String (toString/-2075883882 var3664)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var3538!1 var3292)) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r15) 

(declare-const var3538!2 var3135)
(declare-const var3292!1 String)
(assert true)
(define-const var2859 var3769 (childrenAccept/-572725015 (cast-from-var1249-to-var2776 var3240) (cast-from-var822-to-var1787 var775) (cast-from-var3135-to-var3769 var3538!2))) ; Statement: $r18 = virtualinvoke r16.<org.javacc.jjtree.ASTGrammar: java.lang.Object childrenAccept(org.javacc.jjtree.JJTreeParserVisitor,java.lang.Object)>(r17, r1) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3769-to-var3135=([java.lang.Object], org.javacc.jjtree.IO), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1924-init=([], java.io.File), getOutputFileName/1535357316=([org.javacc.jjtree.IO], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), var593_getIdString/-267384014=([java.util.List, java.lang.String], java.lang.String), var1763_booleanValue/1280995494=([java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void), childrenAccept/-572725015=([org.javacc.jjtree.SimpleNode, org.javacc.jjtree.JJTreeParserVisitor, java.lang.Object], java.lang.Object), cast-from-var1249-to-var2776=([org.javacc.jjtree.ASTGrammar], org.javacc.jjtree.SimpleNode), cast-from-var822-to-var1787=([org.javacc.jjtree.CPPCodeGenerator], org.javacc.jjtree.JJTreeParserVisitor), cast-from-var3135-to-var3769=([org.javacc.jjtree.IO], java.lang.Object)}
; {var822=org.javacc.jjtree.CPPCodeGenerator, var775=r17, var1249=org.javacc.jjtree.ASTGrammar, var3240=r16, var3769=java.lang.Object, var2101=r0, var3135=org.javacc.jjtree.IO, var3538=r1, var1311=$r2, var2804=$r8, var2389=java.util.List, var3726=org.javacc.jjtree.JJTreeGlobals, var296=$r4, var1924=java.io.File, var1436=$r3, var1726=$r5, var338=$r6, var593=org.javacc.parser.JavaCCGlobals, var1123=$r7, var97=$r9, var1763=org.javacc.parser.Options, var1762=$z0, var2309=$r19, var2871=$r10, var3280=$r11, var1275=$r12, var976=$z1, var2102=$r20, var1455=$r13, var3664=$r14, var3292=$r15, var2776=org.javacc.jjtree.SimpleNode, var1787=org.javacc.jjtree.JJTreeParserVisitor, var2859=$r18}
; {org.javacc.jjtree.CPPCodeGenerator=var822, r17=var775, org.javacc.jjtree.ASTGrammar=var1249, r16=var3240, java.lang.Object=var3769, r0=var2101, org.javacc.jjtree.IO=var3135, r1=var3538, $r2=var1311, $r8=var2804, java.util.List=var2389, org.javacc.jjtree.JJTreeGlobals=var3726, $r4=var296, java.io.File=var1924, $r3=var1436, $r5=var1726, $r6=var338, org.javacc.parser.JavaCCGlobals=var593, $r7=var1123, $r9=var97, org.javacc.parser.Options=var1763, $z0=var1762, $r19=var2309, $r10=var2871, $r11=var3280, $r12=var1275, $z1=var976, $r20=var2102, $r13=var1455, $r14=var3664, $r15=var3292, org.javacc.jjtree.SimpleNode=var2776, org.javacc.jjtree.JJTreeParserVisitor=var1787, $r18=var2859}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r17 := @this: org.javacc.jjtree.CPPCodeGenerator;	r16 := @parameter0: org.javacc.jjtree.ASTGrammar;	r0 := @parameter1: java.lang.Object;	r1 = (org.javacc.jjtree.IO) r0;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ");	$r4 = <org.javacc.jjtree.JJTreeGlobals: java.util.List toolList>;	$r3 = new java.io.File;	$r5 = virtualinvoke r1.<org.javacc.jjtree.IO: java.lang.String getOutputFileName()>();	specialinvoke $r3.<java.io.File: void <init>(java.lang.String)>($r5);	$r6 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>();	$r7 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getIdString(java.util.List,java.lang.String)>($r4, $r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z0 == 0 goto $r19 = " */";	$r19 = "";	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.javacc.jjtree.IO: void println(java.lang.String)>($r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z1 == 0 goto $r20 = "/*";	$r20 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@egen*/");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r15);	$r18 = virtualinvoke r16.<org.javacc.jjtree.ASTGrammar: java.lang.Object childrenAccept(org.javacc.jjtree.JJTreeParserVisitor,java.lang.Object)>(r17, r1);	return $r18
;block_num 5