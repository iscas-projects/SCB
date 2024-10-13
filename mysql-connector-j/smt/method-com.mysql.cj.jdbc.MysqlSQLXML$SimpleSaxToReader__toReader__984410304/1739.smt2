(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2816 0)
(declare-sort var813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var813-init () var813)
(declare-fun buf/2081098776 (var2816) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/814598262 (var813 String) void)
(declare-const null-var2816 var2816)
(declare-const var1218 var2816) ; Statement: r1 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader 
(assert (not (= var1218 null-var2816)))
(define-const var1108 var813 var813-init) ; Statement: $r0 = new java.io.StringReader 
(define-const var3589 String (buf/2081098776 var1218)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert true)
(define-const var1915 String (toString/-2075883882 var3589)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/814598262 var1108 var1915)) ; Statement: specialinvoke $r0.<java.io.StringReader: void <init>(java.lang.String)>($r3) 

(declare-const var1108!1 var813)
(declare-const var1915!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var813-init=([], java.io.StringReader), buf/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/814598262=([java.io.StringReader, java.lang.String], void)}
; {var2816=com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader, var1218=r1, var813=java.io.StringReader, var1108=$r0, var3589=$r2, var1915=$r3}
; {com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader=var2816, r1=var1218, java.io.StringReader=var813, $r0=var1108, $r2=var3589, $r3=var1915}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader;	$r0 = new java.io.StringReader;	$r2 = r1.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.StringReader: void <init>(java.lang.String)>($r3);	return $r0
;block_num 1