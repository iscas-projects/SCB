(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3426 0)
(declare-sort var604 0)
(declare-sort var3466 0)
(declare-sort var2015 0)
(declare-sort var926 0)
(declare-sort var3189 0)
(declare-sort var757 0)
(declare-sort var1397 0)
(declare-sort var1080 0)
(declare-sort var1166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3466-to-var2015 (var3466) var2015)
(declare-fun var926_isGenerated/1339730251 (var2015) Bool)
(declare-fun var3189-init () var3189)
(declare-fun <init>/-325640736 (var3189) void)
(declare-fun modifiers/369525342 (var3466) var757)
(declare-fun var757_iterator/-912451715 (var757) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var926_addAnnotations/107278051 (var757 String) void)
(declare-fun cast-from-var3189-to-var757 (var3189) var757)
(declare-fun getReturnType2/-1221885866 (var3466) var1080)
(declare-fun toString/293521328 (var1080) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/294724078 (var3466) var1166)
(declare-fun getFullyQualifiedName/-1967380856 (var1166) String)
(declare-fun parameters/-24193066 (var3466) var757)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var604 var604)
(declare-const null-var3466 var3466)
(declare-const null-var1397 var1397)
(declare-const var3820 String) ; Statement: r17 := @parameter0: java.lang.String 
(assert (not (= var3820 null-String)))
(declare-const var1438 var604) ; Statement: r7 := @parameter1: java.lang.Object 
(assert (not (= var1438 null-var604)))
(declare-const var1866 var3466) ; Statement: r0 := @parameter2: org.eclipse.jdt.core.dom.MethodDeclaration 
(assert (not (= var1866 null-var3466)))
(define-const var316 var2015 (cast-from-var3466-to-var2015 var1866)) ; Statement: $r35 = (org.eclipse.jdt.core.dom.ASTNode) r0 
(define-const var3953 Bool (var926_isGenerated/1339730251 var316)) ; Statement: $z0 = staticinvoke <lombok.launch.PatchFixesHider$PatchFixes: boolean isGenerated(org.eclipse.jdt.core.dom.ASTNode)>($r35) 
 ; Statement: if $z0 != 0 goto $r33 = new java.util.ArrayList 
(assert (not (= (ite var3953 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2610 var3189 var3189-init) ; Statement: $r33 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2610)) ; Statement: specialinvoke $r33.<java.util.ArrayList: void <init>()>() 

(declare-const var2610!1 var3189)
(assert true)
(define-const var3715 var757 (modifiers/369525342 var1866)) ; Statement: $r2 = virtualinvoke r0.<org.eclipse.jdt.core.dom.MethodDeclaration: java.util.List modifiers()>() 
(define-const var747 Iterator (var757_iterator/-912451715 var3715)) ; Statement: r19 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z6 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var212 Bool (Iterator_hasNext/-1669924200 var747)) ; Statement: $z6 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z6 != 0 goto r20 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var212 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(define-const var2128 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2128)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2128!1 String)
(assert (= var2128!1 ""))
;(assert (var926_addAnnotations/107278051 (cast-from-var3189-to-var757 var2610!1) var2128!1)) ; Statement: staticinvoke <lombok.launch.PatchFixesHider$PatchFixes: void addAnnotations(java.util.List,java.lang.StringBuilder)>($r33, $r34) 

