(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3584 0)
(declare-sort var1202 0)
(declare-sort var1291 0)
(declare-sort var692 0)
(declare-sort var1442 0)
(declare-sort var1377 0)
(declare-sort var1528 0)
(declare-sort var1602 0)
(declare-sort var948 0)
(declare-sort var913 0)
(declare-sort var3919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1291!class ClassObject)
(declare-fun var1202_noneOf/593140170 (ClassObject) var1202)
(declare-fun cls/594480788 (var3584) String)
(declare-fun classes/594480788 (var3584) var1442)
(declare-fun var1442_isEmpty/-153543822 (var1442) Bool)
(declare-fun files/594480788 (var3584) var1377)
(declare-fun isEmpty/633059479 (var1377) Bool)
(declare-fun var1528_size/-649653377 (var1528) Int)
(declare-fun cast-from-var1202-to-var1528 (var1202) var1528)
(declare-fun var1602-init () var1602)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1291_values/-22076237 () (Array Int var1291))
(declare-fun append/-1031950772 (String var948) String)
(declare-fun cast-from-__Array__Int__var1291__-to-var948 ((Array Int var1291)) var948)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var3919) var913)
(declare-fun cast-from-var3584-to-var3919 (var3584) var3919)
(declare-fun <init>/-469549130 (var1602 String var913) void)
(declare-const null-var3584 var3584)
(declare-const null-String String)
(declare-const var2861 var3584) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah 
(assert (not (= var2861 null-var3584)))
(define-const var2115 var1202 (var1202_noneOf/593140170 var1291!class)) ; Statement: r0 = staticinvoke <java.util.EnumSet: java.util.EnumSet noneOf(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/taskdefs/optional/Javah$Settings;") 
(define-const var2735 String (cls/594480788 var2861)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: java.lang.String 'cls'> 
 ; Statement: if $r2 == null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: java.util.List classes> 
(assert (= var2735 null-String)) ; Cond: $r2 == null 
(define-const var421 var1442 (classes/594480788 var2861)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: java.util.List classes> 
(define-const var3577 Bool (var1442_isEmpty/-153543822 var421)) ; Statement: $z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: java.util.Vector files> 
(assert (not (= (ite var3577 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1675 var1377 (files/594480788 var2861)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: java.util.Vector files> 
(assert true)
(define-const var3926 Bool (isEmpty/633059479 var1675)) ; Statement: $z1 = virtualinvoke $r4.<java.util.Vector: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $i0 = interfaceinvoke r0.<java.util.Set: int size()>() 
(assert (not (= (ite var3926 1 0) 0))) ; Cond: $z1 != 0 
(define-const var649 Int (var1528_size/-649653377 (cast-from-var1202-to-var1528 var2115))) ; Statement: $i0 = interfaceinvoke r0.<java.util.Set: int size()>() 
 ; Statement: if $i0 <= 1 goto $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: java.io.File destDir> 
(assert (not (<= var649 1))) ; Negate: Cond: $i0 <= 1  
(define-const var1583 var1602 var1602-init) ; Statement: $r29 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1749 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1749)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1749!1 String)
(assert (= var1749!1 ""))
(assert true)
(define-const var1385 String (append/672562846 var1749!1 "Exactly one of ")) ; Statement: $r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exactly one of ") 
(declare-const var1749!2 String)
(assert (= var1749!2 (str.++ var1749!1 "Exactly one of ")))
(define-const var1452 (Array Int var1291) var1291_values/-22076237) ; Statement: $r31 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah$Settings: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah$Settings[] values()>() 
(assert true)
(define-const var449 String (append/-1031950772 var1385 (cast-from-__Array__Int__var1291__-to-var948 var1452))) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r31) 
(declare-const var1385!1 String)
(assert (str.prefixof var1385 var1385!1))
(assert true)
(define-const var3753 String (append/672562846 var449 " attributes is required")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" attributes is required") 
(declare-const var449!1 String)
(assert (= var449!1 (str.++ var449 " attributes is required")))
(assert true)
(define-const var3101 String (toString/-2075883882 var3753)) ; Statement: $r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3975 var913 (getLocation/851674571 (cast-from-var3584-to-var3919 var2861))) ; Statement: $r35 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var1583 var3101 var3975)) ; Statement: specialinvoke $r29.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r36, $r35) 

(declare-const var1583!1 var1602)
(declare-const var3101!1 String)
(declare-const var3975!1 var913)
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var1202_noneOf/593140170=([java.lang.Class], java.util.EnumSet), cls/594480788=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah], java.lang.String), classes/594480788=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah], java.util.List), var1442_isEmpty/-153543822=([java.util.List], boolean), files/594480788=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah], java.util.Vector), isEmpty/633059479=([java.util.Vector], boolean), var1528_size/-649653377=([java.util.Set], int), cast-from-var1202-to-var1528=([java.util.EnumSet], java.util.Set), var1602-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1291_values/-22076237=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah$Settings[]), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-__Array__Int__var1291__-to-var948=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah$Settings[]], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var3584-to-var3919=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var3584=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah, var2861=r1, var1202=java.util.EnumSet, var1291=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah$Settings, var2115=r0, var2735=$r2, var692=null_type, var1442=java.util.List, var421=$r3, var3577=$z0, var1377=java.util.Vector, var1675=$r4, var3926=$z1, var1528=java.util.Set, var649=$i0, var1602=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1583=$r29, var1749=$r30, var1385=$r32, var1452=$r31, var948=java.lang.Object, var449=$r33, var3753=$r34, var3101=$r36, var913=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3919=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3975=$r35}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah=var3584, r1=var2861, java.util.EnumSet=var1202, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah$Settings=var1291, r0=var2115, $r2=var2735, null_type=var692, java.util.List=var1442, $r3=var421, $z0=var3577, java.util.Vector=var1377, $r4=var1675, $z1=var3926, java.util.Set=var1528, $i0=var649, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1602, $r29=var1583, $r30=var1749, $r32=var1385, $r31=var1452, java.lang.Object=var948, $r33=var449, $r34=var3753, $r36=var3101, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var913, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3919, $r35=var3975}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah;	r0 = staticinvoke <java.util.EnumSet: java.util.EnumSet noneOf(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/taskdefs/optional/Javah$Settings;");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: java.lang.String 'cls'>;	if $r2 == null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: java.util.List classes>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: java.util.List classes>;	$z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>();	if $z0 != 0 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: java.util.Vector files>;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: java.util.Vector files>;	$z1 = virtualinvoke $r4.<java.util.Vector: boolean isEmpty()>();	if $z1 != 0 goto $i0 = interfaceinvoke r0.<java.util.Set: int size()>();	$i0 = interfaceinvoke r0.<java.util.Set: int size()>();	if $i0 <= 1 goto $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: java.io.File destDir>;	$r29 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exactly one of ");	$r31 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah$Settings: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah$Settings[] values()>();	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r31);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" attributes is required");	$r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	$r35 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r29.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r36, $r35);	throw $r29
;block_num 5