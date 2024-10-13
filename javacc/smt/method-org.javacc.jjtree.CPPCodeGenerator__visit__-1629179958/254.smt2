(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1529 0)
(declare-sort var2255 0)
(declare-sort var3900 0)
(declare-sort var36 0)
(declare-sort var646 0)
(declare-sort var1302 0)
(declare-sort var716 0)
(declare-sort var637 0)
(declare-sort var298 0)
(declare-sort var3977 0)
(declare-sort var1988 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3900-to-var36 (var3900) var36)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var716-init () var716)
(declare-fun getOutputFileName/1535357316 (var36) String)
(declare-fun <init>/-1681595970 (var716 String) void)
(declare-fun getName/1128186653 (var716) String)
(declare-fun var637_getIdString/-267384014 (var646 String) String)
(declare-fun var298_booleanValue/1280995494 (String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var36 String) void)
(declare-fun print/-1652180213 (var36 String) void)
(declare-fun childrenAccept/-572725015 (var3977 var1988 var3900) var3900)
(declare-fun cast-from-var2255-to-var3977 (var2255) var3977)
(declare-fun cast-from-var1529-to-var1988 (var1529) var1988)
(declare-fun cast-from-var36-to-var3900 (var36) var3900)
(declare-const null-var1529 var1529)
(declare-const null-var2255 var2255)
(declare-const null-var3900 var3900)
(declare-const var1302-toolList var646)
(declare-const var2166 var1529) ; Statement: r17 := @this: org.javacc.jjtree.CPPCodeGenerator 
(assert (not (= var2166 null-var1529)))
(declare-const var1512 var2255) ; Statement: r16 := @parameter0: org.javacc.jjtree.ASTGrammar 
(assert (not (= var1512 null-var2255)))
(declare-const var3490 var3900) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3490 null-var3900)))
(define-const var3471 var36 (cast-from-var3900-to-var36 var3490)) ; Statement: r1 = (org.javacc.jjtree.IO) r0 
(define-const var3717 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3717)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3717!1 String)
(assert (= var3717!1 ""))
(assert true)
(define-const var3136 String (append/672562846 var3717!1 "/*@bgen(jjtree) ")) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ") 
(declare-const var3717!2 String)
(assert (= var3717!2 (str.++ var3717!1 "/*@bgen(jjtree) ")))
(define-const var1189 var646 var1302-toolList) ; Statement: $r4 = <org.javacc.jjtree.JJTreeGlobals: java.util.List toolList> 
(define-const var1128 var716 var716-init) ; Statement: $r3 = new java.io.File 
(assert true)
(define-const var1190 String (getOutputFileName/1535357316 var3471)) ; Statement: $r5 = virtualinvoke r1.<org.javacc.jjtree.IO: java.lang.String getOutputFileName()>() 
(assert true)
;(assert (<init>/-1681595970 var1128 var1190)) ; Statement: specialinvoke $r3.<java.io.File: void <init>(java.lang.String)>($r5) 

