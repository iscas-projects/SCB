(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2387 0)
(declare-sort var2896 0)
(declare-sort var103 0)
(declare-sort var3584 0)
(declare-sort var691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun cases/1499435334 (var103) var2896)
(declare-fun cast-from-var2387-to-var103 (var2387) var103)
(declare-fun var2896_size/-1594421051 (var2896) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun var2896_entrySet/1101202697 (var2896) var3584)
(declare-fun var3584_iterator/1911472585 (var3584) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun returnColumnName/1499435334 (var103) String)
(declare-const null-var2387 var2387)
(declare-const null-String String)
(declare-const var2024 var2387) ; Statement: r1 := @this: org.hibernate.sql.HSQLCaseFragment 
(assert (not (= var2024 null-var2387)))
(define-const var1628 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var2683 var2896 (cases/1499435334 (cast-from-var2387-to-var103 var2024))) ; Statement: $r2 = r1.<org.hibernate.sql.HSQLCaseFragment: java.util.Map cases> 
(define-const var339 Int (var2896_size/-1594421051 var2683)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.Map: int size()>() 
(define-const var2302 Int (* var339 15)) ; Statement: $i1 = $i0 * 15 
(define-const var1536 Int (+ var2302 10)) ; Statement: $i2 = $i1 + 10 
(assert true)
;(assert (<init>/543593434 var1628 var1536)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var1628!1 String)
(declare-const var1536!1 Int)
(define-const var2102 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var2122 var2896 (cases/1499435334 (cast-from-var2387-to-var103 var2024))) ; Statement: $r4 = r1.<org.hibernate.sql.HSQLCaseFragment: java.util.Map cases> 
(define-const var3510 Int (var2896_size/-1594421051 var2122)) ; Statement: $i3 = interfaceinvoke $r4.<java.util.Map: int size()>() 
(assert true)
;(assert (<init>/543593434 var2102 var3510)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i3) 

(declare-const var2102!1 String)
(declare-const var3510!1 Int)
(define-const var3532 var2896 (cases/1499435334 (cast-from-var2387-to-var103 var2024))) ; Statement: $r5 = r1.<org.hibernate.sql.HSQLCaseFragment: java.util.Map cases> 
(define-const var3424 var3584 (var2896_entrySet/1101202697 var3532)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.Map: java.util.Set entrySet()>() 
(define-const var2696 Iterator (var3584_iterator/1911472585 var3424)) ; Statement: r7 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1775 Bool (Iterator_hasNext/-1669924200 var2696)) ; Statement: $z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-1") 
(assert (= (ite var1775 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var1628!1 "-1")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-1") 
(declare-const var1628!2 String)
(assert (= var1628!2 (str.++ var1628!1 "-1")))
(assert true)
(define-const var1723 String (toString/-2075883882 var2102!1)) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1628!2 var1723)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1628!3 String)
(assert (= var1628!3 (str.++ var1628!2 var1723)))
(define-const var3994 String (returnColumnName/1499435334 (cast-from-var2387-to-var103 var2024))) ; Statement: $r9 = r1.<org.hibernate.sql.HSQLCaseFragment: java.lang.String returnColumnName> 
 ; Statement: if $r9 == null goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3994 null-String)) ; Cond: $r9 == null 
(assert true)
(define-const var195 String (toString/-2075883882 var1628!3)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), cases/1499435334=([org.hibernate.sql.CaseFragment], java.util.Map), cast-from-var2387-to-var103=([org.hibernate.sql.HSQLCaseFragment], org.hibernate.sql.CaseFragment), var2896_size/-1594421051=([java.util.Map], int), <init>/543593434=([java.lang.StringBuilder, int], void), var2896_entrySet/1101202697=([java.util.Map], java.util.Set), var3584_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), returnColumnName/1499435334=([org.hibernate.sql.CaseFragment], java.lang.String)}
; {var2387=org.hibernate.sql.HSQLCaseFragment, var2024=r1, var1628=$r0, var2896=java.util.Map, var103=org.hibernate.sql.CaseFragment, var2683=$r2, var339=$i0, var2302=$i1, var1536=$i2, var2102=$r3, var2122=$r4, var3510=$i3, var3532=$r5, var3584=java.util.Set, var3424=$r6, var2696=r7, var1775=$z0, var1723=$r8, var3994=$r9, var691=null_type, var195=$r10}
; {org.hibernate.sql.HSQLCaseFragment=var2387, r1=var2024, $r0=var1628, java.util.Map=var2896, org.hibernate.sql.CaseFragment=var103, $r2=var2683, $i0=var339, $i1=var2302, $i2=var1536, $r3=var2102, $r4=var2122, $i3=var3510, $r5=var3532, java.util.Set=var3584, $r6=var3424, r7=var2696, $z0=var1775, $r8=var1723, $r9=var3994, null_type=var691, $r10=var195}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: org.hibernate.sql.HSQLCaseFragment;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.hibernate.sql.HSQLCaseFragment: java.util.Map cases>;	$i0 = interfaceinvoke $r2.<java.util.Map: int size()>();	$i1 = $i0 * 15;	$i2 = $i1 + 10;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2);	$r3 = new java.lang.StringBuilder;	$r4 = r1.<org.hibernate.sql.HSQLCaseFragment: java.util.Map cases>;	$i3 = interfaceinvoke $r4.<java.util.Map: int size()>();	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i3);	$r5 = r1.<org.hibernate.sql.HSQLCaseFragment: java.util.Map cases>;	$r6 = interfaceinvoke $r5.<java.util.Map: java.util.Set entrySet()>();	r7 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-1");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-1");	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r9 = r1.<org.hibernate.sql.HSQLCaseFragment: java.lang.String returnColumnName>;	if $r9 == null goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 4