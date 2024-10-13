(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1725 0)
(declare-sort var1304 0)
(declare-sort var982 0)
(declare-sort var3404 0)
(declare-sort var774 0)
(declare-sort var3269 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3269-init () var3269)
(declare-fun <init>/1864341934 (var3269 String) void)
(declare-const null-var1725 var1725)
(declare-const null-var1304 var1304)
(declare-const null-__Array__Int__var982__ (Array Int var982))
(declare-const null-var3404 var3404)
(declare-const null-var774 var774)
(declare-const var2636 var1725) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip 
(assert (not (= var2636 null-var1725)))
(declare-const var819 var1304) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet 
(assert (not (= var819 null-var1304)))
(declare-const var154 (Array Int var982)) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource[] 
(assert (not (= var154 null-__Array__Int__var982__)))
(declare-const var2157 var3404) ; Statement: r5 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream 
(assert (not (= var2157 null-var3404)))
(define-const var1690 String "") ; Statement: r32 = "" 
(define-const var3264 String "") ; Statement: r33 = "" 
(define-const var2027 Int 16877) ; Statement: i3 = 16877 
(define-const var2364 Int (cast-from-Int-to-Int 33188)) ; Statement: $i10 = (int) 33188 
(define-const var2232 Int var2364) ; Statement: i4 = $i10 
(define-const var2723 var774 null-var774) ; Statement: r34 = null 
(define-const var868 Bool false) ; Statement: $z0 = r0 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r32.<java.lang.String: boolean isEmpty()>() 
(assert (= (ite var868 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var390 Bool (isEmpty/-1285796103 var1690)) ; Statement: $z1 = virtualinvoke r32.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $i0 = lengthof r1 
(assert (not (not (= (ite var390 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var270 Bool (isEmpty/-1285796103 var3264)) ; Statement: $z13 = virtualinvoke r33.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z13 != 0 goto $i0 = lengthof r1 
(assert (not (not (= (ite var270 1 0) 0)))) ; Negate: Cond: $z13 != 0  
(define-const var936 var3269 var3269-init) ; Statement: $r40 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var936 "Both prefix and fullpath attributes must not be set on the same fileset.")) ; Statement: specialinvoke $r40.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("Both prefix and fullpath attributes must not be set on the same fileset.") 

(declare-const var936!1 var3269)
(declare-const var3692 String)
 ; Statement: throw $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), isEmpty/-1285796103=([java.lang.String], boolean), var3269-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1725=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip, var2636=r2, var1304=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet, var819=r0, var982=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var154=r1, var3404=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream, var2157=r5, var1690=r32, var3264=r33, var2027=i3, var2364=$i10, var2232=i4, var774=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet, var2723=r34, var868=$z0, var390=$z1, var270=$z13, var3269=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var936=$r40, var3692="Both prefix and fullpath attributes must not be set on the same fileset."}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip=var1725, r2=var2636, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet=var1304, r0=var819, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var982, r1=var154, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream=var3404, r5=var2157, r32=var1690, r33=var3264, i3=var2027, $i10=var2364, i4=var2232, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet=var774, r34=var2723, $z0=var868, $z1=var390, $z13=var270, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3269, $r40=var936, "Both prefix and fullpath attributes must not be set on the same fileset."=var3692}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 2}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet;	r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource[];	r5 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream;	r32 = "";	r33 = "";	i3 = 16877;	$i10 = (int) 33188;	i4 = $i10;	r34 = null;	$z0 = r0 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveFileSet;	if $z0 == 0 goto $z1 = virtualinvoke r32.<java.lang.String: boolean isEmpty()>();	$z1 = virtualinvoke r32.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto $i0 = lengthof r1;	$z13 = virtualinvoke r33.<java.lang.String: boolean isEmpty()>();	if $z13 != 0 goto $i0 = lengthof r1;	$r40 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r40.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("Both prefix and fullpath attributes must not be set on the same fileset.");	throw $r40
;block_num 4