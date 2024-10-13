(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1463 0)
(declare-sort var1092 0)
(declare-sort var346 0)
(declare-sort var1815 0)
(declare-sort var117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1463_get/1088891777 (var1463 var346) var346)
(declare-fun cast-from-String-to-var346 (String) var346)
(declare-fun var1815-init () var1815)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var346) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1483537917 (var1815 String) void)
(declare-fun cast-from-var1815-to-var117 (var1815) var117)
(declare-const null-var1463 var1463)
(declare-const null-var1092 var1092)
(declare-const null-var346 var346)
(declare-const var751 var1463) ; Statement: r0 := @parameter0: java.util.Map 
(assert (not (= var751 null-var1463)))
(declare-const var2773 var1092) ; Statement: r1 := @parameter1: java.util.function.Supplier 
(assert (not (= var2773 null-var1092)))
(define-const var1623 String "javax.persistence.lock.scope") ; Statement: r34 = "javax.persistence.lock.scope" 
(define-const var890 var346 (var1463_get/1088891777 var751 (cast-from-String-to-var346 "javax.persistence.lock.scope"))) ; Statement: r35 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>("javax.persistence.lock.scope") 
 ; Statement: if r35 != null goto $z0 = r35 instanceof java.lang.String 
(assert (not (= var890 null-var346))) ; Cond: r35 != null 
(define-const var2328 Bool false) ; Statement: $z0 = r35 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $z1 = r35 instanceof javax.persistence.PessimisticLockScope 
(assert (= (ite var2328 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2623 Bool false) ; Statement: $z1 = r35 instanceof javax.persistence.PessimisticLockScope 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var2623 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if r35 == null goto r36 = "javax.persistence.lock.timeout" 
(assert (not (= var890 null-var346))) ; Negate: Cond: r35 == null  
(define-const var1594 var1815 var1815-init) ; Statement: $r40 = new javax.persistence.PersistenceException 
(define-const var2178 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2178)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2178!1 String)
(assert (= var2178!1 ""))
(assert true)
(define-const var961 String (append/672562846 var2178!1 "Unable to parse ")) ; Statement: $r21 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to parse ") 
(declare-const var2178!2 String)
(assert (= var2178!2 (str.++ var2178!1 "Unable to parse ")))
(assert true)
(define-const var3749 String (append/672562846 var961 var1623)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r34) 
(declare-const var961!1 String)
(assert (= var961!1 (str.++ var961 var1623)))
(assert true)
(define-const var3161 String (append/672562846 var3749 ": ")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3749!1 String)
(assert (= var3749!1 (str.++ var3749 ": ")))
(assert true)
(define-const var2391 String (append/-1031950772 var3161 var890)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r35) 
(declare-const var3161!1 String)
(assert (str.prefixof var3161 var3161!1))
(assert true)
(define-const var431 String (toString/-2075883882 var2391)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1483537917 var1594 var431)) ; Statement: specialinvoke $r40.<javax.persistence.PersistenceException: void <init>(java.lang.String)>($r25) 

(declare-const var1594!1 var1815)
(declare-const var431!1 String)
(define-const var1524 var117 (cast-from-var1815-to-var117 var1594!1)) ; Statement: $r43 = (java.lang.Throwable) $r40 
 ; Statement: throw $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {var1463_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var346=([java.lang.String], java.lang.Object), var1815-init=([], javax.persistence.PersistenceException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1483537917=([javax.persistence.PersistenceException, java.lang.String], void), cast-from-var1815-to-var117=([javax.persistence.PersistenceException], java.lang.Throwable)}
; {var1463=java.util.Map, var751=r0, var1092=java.util.function.Supplier, var2773=r1, var1623=r34, var346=java.lang.Object, var890=r35, var2328=$z0, var2623=$z1, var1815=javax.persistence.PersistenceException, var1594=$r40, var2178=$r39, var961=$r21, var3749=$r22, var3161=$r23, var2391=$r24, var431=$r25, var117=java.lang.Throwable, var1524=$r43}
; {java.util.Map=var1463, r0=var751, java.util.function.Supplier=var1092, r1=var2773, r34=var1623, java.lang.Object=var346, r35=var890, $z0=var2328, $z1=var2623, javax.persistence.PersistenceException=var1815, $r40=var1594, $r39=var2178, $r21=var961, $r22=var3749, $r23=var3161, $r24=var2391, $r25=var431, java.lang.Throwable=var117, $r43=var1524}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Map;	r1 := @parameter1: java.util.function.Supplier;	r34 = "javax.persistence.lock.scope";	r35 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>("javax.persistence.lock.scope");	if r35 != null goto $z0 = r35 instanceof java.lang.String;	$z0 = r35 instanceof java.lang.String;	if $z0 == 0 goto $z1 = r35 instanceof javax.persistence.PessimisticLockScope;	$z1 = r35 instanceof javax.persistence.PessimisticLockScope;	if $z1 == 0 goto (branch);	if r35 == null goto r36 = "javax.persistence.lock.timeout";	$r40 = new javax.persistence.PersistenceException;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to parse ");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r34);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r35);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r40.<javax.persistence.PersistenceException: void <init>(java.lang.String)>($r25);	$r43 = (java.lang.Throwable) $r40;	throw $r43
;block_num 5