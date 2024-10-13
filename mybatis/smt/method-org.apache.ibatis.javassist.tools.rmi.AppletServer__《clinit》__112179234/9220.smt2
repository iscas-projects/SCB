(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(define-const var2086 String "HTTP/1.0 200 OK\r\n\r\n") ; Statement: $r0 = "HTTP/1.0 200 OK\r\n\r\n" 
(assert true)
(define-const var1804 (Array Int Int) (getBytes/1068683673 var2086)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: byte[] getBytes()>() 
(define-const var1974 (Array Int Int) var1804) ; Statement: <org.apache.ibatis.javassist.tools.rmi.AppletServer: byte[] okHeader> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/1068683673=([java.lang.String], byte[])}
; {var2086=$r0, var1804=$r1, var1974=<org.apache.ibatis.javassist.tools.rmi.AppletServer: byte[] okHeader>}
; {$r0=var2086, $r1=var1804, <org.apache.ibatis.javassist.tools.rmi.AppletServer: byte[] okHeader>=var1974}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts $r0 = "HTTP/1.0 200 OK\r\n\r\n";	$r1 = virtualinvoke $r0.<java.lang.String: byte[] getBytes()>();	<org.apache.ibatis.javassist.tools.rmi.AppletServer: byte[] okHeader> = $r1;	return
;block_num 1