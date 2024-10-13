(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var20 0)
(declare-sort var184 0)
(declare-sort var3866 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3866_requireDirectoryExists/-1197812669 (var20 String) void)
(declare-fun listFiles/1368441200 (var20) (Array Int var20))
(declare-const null-var20 var20)
(declare-const null-var184 var184)
(declare-const null-__Array__Int__var20__ (Array Int var20))
(declare-const var3536 var20) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3536 null-var20)))
(declare-const var938 var184) ; Statement: r1 := @parameter1: java.io.FileFilter 
(assert (not (= var938 null-var184)))
;(assert (var3866_requireDirectoryExists/-1197812669 var3536 "directory")) ; Statement: staticinvoke <org.apache.commons.io.FileUtils: void requireDirectoryExists(java.io.File,java.lang.String)>(r0, "directory") 

(declare-const var3536!1 var20)
(declare-const var1212 String)
 ; Statement: if r1 != null goto $r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles(java.io.FileFilter)>(r1) 
(assert (not (not (= var938 null-var184)))) ; Negate: Cond: r1 != null  
(assert true)
(define-const var2052 (Array Int var20) (listFiles/1368441200 var3536!1)) ; Statement: $r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r7 != null goto return $r7 
(assert (not (= var2052 null-__Array__Int__var20__))) ; Cond: $r7 != null 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3866_requireDirectoryExists/-1197812669=([java.io.File, java.lang.String], void), listFiles/1368441200=([java.io.File], java.io.File[])}
; {var20=java.io.File, var3536=r0, var184=java.io.FileFilter, var938=r1, var3866=org.apache.commons.io.FileUtils, var1212="directory", var2052=$r7}
; {java.io.File=var20, r0=var3536, java.io.FileFilter=var184, r1=var938, org.apache.commons.io.FileUtils=var3866, "directory"=var1212, $r7=var2052}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.File;	r1 := @parameter1: java.io.FileFilter;	staticinvoke <org.apache.commons.io.FileUtils: void requireDirectoryExists(java.io.File,java.lang.String)>(r0, "directory");	if r1 != null goto $r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles(java.io.FileFilter)>(r1);	$r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles()>();	goto [?= (branch)];	if $r7 != null goto return $r7;	return $r7
;block_num 4