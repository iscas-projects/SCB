(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3799 0)
(declare-sort var713 0)
(declare-sort var2928 0)
(declare-sort var3921 0)
(declare-sort var3589 0)
(declare-sort var943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1128186653 (var713) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun arr-var943-init () (Array Int var943))
(declare-fun getPath/-1385219261 (var713) String)
(declare-fun cast-from-String-to-var943 (String) var943)
(declare-fun printf/-241172884 (var3921 String (Array Int var943)) var3921)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3799 var3799)
(declare-const null-var713 var713)
(declare-const null-String String)
(declare-const var3589-out var3921)
(declare-const null-__Array__Int__var943__ (Array Int var943))
(declare-const var555 var3799) ; Statement: r12 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jlink.jlink 
(assert (not (= var555 null-var3799)))
(declare-const var3649 var713) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3649 null-var713)))
(declare-const var2010 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2010 null-String)))
(assert true)
(define-const var2415 String (getName/1128186653 var3649)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var1562 Bool (endsWith/985337093 var2415 ".class")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 != 0 goto $r16 = <java.lang.System: java.io.PrintStream out> 
(assert (not (= (ite var1562 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3703 var3921 var3589-out) ; Statement: $r16 = <java.lang.System: java.io.PrintStream out> 
(define-const var2212 (Array Int var943) arr-var943-init) ; Statement: $r17 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var1106 String (getPath/-1385219261 var3649)) ; Statement: $r18 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>() 
(declare-const var2212!1 (Array Int var943))
(assert (not (= var2212!1 null-__Array__Int__var943__)))
(assert (= (select var2212!1 0) (cast-from-String-to-var943 var1106))) ; Statement: $r17[0] = $r18 
(declare-const var2212!2 (Array Int var943))
(assert (not (= var2212!2 null-__Array__Int__var943__)))
(assert (= (select var2212!2 1) (cast-from-String-to-var943 var2010))) ; Statement: $r17[1] = r2 
(declare-const var2212!3 (Array Int var943))
(assert (not (= var2212!3 null-__Array__Int__var943__)))
(assert (= (select var2212!3 2) (cast-from-String-to-var943 var2415))) ; Statement: $r17[2] = r1 
(assert true)
;(assert (printf/-241172884 var3703 "From %1$s and prefix %2$s, creating entry %2$s%3$s%n" var2212!3)) ; Statement: virtualinvoke $r16.<java.io.PrintStream: java.io.PrintStream printf(java.lang.String,java.lang.Object[])>("From %1$s and prefix %2$s, creating entry %2$s%3$s%n", $r17) 

(declare-const var3703!1 var3921)
(declare-const var2502 String)
(declare-const var2212!4 (Array Int var943))
(define-const var362 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var362)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var362!1 String)
(assert (= var362!1 ""))
(assert true)
(define-const var2193 String (append/672562846 var362!1 var2010)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var362!2 String)
(assert (= var362!2 (str.++ var362!1 var2010)))
(assert true)
(define-const var361 String (append/672562846 var2193 var2415)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2193!1 String)
(assert (= var2193!1 (str.++ var2193 var2415)))
(assert true)
(define-const var590 String (toString/-2075883882 var361)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1128186653=([java.io.File], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), arr-var943-init=([], java.lang.Object[]), getPath/-1385219261=([java.io.File], java.lang.String), cast-from-String-to-var943=([java.lang.String], java.lang.Object), printf/-241172884=([java.io.PrintStream, java.lang.String, java.lang.Object[]], java.io.PrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3799=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jlink.jlink, var555=r12, var713=java.io.File, var3649=r0, var2010=r2, var2928=null_type, var2415=r1, var1562=$z0, var3921=java.io.PrintStream, var3589=java.lang.System, var3703=$r16, var943=java.lang.Object, var2212=$r17, var1106=$r18, var2502="From %1$s and prefix %2$s, creating entry %2$s%3$s%n", var362=$r19, var2193=$r20, var361=$r21, var590=$r22}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jlink.jlink=var3799, r12=var555, java.io.File=var713, r0=var3649, r2=var2010, null_type=var2928, r1=var2415, $z0=var1562, java.io.PrintStream=var3921, java.lang.System=var3589, $r16=var3703, java.lang.Object=var943, $r17=var2212, $r18=var1106, "From %1$s and prefix %2$s, creating entry %2$s%3$s%n"=var2502, $r19=var362, $r20=var2193, $r21=var361, $r22=var590}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jlink.jlink;	r0 := @parameter0: java.io.File;	r2 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<java.io.File: java.lang.String getName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 != 0 goto $r16 = <java.lang.System: java.io.PrintStream out>;	$r16 = <java.lang.System: java.io.PrintStream out>;	$r17 = newarray (java.lang.Object)[3];	$r18 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>();	$r17[0] = $r18;	$r17[1] = r2;	$r17[2] = r1;	virtualinvoke $r16.<java.io.PrintStream: java.io.PrintStream printf(java.lang.String,java.lang.Object[])>("From %1$s and prefix %2$s, creating entry %2$s%3$s%n", $r17);	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 2