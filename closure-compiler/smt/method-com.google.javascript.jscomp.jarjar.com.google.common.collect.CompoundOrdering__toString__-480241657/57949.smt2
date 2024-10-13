(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3655 0)
(declare-sort var1328 0)
(declare-sort var46 0)
(declare-sort var3509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun comparators/-1787119697 (var3655) (Array Int var1328))
(declare-fun var46_toString/-575966009 ((Array Int var3509)) String)
(declare-fun cast-from-__Array__Int__var1328__-to-__Array__Int__var3509__ ((Array Int var1328)) (Array Int var3509))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3655 var3655)
(declare-const var2768 var3655) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.CompoundOrdering 
(assert (not (= var2768 null-var3655)))
(define-const var2748 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2748)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2748!1 String)
(assert (= var2748!1 ""))
(assert true)
(define-const var717 String (append/672562846 var2748!1 "Ordering.compound(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ordering.compound(") 
(declare-const var2748!2 String)
(assert (= var2748!2 (str.++ var2748!1 "Ordering.compound(")))
(define-const var530 (Array Int var1328) (comparators/-1787119697 var2768)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.CompoundOrdering: java.util.Comparator[] comparators> 
(define-const var134 String (var46_toString/-575966009 (cast-from-__Array__Int__var1328__-to-__Array__Int__var3509__ var530))) ; Statement: $r3 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r2) 
(assert true)
(define-const var3483 String (append/672562846 var717 var134)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var717!1 String)
(assert (= var717!1 (str.++ var717 var134)))
(assert true)
(define-const var552 String (append/672562846 var3483 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3483!1 String)
(assert (= var3483!1 (str.++ var3483 ")")))
(assert true)
(define-const var729 String (toString/-2075883882 var552)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), comparators/-1787119697=([com.google.javascript.jscomp.jarjar.com.google.common.collect.CompoundOrdering], java.util.Comparator[]), var46_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var1328__-to-__Array__Int__var3509__=([java.util.Comparator[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3655=com.google.javascript.jscomp.jarjar.com.google.common.collect.CompoundOrdering, var2768=r1, var2748=$r0, var717=$r4, var1328=java.util.Comparator, var530=$r2, var46=java.util.Arrays, var3509=java.lang.Object, var134=$r3, var3483=$r5, var552=$r6, var729=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.CompoundOrdering=var3655, r1=var2768, $r0=var2748, $r4=var717, java.util.Comparator=var1328, $r2=var530, java.util.Arrays=var46, java.lang.Object=var3509, $r3=var134, $r5=var3483, $r6=var552, $r7=var729}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.CompoundOrdering;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ordering.compound(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.CompoundOrdering: java.util.Comparator[] comparators>;	$r3 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1