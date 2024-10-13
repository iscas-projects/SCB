(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2616 0)
(declare-sort var1809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun kind/406973053 (var2616) var1809)
(declare-fun c/406973053 (var2616) Int)
(declare-fun appendCodePoint/-693552229 (String Int) String)
(declare-fun s/406973053 (var2616) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2616_makeString/1024249910 (Int String) var2616)
(declare-const null-Int Int)
(declare-const null-var2616 var2616)
(declare-const var1809-REGEXP_STRING var1809)
(declare-const var676 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var676 null-Int)))
(declare-const var1907 var2616) ; Statement: r1 := @parameter1: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var1907 null-var2616)))
(declare-const var250 var2616) ; Statement: r4 := @parameter2: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var250 null-var2616)))
(define-const var1941 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1941)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1941!1 String)
(assert (= var1941!1 ""))
(define-const var2574 var1809 (kind/406973053 var1907)) ; Statement: $r3 = r1.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind> 
(define-const var3592 var1809 var1809-REGEXP_STRING) ; Statement: $r2 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING> 
 ; Statement: if $r3 != $r2 goto $i0 = r1.<org.apache.lucene.util.automaton.RegExp: int c> 
(assert (not (= var2574 var3592))) ; Cond: $r3 != $r2 
(define-const var1264 Int (c/406973053 var1907)) ; Statement: $i0 = r1.<org.apache.lucene.util.automaton.RegExp: int c> 
(assert true)
;(assert (appendCodePoint/-693552229 var1941!1 var1264)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i0) 

(declare-const var1941!2 String)
(declare-const var1264!1 Int)
(assert true) ; Non Conditional
(define-const var2691 var1809 (kind/406973053 var250)) ; Statement: $r6 = r4.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind> 
(define-const var1681 var1809 var1809-REGEXP_STRING) ; Statement: $r5 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING> 
 ; Statement: if $r6 != $r5 goto $i1 = r4.<org.apache.lucene.util.automaton.RegExp: int c> 
(assert (not (not (= var2691 var1681)))) ; Negate: Cond: $r6 != $r5  
(define-const var60 String (s/406973053 var250)) ; Statement: $r9 = r4.<org.apache.lucene.util.automaton.RegExp: java.lang.String s> 
(assert true)
;(assert (append/672562846 var1941!2 var60)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1941!3 String)
(assert (= var1941!3 (str.++ var1941!2 var60)))
 ; Statement: goto [?= $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var307 String (toString/-2075883882 var1941!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3853 var2616 (var2616_makeString/1024249910 var676 var307)) ; Statement: $r8 = staticinvoke <org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp makeString(int,java.lang.String)>(i2, $r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), kind/406973053=([org.apache.lucene.util.automaton.RegExp], org.apache.lucene.util.automaton.RegExp$Kind), c/406973053=([org.apache.lucene.util.automaton.RegExp], int), appendCodePoint/-693552229=([java.lang.StringBuilder, int], java.lang.StringBuilder), s/406973053=([org.apache.lucene.util.automaton.RegExp], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2616_makeString/1024249910=([int, java.lang.String], org.apache.lucene.util.automaton.RegExp)}
; {var676=i2, var2616=org.apache.lucene.util.automaton.RegExp, var1907=r1, var250=r4, var1941=$r0, var1809=org.apache.lucene.util.automaton.RegExp$Kind, var2574=$r3, var3592=$r2, var1264=$i0, var2691=$r6, var1681=$r5, var60=$r9, var307=$r7, var3853=$r8}
; {i2=var676, org.apache.lucene.util.automaton.RegExp=var2616, r1=var1907, r4=var250, $r0=var1941, org.apache.lucene.util.automaton.RegExp$Kind=var1809, $r3=var2574, $r2=var3592, $i0=var1264, $r6=var2691, $r5=var1681, $r9=var60, $r7=var307, $r8=var3853}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i2 := @parameter0: int;	r1 := @parameter1: org.apache.lucene.util.automaton.RegExp;	r4 := @parameter2: org.apache.lucene.util.automaton.RegExp;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind>;	$r2 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING>;	if $r3 != $r2 goto $i0 = r1.<org.apache.lucene.util.automaton.RegExp: int c>;	$i0 = r1.<org.apache.lucene.util.automaton.RegExp: int c>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i0);	$r6 = r4.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind>;	$r5 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING>;	if $r6 != $r5 goto $i1 = r4.<org.apache.lucene.util.automaton.RegExp: int c>;	$r9 = r4.<org.apache.lucene.util.automaton.RegExp: java.lang.String s>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	goto [?= $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp makeString(int,java.lang.String)>(i2, $r7);	return $r8
;block_num 5