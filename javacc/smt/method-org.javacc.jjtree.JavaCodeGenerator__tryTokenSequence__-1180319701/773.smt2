(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3326 0)
(declare-sort var2532 0)
(declare-sort var196 0)
(declare-sort var1388 0)
(declare-sort var754 0)
(declare-sort var3088 0)
(declare-sort var3560 0)
(declare-sort var3454 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var196 String) void)
(declare-fun var3326_closeJJTreeComment/-534030660 (var196) void)
(declare-fun next/-1103324373 (var754) var754)
(declare-fun var3326_openJJTreeComment/-2036001483 (var196 String) void)
(declare-fun println/2032072932 (var196) void)
(declare-fun production/-576648796 (var2532) var3088)
(declare-fun throws_list/-165013491 (var3088) var3560)
(declare-fun elements/2003039976 (var3560) var3454)
(declare-fun insertCatchBlocks/-1746295133 (var3326 var2532 var196 var3454 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var2532) Bool)
(declare-const null-var3326 var3326)
(declare-const null-var2532 var2532)
(declare-const null-var196 var196)
(declare-const null-String String)
(declare-const null-var754 var754)
(declare-const var3382 var3326) ; Statement: r12 := @this: org.javacc.jjtree.JavaCodeGenerator 
(assert (not (= var3382 null-var3326)))
(declare-const var784 var2532) ; Statement: r9 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var784 null-var2532)))
(declare-const var1730 var196) ; Statement: r0 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var1730 null-var196)))
(declare-const var3208 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3208 null-String)))
(declare-const var447 var754) ; Statement: r6 := @parameter3: org.javacc.jjtree.Token 
(assert (not (= var447 null-var754)))
(declare-const var2621 var754) ; Statement: r7 := @parameter4: org.javacc.jjtree.Token 
(assert (not (= var2621 null-var754)))
(define-const var2072 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2072)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2072!1 String)
(assert (= var2072!1 ""))
(assert true)
(define-const var3520 String (append/672562846 var2072!1 var3208)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2072!2 String)
(assert (= var2072!2 (str.++ var2072!1 var3208)))
(assert true)
(define-const var1211 String (append/672562846 var3520 "try {")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("try {") 
(declare-const var3520!1 String)
(assert (= var3520!1 (str.++ var3520 "try {")))
(assert true)
(define-const var2693 String (toString/-2075883882 var1211)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var1730 var2693)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5) 

(declare-const var1730!1 var196)
(declare-const var2693!1 String)
;(assert (var3326_closeJJTreeComment/-534030660 var1730!1)) ; Statement: staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0) 

(declare-const var1730!2 var196)
(define-const var3257 var754 var447) ; Statement: r37 = r6 
(assert true) ; Non Conditional
(define-const var841 var754 (next/-1103324373 var2621)) ; Statement: $r8 = r7.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next> 
 ; Statement: if r37 == $r8 goto staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void openJJTreeComment(org.javacc.jjtree.IO,java.lang.String)>(r0, null) 
(assert (= var3257 var841)) ; Cond: r37 == $r8 
;(assert (var3326_openJJTreeComment/-2036001483 var1730!2 null-String)) ; Statement: staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void openJJTreeComment(org.javacc.jjtree.IO,java.lang.String)>(r0, null) 

(declare-const var1730!3 var196)
(declare-const var579 var1388)
(assert true)
;(assert (println/2032072932 var1730!3)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println()>() 

(declare-const var1730!4 var196)
(define-const var3159 var3088 (production/-576648796 var784)) ; Statement: $r10 = r9.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTProduction production> 
(define-const var1068 var3560 (throws_list/-165013491 var3159)) ; Statement: $r11 = $r10.<org.javacc.jjtree.ASTProduction: java.util.Vector throws_list> 
(assert true)
(define-const var2479 var3454 (elements/2003039976 var1068)) ; Statement: r38 = virtualinvoke $r11.<java.util.Vector: java.util.Enumeration elements()>() 
(assert true)
;(assert (insertCatchBlocks/-1746295133 var3382 var784 var1730!4 var2479 var3208)) ; Statement: specialinvoke r12.<org.javacc.jjtree.JavaCodeGenerator: void insertCatchBlocks(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.util.Enumeration,java.lang.String)>(r9, r0, r38, r2) 

(declare-const var3382!1 var3326)
(declare-const var784!1 var2532)
(declare-const var1730!5 var196)
(declare-const var2479!1 var3454)
(declare-const var3208!1 String)
(define-const var573 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var573)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var573!1 String)
(assert (= var573!1 ""))
(assert true)
(define-const var2183 String (append/672562846 var573!1 var3208!1)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var573!2 String)
(assert (= var573!2 (str.++ var573!1 var3208!1)))
(assert true)
(define-const var1605 String (append/672562846 var2183 "} finally {")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("} finally {") 
(declare-const var2183!1 String)
(assert (= var2183!1 (str.++ var2183 "} finally {")))
(assert true)
(define-const var3837 String (toString/-2075883882 var1605)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var1730!5 var3837)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r16) 

