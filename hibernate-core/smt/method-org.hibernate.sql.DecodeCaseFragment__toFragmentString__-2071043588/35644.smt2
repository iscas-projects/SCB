(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3002 0)
(declare-sort var1106 0)
(declare-sort var1608 0)
(declare-sort var631 0)
(declare-sort var910 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun cases/1499435334 (var1608) var1106)
(declare-fun cast-from-var3002-to-var1608 (var3002) var1608)
(declare-fun var1106_size/-1594421051 (var1106) Int)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1106_entrySet/1101202697 (var1106) var631)
(declare-fun var631_iterator/1911472585 (var631) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun returnColumnName/1499435334 (var1608) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3002 var3002)
(declare-const null-String String)
(declare-const var2244 var3002) ; Statement: r1 := @this: org.hibernate.sql.DecodeCaseFragment 
(assert (not (= var2244 null-var3002)))
(define-const var1346 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var3620 var1106 (cases/1499435334 (cast-from-var3002-to-var1608 var2244))) ; Statement: $r2 = r1.<org.hibernate.sql.DecodeCaseFragment: java.util.Map cases> 
(define-const var1092 Int (var1106_size/-1594421051 var3620)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.Map: int size()>() 
(define-const var2968 Int (* var1092 15)) ; Statement: $i1 = $i0 * 15 
(define-const var696 Int (+ var2968 10)) ; Statement: $i2 = $i1 + 10 
(assert true)
;(assert (<init>/543593434 var1346 var696)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var1346!1 String)
(declare-const var696!1 Int)
(assert true)
(define-const var2531 String (append/672562846 var1346!1 "decode(")) ; Statement: r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("decode(") 
(declare-const var1346!2 String)
(assert (= var1346!2 (str.++ var1346!1 "decode(")))
(define-const var980 var1106 (cases/1499435334 (cast-from-var3002-to-var1608 var2244))) ; Statement: $r4 = r1.<org.hibernate.sql.DecodeCaseFragment: java.util.Map cases> 
(define-const var2507 var631 (var1106_entrySet/1101202697 var980)) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.util.Set entrySet()>() 
(define-const var3550 Iterator (var631_iterator/1911472585 var2507)) ; Statement: r6 = interfaceinvoke $r5.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var709 Bool (Iterator_hasNext/-1669924200 var3550)) ; Statement: $z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var709 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/-1166366385 var2531 41)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2531!1 String)
(assert (str.prefixof var2531 var2531!1))
(define-const var3145 String (returnColumnName/1499435334 (cast-from-var3002-to-var1608 var2244))) ; Statement: $r7 = r1.<org.hibernate.sql.DecodeCaseFragment: java.lang.String returnColumnName> 
 ; Statement: if $r7 == null goto $r8 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3145 null-String)) ; Cond: $r7 == null 
(assert true)
(define-const var3840 String (toString/-2075883882 var2531!1)) ; Statement: $r8 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), cases/1499435334=([org.hibernate.sql.CaseFragment], java.util.Map), cast-from-var3002-to-var1608=([org.hibernate.sql.DecodeCaseFragment], org.hibernate.sql.CaseFragment), var1106_size/-1594421051=([java.util.Map], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1106_entrySet/1101202697=([java.util.Map], java.util.Set), var631_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), returnColumnName/1499435334=([org.hibernate.sql.CaseFragment], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3002=org.hibernate.sql.DecodeCaseFragment, var2244=r1, var1346=$r0, var1106=java.util.Map, var1608=org.hibernate.sql.CaseFragment, var3620=$r2, var1092=$i0, var2968=$i1, var696=$i2, var2531=r3, var980=$r4, var631=java.util.Set, var2507=$r5, var3550=r6, var709=$z0, var3145=$r7, var910=null_type, var3840=$r8}
; {org.hibernate.sql.DecodeCaseFragment=var3002, r1=var2244, $r0=var1346, java.util.Map=var1106, org.hibernate.sql.CaseFragment=var1608, $r2=var3620, $i0=var1092, $i1=var2968, $i2=var696, r3=var2531, $r4=var980, java.util.Set=var631, $r5=var2507, r6=var3550, $z0=var709, $r7=var3145, null_type=var910, $r8=var3840}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.sql.DecodeCaseFragment;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.hibernate.sql.DecodeCaseFragment: java.util.Map cases>;	$i0 = interfaceinvoke $r2.<java.util.Map: int size()>();	$i1 = $i0 * 15;	$i2 = $i1 + 10;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2);	r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("decode(");	$r4 = r1.<org.hibernate.sql.DecodeCaseFragment: java.util.Map cases>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.util.Set entrySet()>();	r6 = interfaceinvoke $r5.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r7 = r1.<org.hibernate.sql.DecodeCaseFragment: java.lang.String returnColumnName>;	if $r7 == null goto $r8 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 4