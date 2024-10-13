(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun buf/2081098776 (var3375) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3375 var3375)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3744 var3375) ; Statement: r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader 
(assert (not (= var3744 null-var3375)))
(declare-const var661 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var661 null-Int)))
(declare-const var3886 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3886 null-Bool)))
(define-const var1818 Int (cast-from-Int-to-Int var661)) ; Statement: $i1 = (int) c0 
 ; Statement: lookupswitch($i1) {     case 13: goto $r6 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 34: goto if z0 != 0 goto $r4 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 38: goto $r3 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 60: goto $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 62: goto $r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     default: goto $i2 = (int) c0; } 
(assert (and (= var1818 38) (and (not (= var1818 34)) (and (not (= var1818 13)) true)))) ; Intersect: Cond: $i1 == 38  and Intersect: Negate: Cond: $i1 == 34   and Intersect: Negate: Cond: $i1 == 13   and Non Conditional   
(define-const var2771 String (buf/2081098776 var3744)) ; Statement: $r3 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/672562846 var2771 "&amp;")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("&amp;") 
(declare-const var2771!1 String)
(assert (= var2771!1 (str.++ var2771 "&amp;")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), buf/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3375=com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader, var3744=r0, var661=c0, var3886=z0, var1818=$i1, var2771=$r3}
; {com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader=var3375, r0=var3744, c0=var661, z0=var3886, $i1=var1818, $r3=var2771}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader;	c0 := @parameter0: char;	z0 := @parameter1: boolean;	$i1 = (int) c0;	lookupswitch($i1) {     case 13: goto $r6 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 34: goto if z0 != 0 goto $r4 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 38: goto $r3 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 60: goto $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     case 62: goto $r1 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;     default: goto $i2 = (int) c0; };	$r3 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("&amp;");	goto [?= return];	return
;block_num 3