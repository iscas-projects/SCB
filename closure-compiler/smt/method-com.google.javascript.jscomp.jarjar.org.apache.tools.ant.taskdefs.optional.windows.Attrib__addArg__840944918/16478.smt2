(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3880 0)
(declare-sort var1095 0)
(declare-sort var619 0)
(declare-sort var3360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createArg/-2032400575 (var3360) var619)
(declare-fun cast-from-var3880-to-var3360 (var3880) var3360)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3880_getSignString/1088918927 (Bool) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setValue/2115864135 (var619 String) void)
(declare-fun haveAttr/1814512711 (var3880) Bool)
(declare-const null-var3880 var3880)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var1631 var3880) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib 
(assert (not (= var1631 null-var3880)))
(declare-const var2216 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2216 null-Bool)))
(declare-const var812 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var812 null-String)))
(assert true)
(define-const var3295 var619 (createArg/-2032400575 (cast-from-var3880-to-var3360 var1631))) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArg()>() 
(define-const var1283 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1283)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1283!1 String)
(assert (= var1283!1 ""))
(define-const var2410 String (var3880_getSignString/1088918927 var2216)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: java.lang.String getSignString(boolean)>(z0) 
(assert true)
(define-const var2831 String (append/672562846 var1283!1 var2410)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1283!2 String)
(assert (= var1283!2 (str.++ var1283!1 var2410)))
(assert true)
(define-const var3054 String (append/672562846 var2831 var812)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2831!1 String)
(assert (= var2831!1 (str.++ var2831 var812)))
(assert true)
(define-const var1321 String (toString/-2075883882 var3054)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setValue/2115864135 var3295 var1321)) ; Statement: virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r6) 

(declare-const var3295!1 var619)
(declare-const var1321!1 String)
(declare-const var1631!1 var3880)
(assert (not (= var1631!1 null-var3880)))
(assert (= (haveAttr/1814512711 var1631!1) (ite (= 1 1) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: boolean haveAttr> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {createArg/-2032400575=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), cast-from-var3880-to-var3360=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3880_getSignString/1088918927=([boolean], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void), haveAttr/1814512711=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib], boolean)}
; {var3880=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib, var1631=r0, var2216=z0, var812=r3, var1095=null_type, var619=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var3360=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, var3295=$r7, var1283=$r1, var2410=$r2, var2831=$r4, var3054=$r5, var1321=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib=var3880, r0=var1631, z0=var2216, r3=var812, null_type=var1095, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var619, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask=var3360, $r7=var3295, $r1=var1283, $r2=var2410, $r4=var2831, $r5=var3054, $r6=var1321}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib;	z0 := @parameter0: boolean;	r3 := @parameter1: java.lang.String;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArg()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: java.lang.String getSignString(boolean)>(z0);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r6);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: boolean haveAttr> = 1;	return
;block_num 1