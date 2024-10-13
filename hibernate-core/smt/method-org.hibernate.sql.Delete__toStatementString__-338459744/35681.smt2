(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1753 0)
(declare-sort var2392 0)
(declare-sort var562 0)
(declare-sort var3446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun tableName/-1195722287 (var1753) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun comment/-1195722287 (var1753) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun where/-1195722287 (var1753) String)
(declare-fun primaryKeyColumns/-1195722287 (var1753) var562)
(declare-fun var562_entrySet/1101202697 (var562) var3446)
(declare-fun var3446_iterator/1911472585 (var3446) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun versionColumnName/-1195722287 (var1753) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1753 var1753)
(declare-const null-String String)
(declare-const var160 var1753) ; Statement: r1 := @this: org.hibernate.sql.Delete 
(assert (not (= var160 null-var1753)))
(define-const var2616 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var433 String (tableName/-1195722287 var160)) ; Statement: $r2 = r1.<org.hibernate.sql.Delete: java.lang.String tableName> 
(assert true)
(define-const var149 Int (length/-134980193 var433)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var1418 Int (+ var149 10)) ; Statement: $i1 = $i0 + 10 
(assert true)
;(assert (<init>/543593434 var2616 var1418)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2616!1 String)
(declare-const var1418!1 Int)
(define-const var1749 String (comment/-1195722287 var160)) ; Statement: $r3 = r1.<org.hibernate.sql.Delete: java.lang.String comment> 
 ; Statement: if $r3 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("delete from ") 
(assert (= var1749 null-String)) ; Cond: $r3 == null 
(assert true)
(define-const var1513 String (append/672562846 var2616!1 "delete from ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("delete from ") 
(declare-const var2616!2 String)
(assert (= var2616!2 (str.++ var2616!1 "delete from ")))
(define-const var2958 String (tableName/-1195722287 var160)) ; Statement: $r4 = r1.<org.hibernate.sql.Delete: java.lang.String tableName> 
(assert true)
;(assert (append/672562846 var1513 var2958)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1513!1 String)
(assert (= var1513!1 (str.++ var1513 var2958)))
(define-const var2597 String (where/-1195722287 var160)) ; Statement: $r6 = r1.<org.hibernate.sql.Delete: java.lang.String where> 
 ; Statement: if $r6 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(assert (not (= var2597 null-String))) ; Cond: $r6 != null 
(assert true)
;(assert (append/672562846 var2616!2 " where ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(declare-const var2616!3 String)
(assert (= var2616!3 (str.++ var2616!2 " where ")))
(assert true) ; Non Conditional
(define-const var642 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var1682 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var2684 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var3666 var562 (primaryKeyColumns/-1195722287 var160)) ; Statement: $r25 = r1.<org.hibernate.sql.Delete: java.util.Map primaryKeyColumns> 
(define-const var1483 var3446 (var562_entrySet/1101202697 var3666)) ; Statement: $r26 = interfaceinvoke $r25.<java.util.Map: java.util.Set entrySet()>() 
(define-const var1499 Iterator (var3446_iterator/1911472585 var1483)) ; Statement: $r27 = interfaceinvoke $r26.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2502 Bool (Iterator_hasNext/-1669924200 var1499)) ; Statement: $z3 = interfaceinvoke $r27.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto $r7 = r1.<org.hibernate.sql.Delete: java.lang.String where> 
(assert (= (ite var2502 1 0) 0)) ; Cond: $z3 == 0 
(define-const var1778 String (where/-1195722287 var160)) ; Statement: $r7 = r1.<org.hibernate.sql.Delete: java.lang.String where> 
 ; Statement: if $r7 == null goto $r28 = r1.<org.hibernate.sql.Delete: java.lang.String versionColumnName> 
(assert (= var1778 null-String)) ; Cond: $r7 == null 
(define-const var2835 String (versionColumnName/-1195722287 var160)) ; Statement: $r28 = r1.<org.hibernate.sql.Delete: java.lang.String versionColumnName> 
 ; Statement: if $r28 == null goto $r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2835 null-String)) ; Cond: $r28 == null 
(assert true)
(define-const var1765 String (toString/-2075883882 var2616!3)) ; Statement: $r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), tableName/-1195722287=([org.hibernate.sql.Delete], java.lang.String), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), comment/-1195722287=([org.hibernate.sql.Delete], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), where/-1195722287=([org.hibernate.sql.Delete], java.lang.String), primaryKeyColumns/-1195722287=([org.hibernate.sql.Delete], java.util.Map), var562_entrySet/1101202697=([java.util.Map], java.util.Set), var3446_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), versionColumnName/-1195722287=([org.hibernate.sql.Delete], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1753=org.hibernate.sql.Delete, var160=r1, var2616=$r0, var433=$r2, var149=$i0, var1418=$i1, var1749=$r3, var2392=null_type, var1513=$r5, var2958=$r4, var2597=$r6, var642=z2, var1682=z5, var2684=z4, var562=java.util.Map, var3666=$r25, var3446=java.util.Set, var1483=$r26, var1499=$r27, var2502=$z3, var1778=$r7, var2835=$r28, var1765=$r29}
; {org.hibernate.sql.Delete=var1753, r1=var160, $r0=var2616, $r2=var433, $i0=var149, $i1=var1418, $r3=var1749, null_type=var2392, $r5=var1513, $r4=var2958, $r6=var2597, z2=var642, z5=var1682, z4=var2684, java.util.Map=var562, $r25=var3666, java.util.Set=var3446, $r26=var1483, $r27=var1499, $z3=var2502, $r7=var1778, $r28=var2835, $r29=var1765}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.sql.Delete;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.hibernate.sql.Delete: java.lang.String tableName>;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$i1 = $i0 + 10;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = r1.<org.hibernate.sql.Delete: java.lang.String comment>;	if $r3 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("delete from ");	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("delete from ");	$r4 = r1.<org.hibernate.sql.Delete: java.lang.String tableName>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = r1.<org.hibernate.sql.Delete: java.lang.String where>;	if $r6 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	z2 = 0;	z5 = 0;	z4 = 0;	$r25 = r1.<org.hibernate.sql.Delete: java.util.Map primaryKeyColumns>;	$r26 = interfaceinvoke $r25.<java.util.Map: java.util.Set entrySet()>();	$r27 = interfaceinvoke $r26.<java.util.Set: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r27.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto $r7 = r1.<org.hibernate.sql.Delete: java.lang.String where>;	$r7 = r1.<org.hibernate.sql.Delete: java.lang.String where>;	if $r7 == null goto $r28 = r1.<org.hibernate.sql.Delete: java.lang.String versionColumnName>;	$r28 = r1.<org.hibernate.sql.Delete: java.lang.String versionColumnName>;	if $r28 == null goto $r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 8