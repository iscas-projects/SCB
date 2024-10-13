(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1409 0)
(declare-sort var3575 0)
(declare-sort var2177 0)
(declare-sort var1310 0)
(declare-sort var1400 0)
(declare-sort var2444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun printLocalVariableConversion/1292819794 (var1409 var2177) void)
(declare-fun cast-from-var3575-to-var2177 (var3575) var2177)
(declare-fun isDoWhile/-761619174 (var3575) Bool)
(declare-fun sb/709861400 (var1409) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getBody/-1546809675 (var3575) var1310)
(declare-fun accept/-1193142580 (var1310 var1400) var2444)
(declare-fun cast-from-var1409-to-var1400 (var1409) var1400)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun printTypes/709861400 (var1409) Bool)
(declare-fun toString/1110857014 (var3575 String Bool) void)
(declare-const null-var1409 var1409)
(declare-const null-var3575 var3575)
(declare-const var3980 var1409) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor 
(assert (not (= var3980 null-var1409)))
(declare-const var3495 var3575) ; Statement: r1 := @parameter0: jdk.nashorn.internal.ir.WhileNode 
(assert (not (= var3495 null-var3575)))
(assert true)
;(assert (printLocalVariableConversion/1292819794 var3980 (cast-from-var3575-to-var2177 var3495))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: void printLocalVariableConversion(jdk.nashorn.internal.ir.JoinPredecessor)>(r1) 

(declare-const var3980!1 var1409)
(declare-const var3495!1 var3575)
(assert true)
(define-const var1071 Bool (isDoWhile/-761619174 var3495!1)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.WhileNode: boolean isDoWhile()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert (not (= (ite var1071 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var323 String (sb/709861400 var3980!1)) ; Statement: $r4 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/672562846 var323 "do")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("do") 
(declare-const var323!1 String)
(assert (= var323!1 (str.++ var323 "do")))
(assert true)
(define-const var3364 var1310 (getBody/-1546809675 var3495!1)) ; Statement: $r5 = virtualinvoke r1.<jdk.nashorn.internal.ir.WhileNode: jdk.nashorn.internal.ir.Block getBody()>() 
(assert true)
;(assert (accept/-1193142580 var3364 (cast-from-var1409-to-var1400 var3980!1))) ; Statement: virtualinvoke $r5.<jdk.nashorn.internal.ir.Block: jdk.nashorn.internal.ir.Node accept(jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r0) 

(declare-const var3364!1 var1310)
(declare-const var3980!2 var1409)
(define-const var969 String (sb/709861400 var3980!2)) ; Statement: $r6 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/-1166366385 var969 32)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var969!1 String)
(assert (str.prefixof var969 var969!1))
(define-const var3107 String (sb/709861400 var3980!2)) ; Statement: $r7 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(define-const var589 Bool (printTypes/709861400 var3980!2)) ; Statement: $z2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: boolean printTypes> 
(assert true)
;(assert (toString/1110857014 var3495!1 var3107 var589)) ; Statement: virtualinvoke r1.<jdk.nashorn.internal.ir.WhileNode: void toString(java.lang.StringBuilder,boolean)>($r7, $z2) 

(declare-const var3495!2 var3575)
(declare-const var3107!1 String)
(declare-const var589!1 Bool)
 ; Statement: goto [?= return 0] 
(assert true) ; Non Conditional
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {printLocalVariableConversion/1292819794=([jdk.nashorn.internal.ir.debug.PrintVisitor, jdk.nashorn.internal.ir.JoinPredecessor], void), cast-from-var3575-to-var2177=([jdk.nashorn.internal.ir.WhileNode], jdk.nashorn.internal.ir.JoinPredecessor), isDoWhile/-761619174=([jdk.nashorn.internal.ir.WhileNode], boolean), sb/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getBody/-1546809675=([jdk.nashorn.internal.ir.WhileNode], jdk.nashorn.internal.ir.Block), accept/-1193142580=([jdk.nashorn.internal.ir.Block, jdk.nashorn.internal.ir.visitor.NodeVisitor], jdk.nashorn.internal.ir.Node), cast-from-var1409-to-var1400=([jdk.nashorn.internal.ir.debug.PrintVisitor], jdk.nashorn.internal.ir.visitor.NodeVisitor), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), printTypes/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], boolean), toString/1110857014=([jdk.nashorn.internal.ir.WhileNode, java.lang.StringBuilder, boolean], void)}
; {var1409=jdk.nashorn.internal.ir.debug.PrintVisitor, var3980=r0, var3575=jdk.nashorn.internal.ir.WhileNode, var3495=r1, var2177=jdk.nashorn.internal.ir.JoinPredecessor, var1071=$z0, var323=$r4, var1310=jdk.nashorn.internal.ir.Block, var3364=$r5, var1400=jdk.nashorn.internal.ir.visitor.NodeVisitor, var969=$r6, var3107=$r7, var589=$z2, var2444=jdk.nashorn.internal.ir.Node}
; {jdk.nashorn.internal.ir.debug.PrintVisitor=var1409, r0=var3980, jdk.nashorn.internal.ir.WhileNode=var3575, r1=var3495, jdk.nashorn.internal.ir.JoinPredecessor=var2177, $z0=var1071, $r4=var323, jdk.nashorn.internal.ir.Block=var1310, $r5=var3364, jdk.nashorn.internal.ir.visitor.NodeVisitor=var1400, $r6=var969, $r7=var3107, $z2=var589, jdk.nashorn.internal.ir.Node=var2444}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<jdk.nashorn.internal.ir.WhileNode: void toString(java.lang.StringBuilder,boolean)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor;	r1 := @parameter0: jdk.nashorn.internal.ir.WhileNode;	specialinvoke r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: void printLocalVariableConversion(jdk.nashorn.internal.ir.JoinPredecessor)>(r1);	$z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.WhileNode: boolean isDoWhile()>();	if $z0 == 0 goto $r2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$r4 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("do");	$r5 = virtualinvoke r1.<jdk.nashorn.internal.ir.WhileNode: jdk.nashorn.internal.ir.Block getBody()>();	virtualinvoke $r5.<jdk.nashorn.internal.ir.Block: jdk.nashorn.internal.ir.Node accept(jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r0);	$r6 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r7 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$z2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: boolean printTypes>;	virtualinvoke r1.<jdk.nashorn.internal.ir.WhileNode: void toString(java.lang.StringBuilder,boolean)>($r7, $z2);	goto [?= return 0];	return 0
;block_num 3