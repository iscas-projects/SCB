(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-const null-Int Int)
(declare-const var2539 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2539 null-Int)))
(define-const var932 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var932 var2539)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(i0) 

(declare-const var932!1 String)
(declare-const var2539!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void)}
; {var2539=i0, var932=$r0}
; {i0=var2539, $r0=var932}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(i0);	return $r0
;block_num 1