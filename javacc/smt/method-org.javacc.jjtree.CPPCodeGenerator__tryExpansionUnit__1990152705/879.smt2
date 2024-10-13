(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var727 0)
(declare-sort var2092 0)
(declare-sort var3965 0)
(declare-sort var362 0)
(declare-sort var3267 0)
(declare-sort var298 0)
(declare-sort var1821 0)
(declare-sort var3124 0)
(declare-sort var575 0)
(declare-sort var1357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var3965 String) void)
(declare-fun var727_closeJJTreeComment/367463215 (var3965) void)
(declare-fun jjtAccept/1015814214 (var298 var1821 var3124) var3124)
(declare-fun cast-from-var3267-to-var298 (var3267) var298)
(declare-fun cast-from-var727-to-var1821 (var727) var1821)
(declare-fun cast-from-var3965-to-var3124 (var3965) var3124)
(declare-fun var727_openJJTreeComment/-1832418392 (var3965 String) void)
(declare-fun println/2032072932 (var3965) void)
(declare-fun var575-init () var575)
(declare-fun <init>/-849847095 (var575) void)
(declare-fun var727_findThrown/2030327109 (var2092 var575 var3267) void)
(declare-fun elements/1588354051 (var575) var1357)
(declare-fun insertCatchBlocks/-1244466602 (var727 var2092 var3965 var1357 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var2092) Bool)
(declare-const null-var727 var727)
(declare-const null-var2092 var2092)
(declare-const null-var3965 var3965)
(declare-const null-String String)
(declare-const null-var3267 var3267)
(declare-const var1457 var727) ; Statement: r7 := @this: org.javacc.jjtree.CPPCodeGenerator 
(assert (not (= var1457 null-var727)))
(declare-const var1651 var2092) ; Statement: r9 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var1651 null-var2092)))
(declare-const var1118 var3965) ; Statement: r0 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var1118 null-var3965)))
(declare-const var436 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var436 null-String)))
(declare-const var2334 var3267) ; Statement: r6 := @parameter3: org.javacc.jjtree.JJTreeNode 
(assert (not (= var2334 null-var3267)))
(define-const var1314 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1314)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1314!1 String)
(assert (= var1314!1 ""))
(assert true)
(define-const var1064 String (append/672562846 var1314!1 var436)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1314!2 String)
(assert (= var1314!2 (str.++ var1314!1 var436)))
(assert true)
(define-const var1781 String (append/672562846 var1064 "try {")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("try {") 
(declare-const var1064!1 String)
(assert (= var1064!1 (str.++ var1064 "try {")))
(assert true)
(define-const var1613 String (toString/-2075883882 var1781)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var1118 var1613)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5) 

(declare-const var1118!1 var3965)
(declare-const var1613!1 String)
;(assert (var727_closeJJTreeComment/367463215 var1118!1)) ; Statement: staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0) 

(declare-const var1118!2 var3965)
(assert true)
;(assert (jjtAccept/1015814214 (cast-from-var3267-to-var298 var2334) (cast-from-var727-to-var1821 var1457) (cast-from-var3965-to-var3124 var1118!2))) ; Statement: virtualinvoke r6.<org.javacc.jjtree.JJTreeNode: java.lang.Object jjtAccept(org.javacc.jjtree.JJTreeParserVisitor,java.lang.Object)>(r7, r0) 

(declare-const var2334!1 var3267)
(declare-const var1457!1 var727)
(declare-const var1118!3 var3965)
;(assert (var727_openJJTreeComment/-1832418392 var1118!3 null-String)) ; Statement: staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void openJJTreeComment(org.javacc.jjtree.IO,java.lang.String)>(r0, null) 

(declare-const var1118!4 var3965)
(declare-const var71 var362)
(assert true)
;(assert (println/2032072932 var1118!4)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println()>() 

(declare-const var1118!5 var3965)
(define-const var3105 var575 var575-init) ; Statement: $r8 = new java.util.Hashtable 
(assert true)
;(assert (<init>/-849847095 var3105)) ; Statement: specialinvoke $r8.<java.util.Hashtable: void <init>()>() 

(declare-const var3105!1 var575)
;(assert (var727_findThrown/2030327109 var1651 var3105!1 var2334!1)) ; Statement: staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void findThrown(org.javacc.jjtree.NodeScope,java.util.Hashtable,org.javacc.jjtree.JJTreeNode)>(r9, $r8, r6) 

(declare-const var1651!1 var2092)
(declare-const var3105!2 var575)
(declare-const var2334!2 var3267)
(assert true)
(define-const var324 var1357 (elements/1588354051 var3105!2)) ; Statement: r10 = virtualinvoke $r8.<java.util.Hashtable: java.util.Enumeration elements()>() 
(assert true)
;(assert (insertCatchBlocks/-1244466602 var1457!1 var1651!1 var1118!5 var324 var436)) ; Statement: specialinvoke r7.<org.javacc.jjtree.CPPCodeGenerator: void insertCatchBlocks(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.util.Enumeration,java.lang.String)>(r9, r0, r10, r2) 

(declare-const var1457!2 var727)
(declare-const var1651!2 var2092)
(declare-const var1118!6 var3965)
(declare-const var324!1 var1357)
(declare-const var436!1 String)
(define-const var3973 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3973)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3973!1 String)
(assert (= var3973!1 ""))
(assert true)
(define-const var1734 String (append/672562846 var3973!1 var436!1)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3973!2 String)
(assert (= var3973!2 (str.++ var3973!1 var436!1)))
(assert true)
(define-const var1351 String (append/672562846 var1734 "} {")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("} {") 
(declare-const var1734!1 String)
(assert (= var1734!1 (str.++ var1734 "} {")))
(assert true)
(define-const var2357 String (toString/-2075883882 var1351)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var1118!6 var2357)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r14) 

