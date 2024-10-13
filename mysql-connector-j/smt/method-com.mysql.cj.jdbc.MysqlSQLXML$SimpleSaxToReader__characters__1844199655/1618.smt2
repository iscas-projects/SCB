(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inCDATA/2081098776 (var2873) Bool)
(declare-fun buf/2081098776 (var2873) String)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(declare-const null-var2873 var2873)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3038 var2873) ; Statement: r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader 
(assert (not (= var3038 null-var2873)))
(declare-const var3072 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var3072 null-__Array__Int__Int__)))
(declare-const var306 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var306 null-Int)))
(declare-const var2647 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2647 null-Int)))
(define-const var778 Bool (inCDATA/2081098776 var3038)) ; Statement: $z0 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: boolean inCDATA> 
 ; Statement: if $z0 != 0 goto $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert (not (= (ite var778 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2786 String (buf/2081098776 var3038)) ; Statement: $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/-1748486345 var2786 var3072 var306 var2647)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i0, i1) 
(declare-const var2786!1 String)
(assert (str.prefixof var2786 var2786!1))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {inCDATA/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], boolean), buf/2081098776=([com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader], java.lang.StringBuilder), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder)}
; {var2873=com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader, var3038=r0, var3072=r1, var306=i0, var2647=i1, var778=$z0, var2786=$r2}
; {com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader=var2873, r0=var3038, r1=var3072, i0=var306, i1=var2647, $z0=var778, $r2=var2786}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$z0 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: boolean inCDATA>;	if $z0 != 0 goto $r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	$r2 = r0.<com.mysql.cj.jdbc.MysqlSQLXML$SimpleSaxToReader: java.lang.StringBuilder buf>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i0, i1);	return
;block_num 3