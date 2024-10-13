(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var291 0)
(declare-sort var3497 0)
(declare-sort var1479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var3497 String) void)
(declare-const null-var291 var291)
(declare-const null-var3497 var3497)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3356 var291) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper 
(assert (not (= var3356 null-var291)))
(declare-const var1696 var3497) ; Statement: r0 := @parameter0: java.io.PrintWriter 
(assert (not (= var1696 null-var3497)))
(declare-const var3638 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3638 null-String)))
(declare-const var1258 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1258 null-Bool)))
(declare-const var2723 String) ; Statement: r7 := @parameter3: java.lang.String 
(assert (not (= var2723 null-String)))
(define-const var3182 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3182)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3182!1 String)
(assert (= var3182!1 ""))
(assert true)
(define-const var206 String (append/672562846 var3182!1 "Cause: the class ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cause: the class ") 
(declare-const var3182!2 String)
(assert (= var3182!2 (str.++ var3182!1 "Cause: the class ")))
(assert true)
(define-const var1091 String (append/672562846 var206 var3638)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var206!1 String)
(assert (= var206!1 (str.++ var206 var3638)))
(assert true)
(define-const var1295 String (append/672562846 var1091 " was not found.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was not found.") 
(declare-const var1091!1 String)
(assert (= var1091!1 (str.++ var1091 " was not found.")))
(assert true)
(define-const var1454 String (toString/-2075883882 var1295)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var1696 var1454)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r6) 

(declare-const var1696!1 var3497)
(declare-const var1454!1 String)
 ; Statement: if z0 == 0 goto virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("Action: Check that the component has been correctly declared") 
(assert (= (ite var1258 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (println/-1226480079 var1696!1 "Action: Check that the component has been correctly declared")) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("Action: Check that the component has been correctly declared") 

(declare-const var1696!2 var3497)
(declare-const var1028 String)
(assert true)
;(assert (println/-1226480079 var1696!2 "        and that the implementing JAR is in one of:")) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("        and that the implementing JAR is in one of:") 

(declare-const var1696!3 var3497)
(declare-const var413 String)
(assert true)
;(assert (println/-1226480079 var1696!3 var2723)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>(r7) 

(declare-const var1696!4 var3497)
(declare-const var2723!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void)}
; {var291=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, var3356=r8, var3497=java.io.PrintWriter, var1696=r0, var3638=r2, var1479=null_type, var1258=z0, var2723=r7, var3182=$r1, var206=$r3, var1091=$r4, var1295=$r5, var1454=$r6, var1028="Action: Check that the component has been correctly declared", var413="        and that the implementing JAR is in one of:"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper=var291, r8=var3356, java.io.PrintWriter=var3497, r0=var1696, r2=var3638, null_type=var1479, z0=var1258, r7=var2723, $r1=var3182, $r3=var206, $r4=var1091, $r5=var1295, $r6=var1454, "Action: Check that the component has been correctly declared"=var1028, "        and that the implementing JAR is in one of:"=var413}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper;	r0 := @parameter0: java.io.PrintWriter;	r2 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	r7 := @parameter3: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cause: the class ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was not found.");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r6);	if z0 == 0 goto virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("Action: Check that the component has been correctly declared");	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("Action: Check that the component has been correctly declared");	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("        and that the implementing JAR is in one of:");	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>(r7);	return
;block_num 3