(declare-const var2610!2 var3189)
(declare-const var2128!2 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2137 var1397) ; Statement: $r18 := @caughtexception 
(assert (not (= var2137 null-var1397)))
(assert true) ; Non Conditional
(assert true)
(define-const var2249 var1080 (getReturnType2/-1221885866 var1866)) ; Statement: $r23 = virtualinvoke r0.<org.eclipse.jdt.core.dom.MethodDeclaration: org.eclipse.jdt.core.dom.Type getReturnType2()>() 
(assert true)
(define-const var2275 String (toString/293521328 var2249)) ; Statement: $r24 = virtualinvoke $r23.<org.eclipse.jdt.core.dom.Type: java.lang.String toString()>() 
(assert true)
(define-const var3595 String (append/672562846 var2128!2 var2275)) ; Statement: $r25 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2128!3 String)
(assert (= var2128!3 (str.++ var2128!2 var2275)))
(assert true)
(define-const var336 String (append/672562846 var3595 " ")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3595!1 String)
(assert (= var3595!1 (str.++ var3595 " ")))
(assert true)
(define-const var1974 var1166 (getName/294724078 var1866)) ; Statement: $r27 = virtualinvoke r0.<org.eclipse.jdt.core.dom.MethodDeclaration: org.eclipse.jdt.core.dom.SimpleName getName()>() 
(assert true)
(define-const var3180 String (getFullyQualifiedName/-1967380856 var1974)) ; Statement: $r28 = virtualinvoke $r27.<org.eclipse.jdt.core.dom.SimpleName: java.lang.String getFullyQualifiedName()>() 
(assert true)
(define-const var3452 String (append/672562846 var336 var3180)) ; Statement: $r29 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var336!1 String)
(assert (= var336!1 (str.++ var336 var3180)))
(assert true)
;(assert (append/672562846 var3452 "(")) ; Statement: virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3452!1 String)
(assert (= var3452!1 (str.++ var3452 "(")))
(define-const var3844 Bool (ite (= 1 1) true false)) ; Statement: z7 = 1 
(assert true)
(define-const var558 var757 (parameters/-24193066 var1866)) ; Statement: $r30 = virtualinvoke r0.<org.eclipse.jdt.core.dom.MethodDeclaration: java.util.List parameters()>() 
(define-const var1552 Iterator (var757_iterator/-912451715 var558)) ; Statement: $r31 = interfaceinvoke $r30.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z8 = interfaceinvoke $r31.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1413 Bool (Iterator_hasNext/-1669924200 var1552)) ; Statement: $z8 = interfaceinvoke $r31.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z8 != 0 goto r32 = interfaceinvoke $r31.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var1413 1 0) 0)))) ; Negate: Cond: $z8 != 0  
(assert true)
;(assert (append/672562846 var2128!3 ");")) ; Statement: virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var2128!4 String)
(assert (= var2128!4 (str.++ var2128!3 ");")))
(assert true)
(define-const var740 String (toString/-2075883882 var2128!4)) ; Statement: $r16 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3466-to-var2015=([org.eclipse.jdt.core.dom.MethodDeclaration], org.eclipse.jdt.core.dom.ASTNode), var926_isGenerated/1339730251=([org.eclipse.jdt.core.dom.ASTNode], boolean), var3189-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), modifiers/369525342=([org.eclipse.jdt.core.dom.MethodDeclaration], java.util.List), var757_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var926_addAnnotations/107278051=([java.util.List, java.lang.StringBuilder], void), cast-from-var3189-to-var757=([java.util.ArrayList], java.util.List), getReturnType2/-1221885866=([org.eclipse.jdt.core.dom.MethodDeclaration], org.eclipse.jdt.core.dom.Type), toString/293521328=([org.eclipse.jdt.core.dom.Type], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/294724078=([org.eclipse.jdt.core.dom.MethodDeclaration], org.eclipse.jdt.core.dom.SimpleName), getFullyQualifiedName/-1967380856=([org.eclipse.jdt.core.dom.SimpleName], java.lang.String), parameters/-24193066=([org.eclipse.jdt.core.dom.MethodDeclaration], java.util.List), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3820=r17, var3426=null_type, var604=java.lang.Object, var1438=r7, var3466=org.eclipse.jdt.core.dom.MethodDeclaration, var1866=r0, var2015=org.eclipse.jdt.core.dom.ASTNode, var316=$r35, var926=lombok.launch.PatchFixesHider$PatchFixes, var3953=$z0, var3189=java.util.ArrayList, var2610=$r33, var757=java.util.List, var3715=$r2, var747=r19, var212=$z6, var2128=$r34, var1397=java.lang.Throwable, var2137=$r18, var1080=org.eclipse.jdt.core.dom.Type, var2249=$r23, var2275=$r24, var3595=$r25, var336=$r26, var1166=org.eclipse.jdt.core.dom.SimpleName, var1974=$r27, var3180=$r28, var3452=$r29, var3844=z7, var558=$r30, var1552=$r31, var1413=$z8, var740=$r16}
; {r17=var3820, null_type=var3426, java.lang.Object=var604, r7=var1438, org.eclipse.jdt.core.dom.MethodDeclaration=var3466, r0=var1866, org.eclipse.jdt.core.dom.ASTNode=var2015, $r35=var316, lombok.launch.PatchFixesHider$PatchFixes=var926, $z0=var3953, java.util.ArrayList=var3189, $r33=var2610, java.util.List=var757, $r2=var3715, r19=var747, $z6=var212, $r34=var2128, java.lang.Throwable=var1397, $r18=var2137, org.eclipse.jdt.core.dom.Type=var1080, $r23=var2249, $r24=var2275, $r25=var3595, $r26=var336, org.eclipse.jdt.core.dom.SimpleName=var1166, $r27=var1974, $r28=var3180, $r29=var3452, z7=var3844, $r30=var558, $r31=var1552, $z8=var1413, $r16=var740}
;seq <java.lang.StringBuilder: void <init>()>;	<org.eclipse.jdt.core.dom.Type: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r17 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.Object;	r0 := @parameter2: org.eclipse.jdt.core.dom.MethodDeclaration;	$r35 = (org.eclipse.jdt.core.dom.ASTNode) r0;	$z0 = staticinvoke <lombok.launch.PatchFixesHider$PatchFixes: boolean isGenerated(org.eclipse.jdt.core.dom.ASTNode)>($r35);	if $z0 != 0 goto $r33 = new java.util.ArrayList;	$r33 = new java.util.ArrayList;	specialinvoke $r33.<java.util.ArrayList: void <init>()>();	$r2 = virtualinvoke r0.<org.eclipse.jdt.core.dom.MethodDeclaration: java.util.List modifiers()>();	r19 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z6 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()];	$z6 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z6 != 0 goto r20 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	staticinvoke <lombok.launch.PatchFixesHider$PatchFixes: void addAnnotations(java.util.List,java.lang.StringBuilder)>($r33, $r34);	$r18 := @caughtexception;	$r23 = virtualinvoke r0.<org.eclipse.jdt.core.dom.MethodDeclaration: org.eclipse.jdt.core.dom.Type getReturnType2()>();	$r24 = virtualinvoke $r23.<org.eclipse.jdt.core.dom.Type: java.lang.String toString()>();	$r25 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r27 = virtualinvoke r0.<org.eclipse.jdt.core.dom.MethodDeclaration: org.eclipse.jdt.core.dom.SimpleName getName()>();	$r28 = virtualinvoke $r27.<org.eclipse.jdt.core.dom.SimpleName: java.lang.String getFullyQualifiedName()>();	$r29 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	z7 = 1;	$r30 = virtualinvoke r0.<org.eclipse.jdt.core.dom.MethodDeclaration: java.util.List parameters()>();	$r31 = interfaceinvoke $r30.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z8 = interfaceinvoke $r31.<java.util.Iterator: boolean hasNext()>()];	$z8 = interfaceinvoke $r31.<java.util.Iterator: boolean hasNext()>();	if $z8 != 0 goto r32 = interfaceinvoke $r31.<java.util.Iterator: java.lang.Object next()>();	virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r16 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 8