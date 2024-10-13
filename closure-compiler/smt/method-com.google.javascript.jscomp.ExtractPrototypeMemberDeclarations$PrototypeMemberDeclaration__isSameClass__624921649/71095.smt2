(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun qualifiedClassName/-1185470383 (var1795) String)
(declare-const null-var1795 var1795)
(declare-const var3346 var1795) ; Statement: r0 := @this: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$PrototypeMemberDeclaration 
(assert (not (= var3346 null-var1795)))
(declare-const var1892 var1795) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$PrototypeMemberDeclaration 
(assert (not (= var1892 null-var1795)))
(define-const var607 String (qualifiedClassName/-1185470383 var3346)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$PrototypeMemberDeclaration: java.lang.String qualifiedClassName> 
(define-const var3631 String (qualifiedClassName/-1185470383 var1892)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$PrototypeMemberDeclaration: java.lang.String qualifiedClassName> 
(assert true)
(define-const var1636 Bool (= var607 var3631)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {qualifiedClassName/-1185470383=([com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$PrototypeMemberDeclaration], java.lang.String)}
; {var1795=com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$PrototypeMemberDeclaration, var3346=r0, var1892=r1, var607=$r3, var3631=$r2, var1636=$z0}
; {com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$PrototypeMemberDeclaration=var1795, r0=var3346, r1=var1892, $r3=var607, $r2=var3631, $z0=var1636}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$PrototypeMemberDeclaration;	r1 := @parameter0: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$PrototypeMemberDeclaration;	$r3 = r0.<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$PrototypeMemberDeclaration: java.lang.String qualifiedClassName>;	$r2 = r1.<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$PrototypeMemberDeclaration: java.lang.String qualifiedClassName>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	return $z0
;block_num 1