(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3596 0)
(declare-sort var3925 0)
(declare-sort var2647 0)
(declare-sort var3276 0)
(declare-sort var1796 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun cases/1499435334 (var2647) var3925)
(declare-fun cast-from-var3596-to-var2647 (var3596) var2647)
(declare-fun var3925_size/-1594421051 (var3925) Int)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3925_entrySet/1101202697 (var3925) var3276)
(declare-fun var3276_iterator/1911472585 (var3276) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun returnColumnName/1499435334 (var2647) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3596 var3596)
(declare-const null-String String)
(declare-const var481 var3596) ; Statement: r1 := @this: org.hibernate.sql.DerbyCaseFragment 
(assert (not (= var481 null-var3596)))
(define-const var3349 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var3522 var3925 (cases/1499435334 (cast-from-var3596-to-var2647 var481))) ; Statement: $r2 = r1.<org.hibernate.sql.DerbyCaseFragment: java.util.Map cases> 
(define-const var2256 Int (var3925_size/-1594421051 var3522)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.Map: int size()>() 
(define-const var374 Int (* var2256 15)) ; Statement: $i1 = $i0 * 15 
(define-const var3348 Int (+ var374 10)) ; Statement: $i2 = $i1 + 10 
(assert true)
;(assert (<init>/543593434 var3349 var3348)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var3349!1 String)
(declare-const var3348!1 Int)
(assert true)
;(assert (append/672562846 var3349!1 "case")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("case") 
(declare-const var3349!2 String)
(assert (= var3349!2 (str.++ var3349!1 "case")))
(define-const var273 var3925 (cases/1499435334 (cast-from-var3596-to-var2647 var481))) ; Statement: $r3 = r1.<org.hibernate.sql.DerbyCaseFragment: java.util.Map cases> 
(define-const var3513 var3276 (var3925_entrySet/1101202697 var273)) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set entrySet()>() 
(define-const var337 Iterator (var3276_iterator/1911472585 var3513)) ; Statement: r5 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1750 Bool (Iterator_hasNext/-1669924200 var337)) ; Statement: $z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" else -1") 
(assert (= (ite var1750 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var3349!2 " else -1")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" else -1") 
(declare-const var3349!3 String)
(assert (= var3349!3 (str.++ var3349!2 " else -1")))
(assert true)
;(assert (append/672562846 var3349!3 " end")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end") 
(declare-const var3349!4 String)
(assert (= var3349!4 (str.++ var3349!3 " end")))
(define-const var3038 String (returnColumnName/1499435334 (cast-from-var3596-to-var2647 var481))) ; Statement: $r6 = r1.<org.hibernate.sql.DerbyCaseFragment: java.lang.String returnColumnName> 
 ; Statement: if $r6 == null goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3038 null-String)) ; Cond: $r6 == null 
(assert true)
(define-const var557 String (toString/-2075883882 var3349!4)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), cases/1499435334=([org.hibernate.sql.CaseFragment], java.util.Map), cast-from-var3596-to-var2647=([org.hibernate.sql.DerbyCaseFragment], org.hibernate.sql.CaseFragment), var3925_size/-1594421051=([java.util.Map], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3925_entrySet/1101202697=([java.util.Map], java.util.Set), var3276_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), returnColumnName/1499435334=([org.hibernate.sql.CaseFragment], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3596=org.hibernate.sql.DerbyCaseFragment, var481=r1, var3349=$r0, var3925=java.util.Map, var2647=org.hibernate.sql.CaseFragment, var3522=$r2, var2256=$i0, var374=$i1, var3348=$i2, var273=$r3, var3276=java.util.Set, var3513=$r4, var337=r5, var1750=$z0, var3038=$r6, var1796=null_type, var557=$r7}
; {org.hibernate.sql.DerbyCaseFragment=var3596, r1=var481, $r0=var3349, java.util.Map=var3925, org.hibernate.sql.CaseFragment=var2647, $r2=var3522, $i0=var2256, $i1=var374, $i2=var3348, $r3=var273, java.util.Set=var3276, $r4=var3513, r5=var337, $z0=var1750, $r6=var3038, null_type=var1796, $r7=var557}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.sql.DerbyCaseFragment;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.hibernate.sql.DerbyCaseFragment: java.util.Map cases>;	$i0 = interfaceinvoke $r2.<java.util.Map: int size()>();	$i1 = $i0 * 15;	$i2 = $i1 + 10;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("case");	$r3 = r1.<org.hibernate.sql.DerbyCaseFragment: java.util.Map cases>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set entrySet()>();	r5 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" else -1");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" else -1");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end");	$r6 = r1.<org.hibernate.sql.DerbyCaseFragment: java.lang.String returnColumnName>;	if $r6 == null goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 4