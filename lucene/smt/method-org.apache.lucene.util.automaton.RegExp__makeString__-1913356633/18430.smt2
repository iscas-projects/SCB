(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var517 0)
(declare-sort var2550 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun kind/406973053 (var517) var2550)
(declare-fun s/406973053 (var517) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var517_makeString/1024249910 (Int String) var517)
(declare-const null-Int Int)
(declare-const null-var517 var517)
(declare-const var2550-REGEXP_STRING var2550)
(declare-const var530 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var530 null-Int)))
(declare-const var3144 var517) ; Statement: r1 := @parameter1: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var3144 null-var517)))
(declare-const var1852 var517) ; Statement: r4 := @parameter2: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var1852 null-var517)))
(define-const var3623 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3623)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3623!1 String)
(assert (= var3623!1 ""))
(define-const var3020 var2550 (kind/406973053 var3144)) ; Statement: $r3 = r1.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind> 
(define-const var737 var2550 var2550-REGEXP_STRING) ; Statement: $r2 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING> 
 ; Statement: if $r3 != $r2 goto $i0 = r1.<org.apache.lucene.util.automaton.RegExp: int c> 
(assert (not (not (= var3020 var737)))) ; Negate: Cond: $r3 != $r2  
(define-const var2089 String (s/406973053 var3144)) ; Statement: $r10 = r1.<org.apache.lucene.util.automaton.RegExp: java.lang.String s> 
(assert true)
;(assert (append/672562846 var3623!1 var2089)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3623!2 String)
(assert (= var3623!2 (str.++ var3623!1 var2089)))
 ; Statement: goto [?= $r6 = r4.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind>] 
(assert true) ; Non Conditional
(define-const var1564 var2550 (kind/406973053 var1852)) ; Statement: $r6 = r4.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind> 
(define-const var663 var2550 var2550-REGEXP_STRING) ; Statement: $r5 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING> 
 ; Statement: if $r6 != $r5 goto $i1 = r4.<org.apache.lucene.util.automaton.RegExp: int c> 
(assert (not (not (= var1564 var663)))) ; Negate: Cond: $r6 != $r5  
(define-const var3044 String (s/406973053 var1852)) ; Statement: $r9 = r4.<org.apache.lucene.util.automaton.RegExp: java.lang.String s> 
(assert true)
;(assert (append/672562846 var3623!2 var3044)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3623!3 String)
(assert (= var3623!3 (str.++ var3623!2 var3044)))
 ; Statement: goto [?= $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2682 String (toString/-2075883882 var3623!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1454 var517 (var517_makeString/1024249910 var530 var2682)) ; Statement: $r8 = staticinvoke <org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp makeString(int,java.lang.String)>(i2, $r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), kind/406973053=([org.apache.lucene.util.automaton.RegExp], org.apache.lucene.util.automaton.RegExp$Kind), s/406973053=([org.apache.lucene.util.automaton.RegExp], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var517_makeString/1024249910=([int, java.lang.String], org.apache.lucene.util.automaton.RegExp)}
; {var530=i2, var517=org.apache.lucene.util.automaton.RegExp, var3144=r1, var1852=r4, var3623=$r0, var2550=org.apache.lucene.util.automaton.RegExp$Kind, var3020=$r3, var737=$r2, var2089=$r10, var1564=$r6, var663=$r5, var3044=$r9, var2682=$r7, var1454=$r8}
; {i2=var530, org.apache.lucene.util.automaton.RegExp=var517, r1=var3144, r4=var1852, $r0=var3623, org.apache.lucene.util.automaton.RegExp$Kind=var2550, $r3=var3020, $r2=var737, $r10=var2089, $r6=var1564, $r5=var663, $r9=var3044, $r7=var2682, $r8=var1454}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i2 := @parameter0: int;	r1 := @parameter1: org.apache.lucene.util.automaton.RegExp;	r4 := @parameter2: org.apache.lucene.util.automaton.RegExp;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind>;	$r2 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING>;	if $r3 != $r2 goto $i0 = r1.<org.apache.lucene.util.automaton.RegExp: int c>;	$r10 = r1.<org.apache.lucene.util.automaton.RegExp: java.lang.String s>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	goto [?= $r6 = r4.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind>];	$r6 = r4.<org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp$Kind kind>;	$r5 = <org.apache.lucene.util.automaton.RegExp$Kind: org.apache.lucene.util.automaton.RegExp$Kind REGEXP_STRING>;	if $r6 != $r5 goto $i1 = r4.<org.apache.lucene.util.automaton.RegExp: int c>;	$r9 = r4.<org.apache.lucene.util.automaton.RegExp: java.lang.String s>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	goto [?= $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <org.apache.lucene.util.automaton.RegExp: org.apache.lucene.util.automaton.RegExp makeString(int,java.lang.String)>(i2, $r7);	return $r8
;block_num 5