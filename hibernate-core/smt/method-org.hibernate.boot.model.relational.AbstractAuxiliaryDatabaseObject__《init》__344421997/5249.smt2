(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1017 0)
(declare-sort var940 0)
(declare-sort var337 0)
(declare-sort var869 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var337) void)
(declare-fun cast-from-var1017-to-var337 (var1017) var337)
(declare-fun beforeTables/83599698 (var1017) Bool)
(declare-fun dialectScopes/83599698 (var1017) var940)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAndIncrement/-721914959 (var869) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun exportIdentifier/83599698 (var1017) String)
(declare-const null-var1017 var1017)
(declare-const null-Bool Bool)
(declare-const null-var940 var940)
(declare-const var1017-counter var869)
(declare-const var3298 var1017) ; Statement: r0 := @this: org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject 
(assert (not (= var3298 null-var1017)))
(declare-const var2891 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2891 null-Bool)))
(declare-const var1389 var940) ; Statement: r1 := @parameter1: java.util.Set 
(assert (not (= var1389 null-var940)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1017-to-var337 var3298))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3298!1 var1017)
(declare-const var3298!2 var1017)
(assert (not (= var3298!2 null-var1017)))
(assert (= (beforeTables/83599698 var3298!2) var2891)) ; Statement: r0.<org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject: boolean beforeTables> = z0 
 ; Statement: if r1 != null goto $r7 = r1 
(assert (not (= var1389 null-var940))) ; Cond: r1 != null 
(define-const var292 var940 var1389) ; Statement: $r7 = r1 
(assert true) ; Non Conditional
(declare-const var3298!3 var1017)
(assert (not (= var3298!3 null-var1017)))
(assert (= (dialectScopes/83599698 var3298!3) var292)) ; Statement: r0.<org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject: java.util.Set dialectScopes> = $r7 
(define-const var3374 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3374)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3374!1 String)
(assert (= var3374!1 ""))
(assert true)
(define-const var1245 String (append/672562846 var3374!1 "auxiliary-object-.")) ; Statement: $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("auxiliary-object-.") 
(declare-const var3374!2 String)
(assert (= var3374!2 (str.++ var3374!1 "auxiliary-object-.")))
(define-const var491 var869 var1017-counter) ; Statement: $r3 = <org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject: java.util.concurrent.atomic.AtomicInteger counter> 
(assert true)
(define-const var2472 Int (getAndIncrement/-721914959 var491)) ; Statement: $i0 = virtualinvoke $r3.<java.util.concurrent.atomic.AtomicInteger: int getAndIncrement()>() 
(assert true)
(define-const var1072 String (append/-1001720160 var1245 var2472)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1245!1 String)
(assert (str.prefixof var1245 var1245!1))
(assert true)
(define-const var3345 String (toString/-2075883882 var1072)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3298!4 var1017)
(assert (not (= var3298!4 null-var1017)))
(assert (= (exportIdentifier/83599698 var3298!4) var3345)) ; Statement: r0.<org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject: java.lang.String exportIdentifier> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1017-to-var337=([org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject], java.lang.Object), beforeTables/83599698=([org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject], boolean), dialectScopes/83599698=([org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject], java.util.Set), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAndIncrement/-721914959=([java.util.concurrent.atomic.AtomicInteger], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), exportIdentifier/83599698=([org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject], java.lang.String)}
; {var1017=org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject, var3298=r0, var2891=z0, var940=java.util.Set, var1389=r1, var337=java.lang.Object, var292=$r7, var3374=$r9, var1245=$r4, var869=java.util.concurrent.atomic.AtomicInteger, var491=$r3, var2472=$i0, var1072=$r5, var3345=$r6}
; {org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject=var1017, r0=var3298, z0=var2891, java.util.Set=var940, r1=var1389, java.lang.Object=var337, $r7=var292, $r9=var3374, $r4=var1245, java.util.concurrent.atomic.AtomicInteger=var869, $r3=var491, $i0=var2472, $r5=var1072, $r6=var3345}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject;	z0 := @parameter0: boolean;	r1 := @parameter1: java.util.Set;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject: boolean beforeTables> = z0;	if r1 != null goto $r7 = r1;	$r7 = r1;	r0.<org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject: java.util.Set dialectScopes> = $r7;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("auxiliary-object-.");	$r3 = <org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject: java.util.concurrent.atomic.AtomicInteger counter>;	$i0 = virtualinvoke $r3.<java.util.concurrent.atomic.AtomicInteger: int getAndIncrement()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.boot.model.relational.AbstractAuxiliaryDatabaseObject: java.lang.String exportIdentifier> = $r6;	return
;block_num 3