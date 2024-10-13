(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1366 0)
(declare-sort var2332 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkArchiveAttributesAllowed/-1492873968 (var1366) void)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun prefix/-1243993352 (var1366) String)
(declare-const null-var1366 var1366)
(declare-const null-String String)
(declare-const var3570 var1366) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet 
(assert (not (= var3570 null-var1366)))
(declare-const var2114 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2114 null-String)))
(assert true)
;(assert (checkArchiveAttributesAllowed/-1492873968 var3570)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: void checkArchiveAttributesAllowed()>() 

(declare-const var3570!1 var1366)
(assert true)
(define-const var3901 Bool (isEmpty/-1285796103 var2114)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: java.lang.String prefix> = r1 
(assert (not (= (ite var3901 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var3570!2 var1366)
(assert (not (= var3570!2 null-var1366)))
(assert (= (prefix/-1243993352 var3570!2) var2114)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: java.lang.String prefix> = r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {checkArchiveAttributesAllowed/-1492873968=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet], void), isEmpty/-1285796103=([java.lang.String], boolean), prefix/-1243993352=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet], java.lang.String)}
; {var1366=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet, var3570=r0, var2114=r1, var2332=null_type, var3901=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet=var1366, r0=var3570, r1=var2114, null_type=var2332, $z0=var3901}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: void checkArchiveAttributesAllowed()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: java.lang.String prefix> = r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: java.lang.String prefix> = r1;	return
;block_num 2