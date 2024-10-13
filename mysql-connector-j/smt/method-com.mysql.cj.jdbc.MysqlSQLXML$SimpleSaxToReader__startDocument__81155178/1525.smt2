(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3143 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/2081098776 (var3143) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3143 var3143)
(declare-const var656 var3143) ; Statement: r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader 
(assert (not (= var656 null-var3143)))
(define-const var456 String (buf/2081098776 var656)) ; Statement: $r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var456 "<?xml version=\u00271.0\u0027 encoding=\u0027UTF-8\u0027?>")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<?xml version=\'1.0\' encoding=\'UTF-8\'?>") 
(declare-const var456!1 String)
(assert (= var456!1 (str.++ var456 "<?xml version=\u00271.0\u0027 encoding=\u0027UTF-8\u0027?>")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3143=com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader, var656=r0, var456=$r1}
; {com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader=var3143, r0=var656, $r1=var456}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader;	$r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<?xml version=\'1.0\' encoding=\'UTF-8\'?>");	return
;block_num 1