(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var728 0)
(declare-sort var937 0)
(declare-sort var997 0)
(declare-sort var1981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1969040762 (var937 String) void)
(declare-fun println/1773605060 (var937 String) void)
(declare-const null-String String)
(declare-const var997-out var937)
(declare-const var1981-versionNumber String)
(declare-const var1512 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1512 null-String)))
(declare-const var2963 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var2963 null-String)))
(define-const var1208 var937 var997-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var2573 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2573)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2573!1 String)
(assert (= var2573!1 ""))
(assert true)
(define-const var1372 String (append/672562846 var2573!1 "Java Compiler Compiler Version ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Java Compiler Compiler Version ") 
(declare-const var2573!2 String)
(assert (= var2573!2 (str.++ var2573!1 "Java Compiler Compiler Version ")))
(define-const var2720 String var1981-versionNumber) ; Statement: $r2 = <org.javacc.Version: java.lang.String versionNumber> 
(assert true)
(define-const var2471 String (append/672562846 var1372 var2720)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1372!1 String)
(assert (= var1372!1 (str.++ var1372 var2720)))
(assert true)
(define-const var2064 String (append/672562846 var2471 " (")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2471!1 String)
(assert (= var2471!1 (str.++ var2471 " (")))
(assert true)
(define-const var560 String (append/672562846 var2064 var1512)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2064!1 String)
(assert (= var2064!1 (str.++ var2064 var1512)))
(assert true)
(define-const var446 String (toString/-2075883882 var560)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1969040762 var1208 var446)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void print(java.lang.String)>($r8) 

(declare-const var1208!1 var937)
(declare-const var446!1 String)
(assert true)
(define-const var3047 Bool (= var2963 "")) ; Statement: $z0 = virtualinvoke r9.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 != 0 goto $r10 = <java.lang.System: java.io.PrintStream out> 
(assert (not (= (ite var3047 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2065 var937 var997-out) ; Statement: $r10 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/1773605060 var2065 ")")) ; Statement: virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>(")") 

(declare-const var2065!1 var937)
(declare-const var500 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1969040762=([java.io.PrintStream, java.lang.String], void), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1512=r5, var728=null_type, var2963=r9, var937=java.io.PrintStream, var997=java.lang.System, var1208=$r1, var2573=$r0, var1372=$r3, var1981=org.javacc.Version, var2720=$r2, var2471=$r4, var2064=$r6, var560=$r7, var446=$r8, var3047=$z0, var2065=$r10, var500=")"}
; {r5=var1512, null_type=var728, r9=var2963, java.io.PrintStream=var937, java.lang.System=var997, $r1=var1208, $r0=var2573, $r3=var1372, org.javacc.Version=var1981, $r2=var2720, $r4=var2471, $r6=var2064, $r7=var560, $r8=var446, $z0=var3047, $r10=var2065, ")"=var500}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @parameter0: java.lang.String;	r9 := @parameter1: java.lang.String;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Java Compiler Compiler Version ");	$r2 = <org.javacc.Version: java.lang.String versionNumber>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void print(java.lang.String)>($r8);	$z0 = virtualinvoke r9.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 != 0 goto $r10 = <java.lang.System: java.io.PrintStream out>;	$r10 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>(")");	return
;block_num 2