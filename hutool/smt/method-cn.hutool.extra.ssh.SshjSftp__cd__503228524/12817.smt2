(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2564 0)
(declare-sort var753 0)
(declare-sort var357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var357-init () (Array Int var357))
(declare-fun cast-from-String-to-var357 (String) var357)
(declare-fun String_format/1339386452 (String (Array Int var357)) String)
(declare-fun command/-1304307563 (var2564 String) String)
(declare-fun pwd/597760830 (var2564) String)
(declare-const null-var2564 var2564)
(declare-const null-String String)
(declare-const null-__Array__Int__var357__ (Array Int var357))
(declare-const var3209 var2564) ; Statement: r3 := @this: cn.hutool.extra.ssh.SshjSftp 
(assert (not (= var3209 null-var2564)))
(declare-const var1976 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1976 null-String)))
(define-const var102 (Array Int var357) arr-var357-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var102!1 (Array Int var357))
(assert (not (= var102!1 null-__Array__Int__var357__)))
(assert (= (select var102!1 0) (cast-from-String-to-var357 var1976))) ; Statement: $r0[0] = r1 
(define-const var3803 String (String_format/1339386452 "cd %s" var102!1)) ; Statement: r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("cd %s", $r0) 
(assert true)
;(assert (command/-1304307563 var3209 var3803)) ; Statement: virtualinvoke r3.<cn.hutool.extra.ssh.SshjSftp: java.lang.String command(java.lang.String)>(r2) 

(declare-const var3209!1 var2564)
(declare-const var3803!1 String)
(assert true)
(define-const var1413 String (pwd/597760830 var3209!1)) ; Statement: r4 = virtualinvoke r3.<cn.hutool.extra.ssh.SshjSftp: java.lang.String pwd()>() 
(assert true)
(define-const var1606 Bool (= var1413 var1976)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var357-init=([], java.lang.Object[]), cast-from-String-to-var357=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), command/-1304307563=([cn.hutool.extra.ssh.SshjSftp, java.lang.String], java.lang.String), pwd/597760830=([cn.hutool.extra.ssh.SshjSftp], java.lang.String)}
; {var2564=cn.hutool.extra.ssh.SshjSftp, var3209=r3, var1976=r1, var753=null_type, var357=java.lang.Object, var102=$r0, var3803=r2, var1413=r4, var1606=$z0}
; {cn.hutool.extra.ssh.SshjSftp=var2564, r3=var3209, r1=var1976, null_type=var753, java.lang.Object=var357, $r0=var102, r2=var3803, r4=var1413, $z0=var1606}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: cn.hutool.extra.ssh.SshjSftp;	r1 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("cd %s", $r0);	virtualinvoke r3.<cn.hutool.extra.ssh.SshjSftp: java.lang.String command(java.lang.String)>(r2);	r4 = virtualinvoke r3.<cn.hutool.extra.ssh.SshjSftp: java.lang.String pwd()>();	$z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z0
;block_num 1