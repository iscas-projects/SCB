(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1946 0)
(declare-sort var2045 0)
(declare-sort var2251 0)
(declare-sort var1461 0)
(declare-sort var329 0)
(declare-sort var1769 0)
(declare-sort var648 0)
(declare-sort var1912 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isValidTypedefDeclaration/-88633159 (var1946 var1461 var2251) Bool)
(declare-fun getFirstChild/2090828207 (var1461) var1461)
(declare-fun getQualifiedName/48314856 (var1461) String)
(declare-fun getString/-897720134 (var1461) String)
(declare-fun var1769_checkArgument/1735511034 (Bool) void)
(declare-fun getDeclaredType/-64610757 (var1946 var2251 var1461 var1461 var1912) var648)
(declare-fun isQualifiedNameInferred/1638836893 (var1946 String var1461 var2251 var1461 var648) Bool)
(declare-const null-var1946 var1946)
(declare-const null-var2045 var2045)
(declare-const null-var2251 var2251)
(declare-const null-var1461 var1461)
(declare-const null-String String)
(declare-const null-NullType var329)
(declare-const null-var1912 var1912)
(declare-const null-var648 var648)
(declare-const var982 var1946) ; Statement: r0 := @this: com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder 
(assert (not (= var982 null-var1946)))
(declare-const var426 var2045) ; Statement: r12 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var426 null-var2045)))
(declare-const var2935 var2251) ; Statement: r2 := @parameter1: com.google.javascript.rhino.JSDocInfo 
(assert (not (= var2935 null-var2251)))
(declare-const var55 var1461) ; Statement: r1 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var55 null-var1461)))
(declare-const var2105 var1461) ; Statement: r11 := @parameter3: com.google.javascript.rhino.Node 
(assert (not (= var2105 null-var1461)))
(declare-const var3887 var1461) ; Statement: r3 := @parameter4: com.google.javascript.rhino.Node 
(assert (not (= var3887 null-var1461)))
(assert true)
(define-const var2095 Bool (isValidTypedefDeclaration/-88633159 var982 var55 var2935)) ; Statement: z0 = virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder: boolean isValidTypedefDeclaration(com.google.javascript.rhino.Node,com.google.javascript.rhino.JSDocInfo)>(r1, r2) 
 ; Statement: if z0 == 0 goto $r23 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert (= (ite var2095 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3235 var1461 (getFirstChild/2090828207 var55)) ; Statement: $r23 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var1473 String (getQualifiedName/48314856 var3235)) ; Statement: $r24 = virtualinvoke $r23.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>() 
(assert true)
(define-const var86 String (getQualifiedName/48314856 var55)) ; Statement: $r25 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>() 
(assert true)
(define-const var986 String (getString/-897720134 var55)) ; Statement: $r26 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
 ; Statement: if $r25 == null goto $z5 = 0 
(assert (= var86 null-String)) ; Cond: $r25 == null 
(define-const var2665 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var1769_checkArgument/1735511034 var2665)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z5) 

(declare-const var2665!1 Bool)
(assert true)
(define-const var135 var648 (getDeclaredType/-64610757 var982 var2935 var55 var3887 null-var1912)) ; Statement: $r27 = virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder: com.google.javascript.rhino.jstype.JSType getDeclaredType(com.google.javascript.rhino.JSDocInfo,com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier)>(r2, r1, r3, null) 
(define-const var1339 var648 var135) ; Statement: r28 = $r27 
 ; Statement: if $r27 != null goto $r29 = "prototype" 
(assert (not (= var135 null-var648))) ; Cond: $r27 != null 
(define-const var3162 String "prototype") ; Statement: $r29 = "prototype" 
(assert true)
(define-const var1210 Bool (= var3162 var986)) ; Statement: $z6 = virtualinvoke $r29.<java.lang.String: boolean equals(java.lang.Object)>($r26) 
 ; Statement: if $z6 == 0 goto (branch) 
(assert (= (ite var1210 1 0) 0)) ; Cond: $z6 == 0 
 ; Statement: if r28 != null goto z9 = virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder: boolean isQualifiedNameInferred(java.lang.String,com.google.javascript.rhino.Node,com.google.javascript.rhino.JSDocInfo,com.google.javascript.rhino.Node,com.google.javascript.rhino.jstype.JSType)>($r25, r1, r2, r3, r28) 
