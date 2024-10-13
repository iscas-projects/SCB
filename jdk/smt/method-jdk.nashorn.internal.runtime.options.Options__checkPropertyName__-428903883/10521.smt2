(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1199 0)
(declare-sort var2781 0)
(declare-sort var2617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2617_requireNonNull/-961817614 (var2781) var2781)
(declare-fun cast-from-String-to-var2781 (String) var2781)
(declare-fun cast-from-var2781-to-String (var2781) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var546 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var546 null-String)))
(define-const var3626 var2781 (var2617_requireNonNull/-961817614 (cast-from-String-to-var2781 var546))) ; Statement: $r1 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0) 
(define-const var1326 String (cast-from-var2781-to-String var3626)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var1354 Bool (startsWith/-1785782452 var1326 "nashorn.")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>("nashorn.") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1354 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2617_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var2781=([java.lang.String], java.lang.Object), cast-from-var2781-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var546=r0, var1199=null_type, var2781=java.lang.Object, var2617=java.util.Objects, var3626=$r1, var1326=$r2, var1354=$z0}
; {r0=var546, null_type=var1199, java.lang.Object=var2781, java.util.Objects=var2617, $r1=var3626, $r2=var1326, $z0=var1354}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0);	$r2 = (java.lang.String) $r1;	$z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>("nashorn.");	if $z0 != 0 goto return;	return
;block_num 2