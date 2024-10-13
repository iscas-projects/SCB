(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3043 0)
(declare-sort var2245 0)
(declare-sort var2385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun isIncluded/1185403530 (var2385 String) Bool)
(declare-fun cast-from-var3043-to-var2385 (var3043) var2385)
(declare-const null-var3043 var3043)
(declare-const null-String String)
(declare-const var82 var3043) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveScanner 
(assert (not (= var82 null-var3043)))
(declare-const var302 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var302 null-String)))
(define-const var58 String var302) ; Statement: r3 = r0 
(assert true)
(define-const var2236 Bool (isEmpty/-1285796103 var302)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveScanner: boolean isIncluded(java.lang.String)>(r3) 
(assert (not (= (ite var2236 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1741 Bool (isIncluded/1185403530 (cast-from-var3043-to-var2385 var82) var58)) ; Statement: $z2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveScanner: boolean isIncluded(java.lang.String)>(r3) 
 ; Statement: if $z2 == 0 goto $z3 = 0 
(assert (= (ite var1741 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2703 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), isIncluded/1185403530=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, java.lang.String], boolean), cast-from-var3043-to-var2385=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveScanner], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner)}
; {var3043=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveScanner, var82=r1, var302=r0, var2245=null_type, var58=r3, var2236=$z0, var2385=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var1741=$z2, var2703=$z3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveScanner=var3043, r1=var82, r0=var302, null_type=var2245, r3=var58, $z0=var2236, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var2385, $z2=var1741, $z3=var2703}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveScanner;	r0 := @parameter0: java.lang.String;	r3 = r0;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveScanner: boolean isIncluded(java.lang.String)>(r3);	$z2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveScanner: boolean isIncluded(java.lang.String)>(r3);	if $z2 == 0 goto $z3 = 0;	$z3 = 0;	return $z3
;block_num 4