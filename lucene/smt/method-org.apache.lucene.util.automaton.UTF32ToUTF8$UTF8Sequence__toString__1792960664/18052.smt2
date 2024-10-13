(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1332 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun len/-1875359752 (var1332) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1332 var1332)
(declare-const var3194 var1332) ; Statement: r1 := @this: org.apache.lucene.util.automaton.UTF32ToUTF8$UTF8Sequence 
(assert (not (= var3194 null-var1332)))
(define-const var3302 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3302)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3302!1 String)
(assert (= var3302!1 ""))
(define-const var830 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3941 Int (len/-1875359752 var3194)) ; Statement: $i0 = r1.<org.apache.lucene.util.automaton.UTF32ToUTF8$UTF8Sequence: int len> 
 ; Statement: if i2 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var830 var3941)) ; Cond: i2 >= $i0 
(assert true)
(define-const var3432 String (toString/-2075883882 var3302!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), len/-1875359752=([org.apache.lucene.util.automaton.UTF32ToUTF8$UTF8Sequence], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1332=org.apache.lucene.util.automaton.UTF32ToUTF8$UTF8Sequence, var3194=r1, var3302=$r0, var830=i2, var3941=$i0, var3432=$r2}
; {org.apache.lucene.util.automaton.UTF32ToUTF8$UTF8Sequence=var1332, r1=var3194, $r0=var3302, i2=var830, $i0=var3941, $r2=var3432}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.util.automaton.UTF32ToUTF8$UTF8Sequence;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i2 = 0;	$i0 = r1.<org.apache.lucene.util.automaton.UTF32ToUTF8$UTF8Sequence: int len>;	if i2 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3