(declare-const var1118!7 var3965)
(declare-const var2357!1 String)
(assert true)
(define-const var3952 Bool (usesCloseNodeVar/-1769174946 var1651!2)) ; Statement: $z0 = virtualinvoke r9.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z0 == 0 goto $r15 = new java.lang.StringBuilder 
(assert (= (ite var3952 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1429 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1429)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1429!1 String)
(assert (= var1429!1 ""))
(assert true)
(define-const var3312 String (append/672562846 var1429!1 var436!1)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1429!2 String)
(assert (= var1429!2 (str.++ var1429!1 var436!1)))
(assert true)
(define-const var660 String (append/672562846 var3312 "}")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3312!1 String)
(assert (= var3312!1 (str.++ var3312 "}")))
(assert true)
(define-const var3970 String (toString/-2075883882 var660)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var1118!7 var3970)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r18) 

(declare-const var1118!8 var3965)
(declare-const var3970!1 String)
;(assert (var727_closeJJTreeComment/367463215 var1118!8)) ; Statement: staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0) 

(declare-const var1118!9 var3965)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), var727_closeJJTreeComment/367463215=([org.javacc.jjtree.IO], void), jjtAccept/1015814214=([org.javacc.jjtree.SimpleNode, org.javacc.jjtree.JJTreeParserVisitor, java.lang.Object], java.lang.Object), cast-from-var3267-to-var298=([org.javacc.jjtree.JJTreeNode], org.javacc.jjtree.SimpleNode), cast-from-var727-to-var1821=([org.javacc.jjtree.CPPCodeGenerator], org.javacc.jjtree.JJTreeParserVisitor), cast-from-var3965-to-var3124=([org.javacc.jjtree.IO], java.lang.Object), var727_openJJTreeComment/-1832418392=([org.javacc.jjtree.IO, java.lang.String], void), println/2032072932=([org.javacc.jjtree.IO], void), var575-init=([], java.util.Hashtable), <init>/-849847095=([java.util.Hashtable], void), var727_findThrown/2030327109=([org.javacc.jjtree.NodeScope, java.util.Hashtable, org.javacc.jjtree.JJTreeNode], void), elements/1588354051=([java.util.Hashtable], java.util.Enumeration), insertCatchBlocks/-1244466602=([org.javacc.jjtree.CPPCodeGenerator, org.javacc.jjtree.NodeScope, org.javacc.jjtree.IO, java.util.Enumeration, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean)}
; {var727=org.javacc.jjtree.CPPCodeGenerator, var1457=r7, var2092=org.javacc.jjtree.NodeScope, var1651=r9, var3965=org.javacc.jjtree.IO, var1118=r0, var436=r2, var362=null_type, var3267=org.javacc.jjtree.JJTreeNode, var2334=r6, var1314=$r1, var1064=$r3, var1781=$r4, var1613=$r5, var298=org.javacc.jjtree.SimpleNode, var1821=org.javacc.jjtree.JJTreeParserVisitor, var3124=java.lang.Object, var71=null, var575=java.util.Hashtable, var3105=$r8, var1357=java.util.Enumeration, var324=r10, var3973=$r11, var1734=$r12, var1351=$r13, var2357=$r14, var3952=$z0, var1429=$r15, var3312=$r16, var660=$r17, var3970=$r18}
; {org.javacc.jjtree.CPPCodeGenerator=var727, r7=var1457, org.javacc.jjtree.NodeScope=var2092, r9=var1651, org.javacc.jjtree.IO=var3965, r0=var1118, r2=var436, null_type=var362, org.javacc.jjtree.JJTreeNode=var3267, r6=var2334, $r1=var1314, $r3=var1064, $r4=var1781, $r5=var1613, org.javacc.jjtree.SimpleNode=var298, org.javacc.jjtree.JJTreeParserVisitor=var1821, java.lang.Object=var3124, null=var71, java.util.Hashtable=var575, $r8=var3105, java.util.Enumeration=var1357, r10=var324, $r11=var3973, $r12=var1734, $r13=var1351, $r14=var2357, $z0=var3952, $r15=var1429, $r16=var3312, $r17=var660, $r18=var3970}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r7 := @this: org.javacc.jjtree.CPPCodeGenerator;	r9 := @parameter0: org.javacc.jjtree.NodeScope;	r0 := @parameter1: org.javacc.jjtree.IO;	r2 := @parameter2: java.lang.String;	r6 := @parameter3: org.javacc.jjtree.JJTreeNode;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("try {");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5);	staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0);	virtualinvoke r6.<org.javacc.jjtree.JJTreeNode: java.lang.Object jjtAccept(org.javacc.jjtree.JJTreeParserVisitor,java.lang.Object)>(r7, r0);	staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void openJJTreeComment(org.javacc.jjtree.IO,java.lang.String)>(r0, null);	virtualinvoke r0.<org.javacc.jjtree.IO: void println()>();	$r8 = new java.util.Hashtable;	specialinvoke $r8.<java.util.Hashtable: void <init>()>();	staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void findThrown(org.javacc.jjtree.NodeScope,java.util.Hashtable,org.javacc.jjtree.JJTreeNode)>(r9, $r8, r6);	r10 = virtualinvoke $r8.<java.util.Hashtable: java.util.Enumeration elements()>();	specialinvoke r7.<org.javacc.jjtree.CPPCodeGenerator: void insertCatchBlocks(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.util.Enumeration,java.lang.String)>(r9, r0, r10, r2);	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("} {");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r14);	$z0 = virtualinvoke r9.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z0 == 0 goto $r15 = new java.lang.StringBuilder;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r18);	staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0);	return
;block_num 2