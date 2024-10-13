(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var534 0)
(declare-sort var658 0)
(declare-sort var851 0)
(declare-sort var3953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var851-init () var851)
(declare-fun var3953_getJJTreeOutputDirectory/-709711143 () var851)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var851 var851 String) void)
(declare-fun var3953_getBuildNodeFiles/-1856756108 () Bool)
(declare-const null-var534 var534)
(declare-const null-String String)
(declare-const var2826 var534) ; Statement: r7 := @parameter0: org.javacc.jjtree.IO 
(assert (not (= var2826 null-var534)))
(declare-const var1417 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1417 null-String)))
(define-const var3570 var851 var851-init) ; Statement: $r0 = new java.io.File 
(define-const var2461 var851 var3953_getJJTreeOutputDirectory/-709711143) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>() 
(define-const var238 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var238)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var238!1 String)
(assert (= var238!1 ""))
(assert true)
(define-const var73 String (append/672562846 var238!1 var1417)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var238!2 String)
(assert (= var238!2 (str.++ var238!1 var1417)))
(assert true)
(define-const var2735 String (append/672562846 var73 ".java")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java") 
(declare-const var73!1 String)
(assert (= var73!1 (str.++ var73 ".java")))
(assert true)
(define-const var462 String (toString/-2075883882 var2735)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3570 var2461 var462)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5) 

(declare-const var3570!1 var851)
(declare-const var2461!1 var851)
(declare-const var462!1 String)
(assert true)
(define-const var134 Bool (= var1417 "Node")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("Node") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("SimpleNode") 
(assert (not (= (ite var134 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= $z8 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("Node")] 
(assert true) ; Non Conditional
(assert true)
(define-const var629 Bool (= var1417 "Node")) ; Statement: $z8 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("Node") 
 ; Statement: if $z8 != 0 goto $z2 = virtualinvoke $r0.<java.io.File: boolean exists()>() 
(assert (not (not (= (ite var629 1 0) 0)))) ; Negate: Cond: $z8 != 0  
(define-const var1186 Bool var3953_getBuildNodeFiles/-1856756108) ; Statement: $z7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getBuildNodeFiles()>() 
 ; Statement: if $z7 != 0 goto $z2 = virtualinvoke $r0.<java.io.File: boolean exists()>() 
(assert (not (not (= (ite var1186 1 0) 0)))) ; Negate: Cond: $z7 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var851-init=([], java.io.File), var3953_getJJTreeOutputDirectory/-709711143=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), var3953_getBuildNodeFiles/-1856756108=([], boolean)}
; {var534=org.javacc.jjtree.IO, var2826=r7, var1417=r2, var658=null_type, var851=java.io.File, var3570=$r0, var3953=org.javacc.jjtree.JJTreeOptions, var2461=$r6, var238=$r1, var73=$r3, var2735=$r4, var462=$r5, var134=$z0, var629=$z8, var1186=$z7}
; {org.javacc.jjtree.IO=var534, r7=var2826, r2=var1417, null_type=var658, java.io.File=var851, $r0=var3570, org.javacc.jjtree.JJTreeOptions=var3953, $r6=var2461, $r1=var238, $r3=var73, $r4=var2735, $r5=var462, $z0=var134, $z8=var629, $z7=var1186}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r7 := @parameter0: org.javacc.jjtree.IO;	r2 := @parameter1: java.lang.String;	$r0 = new java.io.File;	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5);	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("Node");	if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("SimpleNode");	goto [?= $z8 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("Node")];	$z8 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("Node");	if $z8 != 0 goto $z2 = virtualinvoke $r0.<java.io.File: boolean exists()>();	$z7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getBuildNodeFiles()>();	if $z7 != 0 goto $z2 = virtualinvoke $r0.<java.io.File: boolean exists()>();	return
;block_num 5