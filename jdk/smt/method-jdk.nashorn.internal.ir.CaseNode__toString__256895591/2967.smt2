(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var542 0)
(declare-sort var3798 0)
(declare-sort var1942 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun test/-872026194 (var542) var3798)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/740977591 (var1942 String Bool) void)
(declare-fun cast-from-var3798-to-var1942 (var3798) var1942)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var542 var542)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3798 var3798)
(declare-const var15 var542) ; Statement: r0 := @this: jdk.nashorn.internal.ir.CaseNode 
(assert (not (= var15 null-var542)))
(declare-const var2917 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2917 null-String)))
(declare-const var1440 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1440 null-Bool)))
(define-const var2985 var3798 (test/-872026194 var15)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.CaseNode: jdk.nashorn.internal.ir.Expression test> 
 ; Statement: if $r1 == null goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("default:") 
(assert (not (= var2985 null-var3798))) ; Negate: Cond: $r1 == null  
(assert true)
;(assert (append/672562846 var2917 "case ")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("case ") 
(declare-const var2917!1 String)
(assert (= var2917!1 (str.++ var2917 "case ")))
(define-const var2812 var3798 (test/-872026194 var15)) ; Statement: $r3 = r0.<jdk.nashorn.internal.ir.CaseNode: jdk.nashorn.internal.ir.Expression test> 
(assert true)
;(assert (toString/740977591 (cast-from-var3798-to-var1942 var2812) var2917!1 var1440)) ; Statement: virtualinvoke $r3.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r2, z0) 

(declare-const var2812!1 var3798)
(declare-const var2917!2 String)
(declare-const var1440!1 Bool)
(assert true)
;(assert (append/-1166366385 var2917!2 58)) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2917!3 String)
(assert (str.prefixof var2917!2 var2917!3))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {test/-872026194=([jdk.nashorn.internal.ir.CaseNode], jdk.nashorn.internal.ir.Expression), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), cast-from-var3798-to-var1942=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var542=jdk.nashorn.internal.ir.CaseNode, var15=r0, var2917=r2, var1440=z0, var3798=jdk.nashorn.internal.ir.Expression, var2985=$r1, var2812=$r3, var1942=jdk.nashorn.internal.ir.Node}
; {jdk.nashorn.internal.ir.CaseNode=var542, r0=var15, r2=var2917, z0=var1440, jdk.nashorn.internal.ir.Expression=var3798, $r1=var2985, $r3=var2812, jdk.nashorn.internal.ir.Node=var1942}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.CaseNode;	r2 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	$r1 = r0.<jdk.nashorn.internal.ir.CaseNode: jdk.nashorn.internal.ir.Expression test>;	if $r1 == null goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("default:");	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("case ");	$r3 = r0.<jdk.nashorn.internal.ir.CaseNode: jdk.nashorn.internal.ir.Expression test>;	virtualinvoke $r3.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r2, z0);	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	goto [?= return];	return
;block_num 3