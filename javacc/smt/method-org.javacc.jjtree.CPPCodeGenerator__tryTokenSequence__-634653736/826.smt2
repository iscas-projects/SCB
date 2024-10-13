(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3154 0)
(declare-sort var2134 0)
(declare-sort var2753 0)
(declare-sort var112 0)
(declare-sort var1032 0)
(declare-sort var3492 0)
(declare-sort var3374 0)
(declare-sort var3795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var2753 String) void)
(declare-fun var3154_closeJJTreeComment/367463215 (var2753) void)
(declare-fun next/-1103324373 (var1032) var1032)
(declare-fun var3154_openJJTreeComment/-1832418392 (var2753 String) void)
(declare-fun println/2032072932 (var2753) void)
(declare-fun production/-576648796 (var2134) var3492)
(declare-fun throws_list/-165013491 (var3492) var3374)
(declare-fun elements/2003039976 (var3374) var3795)
(declare-fun insertCatchBlocks/-1244466602 (var3154 var2134 var2753 var3795 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var2134) Bool)
(declare-const null-var3154 var3154)
(declare-const null-var2134 var2134)
(declare-const null-var2753 var2753)
(declare-const null-String String)
(declare-const null-var1032 var1032)
(declare-const var1120 var3154) ; Statement: r12 := @this: org.javacc.jjtree.CPPCodeGenerator 
(assert (not (= var1120 null-var3154)))
(declare-const var1238 var2134) ; Statement: r9 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var1238 null-var2134)))
(declare-const var3538 var2753) ; Statement: r0 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var3538 null-var2753)))
(declare-const var3841 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3841 null-String)))
(declare-const var2429 var1032) ; Statement: r6 := @parameter3: org.javacc.jjtree.Token 
(assert (not (= var2429 null-var1032)))
(declare-const var3042 var1032) ; Statement: r7 := @parameter4: org.javacc.jjtree.Token 
(assert (not (= var3042 null-var1032)))
(define-const var1565 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1565)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1565!1 String)
(assert (= var1565!1 ""))
(assert true)
(define-const var118 String (append/672562846 var1565!1 var3841)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1565!2 String)
(assert (= var1565!2 (str.++ var1565!1 var3841)))
(assert true)
(define-const var2386 String (append/672562846 var118 "try {")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("try {") 
(declare-const var118!1 String)
(assert (= var118!1 (str.++ var118 "try {")))
(assert true)
(define-const var1924 String (toString/-2075883882 var2386)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var3538 var1924)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5) 

(declare-const var3538!1 var2753)
(declare-const var1924!1 String)
;(assert (var3154_closeJJTreeComment/367463215 var3538!1)) ; Statement: staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0) 

(declare-const var3538!2 var2753)
(define-const var2017 var1032 var2429) ; Statement: r37 = r6 
(assert true) ; Non Conditional
(define-const var2970 var1032 (next/-1103324373 var3042)) ; Statement: $r8 = r7.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next> 
 ; Statement: if r37 == $r8 goto staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void openJJTreeComment(org.javacc.jjtree.IO,java.lang.String)>(r0, null) 
(assert (= var2017 var2970)) ; Cond: r37 == $r8 
;(assert (var3154_openJJTreeComment/-1832418392 var3538!2 null-String)) ; Statement: staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void openJJTreeComment(org.javacc.jjtree.IO,java.lang.String)>(r0, null) 

(declare-const var3538!3 var2753)
(declare-const var585 var112)
(assert true)
;(assert (println/2032072932 var3538!3)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println()>() 

(declare-const var3538!4 var2753)
(define-const var886 var3492 (production/-576648796 var1238)) ; Statement: $r10 = r9.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTProduction production> 
(define-const var2960 var3374 (throws_list/-165013491 var886)) ; Statement: $r11 = $r10.<org.javacc.jjtree.ASTProduction: java.util.Vector throws_list> 
(assert true)
(define-const var649 var3795 (elements/2003039976 var2960)) ; Statement: r38 = virtualinvoke $r11.<java.util.Vector: java.util.Enumeration elements()>() 
(assert true)
;(assert (insertCatchBlocks/-1244466602 var1120 var1238 var3538!4 var649 var3841)) ; Statement: specialinvoke r12.<org.javacc.jjtree.CPPCodeGenerator: void insertCatchBlocks(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.util.Enumeration,java.lang.String)>(r9, r0, r38, r2) 

(declare-const var1120!1 var3154)
(declare-const var1238!1 var2134)
(declare-const var3538!5 var2753)
(declare-const var649!1 var3795)
(declare-const var3841!1 String)
(define-const var733 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var733)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var733!1 String)
(assert (= var733!1 ""))
(assert true)
(define-const var3065 String (append/672562846 var733!1 var3841!1)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var733!2 String)
(assert (= var733!2 (str.++ var733!1 var3841!1)))
(assert true)
(define-const var1498 String (append/672562846 var3065 "} {")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("} {") 
(declare-const var3065!1 String)
(assert (= var3065!1 (str.++ var3065 "} {")))
(assert true)
(define-const var1511 String (toString/-2075883882 var1498)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var3538!5 var1511)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r16) 

