(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2565 0)
(declare-sort var167 0)
(declare-sort var642 0)
(declare-sort var1206 0)
(declare-sort var495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun cases/1499435334 (var642) var167)
(declare-fun cast-from-var2565-to-var642 (var2565) var642)
(declare-fun var167_size/-1594421051 (var167) Int)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var167_entrySet/1101202697 (var167) var1206)
(declare-fun var1206_iterator/1911472585 (var1206) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun returnColumnName/1499435334 (var642) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2565 var2565)
(declare-const null-String String)
(declare-const var3734 var2565) ; Statement: r1 := @this: org.hibernate.sql.ANSICaseFragment 
(assert (not (= var3734 null-var2565)))
(define-const var3487 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var1870 var167 (cases/1499435334 (cast-from-var2565-to-var642 var3734))) ; Statement: $r2 = r1.<org.hibernate.sql.ANSICaseFragment: java.util.Map cases> 
(define-const var3541 Int (var167_size/-1594421051 var1870)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.Map: int size()>() 
(define-const var2838 Int (* var3541 15)) ; Statement: $i1 = $i0 * 15 
(define-const var2190 Int (+ var2838 10)) ; Statement: $i2 = $i1 + 10 
(assert true)
;(assert (<init>/543593434 var3487 var2190)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var3487!1 String)
(declare-const var2190!1 Int)
(assert true)
(define-const var2202 String (append/672562846 var3487!1 "case")) ; Statement: r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("case") 
(declare-const var3487!2 String)
(assert (= var3487!2 (str.++ var3487!1 "case")))
(define-const var1435 var167 (cases/1499435334 (cast-from-var2565-to-var642 var3734))) ; Statement: $r4 = r1.<org.hibernate.sql.ANSICaseFragment: java.util.Map cases> 
(define-const var3310 var1206 (var167_entrySet/1101202697 var1435)) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.util.Set entrySet()>() 
(define-const var2436 Iterator (var1206_iterator/1911472585 var3310)) ; Statement: r6 = interfaceinvoke $r5.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var684 Bool (Iterator_hasNext/-1669924200 var2436)) ; Statement: $z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end") 
(assert (= (ite var684 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var2202 " end")) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end") 
(declare-const var2202!1 String)
(assert (= var2202!1 (str.++ var2202 " end")))
(define-const var2113 String (returnColumnName/1499435334 (cast-from-var2565-to-var642 var3734))) ; Statement: $r7 = r1.<org.hibernate.sql.ANSICaseFragment: java.lang.String returnColumnName> 
 ; Statement: if $r7 == null goto $r8 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2113 null-String)) ; Cond: $r7 == null 
(assert true)
(define-const var2952 String (toString/-2075883882 var2202!1)) ; Statement: $r8 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), cases/1499435334=([org.hibernate.sql.CaseFragment], java.util.Map), cast-from-var2565-to-var642=([org.hibernate.sql.ANSICaseFragment], org.hibernate.sql.CaseFragment), var167_size/-1594421051=([java.util.Map], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var167_entrySet/1101202697=([java.util.Map], java.util.Set), var1206_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), returnColumnName/1499435334=([org.hibernate.sql.CaseFragment], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2565=org.hibernate.sql.ANSICaseFragment, var3734=r1, var3487=$r0, var167=java.util.Map, var642=org.hibernate.sql.CaseFragment, var1870=$r2, var3541=$i0, var2838=$i1, var2190=$i2, var2202=r3, var1435=$r4, var1206=java.util.Set, var3310=$r5, var2436=r6, var684=$z0, var2113=$r7, var495=null_type, var2952=$r8}
; {org.hibernate.sql.ANSICaseFragment=var2565, r1=var3734, $r0=var3487, java.util.Map=var167, org.hibernate.sql.CaseFragment=var642, $r2=var1870, $i0=var3541, $i1=var2838, $i2=var2190, r3=var2202, $r4=var1435, java.util.Set=var1206, $r5=var3310, r6=var2436, $z0=var684, $r7=var2113, null_type=var495, $r8=var2952}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.sql.ANSICaseFragment;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.hibernate.sql.ANSICaseFragment: java.util.Map cases>;	$i0 = interfaceinvoke $r2.<java.util.Map: int size()>();	$i1 = $i0 * 15;	$i2 = $i1 + 10;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2);	r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("case");	$r4 = r1.<org.hibernate.sql.ANSICaseFragment: java.util.Map cases>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.util.Set entrySet()>();	r6 = interfaceinvoke $r5.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end");	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end");	$r7 = r1.<org.hibernate.sql.ANSICaseFragment: java.lang.String returnColumnName>;	if $r7 == null goto $r8 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 4