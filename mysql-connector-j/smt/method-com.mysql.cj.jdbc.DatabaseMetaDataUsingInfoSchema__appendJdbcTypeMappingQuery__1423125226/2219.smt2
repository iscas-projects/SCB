(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1681 0)
(declare-sort var583 0)
(declare-sort var1385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1385_values/-1655332485 () (Array Int var1385))
(declare-fun getLength-Arr-var1385-1 ((Array Int var1385)) Int)
(declare-const null-var1681 var1681)
(declare-const null-String String)
(declare-const var292 var1681) ; Statement: r6 := @this: com.mysql.cj.jdbc.DatabaseMetaDataUsingInfoSchema 
(assert (not (= var292 null-var1681)))
(declare-const var2415 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2415 null-String)))
(declare-const var1403 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1403 null-String)))
(declare-const var3254 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var3254 null-String)))
(assert true)
;(assert (append/672562846 var2415 "CASE ")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CASE ") 
(declare-const var2415!1 String)
(assert (= var2415!1 (str.++ var2415 "CASE ")))
(define-const var2560 (Array Int var1385) var1385_values/-1655332485) ; Statement: r1 = staticinvoke <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType[] values()>() 
(define-const var1918 Int (getLength-Arr-var1385-1 var2560)) ; Statement: i0 = lengthof r1 
(define-const var1663 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'POINT\' THEN -2") 
(assert (>= var1663 var1918)) ; Cond: i5 >= i0 
(assert true)
;(assert (append/672562846 var2415!1 " WHEN UPPER(DATA_TYPE)=\u0027POINT\u0027 THEN -2")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'POINT\' THEN -2") 
(declare-const var2415!2 String)
(assert (= var2415!2 (str.++ var2415!1 " WHEN UPPER(DATA_TYPE)=\u0027POINT\u0027 THEN -2")))
(assert true)
;(assert (append/672562846 var2415!2 " WHEN UPPER(DATA_TYPE)=\u0027LINESTRING\u0027 THEN -2")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'LINESTRING\' THEN -2") 
(declare-const var2415!3 String)
(assert (= var2415!3 (str.++ var2415!2 " WHEN UPPER(DATA_TYPE)=\u0027LINESTRING\u0027 THEN -2")))
(assert true)
;(assert (append/672562846 var2415!3 " WHEN UPPER(DATA_TYPE)=\u0027POLYGON\u0027 THEN -2")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'POLYGON\' THEN -2") 
(declare-const var2415!4 String)
(assert (= var2415!4 (str.++ var2415!3 " WHEN UPPER(DATA_TYPE)=\u0027POLYGON\u0027 THEN -2")))
(assert true)
;(assert (append/672562846 var2415!4 " WHEN UPPER(DATA_TYPE)=\u0027MULTIPOINT\u0027 THEN -2")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'MULTIPOINT\' THEN -2") 
(declare-const var2415!5 String)
(assert (= var2415!5 (str.++ var2415!4 " WHEN UPPER(DATA_TYPE)=\u0027MULTIPOINT\u0027 THEN -2")))
(assert true)
;(assert (append/672562846 var2415!5 " WHEN UPPER(DATA_TYPE)=\u0027MULTILINESTRING\u0027 THEN -2")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'MULTILINESTRING\' THEN -2") 
(declare-const var2415!6 String)
(assert (= var2415!6 (str.++ var2415!5 " WHEN UPPER(DATA_TYPE)=\u0027MULTILINESTRING\u0027 THEN -2")))
(assert true)
;(assert (append/672562846 var2415!6 " WHEN UPPER(DATA_TYPE)=\u0027MULTIPOLYGON\u0027 THEN -2")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'MULTIPOLYGON\' THEN -2") 
(declare-const var2415!7 String)
(assert (= var2415!7 (str.++ var2415!6 " WHEN UPPER(DATA_TYPE)=\u0027MULTIPOLYGON\u0027 THEN -2")))
(assert true)
;(assert (append/672562846 var2415!7 " WHEN UPPER(DATA_TYPE)=\u0027GEOMETRYCOLLECTION\u0027 THEN -2")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'GEOMETRYCOLLECTION\' THEN -2") 
(declare-const var2415!8 String)
(assert (= var2415!8 (str.++ var2415!7 " WHEN UPPER(DATA_TYPE)=\u0027GEOMETRYCOLLECTION\u0027 THEN -2")))
(assert true)
;(assert (append/672562846 var2415!8 " WHEN UPPER(DATA_TYPE)=\u0027GEOMCOLLECTION\u0027 THEN -2")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'GEOMCOLLECTION\' THEN -2") 
(declare-const var2415!9 String)
(assert (= var2415!9 (str.++ var2415!8 " WHEN UPPER(DATA_TYPE)=\u0027GEOMCOLLECTION\u0027 THEN -2")))
(assert true)
;(assert (append/672562846 var2415!9 " ELSE 1111")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ELSE 1111") 
(declare-const var2415!10 String)
(assert (= var2415!10 (str.++ var2415!9 " ELSE 1111")))
(assert true)
;(assert (append/672562846 var2415!10 " END ")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" END ") 
(declare-const var2415!11 String)
(assert (= var2415!11 (str.++ var2415!10 " END ")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1385_values/-1655332485=([], com.mysql.cj.MysqlType[]), getLength-Arr-var1385-1=([com.mysql.cj.MysqlType[]], int)}
; {var1681=com.mysql.cj.jdbc.DatabaseMetaDataUsingInfoSchema, var292=r6, var2415=r0, var1403=r3, var583=null_type, var3254=r7, var1385=com.mysql.cj.MysqlType, var2560=r1, var1918=i0, var1663=i5}
; {com.mysql.cj.jdbc.DatabaseMetaDataUsingInfoSchema=var1681, r6=var292, r0=var2415, r3=var1403, null_type=var583, r7=var3254, com.mysql.cj.MysqlType=var1385, r1=var2560, i0=var1918, i5=var1663}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 11}
;stmts r6 := @this: com.mysql.cj.jdbc.DatabaseMetaDataUsingInfoSchema;	r0 := @parameter0: java.lang.StringBuilder;	r3 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.String;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CASE ");	r1 = staticinvoke <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType[] values()>();	i0 = lengthof r1;	i5 = 0;	if i5 >= i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'POINT\' THEN -2");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'POINT\' THEN -2");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'LINESTRING\' THEN -2");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'POLYGON\' THEN -2");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'MULTIPOINT\' THEN -2");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'MULTILINESTRING\' THEN -2");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'MULTIPOLYGON\' THEN -2");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'GEOMETRYCOLLECTION\' THEN -2");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHEN UPPER(DATA_TYPE)=\'GEOMCOLLECTION\' THEN -2");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ELSE 1111");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" END ");	return
;block_num 3