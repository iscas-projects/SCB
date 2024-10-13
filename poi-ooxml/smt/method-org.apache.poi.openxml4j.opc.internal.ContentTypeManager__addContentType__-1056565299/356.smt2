(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1724 0)
(declare-sort var1528 0)
(declare-sort var1360 0)
(declare-sort var3878 0)
(declare-sort var2104 0)
(declare-sort var3013 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultContentType/-2044524774 (var1724) var3878)
(declare-fun containsValue/-232113570 (var3878 var2104) Bool)
(declare-fun cast-from-String-to-var2104 (String) var2104)
(declare-fun getExtension/1185033294 (var1528) String)
(declare-fun toLowerCase/1946809429 (String var3013) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun addOverrideContentType/-1492300447 (var1724 var1528 String) void)
(declare-const null-var1724 var1724)
(declare-const null-var1528 var1528)
(declare-const null-String String)
(declare-const var3013-ROOT var3013)
(declare-const var905 var1724) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.internal.ContentTypeManager 
(assert (not (= var905 null-var1724)))
(declare-const var1728 var1528) ; Statement: r3 := @parameter0: org.apache.poi.openxml4j.opc.PackagePartName 
(assert (not (= var1728 null-var1528)))
(declare-const var3232 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3232 null-String)))
(define-const var2290 var3878 (defaultContentType/-2044524774 var905)) ; Statement: $r2 = r0.<org.apache.poi.openxml4j.opc.internal.ContentTypeManager: java.util.TreeMap defaultContentType> 
(assert true)
(define-const var539 Bool (containsValue/-232113570 var2290 (cast-from-String-to-var2104 var3232))) ; Statement: z0 = virtualinvoke $r2.<java.util.TreeMap: boolean containsValue(java.lang.Object)>(r1) 
(assert true)
(define-const var1785 String (getExtension/1185033294 var1728)) ; Statement: $r5 = virtualinvoke r3.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getExtension()>() 
(define-const var558 var3013 var3013-ROOT) ; Statement: $r4 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1328 String (toLowerCase/1946809429 var1785 var558)) ; Statement: r6 = virtualinvoke $r5.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r4) 
(assert true)
(define-const var3485 Int (length/-134980193 var1328)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto specialinvoke r0.<org.apache.poi.openxml4j.opc.internal.ContentTypeManager: void addOverrideContentType(org.apache.poi.openxml4j.opc.PackagePartName,java.lang.String)>(r3, r1) 
(assert (= var3485 0)) ; Cond: $i0 == 0 
(assert true)
;(assert (addOverrideContentType/-1492300447 var905 var1728 var3232)) ; Statement: specialinvoke r0.<org.apache.poi.openxml4j.opc.internal.ContentTypeManager: void addOverrideContentType(org.apache.poi.openxml4j.opc.PackagePartName,java.lang.String)>(r3, r1) 

(declare-const var905!1 var1724)
(declare-const var1728!1 var1528)
(declare-const var3232!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultContentType/-2044524774=([org.apache.poi.openxml4j.opc.internal.ContentTypeManager], java.util.TreeMap), containsValue/-232113570=([java.util.TreeMap, java.lang.Object], boolean), cast-from-String-to-var2104=([java.lang.String], java.lang.Object), getExtension/1185033294=([org.apache.poi.openxml4j.opc.PackagePartName], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), length/-134980193=([java.lang.String], int), addOverrideContentType/-1492300447=([org.apache.poi.openxml4j.opc.internal.ContentTypeManager, org.apache.poi.openxml4j.opc.PackagePartName, java.lang.String], void)}
; {var1724=org.apache.poi.openxml4j.opc.internal.ContentTypeManager, var905=r0, var1528=org.apache.poi.openxml4j.opc.PackagePartName, var1728=r3, var3232=r1, var1360=null_type, var3878=java.util.TreeMap, var2290=$r2, var2104=java.lang.Object, var539=z0, var1785=$r5, var3013=java.util.Locale, var558=$r4, var1328=r6, var3485=$i0}
; {org.apache.poi.openxml4j.opc.internal.ContentTypeManager=var1724, r0=var905, org.apache.poi.openxml4j.opc.PackagePartName=var1528, r3=var1728, r1=var3232, null_type=var1360, java.util.TreeMap=var3878, $r2=var2290, java.lang.Object=var2104, z0=var539, $r5=var1785, java.util.Locale=var3013, $r4=var558, r6=var1328, $i0=var3485}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.internal.ContentTypeManager;	r3 := @parameter0: org.apache.poi.openxml4j.opc.PackagePartName;	r1 := @parameter1: java.lang.String;	$r2 = r0.<org.apache.poi.openxml4j.opc.internal.ContentTypeManager: java.util.TreeMap defaultContentType>;	z0 = virtualinvoke $r2.<java.util.TreeMap: boolean containsValue(java.lang.Object)>(r1);	$r5 = virtualinvoke r3.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getExtension()>();	$r4 = <java.util.Locale: java.util.Locale ROOT>;	r6 = virtualinvoke $r5.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r4);	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	if $i0 == 0 goto specialinvoke r0.<org.apache.poi.openxml4j.opc.internal.ContentTypeManager: void addOverrideContentType(org.apache.poi.openxml4j.opc.PackagePartName,java.lang.String)>(r3, r1);	specialinvoke r0.<org.apache.poi.openxml4j.opc.internal.ContentTypeManager: void addOverrideContentType(org.apache.poi.openxml4j.opc.PackagePartName,java.lang.String)>(r3, r1);	goto [?= return];	return
;block_num 3