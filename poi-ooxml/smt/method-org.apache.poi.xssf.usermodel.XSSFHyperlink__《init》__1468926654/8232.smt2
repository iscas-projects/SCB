(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1654 0)
(declare-sort var3514 0)
(declare-sort var2853 0)
(declare-sort var2845 0)
(declare-sort var1947 0)
(declare-sort var3891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2845) void)
(declare-fun cast-from-var1654-to-var2845 (var1654) var2845)
(declare-fun _ctHyperlink/-884130014 (var1654) var3514)
(declare-fun _externalRel/-884130014 (var1654) var2853)
(declare-fun var3514_getLocation/-29385955 (var3514) String)
(declare-fun var3514_getId/1354563511 (var3514) String)
(declare-fun var3891-init () var3891)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3514_getRef/-697772747 (var3514) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3891 String) void)
(declare-const null-var1654 var1654)
(declare-const null-var3514 var3514)
(declare-const null-var2853 var2853)
(declare-const null-String String)
(declare-const var2715 var1654) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFHyperlink 
(assert (not (= var2715 null-var1654)))
(declare-const var845 var3514) ; Statement: r1 := @parameter0: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink 
(assert (not (= var845 null-var3514)))
(declare-const var2620 var2853) ; Statement: r2 := @parameter1: org.apache.poi.openxml4j.opc.PackageRelationship 
(assert (not (= var2620 null-var2853)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1654-to-var2845 var2715))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2715!1 var1654)
(declare-const var2715!2 var1654)
(assert (not (= var2715!2 null-var1654)))
(assert (= (_ctHyperlink/-884130014 var2715!2) var845)) ; Statement: r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink _ctHyperlink> = r1 
(declare-const var2715!3 var1654)
(assert (not (= var2715!3 null-var1654)))
(assert (= (_externalRel/-884130014 var2715!3) var2620)) ; Statement: r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: org.apache.poi.openxml4j.opc.PackageRelationship _externalRel> = r2 
(define-const var2823 var2853 (_externalRel/-884130014 var2715!3)) ; Statement: $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: org.apache.poi.openxml4j.opc.PackageRelationship _externalRel> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: org.apache.poi.openxml4j.opc.PackageRelationship _externalRel> 
(assert (not (not (= var2823 null-var2853)))) ; Negate: Cond: $r3 != null  
(define-const var2864 String (var3514_getLocation/-29385955 var845)) ; Statement: $r21 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink: java.lang.String getLocation()>() 
 ; Statement: if $r21 == null goto $r22 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink: java.lang.String getId()>() 
(assert (= var2864 null-String)) ; Cond: $r21 == null 
(define-const var239 String (var3514_getId/1354563511 var845)) ; Statement: $r22 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink: java.lang.String getId()>() 
 ; Statement: if $r22 == null goto $r23 = <org.apache.poi.common.usermodel.HyperlinkType: org.apache.poi.common.usermodel.HyperlinkType DOCUMENT> 
(assert (not (= var239 null-String))) ; Negate: Cond: $r22 == null  
(define-const var2154 var3891 var3891-init) ; Statement: $r24 = new java.lang.IllegalStateException 
(define-const var3701 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3701)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3701!1 String)
(assert (= var3701!1 ""))
(assert true)
(define-const var2290 String (append/672562846 var3701!1 "The hyperlink for cell ")) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The hyperlink for cell ") 
(declare-const var3701!2 String)
(assert (= var3701!2 (str.++ var3701!1 "The hyperlink for cell ")))
(define-const var2347 String (var3514_getRef/-697772747 var845)) ; Statement: $r26 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink: java.lang.String getRef()>() 
(assert true)
(define-const var544 String (append/672562846 var2290 var2347)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2290!1 String)
(assert (= var2290!1 (str.++ var2290 var2347)))
(assert true)
(define-const var160 String (append/672562846 var544 " references relation ")) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" references relation ") 
(declare-const var544!1 String)
(assert (= var544!1 (str.++ var544 " references relation ")))
(define-const var2714 String (var3514_getId/1354563511 var845)) ; Statement: $r29 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink: java.lang.String getId()>() 
(assert true)
(define-const var853 String (append/672562846 var160 var2714)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var160!1 String)
(assert (= var160!1 (str.++ var160 var2714)))
(assert true)
(define-const var3559 String (append/672562846 var853 ", but that didn\u0027t exist!")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but that didn\'t exist!") 
(declare-const var853!1 String)
(assert (= var853!1 (str.++ var853 ", but that didn\u0027t exist!")))
(assert true)
(define-const var2043 String (toString/-2075883882 var3559)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2154 var2043)) ; Statement: specialinvoke $r24.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r33) 

(declare-const var2154!1 var3891)
(declare-const var2043!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1654-to-var2845=([org.apache.poi.xssf.usermodel.XSSFHyperlink], java.lang.Object), _ctHyperlink/-884130014=([org.apache.poi.xssf.usermodel.XSSFHyperlink], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink), _externalRel/-884130014=([org.apache.poi.xssf.usermodel.XSSFHyperlink], org.apache.poi.openxml4j.opc.PackageRelationship), var3514_getLocation/-29385955=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink], java.lang.String), var3514_getId/1354563511=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink], java.lang.String), var3891-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3514_getRef/-697772747=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1654=org.apache.poi.xssf.usermodel.XSSFHyperlink, var2715=r0, var3514=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink, var845=r1, var2853=org.apache.poi.openxml4j.opc.PackageRelationship, var2620=r2, var2845=java.lang.Object, var2823=$r3, var2864=$r21, var1947=null_type, var239=$r22, var3891=java.lang.IllegalStateException, var2154=$r24, var3701=$r25, var2290=$r27, var2347=$r26, var544=$r28, var160=$r30, var2714=$r29, var853=$r31, var3559=$r32, var2043=$r33}
; {org.apache.poi.xssf.usermodel.XSSFHyperlink=var1654, r0=var2715, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink=var3514, r1=var845, org.apache.poi.openxml4j.opc.PackageRelationship=var2853, r2=var2620, java.lang.Object=var2845, $r3=var2823, $r21=var2864, null_type=var1947, $r22=var239, java.lang.IllegalStateException=var3891, $r24=var2154, $r25=var3701, $r27=var2290, $r26=var2347, $r28=var544, $r30=var160, $r29=var2714, $r31=var853, $r32=var3559, $r33=var2043}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFHyperlink;	r1 := @parameter0: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink;	r2 := @parameter1: org.apache.poi.openxml4j.opc.PackageRelationship;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink _ctHyperlink> = r1;	r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: org.apache.poi.openxml4j.opc.PackageRelationship _externalRel> = r2;	$r3 = r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: org.apache.poi.openxml4j.opc.PackageRelationship _externalRel>;	if $r3 != null goto $r4 = r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: org.apache.poi.openxml4j.opc.PackageRelationship _externalRel>;	$r21 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink: java.lang.String getLocation()>();	if $r21 == null goto $r22 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink: java.lang.String getId()>();	$r22 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink: java.lang.String getId()>();	if $r22 == null goto $r23 = <org.apache.poi.common.usermodel.HyperlinkType: org.apache.poi.common.usermodel.HyperlinkType DOCUMENT>;	$r24 = new java.lang.IllegalStateException;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The hyperlink for cell ");	$r26 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink: java.lang.String getRef()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" references relation ");	$r29 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHyperlink: java.lang.String getId()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but that didn\'t exist!");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r33);	throw $r24
;block_num 4