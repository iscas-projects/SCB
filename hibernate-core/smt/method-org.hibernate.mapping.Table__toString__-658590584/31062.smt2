(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1471 0)
(declare-sort var3991 0)
(declare-sort var1311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3991) ClassObject)
(declare-fun cast-from-var1471-to-var3991 (var1471) var3991)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getCatalog/-1531610639 (var1471) String)
(declare-fun getSchema/281261871 (var1471) String)
(declare-fun getName/-1669825851 (var1471) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1471 var1471)
(declare-const null-String String)
(declare-const var1475 var1471) ; Statement: r1 := @this: org.hibernate.mapping.Table 
(assert (not (= var1475 null-var1471)))
(define-const var3410 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3410)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3410!1 String)
(assert (= var3410!1 ""))
(assert true)
(define-const var3296 ClassObject (getClass/1258963082 (cast-from-var1471-to-var3991 var1475))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var855 String (getName/-1958580599 var3296)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var551 String (append/672562846 var3410!1 var855)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3410!2 String)
(assert (= var3410!2 (str.++ var3410!1 var855)))
(assert true)
(define-const var1844 String (append/-1166366385 var551 40)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var551!1 String)
(assert (str.prefixof var551 var551!1))
(assert true)
(define-const var332 String (getCatalog/-1531610639 var1475)) ; Statement: $r6 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getCatalog()>() 
 ; Statement: if $r6 == null goto $r7 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getSchema()>() 
(assert (= var332 null-String)) ; Cond: $r6 == null 
(assert true)
(define-const var3098 String (getSchema/281261871 var1475)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getSchema()>() 
 ; Statement: if $r7 == null goto $r8 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getName()>() 
(assert (= var3098 null-String)) ; Cond: $r7 == null 
(assert true)
(define-const var133 String (getName/-1669825851 var1475)) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getName()>() 
(assert true)
(define-const var104 String (append/672562846 var1844 var133)) ; Statement: $r9 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1844!1 String)
(assert (= var1844!1 (str.++ var1844 var133)))
(assert true)
;(assert (append/-1166366385 var104 41)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var104!1 String)
(assert (str.prefixof var104 var104!1))
(assert true)
(define-const var1984 String (toString/-2075883882 var1844!1)) ; Statement: $r10 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1471-to-var3991=([org.hibernate.mapping.Table], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getCatalog/-1531610639=([org.hibernate.mapping.Table], java.lang.String), getSchema/281261871=([org.hibernate.mapping.Table], java.lang.String), getName/-1669825851=([org.hibernate.mapping.Table], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1471=org.hibernate.mapping.Table, var1475=r1, var3410=$r0, var3991=java.lang.Object, var3296=$r2, var855=$r3, var551=$r4, var1844=r5, var332=$r6, var1311=null_type, var3098=$r7, var133=$r8, var104=$r9, var1984=$r10}
; {org.hibernate.mapping.Table=var1471, r1=var1475, $r0=var3410, java.lang.Object=var3991, $r2=var3296, $r3=var855, $r4=var551, r5=var1844, $r6=var332, null_type=var1311, $r7=var3098, $r8=var133, $r9=var104, $r10=var1984}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.Table;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r6 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getCatalog()>();	if $r6 == null goto $r7 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getSchema()>();	$r7 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getSchema()>();	if $r7 == null goto $r8 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getName()>();	$r8 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getName()>();	$r9 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3