(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var348 0)
(declare-sort var2134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun vssPath/1944491110 (var348) String)
(declare-const null-var348 var348)
(declare-const null-String String)
(declare-const var329 var348) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS 
(assert (not (= var329 null-var348)))
(declare-const var2863 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2863 null-String)))
(assert true)
(define-const var1767 Bool (startsWith/-1785782452 var2863 "vss://")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("vss://") 
 ; Statement: if $z0 == 0 goto r6 = r0 
(assert (= (ite var1767 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3827 String var2863) ; Statement: r6 = r0 
(assert true) ; Non Conditional
(assert true)
(define-const var2493 Bool (startsWith/-1785782452 var3827 "$")) ; Statement: $z1 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("$") 
 ; Statement: if $z1 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var2493 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2751 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2751)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2751!1 String)
(assert (= var2751!1 ""))
(assert true)
(define-const var192 String (append/672562846 var2751!1 "$")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$") 
(declare-const var2751!2 String)
(assert (= var2751!2 (str.++ var2751!1 "$")))
(assert true)
(define-const var215 String (append/672562846 var192 var3827)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var192!1 String)
(assert (= var192!1 (str.++ var192 var3827)))
(assert true)
(define-const var2108 String (toString/-2075883882 var215)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var329!1 var348)
(assert (not (= var329!1 null-var348)))
(assert (= (vssPath/1944491110 var329!1) var2108)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String vssPath> = $r5 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), vssPath/1944491110=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS], java.lang.String)}
; {var348=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS, var329=r1, var2863=r0, var2134=null_type, var1767=$z0, var3827=r6, var2493=$z1, var2751=$r2, var192=$r3, var215=$r4, var2108=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS=var348, r1=var329, r0=var2863, null_type=var2134, $z0=var1767, r6=var3827, $z1=var2493, $r2=var2751, $r3=var192, $r4=var215, $r5=var2108}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("vss://");	if $z0 == 0 goto r6 = r0;	r6 = r0;	$z1 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("$");	if $z1 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String vssPath> = $r5;	return
;block_num 5