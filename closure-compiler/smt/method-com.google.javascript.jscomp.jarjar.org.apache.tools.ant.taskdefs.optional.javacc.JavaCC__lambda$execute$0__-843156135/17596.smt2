(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var804 0)
(declare-sort var1508 0)
(declare-sort var3862 0)
(declare-sort var3079 0)
(declare-sort var785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cmdl/-698122820 (var804) var3079)
(declare-fun createArgument/-698090421 (var3079) var785)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3862) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setValue/2115864135 (var785 String) void)
(declare-const null-var804 var804)
(declare-const null-String String)
(declare-const null-var3862 var3862)
(declare-const var51 var804) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC 
(assert (not (= var51 null-var804)))
(declare-const var135 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var135 null-String)))
(declare-const var3224 var3862) ; Statement: r6 := @parameter1: java.lang.Object 
(assert (not (= var3224 null-var3862)))
(define-const var3690 var3079 (cmdl/-698122820 var51)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava cmdl> 
(assert true)
(define-const var2115 var785 (createArgument/-698090421 var3690)) ; Statement: $r10 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(define-const var3365 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3365)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3365!1 String)
(assert (= var3365!1 ""))
(assert true)
(define-const var1697 String (append/672562846 var3365!1 "-")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var3365!2 String)
(assert (= var3365!2 (str.++ var3365!1 "-")))
(assert true)
(define-const var872 String (append/672562846 var1697 var135)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1697!1 String)
(assert (= var1697!1 (str.++ var1697 var135)))
(assert true)
(define-const var95 String (append/672562846 var872 ":")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var872!1 String)
(assert (= var872!1 (str.++ var872 ":")))
(assert true)
(define-const var2547 String (append/-1031950772 var95 var3224)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var95!1 String)
(assert (str.prefixof var95 var95!1))
(assert true)
(define-const var3389 String (toString/-2075883882 var2547)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setValue/2115864135 var2115 var3389)) ; Statement: virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r9) 

(declare-const var2115!1 var785)
(declare-const var3389!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cmdl/-698122820=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava), createArgument/-698090421=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void)}
; {var804=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC, var51=r0, var135=r3, var1508=null_type, var3862=java.lang.Object, var3224=r6, var3079=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava, var3690=$r1, var785=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var2115=$r10, var3365=$r2, var1697=$r4, var872=$r5, var95=$r7, var2547=$r8, var3389=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC=var804, r0=var51, r3=var135, null_type=var1508, java.lang.Object=var3862, r6=var3224, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava=var3079, $r1=var3690, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var785, $r10=var2115, $r2=var3365, $r4=var1697, $r5=var872, $r7=var95, $r8=var2547, $r9=var3389}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC;	r3 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.Object;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava cmdl>;	$r10 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r9);	return
;block_num 1