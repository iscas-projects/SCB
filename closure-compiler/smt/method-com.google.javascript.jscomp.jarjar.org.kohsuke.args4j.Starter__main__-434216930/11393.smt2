(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3016 0)
(declare-sort var140 0)
(declare-sort var2396 0)
(declare-sort var1490 0)
(declare-sort var180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3016_getProperty/258823597 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var180 String) void)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var140 var140)
(declare-const null-String String)
(declare-const null-var1490 var1490)
(declare-const var3016-err var180)
(declare-const var2343 (Array Int String)) ; Statement: r2 := @parameter0: java.lang.String[] 
(assert (not (= var2343 null-__Array__Int__String__)))
(define-const var1355 String (var3016_getProperty/258823597 "mainclass")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("mainclass") 
(define-const var2671 var140 null-var140) ; Statement: r34 = null 
(define-const var2350 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1379 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
 ; Statement: if r0 == null goto $r1 = <java.lang.System: java.io.PrintStream err> 
(assert (not (= var1355 null-String))) ; Negate: Cond: r0 == null  
(define-const var235 String "") ; Statement: $r5 = "" 
(assert true)
(define-const var3726 Bool (= var235 var1355)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r35 = staticinvoke <java.lang.Class: java.lang.Class forName(java.lang.String)>(r0) 
(assert (not (= (ite var3726 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2904 var1490) ; Statement: $r15 := @caughtexception 
(assert (not (= var2904 null-var1490)))
(define-const var1985 var180 var3016-err) ; Statement: $r17 = <java.lang.System: java.io.PrintStream err> 
(define-const var2536 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2536)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2536!1 String)
(assert (= var2536!1 ""))
(assert true)
(define-const var3003 String (append/672562846 var2536!1 "Cant find the class \u0027")) ; Statement: $r18 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cant find the class \'") 
(declare-const var2536!2 String)
(assert (= var2536!2 (str.++ var2536!1 "Cant find the class \u0027")))
(assert true)
(define-const var3275 String (append/672562846 var3003 var1355)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3003!1 String)
(assert (= var3003!1 (str.++ var3003 var1355)))
(assert true)
(define-const var1751 String (append/672562846 var3275 "\u0027 as specified in the system property \u0027")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' as specified in the system property \'") 
(declare-const var3275!1 String)
(assert (= var3275!1 (str.++ var3275 "\u0027 as specified in the system property \u0027")))
(assert true)
(define-const var2236 String (append/672562846 var1751 "mainclass")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("mainclass") 
(declare-const var1751!1 String)
(assert (= var1751!1 (str.++ var1751 "mainclass")))
(assert true)
(define-const var3494 String (append/672562846 var2236 "\u0027.")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.") 
(declare-const var2236!1 String)
(assert (= var2236!1 (str.++ var2236 "\u0027.")))
(assert true)
(define-const var3856 String (toString/-2075883882 var3494)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1985 var3856)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r23) 

(declare-const var1985!1 var180)
(declare-const var3856!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3016_getProperty/258823597=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2343=r2, var3016=java.lang.System, var1355=r0, var140=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var2671=r34, var2350=z1, var1379=z2, var2396=null_type, var235=$r5, var3726=$z0, var1490=java.lang.ClassNotFoundException, var2904=$r15, var180=java.io.PrintStream, var1985=$r17, var2536=$r43, var3003=$r18, var3275=$r19, var1751=$r20, var2236=$r21, var3494=$r22, var3856=$r23}
; {r2=var2343, java.lang.System=var3016, r0=var1355, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var140, r34=var2671, z1=var2350, z2=var1379, null_type=var2396, $r5=var235, $z0=var3726, java.lang.ClassNotFoundException=var1490, $r15=var2904, java.io.PrintStream=var180, $r17=var1985, $r43=var2536, $r18=var3003, $r19=var3275, $r20=var1751, $r21=var2236, $r22=var3494, $r23=var3856}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String[];	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("mainclass");	r34 = null;	z1 = 0;	z2 = 0;	if r0 == null goto $r1 = <java.lang.System: java.io.PrintStream err>;	$r5 = "";	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r35 = staticinvoke <java.lang.Class: java.lang.Class forName(java.lang.String)>(r0);	$r15 := @caughtexception;	$r17 = <java.lang.System: java.io.PrintStream err>;	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cant find the class \'");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' as specified in the system property \'");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("mainclass");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r23);	goto [?= return];	return
;block_num 4