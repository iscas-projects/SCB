(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2400 0)
(declare-sort var908 0)
(declare-sort var205 0)
(declare-sort var2237 0)
(declare-sort var3552 0)
(declare-sort var646 0)
(declare-sort var2573 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var205-init () (Array Int var205))
(declare-fun cast-from-var908-to-var205 (var908) var205)
(declare-fun String_format/1339386452 (String (Array Int var205)) String)
(declare-fun nonPosixMode/591965982 (var2400) var3552)
(declare-fun ordinal/-291641772 (var646) Int)
(declare-fun cast-from-var3552-to-var646 (var3552) var646)
(declare-fun var2573-init () var2573)
(declare-fun <init>/1864341934 (var2573 String) void)
(declare-const null-var2400 var2400)
(declare-const null-var908 var908)
(declare-const null-__Array__Int__var205__ (Array Int var205))
(declare-const var2237-$SwitchMap$org$apache$tools$ant$taskdefs$SetPermissions$NonPosixMode (Array Int Int))
(declare-const var2544 var2400) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions 
(assert (not (= var2544 null-var2400)))
(declare-const var2284 var908) ; Statement: r1 := @parameter0: java.nio.file.Path 
(assert (not (= var2284 null-var908)))
(define-const var3658 (Array Int var205) arr-var205-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var3658!1 (Array Int var205))
(assert (not (= var3658!1 null-__Array__Int__var205__)))
(assert (= (select var3658!1 0) (cast-from-var908-to-var205 var2284))) ; Statement: $r0[0] = r1 
(define-const var1502 String (String_format/1339386452 "the associated path \u0027%s\u0027 does not support the PosixFileAttributeView" var3658!1)) ; Statement: r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("the associated path \'%s\' does not support the PosixFileAttributeView", $r0) 
(define-const var2900 (Array Int Int) var2237-$SwitchMap$org$apache$tools$ant$taskdefs$SetPermissions$NonPosixMode) ; Statement: $r5 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$1: int[] $SwitchMap$org$apache$tools$ant$taskdefs$SetPermissions$NonPosixMode> 
(define-const var841 var3552 (nonPosixMode/591965982 var2544)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode nonPosixMode> 
(assert true)
(define-const var2192 Int (ordinal/-291641772 (cast-from-var3552-to-var646 var841))) ; Statement: $i0 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode: int ordinal()>() 
(define-const var1638 Int (select var2900 var2192)) ; Statement: $i1 = $r5[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;     case 2: goto $r6 = new java.lang.StringBuilder;     case 3: goto specialinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void tryDos(java.nio.file.Path,boolean)>(r1, 1);     case 4: goto specialinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void tryDos(java.nio.file.Path,boolean)>(r1, 0);     default: goto return; } 
(assert (and (= var1638 1) true)) ; Intersect: Cond: $i1 == 1  and Non Conditional 
(define-const var2732 var2573 var2573-init) ; Statement: $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var2732 var1502)) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>(r2) 

(declare-const var2732!1 var2573)
(declare-const var1502!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var205-init=([], java.lang.Object[]), cast-from-var908-to-var205=([java.nio.file.Path], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), nonPosixMode/591965982=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3552-to-var646=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode], java.lang.Enum), var2573-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var2400=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions, var2544=r3, var908=java.nio.file.Path, var2284=r1, var205=java.lang.Object, var3658=$r0, var1502=r2, var2237=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$1, var2900=$r5, var3552=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode, var841=$r4, var646=java.lang.Enum, var2192=$i0, var1638=$i1, var2573=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2732=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions=var2400, r3=var2544, java.nio.file.Path=var908, r1=var2284, java.lang.Object=var205, $r0=var3658, r2=var1502, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$1=var2237, $r5=var2900, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode=var3552, $r4=var841, java.lang.Enum=var646, $i0=var2192, $i1=var1638, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2573, $r10=var2732}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions;	r1 := @parameter0: java.nio.file.Path;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("the associated path \'%s\' does not support the PosixFileAttributeView", $r0);	$r5 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$1: int[] $SwitchMap$org$apache$tools$ant$taskdefs$SetPermissions$NonPosixMode>;	$r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode nonPosixMode>;	$i0 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode: int ordinal()>();	$i1 = $r5[$i0];	tableswitch($i1) {     case 1: goto $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;     case 2: goto $r6 = new java.lang.StringBuilder;     case 3: goto specialinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void tryDos(java.nio.file.Path,boolean)>(r1, 1);     case 4: goto specialinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void tryDos(java.nio.file.Path,boolean)>(r1, 0);     default: goto return; };	$r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>(r2);	throw $r10
;block_num 2