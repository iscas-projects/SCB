(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3008 0)
(declare-sort var1632 0)
(declare-sort var2189 0)
(declare-sort var555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun relationshipsByID/1897838155 (var3008) var1632)
(declare-fun size/1324805763 (var1632) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun relationshipPart/1897838155 (var3008) var2189)
(declare-fun sourcePart/1897838155 (var3008) var2189)
(declare-fun partName/1897838155 (var3008) var555)
(declare-const null-var3008 var3008)
(declare-const null-var2189 var2189)
(declare-const null-var555 var555)
(declare-const var3948 var3008) ; Statement: r1 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection 
(assert (not (= var3948 null-var3008)))
(define-const var3578 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3578)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3578!1 String)
(assert (= var3578!1 ""))
(define-const var3624 var1632 (relationshipsByID/1897838155 var3948)) ; Statement: $r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID> 
(assert true)
(define-const var3143 Int (size/1324805763 var3624)) ; Statement: $i0 = virtualinvoke $r2.<java.util.TreeMap: int size()>() 
(assert true)
(define-const var1741 String (append/-1001720160 var3578!1 var3143)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3578!2 String)
(assert (str.prefixof var3578!1 var3578!2))
(assert true)
(define-const var851 String (append/672562846 var1741 " relationship(s) = [")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" relationship(s) = [") 
(declare-const var1741!1 String)
(assert (= var1741!1 (str.++ var1741 " relationship(s) = [")))
(assert true)
(define-const var1706 String (toString/-2075883882 var851)) ; Statement: r39 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2766 var2189 (relationshipPart/1897838155 var3948)) ; Statement: $r5 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePart relationshipPart> 
 ; Statement: if $r5 == null goto $r6 = new java.lang.StringBuilder 
(assert (= var2766 null-var2189)) ; Cond: $r5 == null 
(define-const var1343 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1343)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1343!1 String)
(assert (= var1343!1 ""))
(assert true)
(define-const var2962 String (append/672562846 var1343!1 var1706)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r39) 
(declare-const var1343!2 String)
(assert (= var1343!2 (str.++ var1343!1 var1706)))
(assert true)
(define-const var2159 String (append/672562846 var2962 "relationshipPart=null")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("relationshipPart=null") 
(declare-const var2962!1 String)
(assert (= var2962!1 (str.++ var2962 "relationshipPart=null")))
(assert true)
(define-const var1767 String (toString/-2075883882 var2159)) ; Statement: r40 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2777 var2189 (sourcePart/1897838155 var3948)) ; Statement: $r41 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePart sourcePart> 
 ; Statement: if $r41 == null goto $r9 = new java.lang.StringBuilder 
(assert (= var2777 null-var2189)) ; Cond: $r41 == null 
(define-const var2200 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2200)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2200!1 String)
(assert (= var2200!1 ""))
(assert true)
(define-const var3429 String (append/672562846 var2200!1 var1767)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r40) 
(declare-const var2200!2 String)
(assert (= var2200!2 (str.++ var2200!1 var1767)))
(assert true)
(define-const var795 String (append/672562846 var3429 ",sourcePart=null")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",sourcePart=null") 
(declare-const var3429!1 String)
(assert (= var3429!1 (str.++ var3429 ",sourcePart=null")))
(assert true)
(define-const var665 String (toString/-2075883882 var795)) ; Statement: r42 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2622 var555 (partName/1897838155 var3948)) ; Statement: $r43 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePartName partName> 
 ; Statement: if $r43 == null goto $r12 = new java.lang.StringBuilder 
(assert (= var2622 null-var555)) ; Cond: $r43 == null 
(define-const var2204 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2204)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2204!1 String)
(assert (= var2204!1 ""))
(assert true)
(define-const var575 String (append/672562846 var2204!1 var665)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var2204!2 String)
(assert (= var2204!2 (str.++ var2204!1 var665)))
(assert true)
(define-const var1960 String (append/672562846 var575 ",uri=null)")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",uri=null)") 
(declare-const var575!1 String)
(assert (= var575!1 (str.++ var575 ",uri=null)")))
(assert true)
(define-const var636 String (toString/-2075883882 var1960)) ; Statement: r44 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1713 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1713)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1713!1 String)
(assert (= var1713!1 ""))
(assert true)
(define-const var2029 String (append/672562846 var1713!1 var636)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44) 
(declare-const var1713!2 String)
(assert (= var1713!2 (str.++ var1713!1 var636)))
(assert true)
(define-const var2290 String (append/672562846 var2029 "]")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2029!1 String)
(assert (= var2029!1 (str.++ var2029 "]")))
(assert true)
(define-const var3699 String (toString/-2075883882 var2290)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), relationshipsByID/1897838155=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], java.util.TreeMap), size/1324805763=([java.util.TreeMap], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), relationshipPart/1897838155=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], org.apache.poi.openxml4j.opc.PackagePart), sourcePart/1897838155=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], org.apache.poi.openxml4j.opc.PackagePart), partName/1897838155=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], org.apache.poi.openxml4j.opc.PackagePartName)}
; {var3008=org.apache.poi.openxml4j.opc.PackageRelationshipCollection, var3948=r1, var3578=$r0, var1632=java.util.TreeMap, var3624=$r2, var3143=$i0, var1741=$r3, var851=$r4, var1706=r39, var2189=org.apache.poi.openxml4j.opc.PackagePart, var2766=$r5, var1343=$r6, var2962=$r7, var2159=$r8, var1767=r40, var2777=$r41, var2200=$r9, var3429=$r10, var795=$r11, var665=r42, var555=org.apache.poi.openxml4j.opc.PackagePartName, var2622=$r43, var2204=$r12, var575=$r13, var1960=$r14, var636=r44, var1713=$r15, var2029=$r16, var2290=$r17, var3699=$r18}
; {org.apache.poi.openxml4j.opc.PackageRelationshipCollection=var3008, r1=var3948, $r0=var3578, java.util.TreeMap=var1632, $r2=var3624, $i0=var3143, $r3=var1741, $r4=var851, r39=var1706, org.apache.poi.openxml4j.opc.PackagePart=var2189, $r5=var2766, $r6=var1343, $r7=var2962, $r8=var2159, r40=var1767, $r41=var2777, $r9=var2200, $r10=var3429, $r11=var795, r42=var665, org.apache.poi.openxml4j.opc.PackagePartName=var555, $r43=var2622, $r12=var2204, $r13=var575, $r14=var1960, r44=var636, $r15=var1713, $r16=var2029, $r17=var2290, $r18=var3699}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 5}
;stmts r1 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: java.util.TreeMap relationshipsByID>;	$i0 = virtualinvoke $r2.<java.util.TreeMap: int size()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" relationship(s) = [");	r39 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePart relationshipPart>;	if $r5 == null goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r39);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("relationshipPart=null");	r40 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r41 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePart sourcePart>;	if $r41 == null goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r40);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",sourcePart=null");	r42 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r43 = r1.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePartName partName>;	if $r43 == null goto $r12 = new java.lang.StringBuilder;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",uri=null)");	r44 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r44);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 7