(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1499 0)
(declare-sort var859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun kind/406973053 (var1499) var859)
(declare-fun s/406973053 (var1499) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun c/406973053 (var1499) Int)
(declare-fun appendCodePoint/-693552229 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1499_makeString/1024249910 (Int String) var1499)
(declare-const null-Int Int)
(declare-const null-var1499 var1499)
(declare-const var859-REGEXP_STRING var859)
(declare-const var707 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var707 null-Int)))
(declare-const var1013 var1499) ; Statement: r1 := @parameter1: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var1013 null-var1499)))
(declare-const var2150 var1499) ; Statement: r4 := @parameter2: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var2150 null-var1499)))
(define-const var1452 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1452)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1452!1 String)
(assert (= var1452!1 ""))
(define-const var213 var859 (kind/406973053 var1013)) ; Statement: $r3 = r1.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind> 
(define-const var1158 var859 var859-REGEXP_STRING) ; Statement: $r2 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING> 
 ; Statement: if $r3 != $r2 goto $i0 = r1.<org.apache.lucene.util.automaton.RegExp: int c> 
(assert (not (not (= var213 var1158)))) ; Negate: Cond: $r3 != $r2  
(define-const var898 String (s/406973053 var1013)) ; Statement: $r10 = r1.<org.apache.lucene.util.automaton.RegExp: java.lang.String s> 
(assert true)
;(assert (append/672562846 var1452!1 var898)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1452!2 String)
(assert (= var1452!2 (str.++ var1452!1 var898)))
 ; Statement: goto [?= $r6 = r4.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind>] 
(assert true) ; Non Conditional
(define-const var1257 var859 (kind/406973053 var2150)) ; Statement: $r6 = r4.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind> 
(define-const var2555 var859 var859-REGEXP_STRING) ; Statement: $r5 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING> 
 ; Statement: if $r6 != $r5 goto $i1 = r4.<org.apache.lucene.util.automaton.RegExp: int c> 
(assert (not (= var1257 var2555))) ; Cond: $r6 != $r5 
(define-const var1296 Int (c/406973053 var2150)) ; Statement: $i1 = r4.<org.apache.lucene.util.automaton.RegExp: int c> 
(assert true)
;(assert (appendCodePoint/-693552229 var1452!2 var1296)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i1) 

(declare-const var1452!3 String)
(declare-const var1296!1 Int)
(assert true) ; Non Conditional
(assert true)
(define-const var2576 String (toString/-2075883882 var1452!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var598 var1499 (var1499_makeString/1024249910 var707 var2576)) ; Statement: $r8 = staticinvoke <org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp makeString(int,java.lang.String)>(i2, $r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), kind/406973053=([org.apache.lucene.util.automaton.RegExp], org.apache.lucene.util.automaton.RegExp$Kind), s/406973053=([org.apache.lucene.util.automaton.RegExp], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), c/406973053=([org.apache.lucene.util.automaton.RegExp], int), appendCodePoint/-693552229=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1499_makeString/1024249910=([int, java.lang.String], org.apache.lucene.util.automaton.RegExp)}
; {var707=i2, var1499=org.apache.lucene.util.automaton.RegExp, var1013=r1, var2150=r4, var1452=$r0, var859=org.apache.lucene.util.automaton.RegExp$Kind, var213=$r3, var1158=$r2, var898=$r10, var1257=$r6, var2555=$r5, var1296=$i1, var2576=$r7, var598=$r8}
; {i2=var707, org.apache.lucene.util.automaton.RegExp=var1499, r1=var1013, r4=var2150, $r0=var1452, org.apache.lucene.util.automaton.RegExp$Kind=var859, $r3=var213, $r2=var1158, $r10=var898, $r6=var1257, $r5=var2555, $i1=var1296, $r7=var2576, $r8=var598}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i2 := @parameter0: int;	r1 := @parameter1: org.apache.lucene.util.automaton.RegExp;	r4 := @parameter2: org.apache.lucene.util.automaton.RegExp;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind>;	$r2 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING>;	if $r3 != $r2 goto $i0 = r1.<org.apache.lucene.util.automaton.RegExp: int c>;	$r10 = r1.<org.apache.lucene.util.automaton.RegExp: java.lang.String s>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	goto [?= $r6 = r4.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind>];	$r6 = r4.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind>;	$r5 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING>;	if $r6 != $r5 goto $i1 = r4.<org.apache.lucene.util.automaton.RegExp: int c>;	$i1 = r4.<org.apache.lucene.util.automaton.RegExp: int c>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i1);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp makeString(int,java.lang.String)>(i2, $r7);	return $r8
;block_num 5