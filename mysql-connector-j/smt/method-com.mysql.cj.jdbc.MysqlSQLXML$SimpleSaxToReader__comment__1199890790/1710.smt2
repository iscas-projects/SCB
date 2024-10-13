(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/2081098776 (var2430) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2430 var2430)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var653 var2430) ; Statement: r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader 
(assert (not (= var653 null-var2430)))
(declare-const var144 (Array Int Int)) ; Statement: r3 := @parameter0: char[] 
(assert (not (= var144 null-__Array__Int__Int__)))
(declare-const var26 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var26 null-Int)))
(declare-const var666 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var666 null-Int)))
(define-const var1936 String (buf/2081098776 var653)) ; Statement: $r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var1936 "<!--")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<!--") 
(declare-const var1936!1 String)
(assert (= var1936!1 (str.++ var1936 "<!--")))
(define-const var3491 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert (>= var3491 var666)) ; Cond: i4 >= i0 
(define-const var3350 String (buf/2081098776 var653)) ; Statement: $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var3350 "-->")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-->") 
(declare-const var3350!1 String)
(assert (= var3350!1 (str.++ var3350 "-->")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2430=com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader, var653=r0, var144=r3, var26=i1, var666=i0, var1936=$r1, var3491=i4, var3350=$r2}
; {com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader=var2430, r0=var653, r3=var144, i1=var26, i0=var666, $r1=var1936, i4=var3491, $r2=var3350}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader;	r3 := @parameter0: char[];	i1 := @parameter1: int;	i0 := @parameter2: int;	$r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<!--");	i4 = 0;	if i4 >= i0 goto $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	$r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-->");	return
;block_num 3