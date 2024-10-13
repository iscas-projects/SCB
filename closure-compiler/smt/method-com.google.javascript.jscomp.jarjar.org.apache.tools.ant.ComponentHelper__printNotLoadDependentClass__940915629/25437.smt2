(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2801 0)
(declare-sort var2965 0)
(declare-sort var426 0)
(declare-sort var356 0)
(declare-sort var1777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1777) String)
(declare-fun cast-from-var426-to-var1777 (var426) var1777)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var2965 String) void)
(declare-const null-var2801 var2801)
(declare-const null-var2965 var2965)
(declare-const null-Bool Bool)
(declare-const null-var426 var426)
(declare-const null-String String)
(declare-const var1068 var2801) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper 
(assert (not (= var1068 null-var2801)))
(declare-const var1540 var2965) ; Statement: r0 := @parameter0: java.io.PrintWriter 
(assert (not (= var1540 null-var2965)))
(declare-const var1589 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1589 null-Bool)))
(declare-const var213 var426) ; Statement: r2 := @parameter2: java.lang.NoClassDefFoundError 
(assert (not (= var213 null-var426)))
(declare-const var1920 String) ; Statement: r7 := @parameter3: java.lang.String 
(assert (not (= var1920 null-String)))
(define-const var857 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var857)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var857!1 String)
(assert (= var857!1 ""))
(assert true)
(define-const var3508 String (append/672562846 var857!1 "Cause: Could not load a dependent class ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cause: Could not load a dependent class ") 
(declare-const var857!2 String)
(assert (= var857!2 (str.++ var857!1 "Cause: Could not load a dependent class ")))
(assert true)
(define-const var1411 String (getMessage/849299655 (cast-from-var426-to-var1777 var213))) ; Statement: $r3 = virtualinvoke r2.<java.lang.NoClassDefFoundError: java.lang.String getMessage()>() 
(assert true)
(define-const var2669 String (append/672562846 var3508 var1411)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3508!1 String)
(assert (= var3508!1 (str.++ var3508 var1411)))
(assert true)
(define-const var3816 String (toString/-2075883882 var2669)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var1540 var3816)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r6) 

(declare-const var1540!1 var2965)
(declare-const var3816!1 String)
 ; Statement: if z0 == 0 goto virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("       This class may be in a separate JAR that is not installed.") 
(assert (not (= (ite var1589 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (println/-1226480079 var1540!1 "       It is not enough to have Ant\u0027s optional JARs")) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("       It is not enough to have Ant\'s optional JARs") 

(declare-const var1540!2 var2965)
(declare-const var647 String)
(assert true)
;(assert (println/-1226480079 var1540!2 "       you need the JAR files that the optional tasks depend upon.")) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("       you need the JAR files that the optional tasks depend upon.") 

(declare-const var1540!3 var2965)
(declare-const var276 String)
(assert true)
;(assert (println/-1226480079 var1540!3 "       Ant\u0027s optional task dependencies are listed in the manual.")) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("       Ant\'s optional task dependencies are listed in the manual.") 

(declare-const var1540!4 var2965)
(declare-const var2764 String)
 ; Statement: goto [?= virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("Action: Determine what extra JAR files are needed, and place them in one of:")] 
(assert true) ; Non Conditional
(assert true)
;(assert (println/-1226480079 var1540!4 "Action: Determine what extra JAR files are needed, and place them in one of:")) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("Action: Determine what extra JAR files are needed, and place them in one of:") 

(declare-const var1540!5 var2965)
(declare-const var2331 String)
(assert true)
;(assert (println/-1226480079 var1540!5 var1920)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>(r7) 

(declare-const var1540!6 var2965)
(declare-const var1920!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var426-to-var1777=([java.lang.NoClassDefFoundError], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void)}
; {var2801=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, var1068=r8, var2965=java.io.PrintWriter, var1540=r0, var1589=z0, var426=java.lang.NoClassDefFoundError, var213=r2, var1920=r7, var356=null_type, var857=$r1, var3508=$r4, var1777=java.lang.Throwable, var1411=$r3, var2669=$r5, var3816=$r6, var647="       It is not enough to have Ant\'s optional JARs", var276="       you need the JAR files that the optional tasks depend upon.", var2764="       Ant\'s optional task dependencies are listed in the manual.", var2331="Action: Determine what extra JAR files are needed, and place them in one of:"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper=var2801, r8=var1068, java.io.PrintWriter=var2965, r0=var1540, z0=var1589, java.lang.NoClassDefFoundError=var426, r2=var213, r7=var1920, null_type=var356, $r1=var857, $r4=var3508, java.lang.Throwable=var1777, $r3=var1411, $r5=var2669, $r6=var3816, "       It is not enough to have Ant\'s optional JARs"=var647, "       you need the JAR files that the optional tasks depend upon."=var276, "       Ant\'s optional task dependencies are listed in the manual."=var2764, "Action: Determine what extra JAR files are needed, and place them in one of:"=var2331}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper;	r0 := @parameter0: java.io.PrintWriter;	z0 := @parameter1: boolean;	r2 := @parameter2: java.lang.NoClassDefFoundError;	r7 := @parameter3: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cause: Could not load a dependent class ");	$r3 = virtualinvoke r2.<java.lang.NoClassDefFoundError: java.lang.String getMessage()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r6);	if z0 == 0 goto virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("       This class may be in a separate JAR that is not installed.");	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("       It is not enough to have Ant\'s optional JARs");	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("       you need the JAR files that the optional tasks depend upon.");	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("       Ant\'s optional task dependencies are listed in the manual.");	goto [?= virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("Action: Determine what extra JAR files are needed, and place them in one of:")];	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("Action: Determine what extra JAR files are needed, and place them in one of:");	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>(r7);	return
;block_num 3