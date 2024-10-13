(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2031 0)
(declare-sort var242 0)
(declare-sort var2626 0)
(declare-sort var490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun function/-1065965604 (var2031) var242)
(declare-fun toString/740977591 (var2626 String Bool) void)
(declare-fun cast-from-var242-to-var2626 (var242) var2626)
(declare-fun isApplyToCall/206962038 (var2031) Bool)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun args/-1065965604 (var2031) var490)
(declare-fun var490_iterator/-912451715 (var490) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var2031 var2031)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2672 var2031) ; Statement: r1 := @this: jdk.nashorn.internal.ir.CallNode 
(assert (not (= var2672 null-var2031)))
(declare-const var2721 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2721 null-String)))
(declare-const var2260 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2260 null-Bool)))
 ; Statement: if z0 == 0 goto $r0 = new java.lang.StringBuilder 
(assert (= (ite var2260 1 0) 0)) ; Cond: z0 == 0 
(define-const var3627 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3627)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3627!1 String)
(assert (= var3627!1 ""))
(define-const var1718 var242 (function/-1065965604 var2672)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.CallNode: jdk.nashorn.internal.ir.Expression function> 
(assert true)
;(assert (toString/740977591 (cast-from-var242-to-var2626 var1718) var3627!1 var2260)) ; Statement: virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>($r0, z0) 

(declare-const var1718!1 var242)
(declare-const var3627!2 String)
(declare-const var2260!1 Bool)
(assert true)
(define-const var583 Bool (isApplyToCall/206962038 var2672)) ; Statement: $z1 = virtualinvoke r1.<jdk.nashorn.internal.ir.CallNode: boolean isApplyToCall()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r0) 
(assert (= (ite var583 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (append/-13659068 var2721 (cast-from-String-to-String var3627!2))) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r0) 
(declare-const var2721!1 String)
(assert (str.prefixof var2721 var2721!1))
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2721!1 40)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var2721!2 String)
(assert (str.prefixof var2721!1 var2721!2))
(define-const var3697 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(define-const var3569 var490 (args/-1065965604 var2672)) ; Statement: $r4 = r1.<jdk.nashorn.internal.ir.CallNode: java.util.List args> 
(define-const var339 Iterator (var490_iterator/-912451715 var3569)) ; Statement: $r9 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1345 Bool (Iterator_hasNext/-1669924200 var339)) ; Statement: $z3 = interfaceinvoke $r9.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var1345 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
;(assert (append/-1166366385 var2721!2 41)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2721!3 String)
(assert (str.prefixof var2721!2 var2721!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), function/-1065965604=([jdk.nashorn.internal.ir.CallNode], jdk.nashorn.internal.ir.Expression), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), cast-from-var242-to-var2626=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), isApplyToCall/206962038=([jdk.nashorn.internal.ir.CallNode], boolean), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), args/-1065965604=([jdk.nashorn.internal.ir.CallNode], java.util.List), var490_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var2031=jdk.nashorn.internal.ir.CallNode, var2672=r1, var2721=r3, var2260=z0, var3627=$r0, var242=jdk.nashorn.internal.ir.Expression, var1718=$r2, var2626=jdk.nashorn.internal.ir.Node, var583=$z1, var3697=z2, var490=java.util.List, var3569=$r4, var339=$r9, var1345=$z3}
; {jdk.nashorn.internal.ir.CallNode=var2031, r1=var2672, r3=var2721, z0=var2260, $r0=var3627, jdk.nashorn.internal.ir.Expression=var242, $r2=var1718, jdk.nashorn.internal.ir.Node=var2626, $z1=var583, z2=var3697, java.util.List=var490, $r4=var3569, $r9=var339, $z3=var1345}
;seq <java.lang.StringBuilder: void <init>()>;	<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.CallNode;	r3 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	if z0 == 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.nashorn.internal.ir.CallNode: jdk.nashorn.internal.ir.Expression function>;	virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>($r0, z0);	$z1 = virtualinvoke r1.<jdk.nashorn.internal.ir.CallNode: boolean isApplyToCall()>();	if $z1 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r0);	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r0);	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	z2 = 1;	$r4 = r1.<jdk.nashorn.internal.ir.CallNode: java.util.List args>;	$r9 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r9.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 6