(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3222 0)
(declare-sort var3891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3891_nullSafeFileName/1799330014 (var3222) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var3222 var3222)
(declare-const var2409 var3222) ; Statement: r0 := @parameter0: java.nio.file.Path 
(assert (not (= var2409 null-var3222)))
(define-const var3295 String (var3891_nullSafeFileName/1799330014 var2409)) ; Statement: r1 = staticinvoke <jdk.jfr.internal.jfc.JFC: java.lang.String nullSafeFileName(java.nio.file.Path)>(r0) 
(assert true)
(define-const var1897 Bool (endsWith/985337093 var3295 ".jfc")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>(".jfc") 
 ; Statement: if $z0 == 0 goto return r1 
(assert (= (ite var1897 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3891_nullSafeFileName/1799330014=([java.nio.file.Path], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3222=java.nio.file.Path, var2409=r0, var3891=jdk.jfr.internal.jfc.JFC, var3295=r1, var1897=$z0}
; {java.nio.file.Path=var3222, r0=var2409, jdk.jfr.internal.jfc.JFC=var3891, r1=var3295, $z0=var1897}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.nio.file.Path;	r1 = staticinvoke <jdk.jfr.internal.jfc.JFC: java.lang.String nullSafeFileName(java.nio.file.Path)>(r0);	$z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>(".jfc");	if $z0 == 0 goto return r1;	return r1
;block_num 2