(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2810 0)
(declare-sort var2912 0)
(declare-sort var412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun physicalTableNames/81799249 (var2810) var412)
(declare-fun var412_size/-959786421 (var412) Int)
(declare-fun column/81799249 (var2810) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun sql/81799249 (var2810) String)
(declare-const null-var2810 var2810)
(declare-const null-var2912 var2912)
(declare-const var234 var2810) ; Statement: r1 := @this: org.hibernate.id.IncrementGenerator 
(assert (not (= var234 null-var2810)))
(declare-const var2983 var2912) ; Statement: r12 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var2983 null-var2912)))
(define-const var3485 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3485)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3485!1 String)
(assert (= var3485!1 ""))
(define-const var3433 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var1844 var412 (physicalTableNames/81799249 var234)) ; Statement: $r2 = r1.<org.hibernate.id.IncrementGenerator: java.util.List physicalTableNames> 
(define-const var3151 Int (var412_size/-959786421 var1844)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
 ; Statement: if i5 >= $i0 goto $r3 = r1.<org.hibernate.id.IncrementGenerator: java.util.List physicalTableNames> 
(assert (>= var3433 var3151)) ; Cond: i5 >= $i0 
(define-const var1763 var412 (physicalTableNames/81799249 var234)) ; Statement: $r3 = r1.<org.hibernate.id.IncrementGenerator: java.util.List physicalTableNames> 
(define-const var357 Int (var412_size/-959786421 var1763)) ; Statement: $i1 = interfaceinvoke $r3.<java.util.List: int size()>() 
 ; Statement: if $i1 <= 1 goto r22 = r1.<org.hibernate.id.IncrementGenerator: java.lang.String column> 
(assert (<= var357 1)) ; Cond: $i1 <= 1 
(define-const var1808 String (column/81799249 var234)) ; Statement: r22 = r1.<org.hibernate.id.IncrementGenerator: java.lang.String column> 
(assert true) ; Non Conditional
(define-const var1071 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1071)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1071!1 String)
(assert (= var1071!1 ""))
(assert true)
(define-const var2966 String (append/672562846 var1071!1 "select max(")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select max(") 
(declare-const var1071!2 String)
(assert (= var1071!2 (str.++ var1071!1 "select max(")))
(assert true)
(define-const var1384 String (append/672562846 var2966 var1808)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22) 
(declare-const var2966!1 String)
(assert (= var2966!1 (str.++ var2966 var1808)))
(assert true)
(define-const var2528 String (append/672562846 var1384 ") from ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") from ") 
(declare-const var1384!1 String)
(assert (= var1384!1 (str.++ var1384 ") from ")))
(assert true)
(define-const var286 String (toString/-2075883882 var3485!1)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var769 String (append/672562846 var2528 var286)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2528!1 String)
(assert (= var2528!1 (str.++ var2528 var286)))
(assert true)
(define-const var655 String (toString/-2075883882 var769)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var234!1 var2810)
(assert (not (= var234!1 null-var2810)))
(assert (= (sql/81799249 var234!1) var655)) ; Statement: r1.<org.hibernate.id.IncrementGenerator: java.lang.String sql> = $r10 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), physicalTableNames/81799249=([org.hibernate.id.IncrementGenerator], java.util.List), var412_size/-959786421=([java.util.List], int), column/81799249=([org.hibernate.id.IncrementGenerator], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), sql/81799249=([org.hibernate.id.IncrementGenerator], java.lang.String)}
; {var2810=org.hibernate.id.IncrementGenerator, var234=r1, var2912=org.hibernate.boot.model.relational.SqlStringGenerationContext, var2983=r12, var3485=$r0, var3433=i5, var412=java.util.List, var1844=$r2, var3151=$i0, var1763=$r3, var357=$i1, var1808=r22, var1071=$r4, var2966=$r5, var1384=$r6, var2528=$r8, var286=$r7, var769=$r9, var655=$r10}
; {org.hibernate.id.IncrementGenerator=var2810, r1=var234, org.hibernate.boot.model.relational.SqlStringGenerationContext=var2912, r12=var2983, $r0=var3485, i5=var3433, java.util.List=var412, $r2=var1844, $i0=var3151, $r3=var1763, $i1=var357, r22=var1808, $r4=var1071, $r5=var2966, $r6=var1384, $r8=var2528, $r7=var286, $r9=var769, $r10=var655}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: org.hibernate.id.IncrementGenerator;	r12 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i5 = 0;	$r2 = r1.<org.hibernate.id.IncrementGenerator: java.util.List physicalTableNames>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if i5 >= $i0 goto $r3 = r1.<org.hibernate.id.IncrementGenerator: java.util.List physicalTableNames>;	$r3 = r1.<org.hibernate.id.IncrementGenerator: java.util.List physicalTableNames>;	$i1 = interfaceinvoke $r3.<java.util.List: int size()>();	if $i1 <= 1 goto r22 = r1.<org.hibernate.id.IncrementGenerator: java.lang.String column>;	r22 = r1.<org.hibernate.id.IncrementGenerator: java.lang.String column>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select max(");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") from ");	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<org.hibernate.id.IncrementGenerator: java.lang.String sql> = $r10;	return
;block_num 5