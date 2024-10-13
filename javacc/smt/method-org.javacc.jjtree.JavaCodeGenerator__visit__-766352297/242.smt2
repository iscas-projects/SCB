(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3239 0)
(declare-sort var1453 0)
(declare-sort var2490 0)
(declare-sort var2189 0)
(declare-sort var3427 0)
(declare-sort var3215 0)
(declare-sort var1714 0)
(declare-sort var670 0)
(declare-sort var929 0)
(declare-sort var2342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2490-to-var2189 (var2490) var2189)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1714-init () var1714)
(declare-fun getOutputFileName/1535357316 (var2189) String)
(declare-fun <init>/-1681595970 (var1714 String) void)
(declare-fun getName/1128186653 (var1714) String)
(declare-fun var670_getIdString/-267384014 (var3427 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var2189 String) void)
(declare-fun print/-1652180213 (var2189 String) void)
(declare-fun childrenAccept/-572725015 (var929 var2342 var2490) var2490)
(declare-fun cast-from-var1453-to-var929 (var1453) var929)
(declare-fun cast-from-var3239-to-var2342 (var3239) var2342)
(declare-fun cast-from-var2189-to-var2490 (var2189) var2490)
(declare-const null-var3239 var3239)
(declare-const null-var1453 var1453)
(declare-const null-var2490 var2490)
(declare-const var3215-toolList var3427)
(declare-const var1564 var3239) ; Statement: r13 := @this: org.javacc.jjtree.JavaCodeGenerator 
(assert (not (= var1564 null-var3239)))
(declare-const var2056 var1453) ; Statement: r12 := @parameter0: org.javacc.jjtree.ASTGrammar 
(assert (not (= var2056 null-var1453)))
(declare-const var1898 var2490) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1898 null-var2490)))
(define-const var536 var2189 (cast-from-var2490-to-var2189 var1898)) ; Statement: r1 = (org.javacc.jjtree.IO) r0 
(define-const var3052 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3052)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3052!1 String)
(assert (= var3052!1 ""))
(assert true)
(define-const var2672 String (append/672562846 var3052!1 "/*@bgen(jjtree) ")) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ") 
(declare-const var3052!2 String)
(assert (= var3052!2 (str.++ var3052!1 "/*@bgen(jjtree) ")))
(define-const var3907 var3427 var3215-toolList) ; Statement: $r4 = <org.javacc.jjtree.JJTreeGlobals: java.util.List toolList> 
(define-const var1541 var1714 var1714-init) ; Statement: $r3 = new java.io.File 
(assert true)
(define-const var2716 String (getOutputFileName/1535357316 var536)) ; Statement: $r5 = virtualinvoke r1.<org.javacc.jjtree.IO: java.lang.String getOutputFileName()>() 
(assert true)
;(assert (<init>/-1681595970 var1541 var2716)) ; Statement: specialinvoke $r3.<java.io.File: void <init>(java.lang.String)>($r5) 

(declare-const var1541!1 var1714)
(declare-const var2716!1 String)
(assert true)
(define-const var737 String (getName/1128186653 var1541!1)) ; Statement: $r6 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>() 
(define-const var1587 String (var670_getIdString/-267384014 var3907 var737)) ; Statement: $r7 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getIdString(java.util.List,java.lang.String)>($r4, $r6) 
(assert true)
(define-const var2316 String (append/672562846 var2672 var1587)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2672!1 String)
(assert (= var2672!1 (str.++ var2672 var1587)))
(assert true)
(define-const var3535 String (append/672562846 var2316 " */")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */") 
(declare-const var2316!1 String)
(assert (= var2316!1 (str.++ var2316 " */")))
(assert true)
(define-const var955 String (toString/-2075883882 var3535)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var536 var955)) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void println(java.lang.String)>($r11) 

(declare-const var536!1 var2189)
(declare-const var955!1 String)
(assert true)
;(assert (print/-1652180213 var536!1 "/*@egen*/")) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>("/*@egen*/") 

