(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var588 0)
(declare-sort var2336 0)
(declare-sort var1004 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/-667014969 (var1004) Int)
(declare-fun cast-from-var2336-to-var1004 (var2336) var1004)
(declare-fun charData/1880163777 (var588) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun toString/709357434 (var1004) String)
(declare-const null-var588 var588)
(declare-const null-var2336 var2336)
(declare-const var665 var588) ; Statement: r1 := @this: com.mysql.cj.jdbc.Clob 
(assert (not (= var665 null-var588)))
(declare-const var3533 var2336) ; Statement: r0 := @parameter0: com.mysql.cj.protocol.WatchableWriter 
(assert (not (= var3533 null-var2336)))
(assert true)
(define-const var3441 Int (size/-667014969 (cast-from-var2336-to-var1004 var3533))) ; Statement: i0 = virtualinvoke r0.<com.mysql.cj.protocol.WatchableWriter: int size()>() 
(define-const var2173 String (charData/1880163777 var665)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.Clob: java.lang.String charData> 
(assert true)
(define-const var3346 Int (length/-134980193 var2173)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if i0 >= $i1 goto $r3 = virtualinvoke r0.<com.mysql.cj.protocol.WatchableWriter: java.lang.String toString()>() 
(assert (>= var3441 var3346)) ; Cond: i0 >= $i1 
(assert true)
(define-const var340 String (toString/709357434 (cast-from-var2336-to-var1004 var3533))) ; Statement: $r3 = virtualinvoke r0.<com.mysql.cj.protocol.WatchableWriter: java.lang.String toString()>() 
(declare-const var665!1 var588)
(assert (not (= var665!1 null-var588)))
(assert (= (charData/1880163777 var665!1) var340)) ; Statement: r1.<com.mysql.cj.jdbc.Clob: java.lang.String charData> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {size/-667014969=([java.io.CharArrayWriter], int), cast-from-var2336-to-var1004=([com.mysql.cj.protocol.WatchableWriter], java.io.CharArrayWriter), charData/1880163777=([com.mysql.cj.jdbc.Clob], java.lang.String), length/-134980193=([java.lang.String], int), toString/709357434=([java.io.CharArrayWriter], java.lang.String)}
; {var588=com.mysql.cj.jdbc.Clob, var665=r1, var2336=com.mysql.cj.protocol.WatchableWriter, var3533=r0, var1004=java.io.CharArrayWriter, var3441=i0, var2173=$r2, var3346=$i1, var340=$r3}
; {com.mysql.cj.jdbc.Clob=var588, r1=var665, com.mysql.cj.protocol.WatchableWriter=var2336, r0=var3533, java.io.CharArrayWriter=var1004, i0=var3441, $r2=var2173, $i1=var3346, $r3=var340}
;seq <java.lang.String: int length()>;	<java.io.CharArrayWriter: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.Clob;	r0 := @parameter0: com.mysql.cj.protocol.WatchableWriter;	i0 = virtualinvoke r0.<com.mysql.cj.protocol.WatchableWriter: int size()>();	$r2 = r1.<com.mysql.cj.jdbc.Clob: java.lang.String charData>;	$i1 = virtualinvoke $r2.<java.lang.String: int length()>();	if i0 >= $i1 goto $r3 = virtualinvoke r0.<com.mysql.cj.protocol.WatchableWriter: java.lang.String toString()>();	$r3 = virtualinvoke r0.<com.mysql.cj.protocol.WatchableWriter: java.lang.String toString()>();	r1.<com.mysql.cj.jdbc.Clob: java.lang.String charData> = $r3;	return
;block_num 2