(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2330 0)
(declare-sort var1463 0)
(declare-sort var485 0)
(declare-sort var3721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var1463) Bool)
(declare-fun var485-init () var485)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3721) String)
(declare-fun cast-from-var1463-to-var3721 (var1463) var3721)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var485 String) void)
(declare-const null-var2330 var2330)
(declare-const null-var1463 var1463)
(declare-const var542 var2330) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar 
(assert (not (= var542 null-var2330)))
(declare-const var1280 var1463) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1280 null-var1463)))
(assert true)
(define-const var548 Bool (exists/1072868559 var1280)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask createJarSigner()>() 
(assert (not (not (= (ite var548 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3508 var485 var485-init) ; Statement: $r20 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1967 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1967)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1967!1 String)
(assert (= var1967!1 ""))
(assert true)
(define-const var2896 String (append/672562846 var1967!1 "Not found :")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not found :") 
(declare-const var1967!2 String)
(assert (= var1967!2 (str.++ var1967!1 "Not found :")))
(assert true)
(define-const var113 String (append/-1031950772 var2896 (cast-from-var1463-to-var3721 var1280))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2896!1 String)
(assert (str.prefixof var2896 var2896!1))
(assert true)
(define-const var2910 String (toString/-2075883882 var113)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var3508 var2910)) ; Statement: specialinvoke $r20.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r24) 

(declare-const var3508!1 var485)
(declare-const var2910!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), var485-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1463-to-var3721=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var2330=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar, var542=r1, var1463=java.io.File, var1280=r0, var548=$z0, var485=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3508=$r20, var1967=$r21, var2896=$r22, var3721=java.lang.Object, var113=$r23, var2910=$r24}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar=var2330, r1=var542, java.io.File=var1463, r0=var1280, $z0=var548, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var485, $r20=var3508, $r21=var1967, $r22=var2896, java.lang.Object=var3721, $r23=var113, $r24=var2910}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask createJarSigner()>();	$r20 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not found :");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r24);	throw $r20
;block_num 2