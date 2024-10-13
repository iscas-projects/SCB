(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3688 0)
(declare-sort var3461 0)
(declare-sort var387 0)
(declare-sort var3809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun function/-1065965604 (var3688) var3461)
(declare-fun toString/740977591 (var387 String Bool) void)
(declare-fun cast-from-var3461-to-var387 (var3461) var387)
(declare-fun isApplyToCall/206962038 (var3688) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun args/-1065965604 (var3688) var3809)
(declare-fun var3809_iterator/-912451715 (var3809) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var3688 var3688)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2789 var3688) ; Statement: r1 := @this: jdk.nashorn.internal.ir.CallNode 
(assert (not (= var2789 null-var3688)))
(declare-const var890 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var890 null-String)))
(declare-const var553 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var553 null-Bool)))
 ; Statement: if z0 == 0 goto $r0 = new java.lang.StringBuilder 
(assert (= (ite var553 1 0) 0)) ; Cond: z0 == 0 
(define-const var1618 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1618)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1618!1 String)
(assert (= var1618!1 ""))
(define-const var0 var3461 (function/-1065965604 var2789)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.CallNode: jdk.nashorn.internal.ir.Expression function> 
(assert true)
;(assert (toString/740977591 (cast-from-var3461-to-var387 var0) var1618!1 var553)) ; Statement: virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>($r0, z0) 

(declare-const var0!1 var3461)
(declare-const var1618!2 String)
(declare-const var553!1 Bool)
(assert true)
(define-const var2953 Bool (isApplyToCall/206962038 var2789)) ; Statement: $z1 = virtualinvoke r1.<jdk.nashorn.internal.ir.CallNode: boolean isApplyToCall()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r0) 
(assert (not (= (ite var2953 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var2395 String (toString/-2075883882 var1618!2)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var554 String (replace/2138489945 var2395 (cast-from-String-to-String "apply") (cast-from-String-to-String "[apply => call]"))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("apply", "[apply => call]") 
(assert true)
;(assert (append/672562846 var890 var554)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var890!1 String)
(assert (= var890!1 (str.++ var890 var554)))
 ; Statement: goto [?= virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var890!1 40)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var890!2 String)
(assert (str.prefixof var890!1 var890!2))
(define-const var3738 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(define-const var446 var3809 (args/-1065965604 var2789)) ; Statement: $r4 = r1.<jdk.nashorn.internal.ir.CallNode: java.util.List args> 
(define-const var2259 Iterator (var3809_iterator/-912451715 var446)) ; Statement: $r9 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var531 Bool (Iterator_hasNext/-1669924200 var2259)) ; Statement: $z3 = interfaceinvoke $r9.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var531 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
;(assert (append/-1166366385 var890!2 41)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var890!3 String)
(assert (str.prefixof var890!2 var890!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), function/-1065965604=([jdk.nashorn.internal.ir.CallNode], jdk.nashorn.internal.ir.Expression), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), cast-from-var3461-to-var387=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), isApplyToCall/206962038=([jdk.nashorn.internal.ir.CallNode], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), args/-1065965604=([jdk.nashorn.internal.ir.CallNode], java.util.List), var3809_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var3688=jdk.nashorn.internal.ir.CallNode, var2789=r1, var890=r3, var553=z0, var1618=$r0, var3461=jdk.nashorn.internal.ir.Expression, var0=$r2, var387=jdk.nashorn.internal.ir.Node, var2953=$z1, var2395=$r7, var554=$r8, var3738=z2, var3809=java.util.List, var446=$r4, var2259=$r9, var531=$z3}
; {jdk.nashorn.internal.ir.CallNode=var3688, r1=var2789, r3=var890, z0=var553, $r0=var1618, jdk.nashorn.internal.ir.Expression=var3461, $r2=var0, jdk.nashorn.internal.ir.Node=var387, $z1=var2953, $r7=var2395, $r8=var554, z2=var3738, java.util.List=var3809, $r4=var446, $r9=var2259, $z3=var531}
;seq <java.lang.StringBuilder: void <init>()>;	<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.CallNode;	r3 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	if z0 == 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.nashorn.internal.ir.CallNode: jdk.nashorn.internal.ir.Expression function>;	virtualinvoke $r2.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>($r0, z0);	$z1 = virtualinvoke r1.<jdk.nashorn.internal.ir.CallNode: boolean isApplyToCall()>();	if $z1 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r0);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("apply", "[apply => call]");	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	goto [?= virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40)];	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	z2 = 1;	$r4 = r1.<jdk.nashorn.internal.ir.CallNode: java.util.List args>;	$r9 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r9.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 6