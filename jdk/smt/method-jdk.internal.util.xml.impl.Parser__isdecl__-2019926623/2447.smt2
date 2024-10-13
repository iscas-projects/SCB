(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2709 0)
(declare-sort var3773 0)
(declare-sort var2634 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun chars/2073447641 (var3773) (Array Int Int))
(declare-fun name/2073447641 (var3773) String)
(declare-const null-var2709 var2709)
(declare-const null-var3773 var3773)
(declare-const null-String String)
(declare-const var3333 var2709) ; Statement: r4 := @this: jdk.internal.util.xml.impl.Parser 
(assert (not (= var3333 null-var2709)))
(declare-const var3063 var3773) ; Statement: r0 := @parameter0: jdk.internal.util.xml.impl.Pair 
(assert (not (= var3063 null-var3773)))
(declare-const var2481 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var2481 null-String)))
(define-const var106 (Array Int Int) (chars/2073447641 var3063)) ; Statement: $r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var3400 Int (select var106 0)) ; Statement: $c0 = $r1[0] 
 ; Statement: if $c0 != 0 goto $r2 = <jdk.internal.util.xml.impl.Parser: char[] XMLNS> 
(assert (not (not (= var3400 0)))) ; Negate: Cond: $c0 != 0  
(define-const var3950 String "xmlns") ; Statement: $r22 = "xmlns" 
(define-const var2888 String (name/2073447641 var3063)) ; Statement: $r21 = r0.<jdk.internal.util.xml.impl.Pair: java.lang.String name> 
(assert true)
(define-const var946 Bool (= var3950 var2888)) ; Statement: $z1 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>($r21) 
 ; Statement: if $z1 != 1 goto return 0 
(assert (not (= (ite var946 1 0) 1))) ; Cond: $z1 != 1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {chars/2073447641=([jdk.internal.util.xml.impl.Pair], char[]), name/2073447641=([jdk.internal.util.xml.impl.Pair], java.lang.String)}
; {var2709=jdk.internal.util.xml.impl.Parser, var3333=r4, var3773=jdk.internal.util.xml.impl.Pair, var3063=r0, var2481=r9, var2634=null_type, var106=$r1, var3400=$c0, var3950=$r22, var2888=$r21, var946=$z1}
; {jdk.internal.util.xml.impl.Parser=var2709, r4=var3333, jdk.internal.util.xml.impl.Pair=var3773, r0=var3063, r9=var2481, null_type=var2634, $r1=var106, $c0=var3400, $r22=var3950, $r21=var2888, $z1=var946}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: jdk.internal.util.xml.impl.Parser;	r0 := @parameter0: jdk.internal.util.xml.impl.Pair;	r9 := @parameter1: java.lang.String;	$r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$c0 = $r1[0];	if $c0 != 0 goto $r2 = <jdk.internal.util.xml.impl.Parser: char[] XMLNS>;	$r22 = "xmlns";	$r21 = r0.<jdk.internal.util.xml.impl.Pair: java.lang.String name>;	$z1 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>($r21);	if $z1 != 1 goto return 0;	return 0
;block_num 3