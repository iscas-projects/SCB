(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/-1579571732 (var585) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const null-var585 var585)
(declare-const var2837 var585) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.Text 
(assert (not (= var2837 null-var585)))
(define-const var3881 String (text/-1579571732 var2837)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.Text: java.lang.StringBuilder text> 
(assert true)
(define-const var2109 String (toString/-2075883882 var3881)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var497 (Array Int Int) (toCharArray/415275702 var2109)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {text/-1579571732=([com.github.jknack.handlebars.internal.Text], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toCharArray/415275702=([java.lang.String], char[])}
; {var585=com.github.jknack.handlebars.internal.Text, var2837=r0, var3881=$r1, var2109=$r2, var497=$r3}
; {com.github.jknack.handlebars.internal.Text=var585, r0=var2837, $r1=var3881, $r2=var2109, $r3=var497}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.Text;	$r1 = r0.<com.github.jknack.handlebars.internal.Text: java.lang.StringBuilder text>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	return $r3
;block_num 1