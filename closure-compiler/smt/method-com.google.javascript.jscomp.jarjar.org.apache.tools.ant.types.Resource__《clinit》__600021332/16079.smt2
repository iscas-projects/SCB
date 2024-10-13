(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun var224_getMagicNumber/-646849366 ((Array Int Int)) Int)
(define-const var1739 String "Resource") ; Statement: $r0 = "Resource" 
(assert true)
(define-const var2270 (Array Int Int) (getBytes/1068683673 var1739)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: byte[] getBytes()>() 
(define-const var3812 Int (var224_getMagicNumber/-646849366 var2270)) ; Statement: $i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int getMagicNumber(byte[])>($r1) 
(define-const var473 Int var3812) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int MAGIC> = $i0 
(define-const var836 String "null name") ; Statement: $r2 = "null name" 
(assert true)
(define-const var3887 (Array Int Int) (getBytes/1068683673 var836)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>() 
(define-const var3133 Int (var224_getMagicNumber/-646849366 var3887)) ; Statement: $i1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int getMagicNumber(byte[])>($r3) 
(define-const var3157 Int var3133) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int NULL_NAME> = $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/1068683673=([java.lang.String], byte[]), var224_getMagicNumber/-646849366=([byte[]], int)}
; {var1739=$r0, var2270=$r1, var224=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var3812=$i0, var473=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int MAGIC>, var836=$r2, var3887=$r3, var3133=$i1, var3157=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int NULL_NAME>}
; {$r0=var1739, $r1=var2270, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var224, $i0=var3812, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int MAGIC>=var473, $r2=var836, $r3=var3887, $i1=var3133, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int NULL_NAME>=var3157}
;seq <java.lang.String: byte[] getBytes()>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 2}
;stmts $r0 = "Resource";	$r1 = virtualinvoke $r0.<java.lang.String: byte[] getBytes()>();	$i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int getMagicNumber(byte[])>($r1);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int MAGIC> = $i0;	$r2 = "null name";	$r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>();	$i1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int getMagicNumber(byte[])>($r3);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int NULL_NAME> = $i1;	return
;block_num 1