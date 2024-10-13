(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var65 0)
(declare-sort var2515 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/-634702589 (var65 var2515) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var65 var65)
(declare-const null-var2515 var2515)
(declare-const var1702 var65) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.WhiteSpaceControl 
(assert (not (= var1702 null-var65)))
(declare-const var3366 var2515) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.Token 
(assert (not (= var3366 null-var2515)))
(declare-const var2888 var2515) ; Statement: r3 := @parameter1: com.github.jknack.handlebars.internal.antlr.Token 
(assert (not (= var2888 null-var2515)))
(assert true)
(define-const var1165 String (text/-634702589 var1702 var3366)) ; Statement: r2 = virtualinvoke r0.<com.github.jknack.handlebars.internal.WhiteSpaceControl: java.lang.String text(com.github.jknack.handlebars.internal.antlr.Token)>(r1) 
(assert true)
(define-const var236 Int (indexOf/-1209756239 var1165 "~")) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>("~") 
 ; Statement: if $i0 <= 0 goto $r13 = virtualinvoke r0.<com.github.jknack.handlebars.internal.WhiteSpaceControl: java.lang.String text(com.github.jknack.handlebars.internal.antlr.Token)>(r3) 
(assert (<= var236 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var903 String (text/-634702589 var1702 var2888)) ; Statement: $r13 = virtualinvoke r0.<com.github.jknack.handlebars.internal.WhiteSpaceControl: java.lang.String text(com.github.jknack.handlebars.internal.antlr.Token)>(r3) 
(assert true)
(define-const var201 Int (indexOf/-1209756239 var903 "~")) ; Statement: $i6 = virtualinvoke $r13.<java.lang.String: int indexOf(java.lang.String)>("~") 
 ; Statement: if $i6 < 0 goto return 
(assert (< var201 0)) ; Cond: $i6 < 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {text/-634702589=([com.github.jknack.handlebars.internal.WhiteSpaceControl, com.github.jknack.handlebars.internal.antlr.Token], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var65=com.github.jknack.handlebars.internal.WhiteSpaceControl, var1702=r0, var2515=com.github.jknack.handlebars.internal.antlr.Token, var3366=r1, var2888=r3, var1165=r2, var236=$i0, var903=$r13, var201=$i6}
; {com.github.jknack.handlebars.internal.WhiteSpaceControl=var65, r0=var1702, com.github.jknack.handlebars.internal.antlr.Token=var2515, r1=var3366, r3=var2888, r2=var1165, $i0=var236, $r13=var903, $i6=var201}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 2}
;stmts r0 := @this: com.github.jknack.handlebars.internal.WhiteSpaceControl;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.Token;	r3 := @parameter1: com.github.jknack.handlebars.internal.antlr.Token;	r2 = virtualinvoke r0.<com.github.jknack.handlebars.internal.WhiteSpaceControl: java.lang.String text(com.github.jknack.handlebars.internal.antlr.Token)>(r1);	$i0 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>("~");	if $i0 <= 0 goto $r13 = virtualinvoke r0.<com.github.jknack.handlebars.internal.WhiteSpaceControl: java.lang.String text(com.github.jknack.handlebars.internal.antlr.Token)>(r3);	$r13 = virtualinvoke r0.<com.github.jknack.handlebars.internal.WhiteSpaceControl: java.lang.String text(com.github.jknack.handlebars.internal.antlr.Token)>(r3);	$i6 = virtualinvoke $r13.<java.lang.String: int indexOf(java.lang.String)>("~");	if $i6 < 0 goto return;	return
;block_num 3