(declare-const var1730!6 var196)
(declare-const var3837!1 String)
(assert true)
(define-const var3398 Bool (usesCloseNodeVar/-1769174946 var784!1)) ; Statement: $z0 = virtualinvoke r9.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z0 == 0 goto $r17 = new java.lang.StringBuilder 
(assert (= (ite var3398 1 0) 0)) ; Cond: $z0 == 0 
(define-const var402 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var402)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var402!1 String)
(assert (= var402!1 ""))
(assert true)
(define-const var3685 String (append/672562846 var402!1 var3208!1)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var402!2 String)
(assert (= var402!2 (str.++ var402!1 var3208!1)))
(assert true)
(define-const var3720 String (append/672562846 var3685 "}")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3685!1 String)
(assert (= var3685!1 (str.++ var3685 "}")))
(assert true)
(define-const var3190 String (toString/-2075883882 var3720)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var1730!6 var3190)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r20) 

(declare-const var1730!7 var196)
(declare-const var3190!1 String)
;(assert (var3326_closeJJTreeComment/-534030660 var1730!7)) ; Statement: staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0) 

(declare-const var1730!8 var196)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), var3326_closeJJTreeComment/-534030660=([org.javacc.jjtree.IO], void), next/-1103324373=([org.javacc.jjtree.Token], org.javacc.jjtree.Token), var3326_openJJTreeComment/-2036001483=([org.javacc.jjtree.IO, java.lang.String], void), println/2032072932=([org.javacc.jjtree.IO], void), production/-576648796=([org.javacc.jjtree.NodeScope], org.javacc.jjtree.ASTProduction), throws_list/-165013491=([org.javacc.jjtree.ASTProduction], java.util.Vector), elements/2003039976=([java.util.Vector], java.util.Enumeration), insertCatchBlocks/-1746295133=([org.javacc.jjtree.JavaCodeGenerator, org.javacc.jjtree.NodeScope, org.javacc.jjtree.IO, java.util.Enumeration, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean)}
; {var3326=org.javacc.jjtree.JavaCodeGenerator, var3382=r12, var2532=org.javacc.jjtree.NodeScope, var784=r9, var196=org.javacc.jjtree.IO, var1730=r0, var3208=r2, var1388=null_type, var754=org.javacc.jjtree.Token, var447=r6, var2621=r7, var2072=$r1, var3520=$r3, var1211=$r4, var2693=$r5, var3257=r37, var841=$r8, var579=null, var3088=org.javacc.jjtree.ASTProduction, var3159=$r10, var3560=java.util.Vector, var1068=$r11, var3454=java.util.Enumeration, var2479=r38, var573=$r13, var2183=$r14, var1605=$r15, var3837=$r16, var3398=$z0, var402=$r17, var3685=$r18, var3720=$r19, var3190=$r20}
; {org.javacc.jjtree.JavaCodeGenerator=var3326, r12=var3382, org.javacc.jjtree.NodeScope=var2532, r9=var784, org.javacc.jjtree.IO=var196, r0=var1730, r2=var3208, null_type=var1388, org.javacc.jjtree.Token=var754, r6=var447, r7=var2621, $r1=var2072, $r3=var3520, $r4=var1211, $r5=var2693, r37=var3257, $r8=var841, null=var579, org.javacc.jjtree.ASTProduction=var3088, $r10=var3159, java.util.Vector=var3560, $r11=var1068, java.util.Enumeration=var3454, r38=var2479, $r13=var573, $r14=var2183, $r15=var1605, $r16=var3837, $z0=var3398, $r17=var402, $r18=var3685, $r19=var3720, $r20=var3190}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r12 := @this: org.javacc.jjtree.JavaCodeGenerator;	r9 := @parameter0: org.javacc.jjtree.NodeScope;	r0 := @parameter1: org.javacc.jjtree.IO;	r2 := @parameter2: java.lang.String;	r6 := @parameter3: org.javacc.jjtree.Token;	r7 := @parameter4: org.javacc.jjtree.Token;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("try {");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5);	staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0);	r37 = r6;	$r8 = r7.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next>;	if r37 == $r8 goto staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void openJJTreeComment(org.javacc.jjtree.IO,java.lang.String)>(r0, null);	staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void openJJTreeComment(org.javacc.jjtree.IO,java.lang.String)>(r0, null);	virtualinvoke r0.<org.javacc.jjtree.IO: void println()>();	$r10 = r9.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTProduction production>;	$r11 = $r10.<org.javacc.jjtree.ASTProduction: java.util.Vector throws_list>;	r38 = virtualinvoke $r11.<java.util.Vector: java.util.Enumeration elements()>();	specialinvoke r12.<org.javacc.jjtree.JavaCodeGenerator: void insertCatchBlocks(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.util.Enumeration,java.lang.String)>(r9, r0, r38, r2);	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("} finally {");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r16);	$z0 = virtualinvoke r9.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z0 == 0 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r20);	staticinvoke <org.javacc.jjtree.JavaCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0);	return
;block_num 4