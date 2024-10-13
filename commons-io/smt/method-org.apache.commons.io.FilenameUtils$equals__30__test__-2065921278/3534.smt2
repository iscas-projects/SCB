(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var240 0)
(declare-sort var1899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1899-to-String (var1899) String)
(declare-fun cap0/-1572705278 (var240) String)
(declare-const null-var240 var240)
(declare-const null-var1899 var1899)
(declare-const var3644 var240) ; Statement: $r0 := @this: org.apache.commons.io.FilenameUtils$equals__30 
(assert (not (= var3644 null-var240)))
(declare-const var2945 var1899) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var2945 null-var1899)))
(define-const var2244 String (cast-from-var1899-to-String var2945)) ; Statement: $r2 = (java.lang.String) $r1 
(define-const var3974 String (cap0/-1572705278 var3644)) ; Statement: $r3 = $r0.<org.apache.commons.io.FilenameUtils$equals__30: java.lang.String cap0> 
(assert true)
(define-const var3972 Bool (= var3974 var2244)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1899-to-String=([java.lang.Object], java.lang.String), cap0/-1572705278=([org.apache.commons.io.FilenameUtils$equals__30], java.lang.String)}
; {var240=org.apache.commons.io.FilenameUtils$equals__30, var3644=$r0, var1899=java.lang.Object, var2945=$r1, var2244=$r2, var3974=$r3, var3972=$z0}
; {org.apache.commons.io.FilenameUtils$equals__30=var240, $r0=var3644, java.lang.Object=var1899, $r1=var2945, $r2=var2244, $r3=var3974, $z0=var3972}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 := @this: org.apache.commons.io.FilenameUtils$equals__30;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = $r0.<org.apache.commons.io.FilenameUtils$equals__30: java.lang.String cap0>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	return $z0
;block_num 1