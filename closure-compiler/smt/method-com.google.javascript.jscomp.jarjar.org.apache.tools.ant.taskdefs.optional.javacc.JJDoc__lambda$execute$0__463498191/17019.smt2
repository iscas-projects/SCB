(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2292 0)
(declare-sort var3134 0)
(declare-sort var1606 0)
(declare-sort var1483 0)
(declare-sort var2627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cmdl/115294462 (var2292) var1483)
(declare-fun createArgument/-698090421 (var1483) var2627)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var1606) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setValue/2115864135 (var2627 String) void)
(declare-const null-var2292 var2292)
(declare-const null-String String)
(declare-const null-var1606 var1606)
(declare-const var1543 var2292) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJDoc 
(assert (not (= var1543 null-var2292)))
(declare-const var2239 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2239 null-String)))
(declare-const var1900 var1606) ; Statement: r6 := @parameter1: java.lang.Object 
(assert (not (= var1900 null-var1606)))
(define-const var1995 var1483 (cmdl/115294462 var1543)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJDoc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava cmdl> 
(assert true)
(define-const var1650 var2627 (createArgument/-698090421 var1995)) ; Statement: $r11 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(define-const var2602 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2602)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2602!1 String)
(assert (= var2602!1 ""))
(assert true)
(define-const var730 String (append/672562846 var2602!1 "-")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var2602!2 String)
(assert (= var2602!2 (str.++ var2602!1 "-")))
(assert true)
(define-const var1972 String (append/672562846 var730 var2239)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var730!1 String)
(assert (= var730!1 (str.++ var730 var2239)))
(assert true)
(define-const var528 String (append/672562846 var1972 ":")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1972!1 String)
(assert (= var1972!1 (str.++ var1972 ":")))
(assert true)
(define-const var2289 String (toString/-522406933 var1900)) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3744 String (append/672562846 var528 var2289)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var528!1 String)
(assert (= var528!1 (str.++ var528 var2289)))
(assert true)
(define-const var2491 String (toString/-2075883882 var3744)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setValue/2115864135 var1650 var2491)) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r10) 

(declare-const var1650!1 var2627)
(declare-const var2491!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cmdl/115294462=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJDoc], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava), createArgument/-698090421=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void)}
; {var2292=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJDoc, var1543=r0, var2239=r3, var3134=null_type, var1606=java.lang.Object, var1900=r6, var1483=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava, var1995=$r1, var2627=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var1650=$r11, var2602=$r2, var730=$r4, var1972=$r5, var528=$r8, var2289=$r7, var3744=$r9, var2491=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJDoc=var2292, r0=var1543, r3=var2239, null_type=var3134, java.lang.Object=var1606, r6=var1900, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava=var1483, $r1=var1995, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var2627, $r11=var1650, $r2=var2602, $r4=var730, $r5=var1972, $r8=var528, $r7=var2289, $r9=var3744, $r10=var2491}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJDoc;	r3 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.Object;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJDoc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava cmdl>;	$r11 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r10);	return
;block_num 1