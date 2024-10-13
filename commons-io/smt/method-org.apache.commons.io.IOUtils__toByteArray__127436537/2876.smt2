(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3681 0)
(declare-sort var1791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1791_defaultCharset/657962044 () var1791)
(declare-fun getBytes/-163691139 (String var1791) (Array Int Int))
(declare-const null-String String)
(declare-const var1118 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1118 null-String)))
(define-const var1289 var1791 var1791_defaultCharset/657962044) ; Statement: $r1 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset defaultCharset()>() 
(assert true)
(define-const var1885 (Array Int Int) (getBytes/-163691139 var1118 var1289)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1791_defaultCharset/657962044=([], java.nio.charset.Charset), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[])}
; {var1118=r0, var3681=null_type, var1791=java.nio.charset.Charset, var1289=$r1, var1885=$r2}
; {r0=var1118, null_type=var3681, java.nio.charset.Charset=var1791, $r1=var1289, $r2=var1885}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset defaultCharset()>();	$r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1);	return $r2
;block_num 1