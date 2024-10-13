(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3511 0)
(declare-sort var1539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buckets/1215159292 (var3511) (Array Int var1539))
(declare-fun getLength-Arr-var1539-1 ((Array Int var1539)) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3511 var3511)
(declare-const null-var1539 var1539)
(declare-const var3775 var3511) ; Statement: r1 := @this: org.antlr.v4.runtime.misc.FlexibleHashMap 
(assert (not (= var3775 null-var3511)))
(define-const var834 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var834)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var834!1 String)
(assert (= var834!1 ""))
(define-const var569 (Array Int var1539) (buckets/1215159292 var3775)) ; Statement: r2 = r1.<org.antlr.v4.runtime.misc.FlexibleHashMap: java.util.LinkedList[] buckets> 
(define-const var2805 Int (getLength-Arr-var1539-1 var569)) ; Statement: i0 = lengthof r2 
(define-const var957 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (>= var957 var2805))) ; Negate: Cond: i1 >= i0  
(define-const var390 var1539 (select var569 var957)) ; Statement: r4 = r2[i1] 
 ; Statement: if r4 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(assert (not (not (= var390 null-var1539)))) ; Negate: Cond: r4 != null  
(assert true)
;(assert (append/672562846 var834!1 "null\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null\n") 
(declare-const var834!2 String)
(assert (= var834!2 (str.++ var834!1 "null\n")))
 ; Statement: goto [?= i1 = i1 + 1] 
(assert true) ; Non Conditional
(define-const var957!1 Int (+ var957 1)) ; Statement: i1 = i1 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var957!1 var2805)) ; Cond: i1 >= i0 
(assert true)
(define-const var2877 String (toString/-2075883882 var834!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buckets/1215159292=([org.antlr.v4.runtime.misc.FlexibleHashMap], java.util.LinkedList[]), getLength-Arr-var1539-1=([java.util.LinkedList[]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3511=org.antlr.v4.runtime.misc.FlexibleHashMap, var3775=r1, var834=$r0, var1539=java.util.LinkedList, var569=r2, var2805=i0, var957=i1, var390=r4, var2877=$r3}
; {org.antlr.v4.runtime.misc.FlexibleHashMap=var3511, r1=var3775, $r0=var834, java.util.LinkedList=var1539, r2=var569, i0=var2805, i1=var957, r4=var390, $r3=var2877}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.misc.FlexibleHashMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = r1.<org.antlr.v4.runtime.misc.FlexibleHashMap: java.util.LinkedList[] buckets>;	i0 = lengthof r2;	i1 = 0;	if i1 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	r4 = r2[i1];	if r4 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null\n");	goto [?= i1 = i1 + 1];	i1 = i1 + 1;	goto [?= (branch)];	if i1 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 7