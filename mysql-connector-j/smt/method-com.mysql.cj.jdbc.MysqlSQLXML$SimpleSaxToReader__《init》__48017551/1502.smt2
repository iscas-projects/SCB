(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var155 0)
(declare-sort var3260 0)
(declare-sort var3351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/2081098776 (var155) var3260)
(declare-fun <init>/1727464312 (var3351) void)
(declare-fun cast-from-var155-to-var3351 (var155) var3351)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buf/2081098776 (var155) String)
(declare-fun inCDATA/2081098776 (var155) Bool)
(declare-const null-var155 var155)
(declare-const null-var3260 var3260)
(declare-const var3120 var155) ; Statement: r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader 
(assert (not (= var3120 null-var155)))
(declare-const var101 var3260) ; Statement: r1 := @parameter0: com.mysql.cj.jdbc.MysqlSQLXML 
(assert (not (= var101 null-var3260)))
(declare-const var3120!1 var155)
(assert (not (= var3120!1 null-var155)))
(assert (= (this$0/2081098776 var3120!1) var101)) ; Statement: r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: com.mysql.cj.jdbc.MysqlSQLXML this$0> = r1 
(assert true)
;(assert (<init>/1727464312 (cast-from-var155-to-var3351 var3120!1))) ; Statement: specialinvoke r0.<org.xml.sax.helpers.DefaultHandler: void <init>()>() 

(declare-const var3120!2 var155)
(define-const var1278 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1278)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1278!1 String)
(assert (= var1278!1 ""))
(declare-const var3120!3 var155)
(assert (not (= var3120!3 null-var155)))
(assert (= (buf/2081098776 var3120!3) var1278!1)) ; Statement: r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> = $r2 
(declare-const var3120!4 var155)
(assert (not (= var3120!4 null-var155)))
(assert (= (inCDATA/2081098776 var3120!4) (ite (= 1 0) true false))) ; Statement: r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: boolean inCDATA> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], com.mysql.cj.jdbc.MysqlSQLXML), <init>/1727464312=([org.xml.sax.helpers.DefaultHandler], void), cast-from-var155-to-var3351=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], org.xml.sax.helpers.DefaultHandler), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buf/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], java.lang.StringBuilder), inCDATA/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], boolean)}
; {var155=com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader, var3120=r0, var3260=com.mysql.cj.jdbc.MysqlSQLXML, var101=r1, var3351=org.xml.sax.helpers.DefaultHandler, var1278=$r2}
; {com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader=var155, r0=var3120, com.mysql.cj.jdbc.MysqlSQLXML=var3260, r1=var101, org.xml.sax.helpers.DefaultHandler=var3351, $r2=var1278}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader;	r1 := @parameter0: com.mysql.cj.jdbc.MysqlSQLXML;	r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: com.mysql.cj.jdbc.MysqlSQLXML this$0> = r1;	specialinvoke r0.<org.xml.sax.helpers.DefaultHandler: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> = $r2;	r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: boolean inCDATA> = 0;	return
;block_num 1