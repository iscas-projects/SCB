(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1499 0)
(declare-sort var1650 0)
(declare-sort var2537 0)
(declare-sort var3753 0)
(declare-sort var877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun relationshipsByID/1897838155 (var1499) var1650)
(declare-fun size/1324805763 (var1650) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun relationshipPart/1897838155 (var1499) var2537)
(declare-fun sourcePart/1897838155 (var1499) var2537)
(declare-fun partName/1897838155 (var1499) var3753)
(declare-fun append/-1031950772 (String var877) String)
(declare-fun cast-from-var3753-to-var877 (var3753) var877)
(declare-const null-var1499 var1499)
(declare-const null-var2537 var2537)
(declare-const null-var3753 var3753)
(declare-const var2131 var1499) ; Statement: r1 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection 
(assert (not (= var2131 null-var1499)))
(define-const var3672 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3672)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3672!1 String)
(assert (= var3672!1 ""))
(define-const var3669 var1650 (relationshipsByID/1897838155 var2131)) ; Statement: $r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID> 
(assert true)
(define-const var2436 Int (size/1324805763 var3669)) ; Statement: $i0 = virtualinvoke $r2.<java.util.TreeMap: int size()>() 
(assert true)
(define-const var2034 String (append/-1001720160 var3672!1 var2436)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3672!2 String)
(assert (str.prefixof var3672!1 var3672!2))
(assert true)
(define-const var261 String (append/672562846 var2034 " relationship(s) = [")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" relationship(s) = [") 
(declare-const var2034!1 String)
(assert (= var2034!1 (str.++ var2034 " relationship(s) = [")))
(assert true)
(define-const var2435 String (toString/-2075883882 var261)) ; Statement: r39 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2758 var2537 (relationshipPart/1897838155 var2131)) ; Statement: $r5 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePart relationshipPart> 
 ; Statement: if $r5 == null goto $r6 = new java.lang.StringBuilder 
(assert (= var2758 null-var2537)) ; Cond: $r5 == null 
(define-const var2927 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2927)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2927!1 String)
(assert (= var2927!1 ""))
(assert true)
(define-const var715 String (append/672562846 var2927!1 var2435)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r39) 
(declare-const var2927!2 String)
(assert (= var2927!2 (str.++ var2927!1 var2435)))
(assert true)
(define-const var1868 String (append/672562846 var715 "relationshipPart=null")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("relationshipPart=null") 
(declare-const var715!1 String)
(assert (= var715!1 (str.++ var715 "relationshipPart=null")))
(assert true)
(define-const var3568 String (toString/-2075883882 var1868)) ; Statement: r40 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2280 var2537 (sourcePart/1897838155 var2131)) ; Statement: $r41 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePart sourcePart> 
 ; Statement: if $r41 == null goto $r9 = new java.lang.StringBuilder 
(assert (= var2280 null-var2537)) ; Cond: $r41 == null 
(define-const var3851 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3851)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3851!1 String)
(assert (= var3851!1 ""))
(assert true)
(define-const var2572 String (append/672562846 var3851!1 var3568)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r40) 
(declare-const var3851!2 String)
(assert (= var3851!2 (str.++ var3851!1 var3568)))
(assert true)
(define-const var1335 String (append/672562846 var2572 ",sourcePart=null")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",sourcePart=null") 
(declare-const var2572!1 String)
(assert (= var2572!1 (str.++ var2572 ",sourcePart=null")))
(assert true)
(define-const var621 String (toString/-2075883882 var1335)) ; Statement: r42 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2144 var3753 (partName/1897838155 var2131)) ; Statement: $r43 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePartName partName> 
 ; Statement: if $r43 == null goto $r12 = new java.lang.StringBuilder 
