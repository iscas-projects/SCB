(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var956 0)
(declare-sort var2488 0)
(declare-sort var2930 0)
(declare-sort var61 0)
(declare-sort var1397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun workbookPart/-11982059 (var956) var2930)
(declare-fun getRelationship/8342813 (var2930 String) var61)
(declare-fun var1397-init () var1397)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1397 String) void)
(declare-const null-var956 var956)
(declare-const null-String String)
(declare-const null-var61 var61)
(declare-const var1046 var956) ; Statement: r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFReader 
(assert (not (= var1046 null-var956)))
(declare-const var2205 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2205 null-String)))
(define-const var2915 var2930 (workbookPart/-11982059 var1046)) ; Statement: $r2 = r0.<org.apache.poi.xssf.eventusermodel.XSSFReader: org.apache.poi.openxml4j.opc.PackagePart workbookPart> 
(assert true)
(define-const var640 var61 (getRelationship/8342813 var2915 var2205)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackageRelationship getRelationship(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto $r4 = virtualinvoke r3.<org.apache.poi.openxml4j.opc.PackageRelationship: java.net.URI getTargetURI()>() 
(assert (not (not (= var640 null-var61)))) ; Negate: Cond: r3 != null  
(define-const var2805 var1397 var1397-init) ; Statement: $r14 = new java.lang.IllegalArgumentException 
(define-const var591 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var591)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var591!1 String)
(assert (= var591!1 ""))
(assert true)
(define-const var2312 String (append/672562846 var591!1 "No Sheet found with r:id ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Sheet found with r:id ") 
(declare-const var591!2 String)
(assert (= var591!2 (str.++ var591!1 "No Sheet found with r:id ")))
(assert true)
(define-const var2379 String (append/672562846 var2312 var2205)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2312!1 String)
(assert (= var2312!1 (str.++ var2312 var2205)))
(assert true)
(define-const var1731 String (toString/-2075883882 var2379)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2805 var1731)) ; Statement: specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r18) 

(declare-const var2805!1 var1397)
(declare-const var1731!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {workbookPart/-11982059=([org.apache.poi.xssf.eventusermodel.XSSFReader], org.apache.poi.openxml4j.opc.PackagePart), getRelationship/8342813=([org.apache.poi.openxml4j.opc.PackagePart, java.lang.String], org.apache.poi.openxml4j.opc.PackageRelationship), var1397-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var956=org.apache.poi.xssf.eventusermodel.XSSFReader, var1046=r0, var2205=r1, var2488=null_type, var2930=org.apache.poi.openxml4j.opc.PackagePart, var2915=$r2, var61=org.apache.poi.openxml4j.opc.PackageRelationship, var640=r3, var1397=java.lang.IllegalArgumentException, var2805=$r14, var591=$r15, var2312=$r16, var2379=$r17, var1731=$r18}
; {org.apache.poi.xssf.eventusermodel.XSSFReader=var956, r0=var1046, r1=var2205, null_type=var2488, org.apache.poi.openxml4j.opc.PackagePart=var2930, $r2=var2915, org.apache.poi.openxml4j.opc.PackageRelationship=var61, r3=var640, java.lang.IllegalArgumentException=var1397, $r14=var2805, $r15=var591, $r16=var2312, $r17=var2379, $r18=var1731}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.eventusermodel.XSSFReader;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.poi.xssf.eventusermodel.XSSFReader: org.apache.poi.openxml4j.opc.PackagePart workbookPart>;	r3 = virtualinvoke $r2.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackageRelationship getRelationship(java.lang.String)>(r1);	if r3 != null goto $r4 = virtualinvoke r3.<org.apache.poi.openxml4j.opc.PackageRelationship: java.net.URI getTargetURI()>();	$r14 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Sheet found with r:id ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r18);	throw $r14
;block_num 2