(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var922 0)
(declare-sort var1241 0)
(declare-sort var1757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun physicalTableNames/81799249 (var922) var1757)
(declare-fun var1757_size/-959786421 (var1757) Int)
(declare-fun insert/1196171004 (String Int String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun sql/81799249 (var922) String)
(declare-const null-var922 var922)
(declare-const null-var1241 var1241)
(declare-const var3733 var922) ; Statement: r1 := @this: org.hibernate.id.IncrementGenerator 
(assert (not (= var3733 null-var922)))
(declare-const var2279 var1241) ; Statement: r12 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var2279 null-var1241)))
(define-const var3085 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3085)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3085!1 String)
(assert (= var3085!1 ""))
(define-const var1881 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var3579 var1757 (physicalTableNames/81799249 var3733)) ; Statement: $r2 = r1.<org.hibernate.id.IncrementGenerator: java.util.List physicalTableNames> 
(define-const var691 Int (var1757_size/-959786421 var3579)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
 ; Statement: if i5 >= $i0 goto $r3 = r1.<org.hibernate.id.IncrementGenerator: java.util.List physicalTableNames> 
(assert (>= var1881 var691)) ; Cond: i5 >= $i0 
(define-const var674 var1757 (physicalTableNames/81799249 var3733)) ; Statement: $r3 = r1.<org.hibernate.id.IncrementGenerator: java.util.List physicalTableNames> 
(define-const var851 Int (var1757_size/-959786421 var674)) ; Statement: $i1 = interfaceinvoke $r3.<java.util.List: int size()>() 
 ; Statement: if $i1 <= 1 goto r22 = r1.<org.hibernate.id.IncrementGenerator: java.lang.String column> 
(assert (not (<= var851 1))) ; Negate: Cond: $i1 <= 1  
(assert true)
(define-const var2599 String (insert/1196171004 var3085!1 0 "( ")) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(0, "( ") 
(assert true)
;(assert (append/672562846 var2599 " ) ids_")) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) ids_") 
(declare-const var2599!1 String)
(assert (= var2599!1 (str.++ var2599 " ) ids_")))
(define-const var2021 String "ids_.mx") ; Statement: r22 = "ids_.mx" 
 ; Statement: goto [?= $r4 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1950 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1950)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1950!1 String)
(assert (= var1950!1 ""))
(assert true)
(define-const var2956 String (append/672562846 var1950!1 "select max(")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select max(") 
(declare-const var1950!2 String)
(assert (= var1950!2 (str.++ var1950!1 "select max(")))
(assert true)
(define-const var3797 String (append/672562846 var2956 var2021)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22) 
(declare-const var2956!1 String)
(assert (= var2956!1 (str.++ var2956 var2021)))
(assert true)
(define-const var1595 String (append/672562846 var3797 ") from ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") from ") 
(declare-const var3797!1 String)
(assert (= var3797!1 (str.++ var3797 ") from ")))
(assert true)
(define-const var494 String (toString/-2075883882 var3085!1)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1075 String (append/672562846 var1595 var494)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1595!1 String)
(assert (= var1595!1 (str.++ var1595 var494)))
(assert true)
(define-const var1464 String (toString/-2075883882 var1075)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3733!1 var922)
(assert (not (= var3733!1 null-var922)))
(assert (= (sql/81799249 var3733!1) var1464)) ; Statement: r1.<org.hibernate.id.IncrementGenerator: java.lang.String sql> = $r10 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), physicalTableNames/81799249=([org.hibernate.id.IncrementGenerator], java.util.List), var1757_size/-959786421=([java.util.List], int), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), sql/81799249=([org.hibernate.id.IncrementGenerator], java.lang.String)}
; {var922=org.hibernate.id.IncrementGenerator, var3733=r1, var1241=org.hibernate.boot.model.relational.SqlStringGenerationContext, var2279=r12, var3085=$r0, var1881=i5, var1757=java.util.List, var3579=$r2, var691=$i0, var674=$r3, var851=$i1, var2599=$r11, var2021=r22, var1950=$r4, var2956=$r5, var3797=$r6, var1595=$r8, var494=$r7, var1075=$r9, var1464=$r10}
; {org.hibernate.id.IncrementGenerator=var922, r1=var3733, org.hibernate.boot.model.relational.SqlStringGenerationContext=var1241, r12=var2279, $r0=var3085, i5=var1881, java.util.List=var1757, $r2=var3579, $i0=var691, $r3=var674, $i1=var851, $r11=var2599, r22=var2021, $r4=var1950, $r5=var2956, $r6=var3797, $r8=var1595, $r7=var494, $r9=var1075, $r10=var1464}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: org.hibernate.id.IncrementGenerator;	r12 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i5 = 0;	$r2 = r1.<org.hibernate.id.IncrementGenerator: java.util.List physicalTableNames>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if i5 >= $i0 goto $r3 = r1.<org.hibernate.id.IncrementGenerator: java.util.List physicalTableNames>;	$r3 = r1.<org.hibernate.id.IncrementGenerator: java.util.List physicalTableNames>;	$i1 = interfaceinvoke $r3.<java.util.List: int size()>();	if $i1 <= 1 goto r22 = r1.<org.hibernate.id.IncrementGenerator: java.lang.String column>;	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(0, "( ");	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) ids_");	r22 = "ids_.mx";	goto [?= $r4 = new java.lang.StringBuilder];	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select max(");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") from ");	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<org.hibernate.id.IncrementGenerator: java.lang.String sql> = $r10;	return
;block_num 5