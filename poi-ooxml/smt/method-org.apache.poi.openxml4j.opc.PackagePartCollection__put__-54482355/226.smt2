(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1620 0)
(declare-sort var40 0)
(declare-sort var3849 0)
(declare-sort var441 0)
(declare-sort var3839 0)
(declare-sort var2818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/32427362 (var40) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun registerPartNameStr/507517766 (var1620) var441)
(declare-fun var441_add/-1142548109 (var441 var3839) Bool)
(declare-fun cast-from-String-to-var3839 (String) var3839)
(declare-fun packagePartLookup/507517766 (var1620) var2818)
(declare-fun put/-1214003037 (var2818 var3839 var3839) var3839)
(declare-fun cast-from-var3849-to-var3839 (var3849) var3839)
(declare-fun cast-from-var3839-to-var3849 (var3839) var3849)
(declare-const null-var1620 var1620)
(declare-const null-var40 var40)
(declare-const null-var3849 var3849)
(declare-const var3369 var1620) ; Statement: r4 := @this: org.apache.poi.openxml4j.opc.PackagePartCollection 
(assert (not (= var3369 null-var1620)))
(declare-const var2332 var40) ; Statement: r0 := @parameter0: org.apache.poi.openxml4j.opc.PackagePartName 
(assert (not (= var2332 null-var40)))
(declare-const var1362 var3849) ; Statement: r6 := @parameter1: org.apache.poi.openxml4j.opc.PackagePart 
(assert (not (= var1362 null-var3849)))
(assert true)
(define-const var2773 String (getName/32427362 var2332)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>() 
(define-const var1705 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1705)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1705!1 String)
(assert (= var1705!1 ""))
(assert true)
(define-const var3268 (Array Int String) (split/-636890950 var2773 "(?=[/])")) ; Statement: r3 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("(?=[/])") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var2773 "(?=[/])") i) (re.++ (re.* re.all) (re.++ (str.to_re "?=") (str.to_re "/")) (re.* re.all))))))
(define-const var267 Int (getLength-Arr-String-1 var3268)) ; Statement: i0 = lengthof r3 
(define-const var3853 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r5 = r4.<org.apache.poi.openxml4j.opc.PackagePartCollection: java.util.Set registerPartNameStr> 
(assert (>= var3853 var267)) ; Cond: i1 >= i0 
(define-const var806 var441 (registerPartNameStr/507517766 var3369)) ; Statement: $r5 = r4.<org.apache.poi.openxml4j.opc.PackagePartCollection: java.util.Set registerPartNameStr> 
;(assert (var441_add/-1142548109 var806 (cast-from-String-to-var3839 var2773))) ; Statement: interfaceinvoke $r5.<java.util.Set: boolean add(java.lang.Object)>(r1) 

(declare-const var806!1 var441)
(declare-const var2773!1 String)
(define-const var3295 var2818 (packagePartLookup/507517766 var3369)) ; Statement: $r7 = r4.<org.apache.poi.openxml4j.opc.PackagePartCollection: java.util.TreeMap packagePartLookup> 
(assert true)
(define-const var3373 var3839 (put/-1214003037 var3295 (cast-from-String-to-var3839 var2773!1) (cast-from-var3849-to-var3839 var1362))) ; Statement: $r8 = virtualinvoke $r7.<java.util.TreeMap: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r6) 
(define-const var3370 var3849 (cast-from-var3839-to-var3849 var3373)) ; Statement: $r9 = (org.apache.poi.openxml4j.opc.PackagePart) $r8 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/32427362=([org.apache.poi.openxml4j.opc.PackagePartName], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), registerPartNameStr/507517766=([org.apache.poi.openxml4j.opc.PackagePartCollection], java.util.Set), var441_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var3839=([java.lang.String], java.lang.Object), packagePartLookup/507517766=([org.apache.poi.openxml4j.opc.PackagePartCollection], java.util.TreeMap), put/-1214003037=([java.util.TreeMap, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3849-to-var3839=([org.apache.poi.openxml4j.opc.PackagePart], java.lang.Object), cast-from-var3839-to-var3849=([java.lang.Object], org.apache.poi.openxml4j.opc.PackagePart)}
; {var1620=org.apache.poi.openxml4j.opc.PackagePartCollection, var3369=r4, var40=org.apache.poi.openxml4j.opc.PackagePartName, var2332=r0, var3849=org.apache.poi.openxml4j.opc.PackagePart, var1362=r6, var2773=r1, var1705=$r2, var3268=r3, var267=i0, var3853=i1, var441=java.util.Set, var806=$r5, var3839=java.lang.Object, var2818=java.util.TreeMap, var3295=$r7, var3373=$r8, var3370=$r9}
; {org.apache.poi.openxml4j.opc.PackagePartCollection=var1620, r4=var3369, org.apache.poi.openxml4j.opc.PackagePartName=var40, r0=var2332, org.apache.poi.openxml4j.opc.PackagePart=var3849, r6=var1362, r1=var2773, $r2=var1705, r3=var3268, i0=var267, i1=var3853, java.util.Set=var441, $r5=var806, java.lang.Object=var3839, java.util.TreeMap=var2818, $r7=var3295, $r8=var3373, $r9=var3370}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r4 := @this: org.apache.poi.openxml4j.opc.PackagePartCollection;	r0 := @parameter0: org.apache.poi.openxml4j.opc.PackagePartName;	r6 := @parameter1: org.apache.poi.openxml4j.opc.PackagePart;	r1 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r3 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("(?=[/])");	i0 = lengthof r3;	i1 = 0;	if i1 >= i0 goto $r5 = r4.<org.apache.poi.openxml4j.opc.PackagePartCollection: java.util.Set registerPartNameStr>;	$r5 = r4.<org.apache.poi.openxml4j.opc.PackagePartCollection: java.util.Set registerPartNameStr>;	interfaceinvoke $r5.<java.util.Set: boolean add(java.lang.Object)>(r1);	$r7 = r4.<org.apache.poi.openxml4j.opc.PackagePartCollection: java.util.TreeMap packagePartLookup>;	$r8 = virtualinvoke $r7.<java.util.TreeMap: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r6);	$r9 = (org.apache.poi.openxml4j.opc.PackagePart) $r8;	return $r9
;block_num 3