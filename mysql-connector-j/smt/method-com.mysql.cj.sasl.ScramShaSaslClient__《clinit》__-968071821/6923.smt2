(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(define-const var2580 String "Client Key") ; Statement: $r0 = "Client Key" 
(assert true)
(define-const var175 (Array Int Int) (getBytes/1068683673 var2580)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: byte[] getBytes()>() 
(define-const var3236 (Array Int Int) var175) ; Statement: <com.mysql.cj.sasl.ScramShaSaslClient: byte[] CLIENT_KEY> = $r1 
(define-const var305 String "Server Key") ; Statement: $r2 = "Server Key" 
(assert true)
(define-const var797 (Array Int Int) (getBytes/1068683673 var305)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>() 
(define-const var3669 (Array Int Int) var797) ; Statement: <com.mysql.cj.sasl.ScramShaSaslClient: byte[] SERVER_KEY> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/1068683673=([java.lang.String], byte[])}
; {var2580=$r0, var175=$r1, var3236=<com.mysql.cj.sasl.ScramShaSaslClient: byte[] CLIENT_KEY>, var305=$r2, var797=$r3, var3669=<com.mysql.cj.sasl.ScramShaSaslClient: byte[] SERVER_KEY>}
; {$r0=var2580, $r1=var175, <com.mysql.cj.sasl.ScramShaSaslClient: byte[] CLIENT_KEY>=var3236, $r2=var305, $r3=var797, <com.mysql.cj.sasl.ScramShaSaslClient: byte[] SERVER_KEY>=var3669}
;seq <java.lang.String: byte[] getBytes()>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 2}
;stmts $r0 = "Client Key";	$r1 = virtualinvoke $r0.<java.lang.String: byte[] getBytes()>();	<com.mysql.cj.sasl.ScramShaSaslClient: byte[] CLIENT_KEY> = $r1;	$r2 = "Server Key";	$r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>();	<com.mysql.cj.sasl.ScramShaSaslClient: byte[] SERVER_KEY> = $r3;	return
;block_num 1