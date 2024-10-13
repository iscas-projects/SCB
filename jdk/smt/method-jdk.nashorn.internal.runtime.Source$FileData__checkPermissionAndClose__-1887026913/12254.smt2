(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1687 0)
(declare-sort var451 0)
(declare-sort var3698 0)
(declare-sort var3935 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/-2068647888 (var1687) var451)
(declare-fun canRead/-1629014391 (var451) Bool)
(declare-fun arr-var3698-init () (Array Int var3698))
(declare-fun cast-from-String-to-var3698 (String) var3698)
(declare-fun cast-from-var451-to-var3698 (var451) var3698)
(declare-fun var3935_access$200/798281496 ((Array Int var3698)) void)
(declare-const null-var1687 var1687)
(declare-const null-__Array__Int__var3698__ (Array Int var3698))
(declare-const var911 var1687) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.Source$FileData 
(assert (not (= var911 null-var1687)))
(define-const var1411 var451 (file/-2068647888 var911)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.Source$FileData: java.io.File file> 
(assert true)
(define-const var955 Bool (canRead/-1629014391 var1411)) ; Statement: $z0 = virtualinvoke $r1.<java.io.File: boolean canRead()>() 
 ; Statement: if $z0 != 0 goto $r2 = newarray (java.lang.Object)[2] 
(assert (not (= (ite var955 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3479 (Array Int var3698) arr-var3698-init) ; Statement: $r2 = newarray (java.lang.Object)[2] 
(declare-const var3479!1 (Array Int var3698))
(assert (not (= var3479!1 null-__Array__Int__var3698__)))
(assert (= (select var3479!1 0) (cast-from-String-to-var3698 "permission checked for "))) ; Statement: $r2[0] = "permission checked for " 
(define-const var1469 var451 (file/-2068647888 var911)) ; Statement: $r3 = r0.<jdk.nashorn.internal.runtime.Source$FileData: java.io.File file> 
(declare-const var3479!2 (Array Int var3698))
(assert (not (= var3479!2 null-__Array__Int__var3698__)))
(assert (= (select var3479!2 1) (cast-from-var451-to-var3698 var1469))) ; Statement: $r2[1] = $r3 
;(assert (var3935_access$200/798281496 var3479!2)) ; Statement: staticinvoke <jdk.nashorn.internal.runtime.Source: void access$200(java.lang.Object[])>($r2) 

(declare-const var3479!3 (Array Int var3698))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {file/-2068647888=([jdk.nashorn.internal.runtime.Source$FileData], java.io.File), canRead/-1629014391=([java.io.File], boolean), arr-var3698-init=([], java.lang.Object[]), cast-from-String-to-var3698=([java.lang.String], java.lang.Object), cast-from-var451-to-var3698=([java.io.File], java.lang.Object), var3935_access$200/798281496=([java.lang.Object[]], void)}
; {var1687=jdk.nashorn.internal.runtime.Source$FileData, var911=r0, var451=java.io.File, var1411=$r1, var955=$z0, var3698=java.lang.Object, var3479=$r2, var1469=$r3, var3935=jdk.nashorn.internal.runtime.Source}
; {jdk.nashorn.internal.runtime.Source$FileData=var1687, r0=var911, java.io.File=var451, $r1=var1411, $z0=var955, java.lang.Object=var3698, $r2=var3479, $r3=var1469, jdk.nashorn.internal.runtime.Source=var3935}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.runtime.Source$FileData;	$r1 = r0.<jdk.nashorn.internal.runtime.Source$FileData: java.io.File file>;	$z0 = virtualinvoke $r1.<java.io.File: boolean canRead()>();	if $z0 != 0 goto $r2 = newarray (java.lang.Object)[2];	$r2 = newarray (java.lang.Object)[2];	$r2[0] = "permission checked for ";	$r3 = r0.<jdk.nashorn.internal.runtime.Source$FileData: java.io.File file>;	$r2[1] = $r3;	staticinvoke <jdk.nashorn.internal.runtime.Source: void access$200(java.lang.Object[])>($r2);	return
;block_num 2