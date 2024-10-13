(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3182 0)
(declare-sort var674 0)
(declare-sort var1427 0)
(declare-sort var3292 0)
(declare-sort var3493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$1/-256168036 (var3182) var674)
(declare-fun var674_access$8000/-550246513 (var674) var1427)
(declare-fun var3292-init () var3292)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3493) String)
(declare-fun cast-from-var1427-to-var3493 (var1427) var3493)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3292 var3493) void)
(declare-fun cast-from-String-to-var3493 (String) var3493)
(declare-const null-var3182 var3182)
(declare-const var3182-$assertionsDisabled Bool)
(declare-const var3347 var3182) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator$Store$1 
(assert (not (= var3347 null-var3182)))
(define-const var830 Bool var3182-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.codegen.CodeGenerator$Store$1: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r1 = r0.<jdk.nashorn.internal.codegen.CodeGenerator$Store$1: jdk.nashorn.internal.codegen.CodeGenerator$Store this$1> 
(assert (not (not (= (ite var830 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1205 var674 (this$1/-256168036 var3347)) ; Statement: $r14 = r0.<jdk.nashorn.internal.codegen.CodeGenerator$Store$1: jdk.nashorn.internal.codegen.CodeGenerator$Store this$1> 
(define-const var249 var1427 (var674_access$8000/-550246513 var1205)) ; Statement: $r15 = staticinvoke <jdk.nashorn.internal.codegen.CodeGenerator$Store: jdk.nashorn.internal.ir.Expression access$8000(jdk.nashorn.internal.codegen.CodeGenerator$Store)>($r14) 
(define-const var3414 Bool false) ; Statement: $z3 = $r15 instanceof jdk.nashorn.internal.ir.BaseNode 
 ; Statement: if $z3 != 0 goto $r1 = r0.<jdk.nashorn.internal.codegen.CodeGenerator$Store$1: jdk.nashorn.internal.codegen.CodeGenerator$Store this$1> 
(assert (not (not (= (ite var3414 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var3813 var3292 var3292-init) ; Statement: $r18 = new java.lang.AssertionError 
(define-const var2009 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2009)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2009!1 String)
(assert (= var2009!1 ""))
(assert true)
(define-const var3302 String (append/672562846 var2009!1 "error - base node ")) ; Statement: $r22 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("error - base node ") 
(declare-const var2009!2 String)
(assert (= var2009!2 (str.++ var2009!1 "error - base node ")))
(define-const var1542 var674 (this$1/-256168036 var3347)) ; Statement: $r20 = r0.<jdk.nashorn.internal.codegen.CodeGenerator$Store$1: jdk.nashorn.internal.codegen.CodeGenerator$Store this$1> 
(define-const var848 var1427 (var674_access$8000/-550246513 var1542)) ; Statement: $r21 = staticinvoke <jdk.nashorn.internal.codegen.CodeGenerator$Store: jdk.nashorn.internal.ir.Expression access$8000(jdk.nashorn.internal.codegen.CodeGenerator$Store)>($r20) 
(assert true)
(define-const var1994 String (append/-1031950772 var3302 (cast-from-var1427-to-var3493 var848))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21) 
(declare-const var3302!1 String)
(assert (str.prefixof var3302 var3302!1))
(assert true)
(define-const var1811 String (append/672562846 var1994 " must be instanceof BaseNode")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be instanceof BaseNode") 
(declare-const var1994!1 String)
(assert (= var1994!1 (str.++ var1994 " must be instanceof BaseNode")))
(assert true)
(define-const var3580 String (toString/-2075883882 var1811)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var3813 (cast-from-String-to-var3493 var3580))) ; Statement: specialinvoke $r18.<java.lang.AssertionError: void <init>(java.lang.Object)>($r25) 

(declare-const var3813!1 var3292)
(declare-const var3580!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {this$1/-256168036=([jdk.nashorn.internal.codegen.CodeGenerator$Store$1], jdk.nashorn.internal.codegen.CodeGenerator$Store), var674_access$8000/-550246513=([jdk.nashorn.internal.codegen.CodeGenerator$Store], jdk.nashorn.internal.ir.Expression), var3292-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1427-to-var3493=([jdk.nashorn.internal.ir.Expression], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3493=([java.lang.String], java.lang.Object)}
; {var3182=jdk.nashorn.internal.codegen.CodeGenerator$Store$1, var3347=r0, var830=$z0, var674=jdk.nashorn.internal.codegen.CodeGenerator$Store, var1205=$r14, var1427=jdk.nashorn.internal.ir.Expression, var249=$r15, var3414=$z3, var3292=java.lang.AssertionError, var3813=$r18, var2009=$r19, var3302=$r22, var1542=$r20, var848=$r21, var3493=java.lang.Object, var1994=$r23, var1811=$r24, var3580=$r25}
; {jdk.nashorn.internal.codegen.CodeGenerator$Store$1=var3182, r0=var3347, $z0=var830, jdk.nashorn.internal.codegen.CodeGenerator$Store=var674, $r14=var1205, jdk.nashorn.internal.ir.Expression=var1427, $r15=var249, $z3=var3414, java.lang.AssertionError=var3292, $r18=var3813, $r19=var2009, $r22=var3302, $r20=var1542, $r21=var848, java.lang.Object=var3493, $r23=var1994, $r24=var1811, $r25=var3580}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator$Store$1;	$z0 = <jdk.nashorn.internal.codegen.CodeGenerator$Store$1: boolean $assertionsDisabled>;	if $z0 != 0 goto $r1 = r0.<jdk.nashorn.internal.codegen.CodeGenerator$Store$1: jdk.nashorn.internal.codegen.CodeGenerator$Store this$1>;	$r14 = r0.<jdk.nashorn.internal.codegen.CodeGenerator$Store$1: jdk.nashorn.internal.codegen.CodeGenerator$Store this$1>;	$r15 = staticinvoke <jdk.nashorn.internal.codegen.CodeGenerator$Store: jdk.nashorn.internal.ir.Expression access$8000(jdk.nashorn.internal.codegen.CodeGenerator$Store)>($r14);	$z3 = $r15 instanceof jdk.nashorn.internal.ir.BaseNode;	if $z3 != 0 goto $r1 = r0.<jdk.nashorn.internal.codegen.CodeGenerator$Store$1: jdk.nashorn.internal.codegen.CodeGenerator$Store this$1>;	$r18 = new java.lang.AssertionError;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("error - base node ");	$r20 = r0.<jdk.nashorn.internal.codegen.CodeGenerator$Store$1: jdk.nashorn.internal.codegen.CodeGenerator$Store this$1>;	$r21 = staticinvoke <jdk.nashorn.internal.codegen.CodeGenerator$Store: jdk.nashorn.internal.ir.Expression access$8000(jdk.nashorn.internal.codegen.CodeGenerator$Store)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be instanceof BaseNode");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<java.lang.AssertionError: void <init>(java.lang.Object)>($r25);	throw $r18
;block_num 3