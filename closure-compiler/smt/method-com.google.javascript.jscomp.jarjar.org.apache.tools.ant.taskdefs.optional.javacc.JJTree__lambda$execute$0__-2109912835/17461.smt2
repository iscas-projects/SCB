(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1654 0)
(declare-sort var3853 0)
(declare-sort var3541 0)
(declare-sort var3143 0)
(declare-sort var603 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cmdl/-720359272 (var1654) var3143)
(declare-fun createArgument/-698090421 (var3143) var603)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var3541) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setValue/2115864135 (var603 String) void)
(declare-const null-var1654 var1654)
(declare-const null-String String)
(declare-const null-var3541 var3541)
(declare-const var702 var1654) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree 
(assert (not (= var702 null-var1654)))
(declare-const var1251 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1251 null-String)))
(declare-const var822 var3541) ; Statement: r6 := @parameter1: java.lang.Object 
(assert (not (= var822 null-var3541)))
(define-const var1858 var3143 (cmdl/-720359272 var702)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava cmdl> 
(assert true)
(define-const var2327 var603 (createArgument/-698090421 var1858)) ; Statement: $r11 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(define-const var1373 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1373)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1373!1 String)
(assert (= var1373!1 ""))
(assert true)
(define-const var3020 String (append/672562846 var1373!1 "-")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var1373!2 String)
(assert (= var1373!2 (str.++ var1373!1 "-")))
(assert true)
(define-const var450 String (append/672562846 var3020 var1251)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3020!1 String)
(assert (= var3020!1 (str.++ var3020 var1251)))
(assert true)
(define-const var960 String (append/672562846 var450 ":")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var450!1 String)
(assert (= var450!1 (str.++ var450 ":")))
(assert true)
(define-const var2160 String (toString/-522406933 var822)) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2184 String (append/672562846 var960 var2160)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var960!1 String)
(assert (= var960!1 (str.++ var960 var2160)))
(assert true)
(define-const var284 String (toString/-2075883882 var2184)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setValue/2115864135 var2327 var284)) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r10) 

(declare-const var2327!1 var603)
(declare-const var284!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cmdl/-720359272=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava), createArgument/-698090421=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void)}
; {var1654=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree, var702=r0, var1251=r3, var3853=null_type, var3541=java.lang.Object, var822=r6, var3143=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava, var1858=$r1, var603=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var2327=$r11, var1373=$r2, var3020=$r4, var450=$r5, var960=$r8, var2160=$r7, var2184=$r9, var284=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree=var1654, r0=var702, r3=var1251, null_type=var3853, java.lang.Object=var3541, r6=var822, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava=var3143, $r1=var1858, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var603, $r11=var2327, $r2=var1373, $r4=var3020, $r5=var450, $r8=var960, $r7=var2160, $r9=var2184, $r10=var284}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree;	r3 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.Object;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava cmdl>;	$r11 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CommandlineJava: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r10);	return
;block_num 1