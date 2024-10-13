(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var68 0)
(declare-sort var890 0)
(declare-sort var650 0)
(declare-sort var333 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getClass/1258963082 (var890) ClassObject)
(declare-fun cast-from-var68-to-var890 (var68) var890)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun dependenciesByAction/-1956251375 (var68) var650)
(declare-fun var650_entrySet/1101202697 (var650) var333)
(declare-fun var333_iterator/1911472585 (var333) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var68 var68)
(declare-const var2935 var68) ; Statement: r1 := @this: org.hibernate.action.internal.UnresolvedEntityInsertActions 
(assert (not (= var2935 null-var68)))
(define-const var3862 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1228 ClassObject (getClass/1258963082 (cast-from-var68-to-var890 var2935))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var694 String (getSimpleName/-390194377 var1228)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (<init>/-1061048412 var3862 var694)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var3862!1 String)
(assert (= var3862!1 var694))
(assert true)
(define-const var584 String (append/-1166366385 var3862!1 91)) ; Statement: r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3862!2 String)
(assert (str.prefixof var3862!1 var3862!2))
(define-const var2805 var650 (dependenciesByAction/-1956251375 var2935)) ; Statement: $r5 = r1.<org.hibernate.action.internal.UnresolvedEntityInsertActions: java.util.Map dependenciesByAction> 
(define-const var2285 var333 (var650_entrySet/1101202697 var2805)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.Map: java.util.Set entrySet()>() 
(define-const var1760 Iterator (var333_iterator/1911472585 var2285)) ; Statement: r7 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3048 Bool (Iterator_hasNext/-1669924200 var1760)) ; Statement: $z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (= (ite var3048 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/-1166366385 var584 93)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var584!1 String)
(assert (str.prefixof var584 var584!1))
(assert true)
(define-const var463 String (toString/-2075883882 var584!1)) ; Statement: $r8 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var68-to-var890=([org.hibernate.action.internal.UnresolvedEntityInsertActions], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), dependenciesByAction/-1956251375=([org.hibernate.action.internal.UnresolvedEntityInsertActions], java.util.Map), var650_entrySet/1101202697=([java.util.Map], java.util.Set), var333_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var68=org.hibernate.action.internal.UnresolvedEntityInsertActions, var2935=r1, var3862=$r0, var890=java.lang.Object, var1228=$r2, var694=$r3, var584=r4, var650=java.util.Map, var2805=$r5, var333=java.util.Set, var2285=$r6, var1760=r7, var3048=$z0, var463=$r8}
; {org.hibernate.action.internal.UnresolvedEntityInsertActions=var68, r1=var2935, $r0=var3862, java.lang.Object=var890, $r2=var1228, $r3=var694, r4=var584, java.util.Map=var650, $r5=var2805, java.util.Set=var333, $r6=var2285, r7=var1760, $z0=var3048, $r8=var463}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.action.internal.UnresolvedEntityInsertActions;	$r0 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r5 = r1.<org.hibernate.action.internal.UnresolvedEntityInsertActions: java.util.Map dependenciesByAction>;	$r6 = interfaceinvoke $r5.<java.util.Map: java.util.Set entrySet()>();	r7 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r8 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3