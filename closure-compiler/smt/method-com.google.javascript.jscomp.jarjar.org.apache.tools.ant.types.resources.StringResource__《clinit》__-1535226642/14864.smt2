(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun var1557_getMagicNumber/-646849366 ((Array Int Int)) Int)
(define-const var1586 String "StringResource") ; Statement: $r0 = "StringResource" 
(assert true)
(define-const var783 (Array Int Int) (getBytes/1068683673 var1586)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: byte[] getBytes()>() 
(define-const var1963 Int (var1557_getMagicNumber/-646849366 var783)) ; Statement: $i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int getMagicNumber(byte[])>($r1) 
(define-const var43 Int var1963) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: int STRING_MAGIC> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/1068683673=([java.lang.String], byte[]), var1557_getMagicNumber/-646849366=([byte[]], int)}
; {var1586=$r0, var783=$r1, var1557=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var1963=$i0, var43=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: int STRING_MAGIC>}
; {$r0=var1586, $r1=var783, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var1557, $i0=var1963, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: int STRING_MAGIC>=var43}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts $r0 = "StringResource";	$r1 = virtualinvoke $r0.<java.lang.String: byte[] getBytes()>();	$i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int getMagicNumber(byte[])>($r1);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: int STRING_MAGIC> = $i0;	return
;block_num 1