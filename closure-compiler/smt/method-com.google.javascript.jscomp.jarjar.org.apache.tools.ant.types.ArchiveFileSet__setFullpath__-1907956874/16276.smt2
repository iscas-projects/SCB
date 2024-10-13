(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var844 0)
(declare-sort var1538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkArchiveAttributesAllowed/-1492873968 (var844) void)
(declare-fun prefix/-1243993352 (var844) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun fullpath/-1243993352 (var844) String)
(declare-const null-var844 var844)
(declare-const null-String String)
(declare-const var545 var844) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet 
(assert (not (= var545 null-var844)))
(declare-const var57 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var57 null-String)))
(assert true)
;(assert (checkArchiveAttributesAllowed/-1492873968 var545)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: void checkArchiveAttributesAllowed()>() 

(declare-const var545!1 var844)
(define-const var3261 String (prefix/-1243993352 var545!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: java.lang.String prefix> 
(assert true)
(define-const var963 Bool (isEmpty/-1285796103 var3261)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: java.lang.String fullpath> = r2 
(assert (not (= (ite var963 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var545!2 var844)
(assert (not (= var545!2 null-var844)))
(assert (= (fullpath/-1243993352 var545!2) var57)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: java.lang.String fullpath> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {checkArchiveAttributesAllowed/-1492873968=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet], void), prefix/-1243993352=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), fullpath/-1243993352=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet], java.lang.String)}
; {var844=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet, var545=r0, var57=r2, var1538=null_type, var3261=$r1, var963=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet=var844, r0=var545, r2=var57, null_type=var1538, $r1=var3261, $z0=var963}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet;	r2 := @parameter0: java.lang.String;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: void checkArchiveAttributesAllowed()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: java.lang.String prefix>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: java.lang.String fullpath> = r2;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet: java.lang.String fullpath> = r2;	return
;block_num 2