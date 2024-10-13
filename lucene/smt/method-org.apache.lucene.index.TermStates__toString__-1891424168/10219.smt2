(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1424 0)
(declare-sort var2526 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun states/1348440512 (var1424) (Array Int var2526))
(declare-fun getLength-Arr-var2526-1 ((Array Int var2526)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1424 var1424)
(declare-const var857 var1424) ; Statement: r1 := @this: org.apache.lucene.index.TermStates 
(assert (not (= var857 null-var1424)))
(define-const var1003 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1003)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1003!1 String)
(assert (= var1003!1 ""))
(assert true)
;(assert (append/672562846 var1003!1 "TermStates\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TermStates\n") 
(declare-const var1003!2 String)
(assert (= var1003!2 (str.++ var1003!1 "TermStates\n")))
(define-const var1379 (Array Int var2526) (states/1348440512 var857)) ; Statement: r2 = r1.<org.apache.lucene.index.TermStates: org.apache.lucene.index.TermState[] states> 
(define-const var1091 Int (getLength-Arr-var2526-1 var1379)) ; Statement: i0 = lengthof r2 
(define-const var2700 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2700 var1091)) ; Cond: i1 >= i0 
(assert true)
(define-const var3703 String (toString/-2075883882 var1003!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), states/1348440512=([org.apache.lucene.index.TermStates], org.apache.lucene.index.TermState[]), getLength-Arr-var2526-1=([org.apache.lucene.index.TermState[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1424=org.apache.lucene.index.TermStates, var857=r1, var1003=$r0, var2526=org.apache.lucene.index.TermState, var1379=r2, var1091=i0, var2700=i1, var3703=$r3}
; {org.apache.lucene.index.TermStates=var1424, r1=var857, $r0=var1003, org.apache.lucene.index.TermState=var2526, r2=var1379, i0=var1091, i1=var2700, $r3=var3703}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.TermStates;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TermStates\n");	r2 = r1.<org.apache.lucene.index.TermStates: org.apache.lucene.index.TermState[] states>;	i0 = lengthof r2;	i1 = 0;	if i1 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3