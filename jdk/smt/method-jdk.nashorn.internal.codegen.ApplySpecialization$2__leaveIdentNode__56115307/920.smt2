(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2113 0)
(declare-sort var401 0)
(declare-sort var941 0)
(declare-sort var1323 0)
(declare-sort var2833 0)
(declare-sort var1194 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1684945865 (var401) String)
(declare-fun isParam/857051436 (var2113 String) Bool)
(declare-fun var941-init () var941)
(declare-fun lc/276435632 (var2833) var1323)
(declare-fun cast-from-var2113-to-var2833 (var2113) var2833)
(declare-fun getCurrentFunction/-915359135 (var1323) var1194)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1430385719 (var941 var1194 String) void)
(declare-const null-var2113 var2113)
(declare-const null-var401 var401)
(declare-const var2509 var2113) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.ApplySpecialization$2 
(assert (not (= var2509 null-var2113)))
(declare-const var3192 var401) ; Statement: r1 := @parameter0: jdk.nashorn.internal.ir.IdentNode 
(assert (not (= var3192 null-var401)))
(assert true)
(define-const var1611 String (getName/-1684945865 var3192)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>() 
(assert true)
(define-const var955 Bool (isParam/857051436 var2509 var1611)) ; Statement: $z0 = specialinvoke r0.<jdk.nashorn.internal.codegen.ApplySpecialization$2: boolean isParam(java.lang.String)>($r2) 
 ; Statement: if $z0 == 0 goto $z1 = specialinvoke r0.<jdk.nashorn.internal.codegen.ApplySpecialization$2: boolean isArguments(jdk.nashorn.internal.ir.Expression)>(r1) 
(assert (not (= (ite var955 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var304 var941 var941-init) ; Statement: $r11 = new jdk.nashorn.internal.codegen.ApplySpecialization$TransformFailedException 
(define-const var533 var1323 (lc/276435632 (cast-from-var2113-to-var2833 var2509))) ; Statement: $r12 = r0.<jdk.nashorn.internal.codegen.ApplySpecialization$2: jdk.nashorn.internal.ir.LexicalContext lc> 
(assert true)
(define-const var2857 var1194 (getCurrentFunction/-915359135 var533)) ; Statement: $r18 = virtualinvoke $r12.<jdk.nashorn.internal.ir.LexicalContext: jdk.nashorn.internal.ir.FunctionNode getCurrentFunction()>() 
(define-const var1411 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1411)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1411!1 String)
(assert (= var1411!1 ""))
(assert true)
(define-const var2828 String (append/672562846 var1411!1 "parameter: ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parameter: ") 
(declare-const var1411!2 String)
(assert (= var1411!2 (str.++ var1411!1 "parameter: ")))
(assert true)
(define-const var3562 String (getName/-1684945865 var3192)) ; Statement: $r14 = virtualinvoke r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>() 
(assert true)
(define-const var2957 String (append/672562846 var2828 var3562)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2828!1 String)
(assert (= var2828!1 (str.++ var2828 var3562)))
(assert true)
(define-const var202 String (toString/-2075883882 var2957)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1430385719 var304 var2857 var202)) ; Statement: specialinvoke $r11.<jdk.nashorn.internal.codegen.ApplySpecialization$TransformFailedException: void <init>(jdk.nashorn.internal.ir.FunctionNode,java.lang.String)>($r18, $r17) 

(declare-const var304!1 var941)
(declare-const var2857!1 var1194)
(declare-const var202!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1684945865=([jdk.nashorn.internal.ir.IdentNode], java.lang.String), isParam/857051436=([jdk.nashorn.internal.codegen.ApplySpecialization$2, java.lang.String], boolean), var941-init=([], jdk.nashorn.internal.codegen.ApplySpecialization$TransformFailedException), lc/276435632=([jdk.nashorn.internal.ir.visitor.NodeVisitor], jdk.nashorn.internal.ir.LexicalContext), cast-from-var2113-to-var2833=([jdk.nashorn.internal.codegen.ApplySpecialization$2], jdk.nashorn.internal.ir.visitor.NodeVisitor), getCurrentFunction/-915359135=([jdk.nashorn.internal.ir.LexicalContext], jdk.nashorn.internal.ir.FunctionNode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1430385719=([jdk.nashorn.internal.codegen.ApplySpecialization$TransformFailedException, jdk.nashorn.internal.ir.FunctionNode, java.lang.String], void)}
; {var2113=jdk.nashorn.internal.codegen.ApplySpecialization$2, var2509=r0, var401=jdk.nashorn.internal.ir.IdentNode, var3192=r1, var1611=$r2, var955=$z0, var941=jdk.nashorn.internal.codegen.ApplySpecialization$TransformFailedException, var304=$r11, var1323=jdk.nashorn.internal.ir.LexicalContext, var2833=jdk.nashorn.internal.ir.visitor.NodeVisitor, var533=$r12, var1194=jdk.nashorn.internal.ir.FunctionNode, var2857=$r18, var1411=$r13, var2828=$r15, var3562=$r14, var2957=$r16, var202=$r17}
; {jdk.nashorn.internal.codegen.ApplySpecialization$2=var2113, r0=var2509, jdk.nashorn.internal.ir.IdentNode=var401, r1=var3192, $r2=var1611, $z0=var955, jdk.nashorn.internal.codegen.ApplySpecialization$TransformFailedException=var941, $r11=var304, jdk.nashorn.internal.ir.LexicalContext=var1323, jdk.nashorn.internal.ir.visitor.NodeVisitor=var2833, $r12=var533, jdk.nashorn.internal.ir.FunctionNode=var1194, $r18=var2857, $r13=var1411, $r15=var2828, $r14=var3562, $r16=var2957, $r17=var202}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.ApplySpecialization$2;	r1 := @parameter0: jdk.nashorn.internal.ir.IdentNode;	$r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>();	$z0 = specialinvoke r0.<jdk.nashorn.internal.codegen.ApplySpecialization$2: boolean isParam(java.lang.String)>($r2);	if $z0 == 0 goto $z1 = specialinvoke r0.<jdk.nashorn.internal.codegen.ApplySpecialization$2: boolean isArguments(jdk.nashorn.internal.ir.Expression)>(r1);	$r11 = new jdk.nashorn.internal.codegen.ApplySpecialization$TransformFailedException;	$r12 = r0.<jdk.nashorn.internal.codegen.ApplySpecialization$2: jdk.nashorn.internal.ir.LexicalContext lc>;	$r18 = virtualinvoke $r12.<jdk.nashorn.internal.ir.LexicalContext: jdk.nashorn.internal.ir.FunctionNode getCurrentFunction()>();	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parameter: ");	$r14 = virtualinvoke r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<jdk.nashorn.internal.codegen.ApplySpecialization$TransformFailedException: void <init>(jdk.nashorn.internal.ir.FunctionNode,java.lang.String)>($r18, $r17);	throw $r11
;block_num 2