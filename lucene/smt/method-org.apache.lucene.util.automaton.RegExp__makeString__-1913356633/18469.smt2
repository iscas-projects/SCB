(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2691 0)
(declare-sort var1225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun kind/406973053 (var2691) var1225)
(declare-fun c/406973053 (var2691) Int)
(declare-fun appendCodePoint/-693552229 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2691_makeString/1024249910 (Int String) var2691)
(declare-const null-Int Int)
(declare-const null-var2691 var2691)
(declare-const var1225-REGEXP_STRING var1225)
(declare-const var1556 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var1556 null-Int)))
(declare-const var398 var2691) ; Statement: r1 := @parameter1: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var398 null-var2691)))
(declare-const var3599 var2691) ; Statement: r4 := @parameter2: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var3599 null-var2691)))
(define-const var3491 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3491)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3491!1 String)
(assert (= var3491!1 ""))
(define-const var3425 var1225 (kind/406973053 var398)) ; Statement: $r3 = r1.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind> 
(define-const var444 var1225 var1225-REGEXP_STRING) ; Statement: $r2 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING> 
 ; Statement: if $r3 != $r2 goto $i0 = r1.<org.apache.lucene.util.automaton.RegExp: int c> 
(assert (not (= var3425 var444))) ; Cond: $r3 != $r2 
(define-const var233 Int (c/406973053 var398)) ; Statement: $i0 = r1.<org.apache.lucene.util.automaton.RegExp: int c> 
(assert true)
;(assert (appendCodePoint/-693552229 var3491!1 var233)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i0) 

(declare-const var3491!2 String)
(declare-const var233!1 Int)
(assert true) ; Non Conditional
(define-const var21 var1225 (kind/406973053 var3599)) ; Statement: $r6 = r4.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind> 
(define-const var102 var1225 var1225-REGEXP_STRING) ; Statement: $r5 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING> 
 ; Statement: if $r6 != $r5 goto $i1 = r4.<org.apache.lucene.util.automaton.RegExp: int c> 
(assert (not (= var21 var102))) ; Cond: $r6 != $r5 
(define-const var696 Int (c/406973053 var3599)) ; Statement: $i1 = r4.<org.apache.lucene.util.automaton.RegExp: int c> 
(assert true)
;(assert (appendCodePoint/-693552229 var3491!2 var696)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i1) 

(declare-const var3491!3 String)
(declare-const var696!1 Int)
(assert true) ; Non Conditional
(assert true)
(define-const var1711 String (toString/-2075883882 var3491!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2347 var2691 (var2691_makeString/1024249910 var1556 var1711)) ; Statement: $r8 = staticinvoke <org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp makeString(int,java.lang.String)>(i2, $r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), kind/406973053=([org.apache.lucene.util.automaton.RegExp], org.apache.lucene.util.automaton.RegExp$Kind), c/406973053=([org.apache.lucene.util.automaton.RegExp], int), appendCodePoint/-693552229=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2691_makeString/1024249910=([int, java.lang.String], org.apache.lucene.util.automaton.RegExp)}
; {var1556=i2, var2691=org.apache.lucene.util.automaton.RegExp, var398=r1, var3599=r4, var3491=$r0, var1225=org.apache.lucene.util.automaton.RegExp$Kind, var3425=$r3, var444=$r2, var233=$i0, var21=$r6, var102=$r5, var696=$i1, var1711=$r7, var2347=$r8}
; {i2=var1556, org.apache.lucene.util.automaton.RegExp=var2691, r1=var398, r4=var3599, $r0=var3491, org.apache.lucene.util.automaton.RegExp$Kind=var1225, $r3=var3425, $r2=var444, $i0=var233, $r6=var21, $r5=var102, $i1=var696, $r7=var1711, $r8=var2347}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i2 := @parameter0: int;	r1 := @parameter1: org.apache.lucene.util.automaton.RegExp;	r4 := @parameter2: org.apache.lucene.util.automaton.RegExp;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind>;	$r2 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING>;	if $r3 != $r2 goto $i0 = r1.<org.apache.lucene.util.automaton.RegExp: int c>;	$i0 = r1.<org.apache.lucene.util.automaton.RegExp: int c>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i0);	$r6 = r4.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind>;	$r5 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING>;	if $r6 != $r5 goto $i1 = r4.<org.apache.lucene.util.automaton.RegExp: int c>;	$i1 = r4.<org.apache.lucene.util.automaton.RegExp: int c>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i1);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp makeString(int,java.lang.String)>(i2, $r7);	return $r8
;block_num 5