(declare-const var1128!1 var716)
(declare-const var1190!1 String)
(assert true)
(define-const var3079 String (getName/1128186653 var1128!1)) ; Statement: $r6 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>() 
(define-const var1548 String (var637_getIdString/-267384014 var1189 var3079)) ; Statement: $r7 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getIdString(java.util.List,java.lang.String)>($r4, $r6) 
(assert true)
(define-const var13 String (append/672562846 var3136 var1548)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3136!1 String)
(assert (= var3136!1 (str.++ var3136 var1548)))
(define-const var1269 Bool (var298_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z0 == 0 goto $r19 = " */" 
(assert (= (ite var1269 1 0) 0)) ; Cond: $z0 == 0 
(define-const var527 String " */") ; Statement: $r19 = " */" 
(assert true) ; Non Conditional
(assert true)
(define-const var2211 String (append/672562846 var13 var527)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var13!1 String)
(assert (= var13!1 (str.++ var13 var527)))
(assert true)
(define-const var3772 String (toString/-2075883882 var2211)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var3471 var3772)) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void println(java.lang.String)>($r11) 

(declare-const var3471!1 var36)
(declare-const var3772!1 String)
(define-const var541 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var541)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var541!1 String)
(assert (= var541!1 ""))
(define-const var813 Bool (var298_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z1 == 0 goto $r20 = "/*" 
(assert (= (ite var813 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1739 String "/*") ; Statement: $r20 = "/*" 
(assert true) ; Non Conditional
(assert true)
(define-const var2126 String (append/672562846 var541!1 var1739)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var541!2 String)
(assert (= var541!2 (str.++ var541!1 var1739)))
(assert true)
(define-const var1681 String (append/672562846 var2126 "@egen*/")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@egen*/") 
(declare-const var2126!1 String)
(assert (= var2126!1 (str.++ var2126 "@egen*/")))
(assert true)
(define-const var1272 String (toString/-2075883882 var1681)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var3471!1 var1272)) ; Statement: virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r15) 

(declare-const var3471!2 var36)
(declare-const var1272!1 String)
(assert true)
(define-const var2359 var3900 (childrenAccept/-572725015 (cast-from-var2255-to-var3977 var1512) (cast-from-var1529-to-var1988 var2166) (cast-from-var36-to-var3900 var3471!2))) ; Statement: $r18 = virtualinvoke r16.<org.javacc.jjtree.ASTGrammar: java.lang.Object childrenAccept(org.javacc.jjtree.JJTreeParserVisitor,java.lang.Object)>(r17, r1) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3900-to-var36=([java.lang.Object], org.javacc.jjtree.IO), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var716-init=([], java.io.File), getOutputFileName/1535357316=([org.javacc.jjtree.IO], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), var637_getIdString/-267384014=([java.util.List, java.lang.String], java.lang.String), var298_booleanValue/1280995494=([java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void), childrenAccept/-572725015=([org.javacc.jjtree.SimpleNode, org.javacc.jjtree.JJTreeParserVisitor, java.lang.Object], java.lang.Object), cast-from-var2255-to-var3977=([org.javacc.jjtree.ASTGrammar], org.javacc.jjtree.SimpleNode), cast-from-var1529-to-var1988=([org.javacc.jjtree.CPPCodeGenerator], org.javacc.jjtree.JJTreeParserVisitor), cast-from-var36-to-var3900=([org.javacc.jjtree.IO], java.lang.Object)}
; {var1529=org.javacc.jjtree.CPPCodeGenerator, var2166=r17, var2255=org.javacc.jjtree.ASTGrammar, var1512=r16, var3900=java.lang.Object, var3490=r0, var36=org.javacc.jjtree.IO, var3471=r1, var3717=$r2, var3136=$r8, var646=java.util.List, var1302=org.javacc.jjtree.JJTreeGlobals, var1189=$r4, var716=java.io.File, var1128=$r3, var1190=$r5, var3079=$r6, var637=org.javacc.parser.JavaCCGlobals, var1548=$r7, var13=$r9, var298=org.javacc.parser.Options, var1269=$z0, var527=$r19, var2211=$r10, var3772=$r11, var541=$r12, var813=$z1, var1739=$r20, var2126=$r13, var1681=$r14, var1272=$r15, var3977=org.javacc.jjtree.SimpleNode, var1988=org.javacc.jjtree.JJTreeParserVisitor, var2359=$r18}
; {org.javacc.jjtree.CPPCodeGenerator=var1529, r17=var2166, org.javacc.jjtree.ASTGrammar=var2255, r16=var1512, java.lang.Object=var3900, r0=var3490, org.javacc.jjtree.IO=var36, r1=var3471, $r2=var3717, $r8=var3136, java.util.List=var646, org.javacc.jjtree.JJTreeGlobals=var1302, $r4=var1189, java.io.File=var716, $r3=var1128, $r5=var1190, $r6=var3079, org.javacc.parser.JavaCCGlobals=var637, $r7=var1548, $r9=var13, org.javacc.parser.Options=var298, $z0=var1269, $r19=var527, $r10=var2211, $r11=var3772, $r12=var541, $z1=var813, $r20=var1739, $r13=var2126, $r14=var1681, $r15=var1272, org.javacc.jjtree.SimpleNode=var3977, org.javacc.jjtree.JJTreeParserVisitor=var1988, $r18=var2359}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r17 := @this: org.javacc.jjtree.CPPCodeGenerator;	r16 := @parameter0: org.javacc.jjtree.ASTGrammar;	r0 := @parameter1: java.lang.Object;	r1 = (org.javacc.jjtree.IO) r0;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/*@bgen(jjtree) ");	$r4 = <org.javacc.jjtree.JJTreeGlobals: java.util.List toolList>;	$r3 = new java.io.File;	$r5 = virtualinvoke r1.<org.javacc.jjtree.IO: java.lang.String getOutputFileName()>();	specialinvoke $r3.<java.io.File: void <init>(java.lang.String)>($r5);	$r6 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>();	$r7 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String getIdString(java.util.List,java.lang.String)>($r4, $r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z0 == 0 goto $r19 = " */";	$r19 = " */";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.javacc.jjtree.IO: void println(java.lang.String)>($r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z1 == 0 goto $r20 = "/*";	$r20 = "/*";	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@egen*/");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<org.javacc.jjtree.IO: void print(java.lang.String)>($r15);	$r18 = virtualinvoke r16.<org.javacc.jjtree.ASTGrammar: java.lang.Object childrenAccept(org.javacc.jjtree.JJTreeParserVisitor,java.lang.Object)>(r17, r1);	return $r18
;block_num 5