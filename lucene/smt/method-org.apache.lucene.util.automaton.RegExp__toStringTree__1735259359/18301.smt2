(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2632 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toStringTree/1391866025 (var2632 String String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2632 var2632)
(declare-const var2980 var2632) ; Statement: r1 := @this: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var2980 null-var2632)))
(define-const var2968 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2968)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2968!1 String)
(assert (= var2968!1 ""))
(assert true)
;(assert (toStringTree/1391866025 var2980 var2968!1 "")) ; Statement: virtualinvoke r1.<org.apache.lucene.util.automaton.RegExp: void toStringTree(java.lang.StringBuilder,java.lang.String)>($r0, "") 

(declare-const var2980!1 var2632)
(declare-const var2968!2 String)
(declare-const var647 String)
(assert true)
(define-const var478 String (toString/-2075883882 var2968!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toStringTree/1391866025=([org.apache.lucene.util.automaton.RegExp, java.lang.StringBuilder, java.lang.String], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2632=org.apache.lucene.util.automaton.RegExp, var2980=r1, var2968=$r0, var647="", var478=$r2}
; {org.apache.lucene.util.automaton.RegExp=var2632, r1=var2980, $r0=var2968, ""=var647, $r2=var478}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.lucene.util.automaton.RegExp: void toStringTree(java.lang.StringBuilder,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.util.automaton.RegExp;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke r1.<org.apache.lucene.util.automaton.RegExp: void toStringTree(java.lang.StringBuilder,java.lang.String)>($r0, "");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1