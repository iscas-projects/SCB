(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var563 0)
(declare-sort var2205 0)
(declare-sort var449 0)
(declare-sort var1890 0)
(declare-sort var2500 0)
(declare-sort var3370 0)
(declare-sort var2110 0)
(declare-sort var2315 0)
(declare-sort var1777 0)
(declare-sort var678 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var449 String) void)
(declare-fun var563_closeJJTreeComment/-534030660 (var449) void)
(declare-fun jjtAccept/1015814214 (var3370 var2110 var2315) var2315)
(declare-fun cast-from-var2500-to-var3370 (var2500) var3370)
(declare-fun cast-from-var563-to-var2110 (var563) var2110)
(declare-fun cast-from-var449-to-var2315 (var449) var2315)
(declare-fun var563_openJJTreeComment/-2036001483 (var449 String) void)
(declare-fun println/2032072932 (var449) void)
(declare-fun var1777-init () var1777)
(declare-fun <init>/-849847095 (var1777) void)
(declare-fun var563_findThrown/976253650 (var2205 var1777 var2500) void)
(declare-fun elements/1588354051 (var1777) var678)
(declare-fun insertCatchBlocks/-1746295133 (var563 var2205 var449 var678 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var2205) Bool)
(declare-const null-var563 var563)
(declare-const null-var2205 var2205)
(declare-const null-var449 var449)
(declare-const null-String String)
(declare-const null-var2500 var2500)
(declare-const var3034 var563) ; Statement: r7 := @this: org.javacc.jjtree.JavaCodeGenerator 
(assert (not (= var3034 null-var563)))
(declare-const var369 var2205) ; Statement: r9 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var369 null-var2205)))
(declare-const var894 var449) ; Statement: r0 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var894 null-var449)))
(declare-const var1046 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1046 null-String)))
(declare-const var2830 var2500) ; Statement: r6 := @parameter3: org.javacc.jjtree.JJTreeNode 
(assert (not (= var2830 null-var2500)))
(define-const var2748 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2748)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2748!1 String)
(assert (= var2748!1 ""))
(assert true)
(define-const var3595 String (append/672562846 var2748!1 var1046)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2748!2 String)
(assert (= var2748!2 (str.++ var2748!1 var1046)))
(assert true)
(define-const var1259 String (append/672562846 var3595 "try {")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("try {") 
(declare-const var3595!1 String)
(assert (= var3595!1 (str.++ var3595 "try {")))
(assert true)
(define-const var3393 String (toString/-2075883882 var1259)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var894 var3393)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5) 

(declare-const var894!1 var449)
(declare-const var3393!1 String)
;(assert (var563_closeJJTreeComment/-534030660 var894!1)) ; Statement: staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0) 

(declare-const var894!2 var449)
(assert true)
;(assert (jjtAccept/1015814214 (cast-from-var2500-to-var3370 var2830) (cast-from-var563-to-var2110 var3034) (cast-from-var449-to-var2315 var894!2))) ; Statement: virtualinvoke r6.<org.javacc.jjtree.JJTreeNode: java.lang.Object jjtAccept(org.javacc.jjtree.JJTreeParserVisitor,java.lang.Object)>(r7, r0) 

(declare-const var2830!1 var2500)
(declare-const var3034!1 var563)
(declare-const var894!3 var449)
;(assert (var563_openJJTreeComment/-2036001483 var894!3 null-String)) ; Statement: staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void openJJTreeComment(org.javacc.jjtree.IO,java.lang.String)>(r0, null) 

(declare-const var894!4 var449)
(declare-const var3843 var1890)
(assert true)
;(assert (println/2032072932 var894!4)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println()>() 

(declare-const var894!5 var449)
(define-const var2513 var1777 var1777-init) ; Statement: $r8 = new java.util.Hashtable 
(assert true)
;(assert (<init>/-849847095 var2513)) ; Statement: specialinvoke $r8.<java.util.Hashtable: void <init>()>() 

(declare-const var2513!1 var1777)
;(assert (var563_findThrown/976253650 var369 var2513!1 var2830!1)) ; Statement: staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void findThrown(org.javacc.jjtree.NodeScope,java.util.Hashtable,org.javacc.jjtree.JJTreeNode)>(r9, $r8, r6) 

(declare-const var369!1 var2205)
(declare-const var2513!2 var1777)
(declare-const var2830!2 var2500)
(assert true)
(define-const var986 var678 (elements/1588354051 var2513!2)) ; Statement: r10 = virtualinvoke $r8.<java.util.Hashtable: java.util.Enumeration elements()>() 
(assert true)
;(assert (insertCatchBlocks/-1746295133 var3034!1 var369!1 var894!5 var986 var1046)) ; Statement: specialinvoke r7.<org.javacc.jjtree.JavaCodeGenerator: void insertCatchBlocks(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.util.Enumeration,java.lang.String)>(r9, r0, r10, r2) 

(declare-const var3034!2 var563)
(declare-const var369!2 var2205)
(declare-const var894!6 var449)
(declare-const var986!1 var678)
(declare-const var1046!1 String)
(define-const var83 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var83)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var83!1 String)
(assert (= var83!1 ""))
(assert true)
(define-const var674 String (append/672562846 var83!1 var1046!1)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var83!2 String)
(assert (= var83!2 (str.++ var83!1 var1046!1)))
(assert true)
(define-const var1475 String (append/672562846 var674 "} finally {")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("} finally {") 
(declare-const var674!1 String)
(assert (= var674!1 (str.++ var674 "} finally {")))
(assert true)
(define-const var3489 String (toString/-2075883882 var1475)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var894!6 var3489)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r14) 

