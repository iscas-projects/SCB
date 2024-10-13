(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun size/1960709945 (var3108) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3108 var3108)
(declare-const var882 var3108) ; Statement: r1 := @this: org.apache.lucene.util.automaton.RunAutomaton 
(assert (not (= var882 null-var3108)))
(define-const var2844 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2844)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2844!1 String)
(assert (= var2844!1 ""))
(assert true)
;(assert (append/672562846 var2844!1 "initial state: 0\n")) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("initial state: 0\n") 
(declare-const var2844!2 String)
(assert (= var2844!2 (str.++ var2844!1 "initial state: 0\n")))
(define-const var3234 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
(define-const var3541 Int (size/1960709945 var882)) ; Statement: $i0 = r1.<org.apache.lucene.util.automaton.RunAutomaton: int size> 
 ; Statement: if i10 >= $i0 goto $r2 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3234 var3541)) ; Cond: i10 >= $i0 
(assert true)
(define-const var3892 String (toString/-2075883882 var2844!2)) ; Statement: $r2 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), size/1960709945=([org.apache.lucene.util.automaton.RunAutomaton], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3108=org.apache.lucene.util.automaton.RunAutomaton, var882=r1, var2844=$r13, var3234=i10, var3541=$i0, var3892=$r2}
; {org.apache.lucene.util.automaton.RunAutomaton=var3108, r1=var882, $r13=var2844, i10=var3234, $i0=var3541, $r2=var3892}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.util.automaton.RunAutomaton;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("initial state: 0\n");	i10 = 0;	$i0 = r1.<org.apache.lucene.util.automaton.RunAutomaton: int size>;	if i10 >= $i0 goto $r2 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3