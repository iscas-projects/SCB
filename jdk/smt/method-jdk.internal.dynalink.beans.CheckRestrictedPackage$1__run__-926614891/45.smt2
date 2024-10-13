(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var331 0)
(declare-sort var3696 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$sm/57493011 (var331) var3696)
(declare-fun val$name/57493011 (var331) String)
(declare-fun val$i/57493011 (var331) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun checkPackageAccess/-1898543497 (var3696 String) void)
(declare-const null-var331 var331)
(declare-const var874 var331) ; Statement: r0 := @this: jdk.internal.dynalink.beans.CheckRestrictedPackage$1 
(assert (not (= var874 null-var331)))
(define-const var3569 var3696 (val$sm/57493011 var874)) ; Statement: $r2 = r0.<jdk.internal.dynalink.beans.CheckRestrictedPackage$1: java.lang.SecurityManager val$sm> 
(define-const var3492 String (val$name/57493011 var874)) ; Statement: $r1 = r0.<jdk.internal.dynalink.beans.CheckRestrictedPackage$1: java.lang.String val$name> 
(define-const var2143 Int (val$i/57493011 var874)) ; Statement: $i0 = r0.<jdk.internal.dynalink.beans.CheckRestrictedPackage$1: int val$i> 
(assert (and true (and (>= 0 0) (>= (str.len var3492) var2143) (>= var2143 0))))
(define-const var3688 String (substring/-1240304868 var3492 0 var2143)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i0) 
(assert true)
;(assert (checkPackageAccess/-1898543497 var3569 var3688)) ; Statement: virtualinvoke $r2.<java.lang.SecurityManager: void checkPackageAccess(java.lang.String)>($r3) 

(declare-const var3569!1 var3696)
(declare-const var3688!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {val$sm/57493011=([jdk.internal.dynalink.beans.CheckRestrictedPackage$1], java.lang.SecurityManager), val$name/57493011=([jdk.internal.dynalink.beans.CheckRestrictedPackage$1], java.lang.String), val$i/57493011=([jdk.internal.dynalink.beans.CheckRestrictedPackage$1], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), checkPackageAccess/-1898543497=([java.lang.SecurityManager, java.lang.String], void)}
; {var331=jdk.internal.dynalink.beans.CheckRestrictedPackage$1, var874=r0, var3696=java.lang.SecurityManager, var3569=$r2, var3492=$r1, var2143=$i0, var3688=$r3}
; {jdk.internal.dynalink.beans.CheckRestrictedPackage$1=var331, r0=var874, java.lang.SecurityManager=var3696, $r2=var3569, $r1=var3492, $i0=var2143, $r3=var3688}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: jdk.internal.dynalink.beans.CheckRestrictedPackage$1;	$r2 = r0.<jdk.internal.dynalink.beans.CheckRestrictedPackage$1: java.lang.SecurityManager val$sm>;	$r1 = r0.<jdk.internal.dynalink.beans.CheckRestrictedPackage$1: java.lang.String val$name>;	$i0 = r0.<jdk.internal.dynalink.beans.CheckRestrictedPackage$1: int val$i>;	$r3 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	virtualinvoke $r2.<java.lang.SecurityManager: void checkPackageAccess(java.lang.String)>($r3);	return null
;block_num 1