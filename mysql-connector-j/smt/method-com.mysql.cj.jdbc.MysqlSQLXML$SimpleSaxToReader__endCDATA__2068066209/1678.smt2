(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inCDATA/2081098776 (var1815) Bool)
(declare-fun buf/2081098776 (var1815) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1815 var1815)
(declare-const var12 var1815) ; Statement: r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader 
(assert (not (= var12 null-var1815)))
(declare-const var12!1 var1815)
(assert (not (= var12!1 null-var1815)))
(assert (= (inCDATA/2081098776 var12!1) (ite (= 1 0) true false))) ; Statement: r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: boolean inCDATA> = 0 
(define-const var2717 String (buf/2081098776 var12!1)) ; Statement: $r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var2717 "]]>")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]]>") 
(declare-const var2717!1 String)
(assert (= var2717!1 (str.++ var2717 "]]>")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {inCDATA/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], boolean), buf/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1815=com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader, var12=r0, var2717=$r1}
; {com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader=var1815, r0=var12, $r1=var2717}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader;	r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: boolean inCDATA> = 0;	$r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]]>");	return
;block_num 1