(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var687 0)
(declare-sort var3889 0)
(declare-sort var1571 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3889_size/-644676288 (var3889) Int)
(declare-fun charData/1880163777 (var687) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3889_toByteArray/639835282 (var3889) (Array Int Int))
(declare-fun var1571_toAsciiString/-754780337 ((Array Int Int)) String)
(declare-const null-var687 var687)
(declare-const null-var3889 var3889)
(declare-const var2254 var687) ; Statement: r1 := @this: com.mysql.cj.jdbc.Clob 
(assert (not (= var2254 null-var687)))
(declare-const var1913 var3889) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.WatchableStream 
(assert (not (= var1913 null-var3889)))
(define-const var3020 Int (var3889_size/-644676288 var1913)) ; Statement: i0 = interfaceinvoke r0.<com.mysql.cj.protocol.WatchableStream: int size()>() 
(define-const var3873 String (charData/1880163777 var2254)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.Clob: java.lang.String charData> 
(assert true)
(define-const var978 Int (length/-134980193 var3873)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if i0 >= $i1 goto $r3 = interfaceinvoke r0.<com.mysql.cj.protocol.WatchableStream: byte[] toByteArray()>() 
(assert (>= var3020 var978)) ; Cond: i0 >= $i1 
(define-const var190 (Array Int Int) (var3889_toByteArray/639835282 var1913)) ; Statement: $r3 = interfaceinvoke r0.<com.mysql.cj.protocol.WatchableStream: byte[] toByteArray()>() 
(define-const var1336 String (var1571_toAsciiString/-754780337 var190)) ; Statement: $r4 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toAsciiString(byte[])>($r3) 
(declare-const var2254!1 var687)
(assert (not (= var2254!1 null-var687)))
(assert (= (charData/1880163777 var2254!1) var1336)) ; Statement: r1.<com.mysql.cj.jdbc.Clob: java.lang.String charData> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3889_size/-644676288=([com.mysql.cj.protocol.WatchableStream], int), charData/1880163777=([com.mysql.cj.jdbc.Clob], java.lang.String), length/-134980193=([java.lang.String], int), var3889_toByteArray/639835282=([com.mysql.cj.protocol.WatchableStream], byte[]), var1571_toAsciiString/-754780337=([byte[]], java.lang.String)}
; {var687=com.mysql.cj.jdbc.Clob, var2254=r1, var3889=com.mysql.cj.protocol.WatchableStream, var1913=r0, var3020=i0, var3873=$r2, var978=$i1, var190=$r3, var1571=com.mysql.cj.util.StringUtils, var1336=$r4}
; {com.mysql.cj.jdbc.Clob=var687, r1=var2254, com.mysql.cj.protocol.WatchableStream=var3889, r0=var1913, i0=var3020, $r2=var3873, $i1=var978, $r3=var190, com.mysql.cj.util.StringUtils=var1571, $r4=var1336}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.Clob;	r0 := @parameter0: com.mysql.cj.protocol.WatchableStream;	i0 = interfaceinvoke r0.<com.mysql.cj.protocol.WatchableStream: int size()>();	$r2 = r1.<com.mysql.cj.jdbc.Clob: java.lang.String charData>;	$i1 = virtualinvoke $r2.<java.lang.String: int length()>();	if i0 >= $i1 goto $r3 = interfaceinvoke r0.<com.mysql.cj.protocol.WatchableStream: byte[] toByteArray()>();	$r3 = interfaceinvoke r0.<com.mysql.cj.protocol.WatchableStream: byte[] toByteArray()>();	$r4 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String toAsciiString(byte[])>($r3);	r1.<com.mysql.cj.jdbc.Clob: java.lang.String charData> = $r4;	return
;block_num 2