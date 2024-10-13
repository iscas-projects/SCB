(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3618 0)
(declare-sort var3135 0)
(declare-sort var1553 0)
(declare-sort var2254 0)
(declare-sort var44 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3618_getProperty/258823597 (String) String)
(declare-fun println/1773605060 (var2254 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3618_exit/142839841 (Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3135 var3135)
(declare-const null-String String)
(declare-const var3618-err var2254)
(declare-const null-var44 var44)
(declare-const var1548 (Array Int String)) ; Statement: r2 := @parameter0: java.lang.String[] 
(assert (not (= var1548 null-__Array__Int__String__)))
(define-const var1192 String (var3618_getProperty/258823597 "mainclass")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("mainclass") 
(define-const var3224 var3135 null-var3135) ; Statement: r34 = null 
(define-const var3574 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1069 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
 ; Statement: if r0 == null goto $r1 = <java.lang.System: java.io.PrintStream err> 
(assert (= var1192 null-String)) ; Cond: r0 == null 
(define-const var2259 var2254 var3618-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var2259 "The system property \u0027mainclass\u0027 must contain the classname to start.")) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>("The system property \'mainclass\' must contain the classname to start.") 

(declare-const var2259!1 var2254)
(declare-const var2843 String)
(define-const var1909 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i1 = (int) -1 
;(assert (var3618_exit/142839841 var1909)) ; Statement: staticinvoke <java.lang.System: void exit(int)>($i1) 

(declare-const var1909!1 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3419 var44) ; Statement: $r15 := @caughtexception 
(assert (not (= var3419 null-var44)))
(define-const var2349 var2254 var3618-err) ; Statement: $r17 = <java.lang.System: java.io.PrintStream err> 
(define-const var3526 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3526)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3526!1 String)
(assert (= var3526!1 ""))
(assert true)
(define-const var2045 String (append/672562846 var3526!1 "Cant find the class \u0027")) ; Statement: $r18 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cant find the class \'") 
(declare-const var3526!2 String)
(assert (= var3526!2 (str.++ var3526!1 "Cant find the class \u0027")))
(assert true)
(define-const var2246 String (append/672562846 var2045 var1192)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2045!1 String)
(assert (= var2045!1 (str.++ var2045 var1192)))
(assert true)
(define-const var3506 String (append/672562846 var2246 "\u0027 as specified in the system property \u0027")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' as specified in the system property \'") 
(declare-const var2246!1 String)
(assert (= var2246!1 (str.++ var2246 "\u0027 as specified in the system property \u0027")))
(assert true)
(define-const var421 String (append/672562846 var3506 "mainclass")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("mainclass") 
(declare-const var3506!1 String)
(assert (= var3506!1 (str.++ var3506 "mainclass")))
(assert true)
(define-const var1903 String (append/672562846 var421 "\u0027.")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.") 
(declare-const var421!1 String)
(assert (= var421!1 (str.++ var421 "\u0027.")))
(assert true)
(define-const var2826 String (toString/-2075883882 var1903)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2349 var2826)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r23) 

(declare-const var2349!1 var2254)
(declare-const var2826!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3618_getProperty/258823597=([java.lang.String], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), cast-from-Int-to-Int=([int], int), var3618_exit/142839841=([int], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1548=r2, var3618=java.lang.System, var1192=r0, var3135=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var3224=r34, var3574=z1, var1069=z2, var1553=null_type, var2254=java.io.PrintStream, var2259=$r1, var2843="The system property \'mainclass\' must contain the classname to start.", var1909=$i1, var44=java.lang.ClassNotFoundException, var3419=$r15, var2349=$r17, var3526=$r43, var2045=$r18, var2246=$r19, var3506=$r20, var421=$r21, var1903=$r22, var2826=$r23}
; {r2=var1548, java.lang.System=var3618, r0=var1192, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var3135, r34=var3224, z1=var3574, z2=var1069, null_type=var1553, java.io.PrintStream=var2254, $r1=var2259, "The system property \'mainclass\' must contain the classname to start."=var2843, $i1=var1909, java.lang.ClassNotFoundException=var44, $r15=var3419, $r17=var2349, $r43=var3526, $r18=var2045, $r19=var2246, $r20=var3506, $r21=var421, $r22=var1903, $r23=var2826}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String[];	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("mainclass");	r34 = null;	z1 = 0;	z2 = 0;	if r0 == null goto $r1 = <java.lang.System: java.io.PrintStream err>;	$r1 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>("The system property \'mainclass\' must contain the classname to start.");	$i1 = (int) -1;	staticinvoke <java.lang.System: void exit(int)>($i1);	$r15 := @caughtexception;	$r17 = <java.lang.System: java.io.PrintStream err>;	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cant find the class \'");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' as specified in the system property \'");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("mainclass");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r23);	goto [?= return];	return
;block_num 4