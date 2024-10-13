(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2475 0)
(declare-sort var3959 0)
(declare-sort var3427 0)
(declare-sort var964 0)
(declare-sort var42 0)
(declare-sort var778 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3427-init () var3427)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun relationshipsByID/1897838155 (var2475) var964)
(declare-fun keySet/-1629403916 (var964) var42)
(declare-fun append/-1031950772 (String var778) String)
(declare-fun cast-from-var42-to-var778 (var42) var778)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3427 String) void)
(declare-const null-var2475 var2475)
(declare-const null-String String)
(declare-const var1388 var2475) ; Statement: r1 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection 
(assert (not (= var1388 null-var2475)))
(declare-const var2389 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2389 null-String)))
 ; Statement: if r0 != null goto $r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID> 
(assert (not (not (= var2389 null-String)))) ; Negate: Cond: r0 != null  
(define-const var2145 var3427 var3427-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var2662 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2662)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2662!1 String)
(assert (= var2662!1 ""))
(assert true)
(define-const var2918 String (append/672562846 var2662!1 "Cannot read relationship, provided ID is empty: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot read relationship, provided ID is empty: ") 
(declare-const var2662!2 String)
(assert (= var2662!2 (str.++ var2662!1 "Cannot read relationship, provided ID is empty: ")))
(assert true)
(define-const var1268 String (append/672562846 var2918 var2389)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2918!1 String)
(assert (= var2918!1 (str.++ var2918 var2389)))
(assert true)
(define-const var1654 String (append/672562846 var1268 ", having relationships: ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", having relationships: ") 
(declare-const var1268!1 String)
(assert (= var1268!1 (str.++ var1268 ", having relationships: ")))
(define-const var3404 var964 (relationshipsByID/1897838155 var1388)) ; Statement: $r9 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID> 
(assert true)
(define-const var1358 var42 (keySet/-1629403916 var3404)) ; Statement: $r10 = virtualinvoke $r9.<java.util.TreeMap: java.util.Set keySet()>() 
(assert true)
(define-const var383 String (append/-1031950772 var1654 (cast-from-var42-to-var778 var1358))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var1654!1 String)
(assert (str.prefixof var1654 var1654!1))
(assert true)
(define-const var608 String (toString/-2075883882 var383)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2145 var608)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var2145!1 var3427)
(declare-const var608!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3427-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), relationshipsByID/1897838155=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], java.util.TreeMap), keySet/-1629403916=([java.util.TreeMap], java.util.Set), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var42-to-var778=([java.util.Set], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2475=org.apache.poi.openxml4j.opc.PackageRelationshipCollection, var1388=r1, var2389=r0, var3959=null_type, var3427=java.lang.IllegalArgumentException, var2145=$r5, var2662=$r6, var2918=$r7, var1268=$r8, var1654=$r11, var964=java.util.TreeMap, var3404=$r9, var42=java.util.Set, var1358=$r10, var778=java.lang.Object, var383=$r12, var608=$r13}
; {org.apache.poi.openxml4j.opc.PackageRelationshipCollection=var2475, r1=var1388, r0=var2389, null_type=var3959, java.lang.IllegalArgumentException=var3427, $r5=var2145, $r6=var2662, $r7=var2918, $r8=var1268, $r11=var1654, java.util.TreeMap=var964, $r9=var3404, java.util.Set=var42, $r10=var1358, java.lang.Object=var778, $r12=var383, $r13=var608}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID>;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot read relationship, provided ID is empty: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", having relationships: ");	$r9 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID>;	$r10 = virtualinvoke $r9.<java.util.TreeMap: java.util.Set keySet()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r5
;block_num 2