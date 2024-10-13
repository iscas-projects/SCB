(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var673 0)
(declare-sort var2908 0)
(declare-sort var853 0)
(declare-sort var2557 0)
(declare-sort var919 0)
(declare-sort var2053 0)
(declare-sort var3803 0)
(declare-sort var2691 0)
(declare-sort var416 0)
(declare-sort var3521 0)
(declare-sort var1652 0)
(declare-sort var1964 0)
(declare-sort var2198 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRelationId/-361134847 (var853 var853) String)
(declare-fun cast-from-var673-to-var853 (var673) var853)
(declare-fun cast-from-var2908-to-var853 (var2908) var853)
(declare-fun getCTTable/1970813040 (var2908) var2557)
(declare-fun var2557_getId/1023901464 (var2557) Int)
(declare-fun tables/-1100774885 (var673) var2053)
(declare-fun var2053_entrySet/-2135847386 (var2053) var3803)
(declare-fun var3803_iterator/1911472585 (var3803) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var919_getKey/-33423493 (var919) var2691)
(declare-fun cast-from-var2691-to-String (var2691) String)
(declare-fun getRelationById/953090088 (var853 String) var853)
(declare-fun removeRelation/767456483 (var853 var853 Bool) Bool)
(declare-fun var416_remove/-1201052315 (var416 var2691) var2691)
(declare-fun cast-from-var2053-to-var416 (var2053) var416)
(declare-fun var919_getValue/381491177 (var919) var2691)
(declare-fun cast-from-var2691-to-var2908 (var2691) var2908)
(declare-fun onTableDelete/-317481349 (var2908) void)
(declare-fun worksheet/-1100774885 (var673) var3521)
(declare-fun var3521_getTableParts/75695243 (var3521) var1652)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1652_sizeOfTablePartArray/3447112 (var1652) Int)
(declare-fun var1652_getTablePartArray/1225217111 (var1652 Int) var2198)
(declare-fun var2198_getId/466970204 (var2198) String)
(declare-const null-var673 var673)
(declare-const null-var2908 var2908)
(declare-const null-var919 var919)
(declare-const null-String String)
(declare-const var1108 var673) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var1108 null-var673)))
(declare-const var2386 var2908) ; Statement: r1 := @parameter0: org.apache.poi.xssf.usermodel.XSSFTable 
(assert (not (= var2386 null-var2908)))
(assert true)
(define-const var3704 String (getRelationId/-361134847 (cast-from-var673-to-var853 var1108) (cast-from-var2908-to-var853 var2386))) ; Statement: r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: java.lang.String getRelationId(org.apache.poi.ooxml.POIXMLDocumentPart)>(r1) 
(assert true)
(define-const var3109 var2557 (getCTTable/1970813040 var2386)) ; Statement: $r3 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable getCTTable()>() 
(define-const var3860 Int (var2557_getId/1023901464 var3109)) ; Statement: l0 = interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable: long getId()>() 
(define-const var3903 var919 null-var919) ; Statement: r20 = null 
(define-const var3222 var2053 (tables/-1100774885 var1108)) ; Statement: $r4 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.SortedMap tables> 
(define-const var2868 var3803 (var2053_entrySet/-2135847386 var3222)) ; Statement: $r5 = interfaceinvoke $r4.<java.util.SortedMap: java.util.Set entrySet()>() 
(define-const var3780 Iterator (var3803_iterator/1911472585 var2868)) ; Statement: r21 = interfaceinvoke $r5.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var707 Bool (Iterator_hasNext/-1669924200 var3780)) ; Statement: $z0 = interfaceinvoke r21.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var707 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r20 == null goto return 
(assert (not (= var3903 null-var919))) ; Negate: Cond: r20 == null  
(define-const var3135 var2691 (var919_getKey/-33423493 var3903)) ; Statement: $r6 = interfaceinvoke r20.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var2525 String (cast-from-var2691-to-String var3135)) ; Statement: $r7 = (java.lang.String) $r6 
(assert true)
(define-const var3185 var853 (getRelationById/953090088 (cast-from-var673-to-var853 var1108) var2525)) ; Statement: $r8 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ooxml.POIXMLDocumentPart getRelationById(java.lang.String)>($r7) 
(assert true)
;(assert (removeRelation/767456483 (cast-from-var673-to-var853 var1108) var3185 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: boolean removeRelation(org.apache.poi.ooxml.POIXMLDocumentPart,boolean)>($r8, 1) 

(declare-const var1108!1 var673)
(declare-const var3185!1 var853)
(declare-const var2585 Int)
(define-const var1201 var2053 (tables/-1100774885 var1108!1)) ; Statement: $r9 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.SortedMap tables> 
(define-const var1614 var2691 (var919_getKey/-33423493 var3903)) ; Statement: $r10 = interfaceinvoke r20.<java.util.Map$Entry: java.lang.Object getKey()>() 
;(assert (var416_remove/-1201052315 (cast-from-var2053-to-var416 var1201) var1614)) ; Statement: interfaceinvoke $r9.<java.util.SortedMap: java.lang.Object remove(java.lang.Object)>($r10) 

(declare-const var1201!1 var2053)
(declare-const var1614!1 var2691)
(define-const var3061 var2691 (var919_getValue/381491177 var3903)) ; Statement: $r11 = interfaceinvoke r20.<java.util.Map$Entry: java.lang.Object getValue()>() 
(define-const var770 var2908 (cast-from-var2691-to-var2908 var3061)) ; Statement: $r12 = (org.apache.poi.xssf.usermodel.XSSFTable) $r11 
(assert true)
;(assert (onTableDelete/-317481349 var770)) ; Statement: virtualinvoke $r12.<org.apache.poi.xssf.usermodel.XSSFTable: void onTableDelete()>() 

(declare-const var770!1 var2908)
(define-const var2761 var3521 (worksheet/-1100774885 var1108!1)) ; Statement: $r13 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var1022 var1652 (var3521_getTableParts/75695243 var2761)) ; Statement: r23 = interfaceinvoke $r13.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts getTableParts()>() 
(define-const var2751 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
(define-const var1501 Int var2751) ; Statement: i4 = $i7 
 ; Statement: if r2 == null goto $i9 = (int) -1 
(assert (not (= var3704 null-String))) ; Negate: Cond: r2 == null  
(define-const var579 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var152 Int (var1652_sizeOfTablePartArray/3447112 var1022)) ; Statement: $i1 = interfaceinvoke r23.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts: int sizeOfTablePartArray()>() 
 ; Statement: if i5 >= $i1 goto $i9 = (int) -1 
(assert (not (>= var579 var152))) ; Negate: Cond: i5 >= $i1  
(define-const var3221 var2198 (var1652_getTablePartArray/1225217111 var1022 var579)) ; Statement: $r14 = interfaceinvoke r23.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTablePart getTablePartArray(int)>(i5) 
(define-const var2290 String (var2198_getId/466970204 var3221)) ; Statement: $r15 = interfaceinvoke $r14.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTablePart: java.lang.String getId()>() 
(assert true)
(define-const var2743 Bool (= var3704 var2290)) ; Statement: $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r15) 
 ; Statement: if $z1 == 0 goto i5 = i5 + 1 
(assert (not (= (ite var2743 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1501!1 Int var579) ; Statement: i4 = i5 
 ; Statement: goto [?= $i9 = (int) -1] 
(assert true) ; Non Conditional
(define-const var1460 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i4 == $i9 goto return 
(assert (= var1501!1 var1460)) ; Cond: i4 == $i9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getRelationId/-361134847=([org.apache.poi.ooxml.POIXMLDocumentPart, org.apache.poi.ooxml.POIXMLDocumentPart], java.lang.String), cast-from-var673-to-var853=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ooxml.POIXMLDocumentPart), cast-from-var2908-to-var853=([org.apache.poi.xssf.usermodel.XSSFTable], org.apache.poi.ooxml.POIXMLDocumentPart), getCTTable/1970813040=([org.apache.poi.xssf.usermodel.XSSFTable], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable), var2557_getId/1023901464=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable], long), tables/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], java.util.SortedMap), var2053_entrySet/-2135847386=([java.util.SortedMap], java.util.Set), var3803_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var919_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var2691-to-String=([java.lang.Object], java.lang.String), getRelationById/953090088=([org.apache.poi.ooxml.POIXMLDocumentPart, java.lang.String], org.apache.poi.ooxml.POIXMLDocumentPart), removeRelation/767456483=([org.apache.poi.ooxml.POIXMLDocumentPart, org.apache.poi.ooxml.POIXMLDocumentPart, boolean], boolean), var416_remove/-1201052315=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var2053-to-var416=([java.util.SortedMap], java.util.Map), var919_getValue/381491177=([java.util.Map$Entry], java.lang.Object), cast-from-var2691-to-var2908=([java.lang.Object], org.apache.poi.xssf.usermodel.XSSFTable), onTableDelete/-317481349=([org.apache.poi.xssf.usermodel.XSSFTable], void), worksheet/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet), var3521_getTableParts/75695243=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts), cast-from-Int-to-Int=([int], int), var1652_sizeOfTablePartArray/3447112=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts], int), var1652_getTablePartArray/1225217111=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts, int], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTablePart), var2198_getId/466970204=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTablePart], java.lang.String)}
; {var673=org.apache.poi.xssf.usermodel.XSSFSheet, var1108=r0, var2908=org.apache.poi.xssf.usermodel.XSSFTable, var2386=r1, var853=org.apache.poi.ooxml.POIXMLDocumentPart, var3704=r2, var2557=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable, var3109=$r3, var3860=l0, var919=java.util.Map$Entry, var3903=r20, var2053=java.util.SortedMap, var3222=$r4, var3803=java.util.Set, var2868=$r5, var3780=r21, var707=$z0, var2691=java.lang.Object, var3135=$r6, var2525=$r7, var3185=$r8, var2585=1, var1201=$r9, var1614=$r10, var416=java.util.Map, var3061=$r11, var770=$r12, var3521=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet, var2761=$r13, var1652=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts, var1022=r23, var2751=$i7, var1501=i4, var1964=null_type, var579=i5, var152=$i1, var2198=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTablePart, var3221=$r14, var2290=$r15, var2743=$z1, var1460=$i9}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var673, r0=var1108, org.apache.poi.xssf.usermodel.XSSFTable=var2908, r1=var2386, org.apache.poi.ooxml.POIXMLDocumentPart=var853, r2=var3704, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable=var2557, $r3=var3109, l0=var3860, java.util.Map$Entry=var919, r20=var3903, java.util.SortedMap=var2053, $r4=var3222, java.util.Set=var3803, $r5=var2868, r21=var3780, $z0=var707, java.lang.Object=var2691, $r6=var3135, $r7=var2525, $r8=var3185, 1=var2585, $r9=var1201, $r10=var1614, java.util.Map=var416, $r11=var3061, $r12=var770, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet=var3521, $r13=var2761, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts=var1652, r23=var1022, $i7=var2751, i4=var1501, null_type=var1964, i5=var579, $i1=var152, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTablePart=var2198, $r14=var3221, $r15=var2290, $z1=var2743, $i9=var1460}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r1 := @parameter0: org.apache.poi.xssf.usermodel.XSSFTable;	r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: java.lang.String getRelationId(org.apache.poi.ooxml.POIXMLDocumentPart)>(r1);	$r3 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable getCTTable()>();	l0 = interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable: long getId()>();	r20 = null;	$r4 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.SortedMap tables>;	$r5 = interfaceinvoke $r4.<java.util.SortedMap: java.util.Set entrySet()>();	r21 = interfaceinvoke $r5.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r21.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	if r20 == null goto return;	$r6 = interfaceinvoke r20.<java.util.Map$Entry: java.lang.Object getKey()>();	$r7 = (java.lang.String) $r6;	$r8 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ooxml.POIXMLDocumentPart getRelationById(java.lang.String)>($r7);	virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: boolean removeRelation(org.apache.poi.ooxml.POIXMLDocumentPart,boolean)>($r8, 1);	$r9 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.SortedMap tables>;	$r10 = interfaceinvoke r20.<java.util.Map$Entry: java.lang.Object getKey()>();	interfaceinvoke $r9.<java.util.SortedMap: java.lang.Object remove(java.lang.Object)>($r10);	$r11 = interfaceinvoke r20.<java.util.Map$Entry: java.lang.Object getValue()>();	$r12 = (org.apache.poi.xssf.usermodel.XSSFTable) $r11;	virtualinvoke $r12.<org.apache.poi.xssf.usermodel.XSSFTable: void onTableDelete()>();	$r13 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	r23 = interfaceinvoke $r13.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts getTableParts()>();	$i7 = (int) -1;	i4 = $i7;	if r2 == null goto $i9 = (int) -1;	i5 = 0;	$i1 = interfaceinvoke r23.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts: int sizeOfTablePartArray()>();	if i5 >= $i1 goto $i9 = (int) -1;	$r14 = interfaceinvoke r23.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableParts: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTablePart getTablePartArray(int)>(i5);	$r15 = interfaceinvoke $r14.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTablePart: java.lang.String getId()>();	$z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r15);	if $z1 == 0 goto i5 = i5 + 1;	i4 = i5;	goto [?= $i9 = (int) -1];	$i9 = (int) -1;	if i4 == $i9 goto return;	return
;block_num 10