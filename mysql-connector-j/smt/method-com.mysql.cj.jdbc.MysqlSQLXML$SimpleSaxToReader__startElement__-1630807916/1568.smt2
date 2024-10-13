(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2513 0)
(declare-sort var2776 0)
(declare-sort var3714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/2081098776 (var2513) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2513 var2513)
(declare-const null-String String)
(declare-const null-var3714 var3714)
(declare-const var343 var2513) ; Statement: r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader 
(assert (not (= var343 null-var2513)))
(declare-const var1580 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var1580 null-String)))
(declare-const var3279 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var3279 null-String)))
(declare-const var3755 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3755 null-String)))
(declare-const var3151 var3714) ; Statement: r4 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var3151 null-var3714)))
(define-const var603 String (buf/2081098776 var343)) ; Statement: $r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var603 "<")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var603!1 String)
(assert (= var603!1 (str.++ var603 "<")))
(define-const var2989 String (buf/2081098776 var343)) ; Statement: $r3 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var2989 var3755)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2989!1 String)
(assert (= var2989!1 (str.++ var2989 var3755)))
 ; Statement: if r4 == null goto $r5 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert (= var3151 null-var3714)) ; Cond: r4 == null 
(define-const var1969 String (buf/2081098776 var343)) ; Statement: $r5 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var1969 ">")) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1969!1 String)
(assert (= var1969!1 (str.++ var1969 ">")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2513=com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader, var343=r0, var1580=r12, var2776=null_type, var3279=r13, var3755=r2, var3714=org.xml.sax.Attributes, var3151=r4, var603=$r1, var2989=$r3, var1969=$r5}
; {com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader=var2513, r0=var343, r12=var1580, null_type=var2776, r13=var3279, r2=var3755, org.xml.sax.Attributes=var3714, r4=var3151, $r1=var603, $r3=var2989, $r5=var1969}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader;	r12 := @parameter0: java.lang.String;	r13 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r4 := @parameter3: org.xml.sax.Attributes;	$r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r3 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if r4 == null goto $r5 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	$r5 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	return
;block_num 2