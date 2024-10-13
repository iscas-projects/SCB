(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2030 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/2081098776 (var2030) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun inCDATA/2081098776 (var2030) Bool)
(declare-const null-var2030 var2030)
(declare-const var3354 var2030) ; Statement: r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader 
(assert (not (= var3354 null-var2030)))
(define-const var186 String (buf/2081098776 var3354)) ; Statement: $r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var186 "<![CDATA[")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<![CDATA[") 
(declare-const var186!1 String)
(assert (= var186!1 (str.++ var186 "<![CDATA[")))
(declare-const var3354!1 var2030)
(assert (not (= var3354!1 null-var2030)))
(assert (= (inCDATA/2081098776 var3354!1) (ite (= 1 1) true false))) ; Statement: r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: boolean inCDATA> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), inCDATA/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], boolean)}
; {var2030=com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader, var3354=r0, var186=$r1}
; {com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader=var2030, r0=var3354, $r1=var186}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader;	$r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<![CDATA[");	r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: boolean inCDATA> = 1;	return
;block_num 1