(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var8 0)
(declare-sort var2957 0)
(declare-sort var92 0)
(declare-sort var1431 0)
(declare-sort var374 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun map/-1865755670 (var8) var92)
(declare-fun getSchema/-1667999803 (var92) var1431)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var374_min/-1112089438 (Int Int) Int)
(declare-const null-var8 var8)
(declare-const null-String String)
(declare-const var1452 var8) ; Statement: r0 := @this: org.apache.poi.xssf.extractor.XSSFExportToXml 
(assert (not (= var1452 null-var8)))
(declare-const var1885 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1885 null-String)))
(declare-const var3392 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3392 null-String)))
(define-const var2982 var92 (map/-1865755670 var1452)) ; Statement: $r1 = r0.<org.apache.poi.xssf.extractor.XSSFExportToXml: org.apache.poi.xssf.usermodel.XSSFMap map> 
(assert true)
(define-const var1144 var1431 (getSchema/-1667999803 var2982)) ; Statement: r2 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFMap: org.w3c.dom.Node getSchema()>() 
(assert true)
(define-const var1111 (Array Int String) (split/-636890950 var1885 "/")) ; Statement: r4 = virtualinvoke r3.<java.lang.String: java.lang.String[] split(java.lang.String)>("/") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1885 "/") i) (re.++ (re.* re.all) (str.to_re "/") (re.* re.all))))))
(assert true)
(define-const var2036 (Array Int String) (split/-636890950 var3392 "/")) ; Statement: r6 = virtualinvoke r5.<java.lang.String: java.lang.String[] split(java.lang.String)>("/") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3392 "/") i) (re.++ (re.* re.all) (str.to_re "/") (re.* re.all))))))
(define-const var3752 String "") ; Statement: r13 = "" 
(define-const var576 Int (getLength-Arr-String-1 var1111)) ; Statement: $i1 = lengthof r4 
(define-const var2445 Int (getLength-Arr-String-1 var2036)) ; Statement: $i0 = lengthof r6 
(define-const var2404 Int (var374_min/-1112089438 var576 var2445)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(define-const var2337 var1431 var1144) ; Statement: r14 = r2 
(define-const var3044 Int 1) ; Statement: i4 = 1 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i2 goto return 0 
(assert (>= var3044 var2404)) ; Cond: i4 >= i2 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {map/-1865755670=([org.apache.poi.xssf.extractor.XSSFExportToXml], org.apache.poi.xssf.usermodel.XSSFMap), getSchema/-1667999803=([org.apache.poi.xssf.usermodel.XSSFMap], org.w3c.dom.Node), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var374_min/-1112089438=([int, int], int)}
; {var8=org.apache.poi.xssf.extractor.XSSFExportToXml, var1452=r0, var1885=r3, var2957=null_type, var3392=r5, var92=org.apache.poi.xssf.usermodel.XSSFMap, var2982=$r1, var1431=org.w3c.dom.Node, var1144=r2, var1111=r4, var2036=r6, var3752=r13, var576=$i1, var2445=$i0, var374=java.lang.Math, var2404=i2, var2337=r14, var3044=i4}
; {org.apache.poi.xssf.extractor.XSSFExportToXml=var8, r0=var1452, r3=var1885, null_type=var2957, r5=var3392, org.apache.poi.xssf.usermodel.XSSFMap=var92, $r1=var2982, org.w3c.dom.Node=var1431, r2=var1144, r4=var1111, r6=var2036, r13=var3752, $i1=var576, $i0=var2445, java.lang.Math=var374, i2=var2404, r14=var2337, i4=var3044}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 2}
;stmts r0 := @this: org.apache.poi.xssf.extractor.XSSFExportToXml;	r3 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r1 = r0.<org.apache.poi.xssf.extractor.XSSFExportToXml: org.apache.poi.xssf.usermodel.XSSFMap map>;	r2 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFMap: org.w3c.dom.Node getSchema()>();	r4 = virtualinvoke r3.<java.lang.String: java.lang.String[] split(java.lang.String)>("/");	r6 = virtualinvoke r5.<java.lang.String: java.lang.String[] split(java.lang.String)>("/");	r13 = "";	$i1 = lengthof r4;	$i0 = lengthof r6;	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	r14 = r2;	i4 = 1;	if i4 >= i2 goto return 0;	return 0
;block_num 3