(assert (not (= var2144 null-var3753))) ; Negate: Cond: $r43 == null  
(define-const var2003 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2003)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2003!1 String)
(assert (= var2003!1 ""))
(assert true)
(define-const var3455 String (append/672562846 var2003!1 var621)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var2003!2 String)
(assert (= var2003!2 (str.++ var2003!1 var621)))
(assert true)
(define-const var563 String (append/672562846 var3455 ",")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3455!1 String)
(assert (= var3455!1 (str.++ var3455 ",")))
(define-const var1626 var3753 (partName/1897838155 var2131)) ; Statement: $r21 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert true)
(define-const var1334 String (append/-1031950772 var563 (cast-from-var3753-to-var877 var1626))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21) 
(declare-const var563!1 String)
(assert (str.prefixof var563 var563!1))
(assert true)
(define-const var2536 String (toString/-2075883882 var1334)) ; Statement: r44 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r15 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2828 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2828)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2828!1 String)
(assert (= var2828!1 ""))
(assert true)
(define-const var3450 String (append/672562846 var2828!1 var2536)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44) 
(declare-const var2828!2 String)
(assert (= var2828!2 (str.++ var2828!1 var2536)))
(assert true)
(define-const var2562 String (append/672562846 var3450 "]")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3450!1 String)
(assert (= var3450!1 (str.++ var3450 "]")))
(assert true)
(define-const var3041 String (toString/-2075883882 var2562)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), relationshipsByID/1897838155=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], java.util.TreeMap), size/1324805763=([java.util.TreeMap], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), relationshipPart/1897838155=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], org.apache.poi.openxml4j.opc.PackagePart), sourcePart/1897838155=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], org.apache.poi.openxml4j.opc.PackagePart), partName/1897838155=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], org.apache.poi.openxml4j.opc.PackagePartName), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3753-to-var877=([org.apache.poi.openxml4j.opc.PackagePartName], java.lang.Object)}
; {var1499=org.apache.poi.openxml4j.opc.PackageRelationshipCollection, var2131=r1, var3672=$r0, var1650=java.util.TreeMap, var3669=$r2, var2436=$i0, var2034=$r3, var261=$r4, var2435=r39, var2537=org.apache.poi.openxml4j.opc.PackagePart, var2758=$r5, var2927=$r6, var715=$r7, var1868=$r8, var3568=r40, var2280=$r41, var3851=$r9, var2572=$r10, var1335=$r11, var621=r42, var3753=org.apache.poi.openxml4j.opc.PackagePartName, var2144=$r43, var2003=$r19, var3455=$r20, var563=$r22, var1626=$r21, var877=java.lang.Object, var1334=$r23, var2536=r44, var2828=$r15, var3450=$r16, var2562=$r17, var3041=$r18}
; {org.apache.poi.openxml4j.opc.PackageRelationshipCollection=var1499, r1=var2131, $r0=var3672, java.util.TreeMap=var1650, $r2=var3669, $i0=var2436, $r3=var2034, $r4=var261, r39=var2435, org.apache.poi.openxml4j.opc.PackagePart=var2537, $r5=var2758, $r6=var2927, $r7=var715, $r8=var1868, r40=var3568, $r41=var2280, $r9=var3851, $r10=var2572, $r11=var1335, r42=var621, org.apache.poi.openxml4j.opc.PackagePartName=var3753, $r43=var2144, $r19=var2003, $r20=var3455, $r22=var563, $r21=var1626, java.lang.Object=var877, $r23=var1334, r44=var2536, $r15=var2828, $r16=var3450, $r17=var2562, $r18=var3041}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID>;	$i0 = virtualinvoke $r2.<java.util.TreeMap: int size()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" relationship(s) = [");	r39 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePart relationshipPart>;	if $r5 == null goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r39);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("relationshipPart=null");	r40 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r41 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePart sourcePart>;	if $r41 == null goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r40);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",sourcePart=null");	r42 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r43 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePartName partName>;	if $r43 == null goto $r12 = new java.lang.StringBuilder;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r21 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21);	r44 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r15 = new java.lang.StringBuilder];	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 7