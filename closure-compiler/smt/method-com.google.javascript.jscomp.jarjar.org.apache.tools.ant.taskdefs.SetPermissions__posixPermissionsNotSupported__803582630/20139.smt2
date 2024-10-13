(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var302 0)
(declare-sort var2301 0)
(declare-sort var3679 0)
(declare-sort var2727 0)
(declare-sort var812 0)
(declare-sort var3832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3679-init () (Array Int var3679))
(declare-fun cast-from-var2301-to-var3679 (var2301) var3679)
(declare-fun String_format/1339386452 (String (Array Int var3679)) String)
(declare-fun nonPosixMode/591965982 (var302) var812)
(declare-fun ordinal/-291641772 (var3832) Int)
(declare-fun cast-from-var812-to-var3832 (var812) var3832)
(declare-const null-var302 var302)
(declare-const null-var2301 var2301)
(declare-const null-__Array__Int__var3679__ (Array Int var3679))
(declare-const var2727-$SwitchMap$org$apache$tools$ant$taskdefs$SetPermissions$NonPosixMode (Array Int Int))
(declare-const var2867 var302) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions 
(assert (not (= var2867 null-var302)))
(declare-const var3254 var2301) ; Statement: r1 := @parameter0: java.nio.file.Path 
(assert (not (= var3254 null-var2301)))
(define-const var1990 (Array Int var3679) arr-var3679-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var1990!1 (Array Int var3679))
(assert (not (= var1990!1 null-__Array__Int__var3679__)))
(assert (= (select var1990!1 0) (cast-from-var2301-to-var3679 var3254))) ; Statement: $r0[0] = r1 
(define-const var2783 String (String_format/1339386452 "the associated path \u0027%s\u0027 does not support the PosixFileAttributeView" var1990!1)) ; Statement: r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("the associated path \'%s\' does not support the PosixFileAttributeView", $r0) 
(define-const var2367 (Array Int Int) var2727-$SwitchMap$org$apache$tools$ant$taskdefs$SetPermissions$NonPosixMode) ; Statement: $r5 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$1: int[] $SwitchMap$org$apache$tools$ant$taskdefs$SetPermissions$NonPosixMode> 
(define-const var3578 var812 (nonPosixMode/591965982 var2867)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode nonPosixMode> 
(assert true)
(define-const var3486 Int (ordinal/-291641772 (cast-from-var812-to-var3832 var3578))) ; Statement: $i0 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode: int ordinal()>() 
(define-const var1012 Int (select var2367 var3486)) ; Statement: $i1 = $r5[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;     case 2: goto $r6 = new java.lang.StringBuilder;     case 3: goto specialinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void tryDos(java.nio.file.Path,boolean)>(r1, 1);     case 4: goto specialinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void tryDos(java.nio.file.Path,boolean)>(r1, 0);     default: goto return; } 
(assert (and (not (= var1012 4)) (and (not (= var1012 3)) (and (not (= var1012 2)) (and (not (= var1012 1)) true))))) ; Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3679-init=([], java.lang.Object[]), cast-from-var2301-to-var3679=([java.nio.file.Path], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), nonPosixMode/591965982=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode), ordinal/-291641772=([java.lang.Enum], int), cast-from-var812-to-var3832=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode], java.lang.Enum)}
; {var302=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions, var2867=r3, var2301=java.nio.file.Path, var3254=r1, var3679=java.lang.Object, var1990=$r0, var2783=r2, var2727=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$1, var2367=$r5, var812=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode, var3578=$r4, var3832=java.lang.Enum, var3486=$i0, var1012=$i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions=var302, r3=var2867, java.nio.file.Path=var2301, r1=var3254, java.lang.Object=var3679, $r0=var1990, r2=var2783, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$1=var2727, $r5=var2367, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode=var812, $r4=var3578, java.lang.Enum=var3832, $i0=var3486, $i1=var1012}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions;	r1 := @parameter0: java.nio.file.Path;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("the associated path \'%s\' does not support the PosixFileAttributeView", $r0);	$r5 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$1: int[] $SwitchMap$org$apache$tools$ant$taskdefs$SetPermissions$NonPosixMode>;	$r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode nonPosixMode>;	$i0 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$NonPosixMode: int ordinal()>();	$i1 = $r5[$i0];	tableswitch($i1) {     case 1: goto $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;     case 2: goto $r6 = new java.lang.StringBuilder;     case 3: goto specialinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void tryDos(java.nio.file.Path,boolean)>(r1, 1);     case 4: goto specialinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions: void tryDos(java.nio.file.Path,boolean)>(r1, 0);     default: goto return; };	return
;block_num 2