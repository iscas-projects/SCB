(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toStringBuilder/128379565 (var1225 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1225 var1225)
(declare-const var1571 var1225) ; Statement: r1 := @this: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var1571 null-var1225)))
(define-const var266 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var266)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var266!1 String)
(assert (= var266!1 ""))
(assert true)
;(assert (toStringBuilder/128379565 var1571 var266!1)) ; Statement: virtualinvoke r1.<org.apache.lucene.util.automaton.RegExp: void toStringBuilder(java.lang.StringBuilder)>($r0) 

(declare-const var1571!1 var1225)
(declare-const var266!2 String)
(assert true)
(define-const var2740 String (toString/-2075883882 var266!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toStringBuilder/128379565=([org.apache.lucene.util.automaton.RegExp, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1225=org.apache.lucene.util.automaton.RegExp, var1571=r1, var266=$r0, var2740=$r2}
; {org.apache.lucene.util.automaton.RegExp=var1225, r1=var1571, $r0=var266, $r2=var2740}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.lucene.util.automaton.RegExp: void toStringBuilder(java.lang.StringBuilder)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.util.automaton.RegExp;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke r1.<org.apache.lucene.util.automaton.RegExp: void toStringBuilder(java.lang.StringBuilder)>($r0);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1