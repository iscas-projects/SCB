(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1049 0)
(declare-sort var2211 0)
(declare-sort var409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var2211 String) void)
(declare-const null-var1049 var1049)
(declare-const null-var2211 var2211)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var197 var1049) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper 
(assert (not (= var197 null-var1049)))
(declare-const var3672 var2211) ; Statement: r0 := @parameter0: java.io.PrintWriter 
(assert (not (= var3672 null-var2211)))
(declare-const var1018 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1018 null-String)))
(declare-const var181 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var181 null-Bool)))
(declare-const var1744 String) ; Statement: r7 := @parameter3: java.lang.String 
(assert (not (= var1744 null-String)))
(define-const var3653 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3653)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3653!1 String)
(assert (= var3653!1 ""))
(assert true)
(define-const var2962 String (append/672562846 var3653!1 "Cause: the class ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cause: the class ") 
(declare-const var3653!2 String)
(assert (= var3653!2 (str.++ var3653!1 "Cause: the class ")))
(assert true)
(define-const var3289 String (append/672562846 var2962 var1018)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2962!1 String)
(assert (= var2962!1 (str.++ var2962 var1018)))
(assert true)
(define-const var883 String (append/672562846 var3289 " was not found.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was not found.") 
(declare-const var3289!1 String)
(assert (= var3289!1 (str.++ var3289 " was not found.")))
(assert true)
(define-const var2756 String (toString/-2075883882 var883)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var3672 var2756)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r6) 

(declare-const var3672!1 var2211)
(declare-const var2756!1 String)
 ; Statement: if z0 == 0 goto virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("Action: Check that the component has been correctly declared") 
(assert (not (= (ite var181 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (println/-1226480079 var3672!1 "        This looks like one of Ant\u0027s optional components.")) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("        This looks like one of Ant\'s optional components.") 

(declare-const var3672!2 var2211)
(declare-const var2386 String)
(assert true)
;(assert (println/-1226480079 var3672!2 "Action: Check that the appropriate optional JAR exists in")) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("Action: Check that the appropriate optional JAR exists in") 

(declare-const var3672!3 var2211)
(declare-const var2775 String)
(assert true)
;(assert (println/-1226480079 var3672!3 var1744)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>(r7) 

(declare-const var3672!4 var2211)
(declare-const var1744!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void)}
; {var1049=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, var197=r8, var2211=java.io.PrintWriter, var3672=r0, var1018=r2, var409=null_type, var181=z0, var1744=r7, var3653=$r1, var2962=$r3, var3289=$r4, var883=$r5, var2756=$r6, var2386="        This looks like one of Ant\'s optional components.", var2775="Action: Check that the appropriate optional JAR exists in"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper=var1049, r8=var197, java.io.PrintWriter=var2211, r0=var3672, r2=var1018, null_type=var409, z0=var181, r7=var1744, $r1=var3653, $r3=var2962, $r4=var3289, $r5=var883, $r6=var2756, "        This looks like one of Ant\'s optional components."=var2386, "Action: Check that the appropriate optional JAR exists in"=var2775}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper;	r0 := @parameter0: java.io.PrintWriter;	r2 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	r7 := @parameter3: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cause: the class ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was not found.");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r6);	if z0 == 0 goto virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("Action: Check that the component has been correctly declared");	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("        This looks like one of Ant\'s optional components.");	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("Action: Check that the appropriate optional JAR exists in");	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>(r7);	goto [?= return];	return
;block_num 3