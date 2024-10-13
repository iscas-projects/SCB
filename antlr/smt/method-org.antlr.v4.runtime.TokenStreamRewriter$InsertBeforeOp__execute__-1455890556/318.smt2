(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2326 0)
(declare-sort var3113 0)
(declare-sort var590 0)
(declare-sort var1957 0)
(declare-sort var769 0)
(declare-sort var885 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/-227227365 (var590) var3113)
(declare-fun cast-from-var2326-to-var590 (var2326) var590)
(declare-fun append/-1031950772 (String var3113) String)
(declare-fun this$0/1931428729 (var2326) var1957)
(declare-fun tokens/849795300 (var1957) var769)
(declare-fun index/-227227365 (var590) Int)
(declare-fun var769_get/-1982438416 (var769 Int) var885)
(declare-fun var885_getType/1377643934 (var885) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2326 var2326)
(declare-const null-String String)
(declare-const var643 var2326) ; Statement: r1 := @this: org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp 
(assert (not (= var643 null-var2326)))
(declare-const var3107 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3107 null-String)))
(define-const var743 var3113 (text/-227227365 (cast-from-var2326-to-var590 var643))) ; Statement: $r2 = r1.<org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp: java.lang.Object text> 
(assert true)
;(assert (append/-1031950772 var3107 var743)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3107!1 String)
(assert (str.prefixof var3107 var3107!1))
(define-const var2199 var1957 (this$0/1931428729 var643)) ; Statement: $r3 = r1.<org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp: org.antlr.v4.runtime.TokenStreamRewriter this$0> 
(define-const var712 var769 (tokens/849795300 var2199)) ; Statement: $r4 = $r3.<org.antlr.v4.runtime.TokenStreamRewriter: org.antlr.v4.runtime.TokenStream tokens> 
(define-const var1293 Int (index/-227227365 (cast-from-var2326-to-var590 var643))) ; Statement: $i0 = r1.<org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp: int index> 
(define-const var2803 var885 (var769_get/-1982438416 var712 var1293)) ; Statement: $r5 = interfaceinvoke $r4.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token get(int)>($i0) 
(define-const var2485 Int (var885_getType/1377643934 var2803)) ; Statement: $i1 = interfaceinvoke $r5.<org.antlr.v4.runtime.Token: int getType()>() 
(define-const var3653 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i1 == $i6 goto $i2 = r1.<org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp: int index> 
(assert (= var2485 var3653)) ; Cond: $i1 == $i6 
(define-const var273 Int (index/-227227365 (cast-from-var2326-to-var590 var643))) ; Statement: $i2 = r1.<org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp: int index> 
(define-const var2676 Int (+ var273 1)) ; Statement: $i3 = $i2 + 1 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {text/-227227365=([org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation], java.lang.Object), cast-from-var2326-to-var590=([org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp], org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), this$0/1931428729=([org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp], org.antlr.v4.runtime.TokenStreamRewriter), tokens/849795300=([org.antlr.v4.runtime.TokenStreamRewriter], org.antlr.v4.runtime.TokenStream), index/-227227365=([org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation], int), var769_get/-1982438416=([org.antlr.v4.runtime.TokenStream, int], org.antlr.v4.runtime.Token), var885_getType/1377643934=([org.antlr.v4.runtime.Token], int), cast-from-Int-to-Int=([int], int)}
; {var2326=org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp, var643=r1, var3107=r0, var3113=java.lang.Object, var590=org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation, var743=$r2, var1957=org.antlr.v4.runtime.TokenStreamRewriter, var2199=$r3, var769=org.antlr.v4.runtime.TokenStream, var712=$r4, var1293=$i0, var885=org.antlr.v4.runtime.Token, var2803=$r5, var2485=$i1, var3653=$i6, var273=$i2, var2676=$i3}
; {org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp=var2326, r1=var643, r0=var3107, java.lang.Object=var3113, org.antlr.v4.runtime.TokenStreamRewriter$RewriteOperation=var590, $r2=var743, org.antlr.v4.runtime.TokenStreamRewriter=var1957, $r3=var2199, org.antlr.v4.runtime.TokenStream=var769, $r4=var712, $i0=var1293, org.antlr.v4.runtime.Token=var885, $r5=var2803, $i1=var2485, $i6=var3653, $i2=var273, $i3=var2676}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = r1.<org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp: java.lang.Object text>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r3 = r1.<org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp: org.antlr.v4.runtime.TokenStreamRewriter this$0>;	$r4 = $r3.<org.antlr.v4.runtime.TokenStreamRewriter: org.antlr.v4.runtime.TokenStream tokens>;	$i0 = r1.<org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp: int index>;	$r5 = interfaceinvoke $r4.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token get(int)>($i0);	$i1 = interfaceinvoke $r5.<org.antlr.v4.runtime.Token: int getType()>();	$i6 = (int) -1;	if $i1 == $i6 goto $i2 = r1.<org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp: int index>;	$i2 = r1.<org.antlr.v4.runtime.TokenStreamRewriter$InsertBeforeOp: int index>;	$i3 = $i2 + 1;	return $i3
;block_num 2