(declare-const var3538!6 var2753)
(declare-const var1511!1 String)
(assert true)
(define-const var1364 Bool (usesCloseNodeVar/-1769174946 var1238!1)) ; Statement: $z0 = virtualinvoke r9.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z0 == 0 goto $r17 = new java.lang.StringBuilder 
(assert (= (ite var1364 1 0) 0)) ; Cond: $z0 == 0 
(define-const var91 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var91)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var91!1 String)
(assert (= var91!1 ""))
(assert true)
(define-const var3571 String (append/672562846 var91!1 var3841!1)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var91!2 String)
(assert (= var91!2 (str.++ var91!1 var3841!1)))
(assert true)
(define-const var263 String (append/672562846 var3571 "}")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3571!1 String)
(assert (= var3571!1 (str.++ var3571 "}")))
(assert true)
(define-const var2302 String (toString/-2075883882 var263)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var3538!6 var2302)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r20) 

(declare-const var3538!7 var2753)
(declare-const var2302!1 String)
;(assert (var3154_closeJJTreeComment/367463215 var3538!7)) ; Statement: staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0) 

(declare-const var3538!8 var2753)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), var3154_closeJJTreeComment/367463215=([org.javacc.jjtree.IO], void), next/-1103324373=([org.javacc.jjtree.Token], org.javacc.jjtree.Token), var3154_openJJTreeComment/-1832418392=([org.javacc.jjtree.IO, java.lang.String], void), println/2032072932=([org.javacc.jjtree.IO], void), production/-576648796=([org.javacc.jjtree.NodeScope], org.javacc.jjtree.ASTProduction), throws_list/-165013491=([org.javacc.jjtree.ASTProduction], java.util.Vector), elements/2003039976=([java.util.Vector], java.util.Enumeration), insertCatchBlocks/-1244466602=([org.javacc.jjtree.CPPCodeGenerator, org.javacc.jjtree.NodeScope, org.javacc.jjtree.IO, java.util.Enumeration, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean)}
; {var3154=org.javacc.jjtree.CPPCodeGenerator, var1120=r12, var2134=org.javacc.jjtree.NodeScope, var1238=r9, var2753=org.javacc.jjtree.IO, var3538=r0, var3841=r2, var112=null_type, var1032=org.javacc.jjtree.Token, var2429=r6, var3042=r7, var1565=$r1, var118=$r3, var2386=$r4, var1924=$r5, var2017=r37, var2970=$r8, var585=null, var3492=org.javacc.jjtree.ASTProduction, var886=$r10, var3374=java.util.Vector, var2960=$r11, var3795=java.util.Enumeration, var649=r38, var733=$r13, var3065=$r14, var1498=$r15, var1511=$r16, var1364=$z0, var91=$r17, var3571=$r18, var263=$r19, var2302=$r20}
; {org.javacc.jjtree.CPPCodeGenerator=var3154, r12=var1120, org.javacc.jjtree.NodeScope=var2134, r9=var1238, org.javacc.jjtree.IO=var2753, r0=var3538, r2=var3841, null_type=var112, org.javacc.jjtree.Token=var1032, r6=var2429, r7=var3042, $r1=var1565, $r3=var118, $r4=var2386, $r5=var1924, r37=var2017, $r8=var2970, null=var585, org.javacc.jjtree.ASTProduction=var3492, $r10=var886, java.util.Vector=var3374, $r11=var2960, java.util.Enumeration=var3795, r38=var649, $r13=var733, $r14=var3065, $r15=var1498, $r16=var1511, $z0=var1364, $r17=var91, $r18=var3571, $r19=var263, $r20=var2302}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r12 := @this: org.javacc.jjtree.CPPCodeGenerator;	r9 := @parameter0: org.javacc.jjtree.NodeScope;	r0 := @parameter1: org.javacc.jjtree.IO;	r2 := @parameter2: java.lang.String;	r6 := @parameter3: org.javacc.jjtree.Token;	r7 := @parameter4: org.javacc.jjtree.Token;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("try {");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5);	staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0);	r37 = r6;	$r8 = r7.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next>;	if r37 == $r8 goto staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void openJJTreeComment(org.javacc.jjtree.IO,java.lang.String)>(r0, null);	staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void openJJTreeComment(org.javacc.jjtree.IO,java.lang.String)>(r0, null);	virtualinvoke r0.<org.javacc.jjtree.IO: void println()>();	$r10 = r9.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTProduction production>;	$r11 = $r10.<org.javacc.jjtree.ASTProduction: java.util.Vector throws_list>;	r38 = virtualinvoke $r11.<java.util.Vector: java.util.Enumeration elements()>();	specialinvoke r12.<org.javacc.jjtree.CPPCodeGenerator: void insertCatchBlocks(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.util.Enumeration,java.lang.String)>(r9, r0, r38, r2);	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("} {");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r16);	$z0 = virtualinvoke r9.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z0 == 0 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r20);	staticinvoke <org.javacc.jjtree.CPPCodeGenerator: void closeJJTreeComment(org.javacc.jjtree.IO)>(r0);	return
;block_num 4