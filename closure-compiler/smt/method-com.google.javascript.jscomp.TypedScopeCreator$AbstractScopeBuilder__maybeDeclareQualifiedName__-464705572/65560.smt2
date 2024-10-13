(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var346 0)
(declare-sort var1820 0)
(declare-sort var3683 0)
(declare-sort var482 0)
(declare-sort var1082 0)
(declare-sort var3080 0)
(declare-sort var3298 0)
(declare-sort var2394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isValidTypedefDeclaration/-88633159 (var346 var482 var3683) Bool)
(declare-fun getFirstChild/2090828207 (var482) var482)
(declare-fun getQualifiedName/48314856 (var482) String)
(declare-fun getString/-897720134 (var482) String)
(declare-fun var3080_checkArgument/1735511034 (Bool) void)
(declare-fun getDeclaredType/-64610757 (var346 var3683 var482 var482 var2394) var3298)
(declare-fun isExprResult/-780013230 (var482) Bool)
(declare-const null-var346 var346)
(declare-const null-var1820 var1820)
(declare-const null-var3683 var3683)
(declare-const null-var482 var482)
(declare-const null-String String)
(declare-const null-NullType var1082)
(declare-const null-var2394 var2394)
(declare-const null-var3298 var3298)
(declare-const var1834 var346) ; Statement: r0 := @this: com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder 
(assert (not (= var1834 null-var346)))
(declare-const var1420 var1820) ; Statement: r12 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var1420 null-var1820)))
(declare-const var373 var3683) ; Statement: r2 := @parameter1: com.google.javascript.rhino.JSDocInfo 
(assert (not (= var373 null-var3683)))
(declare-const var331 var482) ; Statement: r1 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var331 null-var482)))
(declare-const var2494 var482) ; Statement: r11 := @parameter3: com.google.javascript.rhino.Node 
(assert (not (= var2494 null-var482)))
(declare-const var3840 var482) ; Statement: r3 := @parameter4: com.google.javascript.rhino.Node 
(assert (not (= var3840 null-var482)))
(assert true)
(define-const var1469 Bool (isValidTypedefDeclaration/-88633159 var1834 var331 var373)) ; Statement: z0 = virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder: boolean isValidTypedefDeclaration(com.google.javascript.rhino.Node,com.google.javascript.rhino.JSDocInfo)>(r1, r2) 
 ; Statement: if z0 == 0 goto $r23 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert (= (ite var1469 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var649 var482 (getFirstChild/2090828207 var331)) ; Statement: $r23 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var485 String (getQualifiedName/48314856 var649)) ; Statement: $r24 = virtualinvoke $r23.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>() 
(assert true)
(define-const var1037 String (getQualifiedName/48314856 var331)) ; Statement: $r25 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>() 
(assert true)
(define-const var1769 String (getString/-897720134 var331)) ; Statement: $r26 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
 ; Statement: if $r25 == null goto $z5 = 0 
(assert (= var1037 null-String)) ; Cond: $r25 == null 
(define-const var1311 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var3080_checkArgument/1735511034 var1311)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z5) 

(declare-const var1311!1 Bool)
(assert true)
(define-const var2397 var3298 (getDeclaredType/-64610757 var1834 var373 var331 var3840 null-var2394)) ; Statement: $r27 = virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder: com.google.javascript.rhino.jstype.JSType getDeclaredType(com.google.javascript.rhino.JSDocInfo,com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier)>(r2, r1, r3, null) 
(define-const var2183 var3298 var2397) ; Statement: r28 = $r27 
 ; Statement: if $r27 != null goto $r29 = "prototype" 
(assert (not (= var2397 null-var3298))) ; Cond: $r27 != null 
(define-const var3076 String "prototype") ; Statement: $r29 = "prototype" 
(assert true)
(define-const var2112 Bool (= var3076 var1769)) ; Statement: $z6 = virtualinvoke $r29.<java.lang.String: boolean equals(java.lang.Object)>($r26) 
 ; Statement: if $z6 == 0 goto (branch) 
