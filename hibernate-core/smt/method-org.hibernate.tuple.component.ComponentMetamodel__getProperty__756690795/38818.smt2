(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1263 0)
(declare-sort var2908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2908-init () var2908)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun propertySpan/744999620 (var1263) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2908 String) void)
(declare-const null-var1263 var1263)
(declare-const null-Int Int)
(declare-const var2416 var1263) ; Statement: r4 := @this: org.hibernate.tuple.component.ComponentMetamodel 
(assert (not (= var2416 null-var1263)))
(declare-const var1808 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1808 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException 
(assert (< var1808 0)) ; Cond: i0 < 0 
(define-const var3441 var2908 var2908-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var1895 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1895)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1895!1 String)
(assert (= var1895!1 ""))
(assert true)
(define-const var3770 String (append/672562846 var1895!1 "illegal index value for component property access [request=")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal index value for component property access [request=") 
(declare-const var1895!2 String)
(assert (= var1895!2 (str.++ var1895!1 "illegal index value for component property access [request=")))
(assert true)
(define-const var2633 String (append/-1001720160 var3770 var1808)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3770!1 String)
(assert (str.prefixof var3770 var3770!1))
(assert true)
(define-const var2037 String (append/672562846 var2633 ", span=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", span=") 
(declare-const var2633!1 String)
(assert (= var2633!1 (str.++ var2633 ", span=")))
(define-const var2485 Int (propertySpan/744999620 var2416)) ; Statement: $i1 = r4.<org.hibernate.tuple.component.ComponentMetamodel: int propertySpan> 
(assert true)
(define-const var2370 String (append/-1001720160 var2037 var2485)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2037!1 String)
(assert (str.prefixof var2037 var2037!1))
(assert true)
(define-const var3408 String (append/672562846 var2370 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2370!1 String)
(assert (= var2370!1 (str.++ var2370 "]")))
(assert true)
(define-const var496 String (toString/-2075883882 var3408)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3441 var496)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var3441!1 var2908)
(declare-const var496!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2908-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), propertySpan/744999620=([org.hibernate.tuple.component.ComponentMetamodel], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1263=org.hibernate.tuple.component.ComponentMetamodel, var2416=r4, var1808=i0, var2908=java.lang.IllegalArgumentException, var3441=$r0, var1895=$r1, var3770=$r2, var2633=$r3, var2037=$r5, var2485=$i1, var2370=$r6, var3408=$r7, var496=$r8}
; {org.hibernate.tuple.component.ComponentMetamodel=var1263, r4=var2416, i0=var1808, java.lang.IllegalArgumentException=var2908, $r0=var3441, $r1=var1895, $r2=var3770, $r3=var2633, $r5=var2037, $i1=var2485, $r6=var2370, $r7=var3408, $r8=var496}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.tuple.component.ComponentMetamodel;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal index value for component property access [request=");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", span=");	$i1 = r4.<org.hibernate.tuple.component.ComponentMetamodel: int propertySpan>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r0
;block_num 2