(declare-const var894!7 var449)
(declare-const var3489!1 String)
(assert true)
(define-const var2357 Bool (usesCloseNodeVar/-1769174946 var369!2)) ; Statement: $z0 = virtualinvoke r9.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z0 == 0 goto $r15 = new java.lang.StringBuilder 
(assert (= (ite var2357 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2044 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2044)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2044!1 String)
(assert (= var2044!1 ""))
(assert true)
(define-const var3804 String (append/672562846 var2044!1 var1046!1)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2044!2 String)
(assert (= var2044!2 (str.++ var2044!1 var1046!1)))
(assert true)
(define-const var574 String (append/672562846 var3804 "}")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3804!1 String)
(assert (= var3804!1 (str.++ var3804 "}")))
(assert true)
(define-const var2285 String (toString/-2075883882 var574)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var894!7 var2285)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r18) 

(declare-const var894!8 var449)
(declare-const var2285!1 String)
;(assert (var563_closeJJTreeComment/-534030660 var894!8)) ; Statement: staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0) 

(declare-const var894!9 var449)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), var563_closeJJTreeComment/-534030660=([org.javacc.jjtree.IO], void), jjtAccept/1015814214=([org.javacc.jjtree.SimpleNode, org.javacc.jjtree.JJTreeParserVisitor, java.lang.Object], java.lang.Object), cast-from-var2500-to-var3370=([org.javacc.jjtree.JJTreeNode], org.javacc.jjtree.SimpleNode), cast-from-var563-to-var2110=([org.javacc.jjtree.JavaCodeGenerator], org.javacc.jjtree.JJTreeParserVisitor), cast-from-var449-to-var2315=([org.javacc.jjtree.IO], java.lang.Object), var563_openJJTreeComment/-2036001483=([org.javacc.jjtree.IO, java.lang.String], void), println/2032072932=([org.javacc.jjtree.IO], void), var1777-init=([], java.util.Hashtable), <init>/-849847095=([java.util.Hashtable], void), var563_findThrown/976253650=([org.javacc.jjtree.NodeScope, java.util.Hashtable, org.javacc.jjtree.JJTreeNode], void), elements/1588354051=([java.util.Hashtable], java.util.Enumeration), insertCatchBlocks/-1746295133=([org.javacc.jjtree.JavaCodeGenerator, org.javacc.jjtree.NodeScope, org.javacc.jjtree.IO, java.util.Enumeration, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean)}
; {var563=org.javacc.jjtree.JavaCodeGenerator, var3034=r7, var2205=org.javacc.jjtree.NodeScope, var369=r9, var449=org.javacc.jjtree.IO, var894=r0, var1046=r2, var1890=null_type, var2500=org.javacc.jjtree.JJTreeNode, var2830=r6, var2748=$r1, var3595=$r3, var1259=$r4, var3393=$r5, var3370=org.javacc.jjtree.SimpleNode, var2110=org.javacc.jjtree.JJTreeParserVisitor, var2315=java.lang.Object, var3843=null, var1777=java.util.Hashtable, var2513=$r8, var678=java.util.Enumeration, var986=r10, var83=$r11, var674=$r12, var1475=$r13, var3489=$r14, var2357=$z0, var2044=$r15, var3804=$r16, var574=$r17, var2285=$r18}
; {org.javacc.jjtree.JavaCodeGenerator=var563, r7=var3034, org.javacc.jjtree.NodeScope=var2205, r9=var369, org.javacc.jjtree.IO=var449, r0=var894, r2=var1046, null_type=var1890, org.javacc.jjtree.JJTreeNode=var2500, r6=var2830, $r1=var2748, $r3=var3595, $r4=var1259, $r5=var3393, org.javacc.jjtree.SimpleNode=var3370, org.javacc.jjtree.JJTreeParserVisitor=var2110, java.lang.Object=var2315, null=var3843, java.util.Hashtable=var1777, $r8=var2513, java.util.Enumeration=var678, r10=var986, $r11=var83, $r12=var674, $r13=var1475, $r14=var3489, $z0=var2357, $r15=var2044, $r16=var3804, $r17=var574, $r18=var2285}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r7 := @this: org.javacc.jjtree.JavaCodeGenerator;	r9 := @parameter0: org.javacc.jjtree.NodeScope;	r0 := @parameter1: org.javacc.jjtree.IO;	r2 := @parameter2: java.lang.String;	r6 := @parameter3: org.javacc.jjtree.JJTreeNode;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("try {");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5);	staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0);	virtualinvoke r6.<org.javacc.jjtree.JJTreeNode: java.lang.Object jjtAccept(org.javacc.jjtree.JJTreeParserVisitor,java.lang.Object)>(r7, r0);	staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void openJJTreeComment(org.javacc.jjtree.IO,java.lang.String)>(r0, null);	virtualinvoke r0.<org.javacc.jjtree.IO: void println()>();	$r8 = new java.util.Hashtable;	specialinvoke $r8.<java.util.Hashtable: void <init>()>();	staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void findThrown(org.javacc.jjtree.NodeScope,java.util.Hashtable,org.javacc.jjtree.JJTreeNode)>(r9, $r8, r6);	r10 = virtualinvoke $r8.<java.util.Hashtable: java.util.Enumeration elements()>();	specialinvoke r7.<org.javacc.jjtree.JavaCodeGenerator: void insertCatchBlocks(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.util.Enumeration,java.lang.String)>(r9, r0, r10, r2);	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("} finally {");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r14);	$z0 = virtualinvoke r9.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z0 == 0 goto $r15 = new java.lang.StringBuilder;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r18);	staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0);	return
;block_num 2