(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun buf/2081098776 (var504) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var504 var504)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3737 var504) ; Statement: r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader 
(assert (not (= var3737 null-var504)))
(declare-const var3192 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3192 null-Int)))
(declare-const var3743 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3743 null-Bool)))
(define-const var1050 Int (cast-from-Int-to-Int var3192)) ; Statement: $i1 = (int) c0 
 ; Statement: lookupswitch($i1) {     case 13: goto $r6 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 34: goto if z0 != 0 goto $r4 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 38: goto $r3 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 60: goto $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 62: goto $r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     default: goto $i2 = (int) c0; } 
(assert (and (= var1050 60) (and (not (= var1050 38)) (and (not (= var1050 34)) (and (not (= var1050 13)) true))))) ; Intersect: Cond: $i1 == 60  and Intersect: Negate: Cond: $i1 == 38   and Intersect: Negate: Cond: $i1 == 34   and Intersect: Negate: Cond: $i1 == 13   and Non Conditional    
(define-const var3203 String (buf/2081098776 var3737)) ; Statement: $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var3203 "&lt;")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("&lt;") 
(declare-const var3203!1 String)
(assert (= var3203!1 (str.++ var3203 "&lt;")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), buf/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var504=com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader, var3737=r0, var3192=c0, var3743=z0, var1050=$i1, var3203=$r2}
; {com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader=var504, r0=var3737, c0=var3192, z0=var3743, $i1=var1050, $r2=var3203}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader;	c0 := @parameter0: char;	z0 := @parameter1: boolean;	$i1 = (int) c0;	lookupswitch($i1) {     case 13: goto $r6 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 34: goto if z0 != 0 goto $r4 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 38: goto $r3 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 60: goto $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 62: goto $r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     default: goto $i2 = (int) c0; };	$r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("&lt;");	goto [?= return];	return
;block_num 3