(declare-const var536!2 var2189)
(declare-const var3765 String)
(assert true)
(define-const var2322 var2490 (childrenAccept/-572725015 (cast-from-var1453-to-var929 var2056) (cast-from-var3239-to-var2342 var1564) (cast-from-var2189-to-var2490 var536!2))) ; Statement: $r14 = virtualinvoke r12.<org.javacc.jjtree.ASTGrammar: java.lang.Object childrenAccept(org.javacc.jjtree.JJTreeParserVisitor,java.lang.Object)>(r13, r1) 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2490-to-var2189=([java.lang.Object], org.javacc.jjtree.IO), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1714-init=([], java.io.File), getOutputFileName/1535357316=([org.javacc.jjtree.IO], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), var670_getIdString/-267384014=([java.util.List, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void), childrenAccept/-572725015=([org.javacc.jjtree.SimpleNode, org.javacc.jjtree.JJTreeParserVisitor, java.lang.Object], java.lang.Object), cast-from-var1453-to-var929=([org.javacc.jjtree.ASTGrammar], org.javacc.jjtree.SimpleNode), cast-from-var3239-to-var2342=([org.javacc.jjtree.JavaCodeGenerator], org.javacc.jjtree.JJTreeParserVisitor), cast-from-var2189-to-var2490=([org.javacc.jjtree.IO], java.lang.Object)}
; {var3239=org.javacc.jjtree.JavaCodeGenerator, var1564=r13, var1453=org.javacc.jjtree.ASTGrammar, var2056=r12, var2490=java.lang.Object, var1898=r0, var2189=org.javacc.jjtree.IO, var536=r1, var3052=$r2, var2672=$r8, var3427=java.util.List, var3215=org.javacc.jjtree.JJTreeGlobals, var3907=$r4, var1714=java.io.File, var1541=$r3, var2716=$r5, var737=$r6, var670=org.javacc.parser.JavaCCGlobals, var1587=$r7, var2316=$r9, var3535=$r10, var955=$r11, var3765="/*@egen*/", var929=org.javacc.jjtree.SimpleNode, var2342=org.javacc.jjtree.JJTreeParserVisitor, var2322=$r14}
; {org.javacc.jjtree.JavaCodeGenerator=var3239, r13=var1564, org.javacc.jjtree.ASTGrammar=var1453, r12=var2056, java.lang.Object=var2490, r0=var1898, org.javacc.jjtree.IO=var2189, r1=var536, $r2=var3052, $r8=var2672, java.util.List=var3427, org.javacc.jjtree.JJTreeGlobals=var3215, $r4=var3907, java.io.File=var1714, $r3=var1541, $r5=var2716, $r6=var737, org.javacc.parser.JavaCCGlobals=var670, $r7=var1587, $r9=var2316, $r10=var3535, $r11=var955, "/*@egen*/"=var3765, org.javacc.jjtree.SimpleNode=var929, org.javacc.jjtree.JJTreeParserVisitor=var2342, $r14=var2322}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.javacc.jjtree.JavaCodeGenerator;	r12 := @parameter0: org.javacc.jjtree.ASTGrammar;	r0 := @parameter1: java.lang.Object;	r1 = (org.javacc.jjtree.IO) r0;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ");	$r4 = <org.javacc.jjtree.JJTreeGlobals: java.util.List toolList>;	$r3 = new java.io.File;	$r5 = virtualinvoke r1.<org.javacc.jjtree.IO: java.lang.String getOutputFileName()>();	specialinvoke $r3.<java.io.File: void <init>(java.lang.String)>($r5);	$r6 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>();	$r7 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getIdString(java.util.List,java.lang.String)>($r4, $r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.javacc.jjtree.IO: void println(java.lang.String)>($r11);	virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>("/*@egen*/");	$r14 = virtualinvoke r12.<org.javacc.jjtree.ASTGrammar: java.lang.Object childrenAccept(org.javacc.jjtree.JJTreeParserVisitor,java.lang.Object)>(r13, r1);	return $r14
;block_num 1