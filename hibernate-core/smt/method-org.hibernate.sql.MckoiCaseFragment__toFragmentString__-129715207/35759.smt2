(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2326 0)
(declare-sort var2597 0)
(declare-sort var1273 0)
(declare-sort var592 0)
(declare-sort var3687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun cases/1499435334 (var1273) var2597)
(declare-fun cast-from-var2326-to-var1273 (var2326) var1273)
(declare-fun var2597_size/-1594421051 (var2597) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun var2597_entrySet/1101202697 (var2597) var592)
(declare-fun var592_iterator/1911472585 (var592) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun returnColumnName/1499435334 (var1273) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2326 var2326)
(declare-const null-String String)
(declare-const var1705 var2326) ; Statement: r1 := @this: org.hibernate.sql.MckoiCaseFragment 
(assert (not (= var1705 null-var2326)))
(define-const var3335 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var1440 var2597 (cases/1499435334 (cast-from-var2326-to-var1273 var1705))) ; Statement: $r2 = r1.<org.hibernate.sql.MckoiCaseFragment: java.util.Map cases> 
(define-const var1063 Int (var2597_size/-1594421051 var1440)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.Map: int size()>() 
(define-const var756 Int (* var1063 15)) ; Statement: $i1 = $i0 * 15 
(define-const var344 Int (+ var756 10)) ; Statement: $i2 = $i1 + 10 
(assert true)
;(assert (<init>/543593434 var3335 var344)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var3335!1 String)
(declare-const var344!1 Int)
(define-const var3840 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var3925 var2597 (cases/1499435334 (cast-from-var2326-to-var1273 var1705))) ; Statement: $r4 = r1.<org.hibernate.sql.MckoiCaseFragment: java.util.Map cases> 
(define-const var1171 Int (var2597_size/-1594421051 var3925)) ; Statement: $i3 = interfaceinvoke $r4.<java.util.Map: int size()>() 
(assert true)
;(assert (<init>/543593434 var3840 var1171)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i3) 

(declare-const var3840!1 String)
(declare-const var1171!1 Int)
(define-const var2491 var2597 (cases/1499435334 (cast-from-var2326-to-var1273 var1705))) ; Statement: $r5 = r1.<org.hibernate.sql.MckoiCaseFragment: java.util.Map cases> 
(define-const var3285 var592 (var2597_entrySet/1101202697 var2491)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.Map: java.util.Set entrySet()>() 
(define-const var1828 Iterator (var592_iterator/1911472585 var3285)) ; Statement: r7 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3626 Bool (Iterator_hasNext/-1669924200 var1828)) ; Statement: $z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null") 
(assert (= (ite var3626 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var3335!1 "null")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null") 
(declare-const var3335!2 String)
(assert (= var3335!2 (str.++ var3335!1 "null")))
(assert true)
;(assert (append/-13659068 var3335!2 (cast-from-String-to-String var3840!1))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r3) 
(declare-const var3335!3 String)
(assert (str.prefixof var3335!2 var3335!3))
(define-const var905 String (returnColumnName/1499435334 (cast-from-var2326-to-var1273 var1705))) ; Statement: $r8 = r1.<org.hibernate.sql.MckoiCaseFragment: java.lang.String returnColumnName> 
 ; Statement: if $r8 == null goto $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var905 null-String)) ; Cond: $r8 == null 
(assert true)
(define-const var4 String (toString/-2075883882 var3335!3)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), cases/1499435334=([org.hibernate.sql.CaseFragment], java.util.Map), cast-from-var2326-to-var1273=([org.hibernate.sql.MckoiCaseFragment], org.hibernate.sql.CaseFragment), var2597_size/-1594421051=([java.util.Map], int), <init>/543593434=([java.lang.StringBuilder, int], void), var2597_entrySet/1101202697=([java.util.Map], java.util.Set), var592_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence), returnColumnName/1499435334=([org.hibernate.sql.CaseFragment], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2326=org.hibernate.sql.MckoiCaseFragment, var1705=r1, var3335=$r0, var2597=java.util.Map, var1273=org.hibernate.sql.CaseFragment, var1440=$r2, var1063=$i0, var756=$i1, var344=$i2, var3840=$r3, var3925=$r4, var1171=$i3, var2491=$r5, var592=java.util.Set, var3285=$r6, var1828=r7, var3626=$z0, var905=$r8, var3687=null_type, var4=$r9}
; {org.hibernate.sql.MckoiCaseFragment=var2326, r1=var1705, $r0=var3335, java.util.Map=var2597, org.hibernate.sql.CaseFragment=var1273, $r2=var1440, $i0=var1063, $i1=var756, $i2=var344, $r3=var3840, $r4=var3925, $i3=var1171, $r5=var2491, java.util.Set=var592, $r6=var3285, r7=var1828, $z0=var3626, $r8=var905, null_type=var3687, $r9=var4}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.sql.MckoiCaseFragment;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.hibernate.sql.MckoiCaseFragment: java.util.Map cases>;	$i0 = interfaceinvoke $r2.<java.util.Map: int size()>();	$i1 = $i0 * 15;	$i2 = $i1 + 10;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2);	$r3 = new java.lang.StringBuilder;	$r4 = r1.<org.hibernate.sql.MckoiCaseFragment: java.util.Map cases>;	$i3 = interfaceinvoke $r4.<java.util.Map: int size()>();	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i3);	$r5 = r1.<org.hibernate.sql.MckoiCaseFragment: java.util.Map cases>;	$r6 = interfaceinvoke $r5.<java.util.Map: java.util.Set entrySet()>();	r7 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r3);	$r8 = r1.<org.hibernate.sql.MckoiCaseFragment: java.lang.String returnColumnName>;	if $r8 == null goto $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 4