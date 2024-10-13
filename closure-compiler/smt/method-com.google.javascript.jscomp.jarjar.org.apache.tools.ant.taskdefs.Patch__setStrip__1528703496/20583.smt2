(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3250 0)
(declare-sort var3055 0)
(declare-sort var2846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cmd/561449068 (var3250) var3055)
(declare-fun createArgument/-916843187 (var3055) var2846)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setValue/2115864135 (var2846 String) void)
(declare-const null-var3250 var3250)
(declare-const null-Int Int)
(declare-const var1989 var3250) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch 
(assert (not (= var1989 null-var3250)))
(declare-const var1391 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1391 null-Int)))
 ; Statement: if i0 >= 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd> 
(assert (>= var1391 0)) ; Cond: i0 >= 0 
(define-const var722 var3055 (cmd/561449068 var1989)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd> 
(assert true)
(define-const var1428 var2846 (createArgument/-916843187 var722)) ; Statement: $r6 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(define-const var829 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var829)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var829!1 String)
(assert (= var829!1 ""))
(assert true)
(define-const var2758 String (append/672562846 var829!1 "-p")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-p") 
(declare-const var829!2 String)
(assert (= var829!2 (str.++ var829!1 "-p")))
(assert true)
(define-const var1950 String (append/-1001720160 var2758 var1391)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2758!1 String)
(assert (str.prefixof var2758 var2758!1))
(assert true)
(define-const var3631 String (toString/-2075883882 var1950)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setValue/2115864135 var1428 var3631)) ; Statement: virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r5) 

(declare-const var1428!1 var2846)
(declare-const var3631!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cmd/561449068=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), createArgument/-916843187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void)}
; {var3250=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch, var1989=r0, var1391=i0, var3055=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var722=$r1, var2846=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var1428=$r6, var829=$r2, var2758=$r3, var1950=$r4, var3631=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch=var3250, r0=var1989, i0=var1391, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var3055, $r1=var722, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var2846, $r6=var1428, $r2=var829, $r3=var2758, $r4=var1950, $r5=var3631}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch;	i0 := @parameter0: int;	if i0 >= 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd>;	$r6 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-p");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r5);	return
;block_num 2