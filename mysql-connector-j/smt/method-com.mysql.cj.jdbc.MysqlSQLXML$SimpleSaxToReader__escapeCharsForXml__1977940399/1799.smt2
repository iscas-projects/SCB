(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun buf/2081098776 (var2151) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2151 var2151)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1195 var2151) ; Statement: r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader 
(assert (not (= var1195 null-var2151)))
(declare-const var2324 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2324 null-Int)))
(declare-const var3259 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3259 null-Bool)))
(define-const var373 Int (cast-from-Int-to-Int var2324)) ; Statement: $i1 = (int) c0 
 ; Statement: lookupswitch($i1) {     case 13: goto $r6 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 34: goto if z0 != 0 goto $r4 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 38: goto $r3 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 60: goto $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 62: goto $r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     default: goto $i2 = (int) c0; } 
(assert (and (= var373 13) true)) ; Intersect: Cond: $i1 == 13  and Non Conditional 
(define-const var2680 String (buf/2081098776 var1195)) ; Statement: $r6 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var2680 "&#xD;")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("&#xD;") 
(declare-const var2680!1 String)
(assert (= var2680!1 (str.++ var2680 "&#xD;")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), buf/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2151=com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader, var1195=r0, var2324=c0, var3259=z0, var373=$i1, var2680=$r6}
; {com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader=var2151, r0=var1195, c0=var2324, z0=var3259, $i1=var373, $r6=var2680}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader;	c0 := @parameter0: char;	z0 := @parameter1: boolean;	$i1 = (int) c0;	lookupswitch($i1) {     case 13: goto $r6 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 34: goto if z0 != 0 goto $r4 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 38: goto $r3 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 60: goto $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 62: goto $r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     default: goto $i2 = (int) c0; };	$r6 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("&#xD;");	goto [?= return];	return
;block_num 3