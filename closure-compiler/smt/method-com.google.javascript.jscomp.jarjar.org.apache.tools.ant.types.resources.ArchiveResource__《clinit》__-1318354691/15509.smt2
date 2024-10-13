(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun var588_getMagicNumber/-646849366 ((Array Int Int)) Int)
(define-const var3189 String "null archive") ; Statement: $r0 = "null archive" 
(assert true)
(define-const var1523 (Array Int Int) (getBytes/1068683673 var3189)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: byte[] getBytes()>() 
(define-const var545 Int (var588_getMagicNumber/-646849366 var1523)) ; Statement: $i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int getMagicNumber(byte[])>($r1) 
(define-const var3624 Int var545) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource: int NULL_ARCHIVE> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/1068683673=([java.lang.String], byte[]), var588_getMagicNumber/-646849366=([byte[]], int)}
; {var3189=$r0, var1523=$r1, var588=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var545=$i0, var3624=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource: int NULL_ARCHIVE>}
; {$r0=var3189, $r1=var1523, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var588, $i0=var545, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource: int NULL_ARCHIVE>=var3624}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts $r0 = "null archive";	$r1 = virtualinvoke $r0.<java.lang.String: byte[] getBytes()>();	$i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: int getMagicNumber(byte[])>($r1);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ArchiveResource: int NULL_ARCHIVE> = $i0;	return
;block_num 1