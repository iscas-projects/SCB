(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var263 0)
(declare-sort var606 0)
(declare-sort var1224 0)
(declare-sort var3894 0)
(declare-sort var1256 0)
(declare-sort var1412 0)
(declare-sort var3883 0)
(declare-sort var221 0)
(declare-sort var647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun lc/-839157179 (var263) var1256)
(declare-fun getCurrentFunction/-915359135 (var3883) var1412)
(declare-fun cast-from-var1256-to-var3883 (var1256) var3883)
(declare-fun getName/-1684945865 (var606) String)
(declare-fun var647-init () var647)
(declare-fun <init>/-208190597 (var647) void)
(declare-const null-var263 var263)
(declare-const null-Int Int)
(declare-const null-var606 var606)
(declare-const null-var1224 var1224)
(declare-const null-var3894 var3894)
(declare-const null-var1412 var1412)
(declare-const var263-$assertionsDisabled Bool)
(declare-const null-String String)
(declare-const var1831 var263) ; Statement: r1 := @this: jdk.nashorn.internal.parser.Parser 
(assert (not (= var1831 null-var263)))
(declare-const var3271 Int) ; Statement: l3 := @parameter0: long 
(assert (not (= var3271 null-Int)))
(declare-const var3471 var606) ; Statement: r4 := @parameter1: jdk.nashorn.internal.ir.IdentNode 
(assert (not (= var3471 null-var606)))
(declare-const var2176 var1224) ; Statement: r10 := @parameter2: java.util.List 
(assert (not (= var2176 null-var1224)))
(declare-const var1664 var3894) ; Statement: r11 := @parameter3: jdk.nashorn.internal.ir.FunctionNode$Kind 
(assert (not (= var1664 null-var3894)))
(declare-const var2238 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var2238 null-Int)))
(define-const var152 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var152)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var152!1 String)
(assert (= var152!1 ""))
(define-const var522 var1256 (lc/-839157179 var1831)) ; Statement: $r2 = r1.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.BlockLexicalContext lc> 
(assert true)
(define-const var3573 var1412 (getCurrentFunction/-915359135 (cast-from-var1256-to-var3883 var522))) ; Statement: r3 = virtualinvoke $r2.<jdk.nashorn.internal.ir.BlockLexicalContext: jdk.nashorn.internal.ir.FunctionNode getCurrentFunction()>() 
 ; Statement: if r3 == null goto $z4 = <jdk.nashorn.internal.parser.Parser: boolean $assertionsDisabled> 
(assert (= var3573 null-var1412)) ; Cond: r3 == null 
(define-const var2726 Bool var263-$assertionsDisabled) ; Statement: $z4 = <jdk.nashorn.internal.parser.Parser: boolean $assertionsDisabled> 
 ; Statement: if $z4 != 0 goto $r5 = virtualinvoke r4.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>() 
(assert (not (not (= (ite var2726 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(assert true)
(define-const var573 String (getName/-1684945865 var3471)) ; Statement: $r21 = virtualinvoke r4.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>() 
 ; Statement: if $r21 != null goto $r5 = virtualinvoke r4.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>() 
(assert (not (not (= var573 null-String)))) ; Negate: Cond: $r21 != null  
(define-const var501 var647 var647-init) ; Statement: $r23 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var501)) ; Statement: specialinvoke $r23.<java.lang.AssertionError: void <init>()>() 

(declare-const var501!1 var647)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), lc/-839157179=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.ir.BlockLexicalContext), getCurrentFunction/-915359135=([jdk.nashorn.internal.ir.LexicalContext], jdk.nashorn.internal.ir.FunctionNode), cast-from-var1256-to-var3883=([jdk.nashorn.internal.ir.BlockLexicalContext], jdk.nashorn.internal.ir.LexicalContext), getName/-1684945865=([jdk.nashorn.internal.ir.IdentNode], java.lang.String), var647-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var263=jdk.nashorn.internal.parser.Parser, var1831=r1, var3271=l3, var606=jdk.nashorn.internal.ir.IdentNode, var3471=r4, var1224=java.util.List, var2176=r10, var3894=jdk.nashorn.internal.ir.FunctionNode$Kind, var1664=r11, var2238=i0, var152=$r0, var1256=jdk.nashorn.internal.ir.BlockLexicalContext, var522=$r2, var1412=jdk.nashorn.internal.ir.FunctionNode, var3883=jdk.nashorn.internal.ir.LexicalContext, var3573=r3, var2726=$z4, var573=$r21, var221=null_type, var647=java.lang.AssertionError, var501=$r23}
; {jdk.nashorn.internal.parser.Parser=var263, r1=var1831, l3=var3271, jdk.nashorn.internal.ir.IdentNode=var606, r4=var3471, java.util.List=var1224, r10=var2176, jdk.nashorn.internal.ir.FunctionNode$Kind=var3894, r11=var1664, i0=var2238, $r0=var152, jdk.nashorn.internal.ir.BlockLexicalContext=var1256, $r2=var522, jdk.nashorn.internal.ir.FunctionNode=var1412, jdk.nashorn.internal.ir.LexicalContext=var3883, r3=var3573, $z4=var2726, $r21=var573, null_type=var221, java.lang.AssertionError=var647, $r23=var501}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.parser.Parser;	l3 := @parameter0: long;	r4 := @parameter1: jdk.nashorn.internal.ir.IdentNode;	r10 := @parameter2: java.util.List;	r11 := @parameter3: jdk.nashorn.internal.ir.FunctionNode$Kind;	i0 := @parameter4: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.BlockLexicalContext lc>;	r3 = virtualinvoke $r2.<jdk.nashorn.internal.ir.BlockLexicalContext: jdk.nashorn.internal.ir.FunctionNode getCurrentFunction()>();	if r3 == null goto $z4 = <jdk.nashorn.internal.parser.Parser: boolean $assertionsDisabled>;	$z4 = <jdk.nashorn.internal.parser.Parser: boolean $assertionsDisabled>;	if $z4 != 0 goto $r5 = virtualinvoke r4.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>();	$r21 = virtualinvoke r4.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>();	if $r21 != null goto $r5 = virtualinvoke r4.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>();	$r23 = new java.lang.AssertionError;	specialinvoke $r23.<java.lang.AssertionError: void <init>()>();	throw $r23
;block_num 4