(assert (not (= var1339 null-var648))) ; Cond: r28 != null 
(assert true)
(define-const var1122 Bool (isQualifiedNameInferred/1638836893 var982 var86 var55 var2935 var3887 var1339)) ; Statement: z9 = virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder: boolean isQualifiedNameInferred(java.lang.String,com.google.javascript.rhino.Node,com.google.javascript.rhino.JSDocInfo,com.google.javascript.rhino.Node,com.google.javascript.rhino.jstype.JSType)>($r25, r1, r2, r3, r28) 
 ; Statement: if z9 != 0 goto return 
(assert (not (= (ite var1122 1 0) 0))) ; Cond: z9 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isValidTypedefDeclaration/-88633159=([com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder, com.google.javascript.rhino.Node, com.google.javascript.rhino.JSDocInfo], boolean), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getQualifiedName/48314856=([com.google.javascript.rhino.Node], java.lang.String), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), var1769_checkArgument/1735511034=([boolean], void), getDeclaredType/-64610757=([com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder, com.google.javascript.rhino.JSDocInfo, com.google.javascript.rhino.Node, com.google.javascript.rhino.Node, com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier], com.google.javascript.rhino.jstype.JSType), isQualifiedNameInferred/1638836893=([com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder, java.lang.String, com.google.javascript.rhino.Node, com.google.javascript.rhino.JSDocInfo, com.google.javascript.rhino.Node, com.google.javascript.rhino.jstype.JSType], boolean)}
; {var1946=com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder, var982=r0, var2045=com.google.javascript.jscomp.NodeTraversal, var426=r12, var2251=com.google.javascript.rhino.JSDocInfo, var2935=r2, var1461=com.google.javascript.rhino.Node, var55=r1, var2105=r11, var3887=r3, var2095=z0, var3235=$r23, var1473=$r24, var86=$r25, var986=$r26, var329=null_type, var2665=$z5, var1769=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var648=com.google.javascript.rhino.jstype.JSType, var1912=com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier, var135=$r27, var1339=r28, var3162=$r29, var1210=$z6, var1122=z9}
; {com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder=var1946, r0=var982, com.google.javascript.jscomp.NodeTraversal=var2045, r12=var426, com.google.javascript.rhino.JSDocInfo=var2251, r2=var2935, com.google.javascript.rhino.Node=var1461, r1=var55, r11=var2105, r3=var3887, z0=var2095, $r23=var3235, $r24=var1473, $r25=var86, $r26=var986, null_type=var329, $z5=var2665, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1769, com.google.javascript.rhino.jstype.JSType=var648, com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier=var1912, $r27=var135, r28=var1339, $r29=var3162, $z6=var1210, z9=var1122}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder;	r12 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r2 := @parameter1: com.google.javascript.rhino.JSDocInfo;	r1 := @parameter2: com.google.javascript.rhino.Node;	r11 := @parameter3: com.google.javascript.rhino.Node;	r3 := @parameter4: com.google.javascript.rhino.Node;	z0 = virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder: boolean isValidTypedefDeclaration(com.google.javascript.rhino.Node,com.google.javascript.rhino.JSDocInfo)>(r1, r2);	if z0 == 0 goto $r23 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r23 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r24 = virtualinvoke $r23.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>();	$r25 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>();	$r26 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	if $r25 == null goto $z5 = 0;	$z5 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z5);	$r27 = virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder: com.google.javascript.rhino.jstype.JSType getDeclaredType(com.google.javascript.rhino.JSDocInfo,com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier)>(r2, r1, r3, null);	r28 = $r27;	if $r27 != null goto $r29 = "prototype";	$r29 = "prototype";	$z6 = virtualinvoke $r29.<java.lang.String: boolean equals(java.lang.Object)>($r26);	if $z6 == 0 goto (branch);	if r28 != null goto z9 = virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder: boolean isQualifiedNameInferred(java.lang.String,com.google.javascript.rhino.Node,com.google.javascript.rhino.JSDocInfo,com.google.javascript.rhino.Node,com.google.javascript.rhino.jstype.JSType)>($r25, r1, r2, r3, r28);	z9 = virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder: boolean isQualifiedNameInferred(java.lang.String,com.google.javascript.rhino.Node,com.google.javascript.rhino.JSDocInfo,com.google.javascript.rhino.Node,com.google.javascript.rhino.jstype.JSType)>($r25, r1, r2, r3, r28);	if z9 != 0 goto return;	return
;block_num 8