(assert (= (ite var2112 1 0) 0)) ; Cond: $z6 == 0 
 ; Statement: if r28 != null goto z9 = virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder: boolean isQualifiedNameInferred(java.lang.String,com.google.javascript.rhino.Node,com.google.javascript.rhino.JSDocInfo,com.google.javascript.rhino.Node,com.google.javascript.rhino.jstype.JSType)>($r25, r1, r2, r3, r28) 
(assert (not (not (= var2183 null-var3298)))) ; Negate: Cond: r28 != null  
(assert true)
(define-const var2118 Bool (isExprResult/-780013230 var2494)) ; Statement: $z2 = virtualinvoke r11.<com.google.javascript.rhino.Node: boolean isExprResult()>() 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var2118 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isValidTypedefDeclaration/-88633159=([com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder, com.google.javascript.rhino.Node, com.google.javascript.rhino.JSDocInfo], boolean), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getQualifiedName/48314856=([com.google.javascript.rhino.Node], java.lang.String), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), var3080_checkArgument/1735511034=([boolean], void), getDeclaredType/-64610757=([com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder, com.google.javascript.rhino.JSDocInfo, com.google.javascript.rhino.Node, com.google.javascript.rhino.Node, com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier], com.google.javascript.rhino.jstype.JSType), isExprResult/-780013230=([com.google.javascript.rhino.Node], boolean)}
; {var346=com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder, var1834=r0, var1820=com.google.javascript.jscomp.NodeTraversal, var1420=r12, var3683=com.google.javascript.rhino.JSDocInfo, var373=r2, var482=com.google.javascript.rhino.Node, var331=r1, var2494=r11, var3840=r3, var1469=z0, var649=$r23, var485=$r24, var1037=$r25, var1769=$r26, var1082=null_type, var1311=$z5, var3080=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3298=com.google.javascript.rhino.jstype.JSType, var2394=com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier, var2397=$r27, var2183=r28, var3076=$r29, var2112=$z6, var2118=$z2}
; {com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder=var346, r0=var1834, com.google.javascript.jscomp.NodeTraversal=var1820, r12=var1420, com.google.javascript.rhino.JSDocInfo=var3683, r2=var373, com.google.javascript.rhino.Node=var482, r1=var331, r11=var2494, r3=var3840, z0=var1469, $r23=var649, $r24=var485, $r25=var1037, $r26=var1769, null_type=var1082, $z5=var1311, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3080, com.google.javascript.rhino.jstype.JSType=var3298, com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier=var2394, $r27=var2397, r28=var2183, $r29=var3076, $z6=var2112, $z2=var2118}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder;	r12 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r2 := @parameter1: com.google.javascript.rhino.JSDocInfo;	r1 := @parameter2: com.google.javascript.rhino.Node;	r11 := @parameter3: com.google.javascript.rhino.Node;	r3 := @parameter4: com.google.javascript.rhino.Node;	z0 = virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder: boolean isValidTypedefDeclaration(com.google.javascript.rhino.Node,com.google.javascript.rhino.JSDocInfo)>(r1, r2);	if z0 == 0 goto $r23 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r23 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r24 = virtualinvoke $r23.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>();	$r25 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>();	$r26 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	if $r25 == null goto $z5 = 0;	$z5 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z5);	$r27 = virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder: com.google.javascript.rhino.jstype.JSType getDeclaredType(com.google.javascript.rhino.JSDocInfo,com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier)>(r2, r1, r3, null);	r28 = $r27;	if $r27 != null goto $r29 = "prototype";	$r29 = "prototype";	$z6 = virtualinvoke $r29.<java.lang.String: boolean equals(java.lang.Object)>($r26);	if $z6 == 0 goto (branch);	if r28 != null goto z9 = virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder: boolean isQualifiedNameInferred(java.lang.String,com.google.javascript.rhino.Node,com.google.javascript.rhino.JSDocInfo,com.google.javascript.rhino.Node,com.google.javascript.rhino.jstype.JSType)>($r25, r1, r2, r3, r28);	$z2 = virtualinvoke r11.<com.google.javascript.rhino.Node: boolean isExprResult()>();	if $z2 == 0 goto return;	return
;block_num 8