(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2251 0)
(declare-sort var3406 0)
(declare-sort var502 0)
(declare-sort var1430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cmd/1653374714 (var2251) var502)
(declare-fun createArgument/-916843187 (var502) var1430)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setValue/2115864135 (var1430 String) void)
(declare-const null-var2251 var2251)
(declare-const null-String String)
(declare-const var381 var2251) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc 
(assert (not (= var381 null-var2251)))
(declare-const var3145 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3145 null-String)))
(define-const var3494 var502 (cmd/1653374714 var381)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd> 
(assert true)
(define-const var1473 var1430 (createArgument/-916843187 var3494)) ; Statement: $r7 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(define-const var1063 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1063)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1063!1 String)
(assert (= var1063!1 ""))
(assert true)
(define-const var2536 String (append/672562846 var1063!1 "-J-Xmx")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-J-Xmx") 
(declare-const var1063!2 String)
(assert (= var1063!2 (str.++ var1063!1 "-J-Xmx")))
(assert true)
(define-const var848 String (append/672562846 var2536 var3145)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2536!1 String)
(assert (= var2536!1 (str.++ var2536 var3145)))
(assert true)
(define-const var1657 String (toString/-2075883882 var848)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setValue/2115864135 var1473 var1657)) ; Statement: virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r6) 

(declare-const var1473!1 var1430)
(declare-const var1657!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cmd/1653374714=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), createArgument/-916843187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void)}
; {var2251=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var381=r0, var3145=r3, var3406=null_type, var502=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var3494=$r1, var1430=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var1473=$r7, var1063=$r2, var2536=$r4, var848=$r5, var1657=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var2251, r0=var381, r3=var3145, null_type=var3406, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var502, $r1=var3494, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var1430, $r7=var1473, $r2=var1063, $r4=var2536, $r5=var848, $r6=var1657}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc;	r3 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd>;	$r7 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-J-Xmx");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r6);	return
;block_num 1