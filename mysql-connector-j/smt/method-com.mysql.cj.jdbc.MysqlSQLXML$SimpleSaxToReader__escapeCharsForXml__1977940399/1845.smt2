(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun buf/2081098776 (var1774) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1774 var1774)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var2316 var1774) ; Statement: r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader 
(assert (not (= var2316 null-var1774)))
(declare-const var533 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var533 null-Int)))
(declare-const var3489 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3489 null-Bool)))
(define-const var1407 Int (cast-from-Int-to-Int var533)) ; Statement: $i1 = (int) c0 
 ; Statement: lookupswitch($i1) {     case 13: goto $r6 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 34: goto if z0 != 0 goto $r4 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 38: goto $r3 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 60: goto $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 62: goto $r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     default: goto $i2 = (int) c0; } 
(assert (and (= var1407 62) (and (not (= var1407 60)) (and (not (= var1407 38)) (and (not (= var1407 34)) (and (not (= var1407 13)) true)))))) ; Intersect: Cond: $i1 == 62  and Intersect: Negate: Cond: $i1 == 60   and Intersect: Negate: Cond: $i1 == 38   and Intersect: Negate: Cond: $i1 == 34   and Intersect: Negate: Cond: $i1 == 13   and Non Conditional     
(define-const var1415 String (buf/2081098776 var2316)) ; Statement: $r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var1415 "&gt;")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("&gt;") 
(declare-const var1415!1 String)
(assert (= var1415!1 (str.++ var1415 "&gt;")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), buf/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1774=com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader, var2316=r0, var533=c0, var3489=z0, var1407=$i1, var1415=$r1}
; {com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader=var1774, r0=var2316, c0=var533, z0=var3489, $i1=var1407, $r1=var1415}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader;	c0 := @parameter0: char;	z0 := @parameter1: boolean;	$i1 = (int) c0;	lookupswitch($i1) {     case 13: goto $r6 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 34: goto if z0 != 0 goto $r4 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 38: goto $r3 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 60: goto $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 62: goto $r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     default: goto $i2 = (int) c0; };	$r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("&gt;");	goto [?= return];	return
;block_num 3