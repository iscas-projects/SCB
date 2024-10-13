(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2392 0)
(declare-sort var3962 0)
(declare-sort var48 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var48_requireDirectoryExists/-1197812669 (var2392 String) void)
(declare-fun listFiles/1458550752 (var2392 var3962) (Array Int var2392))
(declare-const null-var2392 var2392)
(declare-const null-var3962 var3962)
(declare-const null-__Array__Int__var2392__ (Array Int var2392))
(declare-const var768 var2392) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var768 null-var2392)))
(declare-const var2282 var3962) ; Statement: r1 := @parameter1: java.io.FileFilter 
(assert (not (= var2282 null-var3962)))
;(assert (var48_requireDirectoryExists/-1197812669 var768 "directory")) ; Statement: staticinvoke <org.apache.commons.io.FileUtils: void requireDirectoryExists(java.io.File,java.lang.String)>(r0, "directory") 

(declare-const var768!1 var2392)
(declare-const var1507 String)
 ; Statement: if r1 != null goto $r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles(java.io.FileFilter)>(r1) 
(assert (not (= var2282 null-var3962))) ; Cond: r1 != null 
(assert true)
(define-const var3462 (Array Int var2392) (listFiles/1458550752 var768!1 var2282)) ; Statement: $r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles(java.io.FileFilter)>(r1) 
(assert true) ; Non Conditional
 ; Statement: if $r7 != null goto return $r7 
(assert (not (= var3462 null-__Array__Int__var2392__))) ; Cond: $r7 != null 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var48_requireDirectoryExists/-1197812669=([java.io.File, java.lang.String], void), listFiles/1458550752=([java.io.File, java.io.FileFilter], java.io.File[])}
; {var2392=java.io.File, var768=r0, var3962=java.io.FileFilter, var2282=r1, var48=org.apache.commons.io.FileUtils, var1507="directory", var3462=$r7}
; {java.io.File=var2392, r0=var768, java.io.FileFilter=var3962, r1=var2282, org.apache.commons.io.FileUtils=var48, "directory"=var1507, $r7=var3462}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.File;	r1 := @parameter1: java.io.FileFilter;	staticinvoke <org.apache.commons.io.FileUtils: void requireDirectoryExists(java.io.File,java.lang.String)>(r0, "directory");	if r1 != null goto $r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles(java.io.FileFilter)>(r1);	$r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles(java.io.FileFilter)>(r1);	if $r7 != null goto return $r7;	return $r7
;block_num 4