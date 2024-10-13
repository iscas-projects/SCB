(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2679 0)
(declare-sort var1187 0)
(declare-sort var2378 0)
(declare-sort var617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getServerSession/1863373505 (var2679) var1187)
(declare-fun getCapabilities/-1017316738 (var1187) var2378)
(declare-fun getThreadId/2125094562 (var2378) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var617_currentTimeMillis/630293680 () Int)
(declare-const null-var2679 var2679)
(declare-const null-String String)
(declare-const var238 var2679) ; Statement: r1 := @this: com.mysql.cj.protocol.a.NativeProtocol 
(assert (not (= var238 null-var2679)))
(declare-const var3739 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3739 null-String)))
(assert true)
;(assert (append/672562846 var3739 "/* conn id ")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* conn id ") 
(declare-const var3739!1 String)
(assert (= var3739!1 (str.++ var3739 "/* conn id ")))
(assert true)
(define-const var1351 var1187 (getServerSession/1863373505 var238)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.protocol.a.NativeProtocol: com.mysql.cj.protocol.a.NativeServerSession getServerSession()>() 
(assert true)
(define-const var2635 var2378 (getCapabilities/-1017316738 var1351)) ; Statement: $r3 = virtualinvoke $r2.<com.mysql.cj.protocol.a.NativeServerSession: com.mysql.cj.protocol.a.NativeCapabilities getCapabilities()>() 
(assert true)
(define-const var665 Int (getThreadId/2125094562 var2635)) ; Statement: $l0 = virtualinvoke $r3.<com.mysql.cj.protocol.a.NativeCapabilities: long getThreadId()>() 
(assert true)
;(assert (append/-901862667 var3739!1 var665)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3739!2 String)
(assert (str.prefixof var3739!1 var3739!2))
(assert true)
;(assert (append/672562846 var3739!2 " clock: ")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" clock: ") 
(declare-const var3739!3 String)
(assert (= var3739!3 (str.++ var3739!2 " clock: ")))
(define-const var1357 Int var617_currentTimeMillis/630293680) ; Statement: $l1 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(assert true)
;(assert (append/-901862667 var3739!3 var1357)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var3739!4 String)
(assert (str.prefixof var3739!3 var3739!4))
(assert true)
;(assert (append/672562846 var3739!4 " */ ")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */ ") 
(declare-const var3739!5 String)
(assert (= var3739!5 (str.++ var3739!4 " */ ")))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getServerSession/1863373505=([com.mysql.cj.protocol.a.NativeProtocol], com.mysql.cj.protocol.a.NativeServerSession), getCapabilities/-1017316738=([com.mysql.cj.protocol.a.NativeServerSession], com.mysql.cj.protocol.a.NativeCapabilities), getThreadId/2125094562=([com.mysql.cj.protocol.a.NativeCapabilities], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var617_currentTimeMillis/630293680=([], long)}
; {var2679=com.mysql.cj.protocol.a.NativeProtocol, var238=r1, var3739=r0, var1187=com.mysql.cj.protocol.a.NativeServerSession, var1351=$r2, var2378=com.mysql.cj.protocol.a.NativeCapabilities, var2635=$r3, var665=$l0, var617=java.lang.System, var1357=$l1}
; {com.mysql.cj.protocol.a.NativeProtocol=var2679, r1=var238, r0=var3739, com.mysql.cj.protocol.a.NativeServerSession=var1187, $r2=var1351, com.mysql.cj.protocol.a.NativeCapabilities=var2378, $r3=var2635, $l0=var665, java.lang.System=var617, $l1=var1357}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2}
;stmts r1 := @this: com.mysql.cj.protocol.a.NativeProtocol;	r0 := @parameter0: java.lang.StringBuilder;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* conn id ");	$r2 = virtualinvoke r1.<com.mysql.cj.protocol.a.NativeProtocol: com.mysql.cj.protocol.a.NativeServerSession getServerSession()>();	$r3 = virtualinvoke $r2.<com.mysql.cj.protocol.a.NativeServerSession: com.mysql.cj.protocol.a.NativeCapabilities getCapabilities()>();	$l0 = virtualinvoke $r3.<com.mysql.cj.protocol.a.NativeCapabilities: long getThreadId()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" clock: ");	$l1 = staticinvoke <java.lang.System: long currentTimeMillis()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */ ");	return r0
;block_num 1