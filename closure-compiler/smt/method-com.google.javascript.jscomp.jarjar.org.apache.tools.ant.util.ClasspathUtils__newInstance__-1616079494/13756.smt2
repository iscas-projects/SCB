(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var781 0)
(declare-sort var1890 0)
(declare-sort var3665 0)
(declare-sort var656 0)
(declare-sort var2357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var656-init () var656)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var656 String var2357) void)
(declare-fun cast-from-var3665-to-var2357 (var3665) var2357)
(declare-const null-String String)
(declare-const null-var1890 var1890)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3665 var3665)
(declare-const var3268 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3268 null-String)))
(declare-const var230 var1890) ; Statement: r1 := @parameter1: java.lang.ClassLoader 
(assert (not (= var230 null-var1890)))
(declare-const var777 ClassObject) ; Statement: r6 := @parameter2: java.lang.Class 
(assert (not (= var777 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var596 var3665) ; Statement: $r16 := @caughtexception 
(assert (not (= var596 null-var3665)))
(define-const var3519 var656 var656-init) ; Statement: $r17 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var999 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var999)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var999!1 String)
(assert (= var999!1 ""))
(assert true)
(define-const var2391 String (append/672562846 var999!1 "Could not instantiate ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate ") 
(declare-const var999!2 String)
(assert (= var999!2 (str.++ var999!1 "Could not instantiate ")))
(assert true)
(define-const var2172 String (append/672562846 var2391 var3268)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2391!1 String)
(assert (= var2391!1 (str.++ var2391 var3268)))
(assert true)
(define-const var2684 String (append/672562846 var2172 ". Specified class should have a public constructor.")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Specified class should have a public constructor.") 
(declare-const var2172!1 String)
(assert (= var2172!1 (str.++ var2172 ". Specified class should have a public constructor.")))
(assert true)
(define-const var776 String (toString/-2075883882 var2684)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var3519 var776 (cast-from-var3665-to-var2357 var596))) ; Statement: specialinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r22, $r16) 

(declare-const var3519!1 var656)
(declare-const var776!1 String)
(declare-const var596!1 var3665)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var656-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var3665-to-var2357=([java.lang.ReflectiveOperationException], java.lang.Throwable)}
; {var3268=r0, var781=null_type, var1890=java.lang.ClassLoader, var230=r1, var777=r6, var3665=java.lang.ReflectiveOperationException, var596=$r16, var656=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3519=$r17, var999=$r18, var2391=$r19, var2172=$r20, var2684=$r21, var776=$r22, var2357=java.lang.Throwable}
; {r0=var3268, null_type=var781, java.lang.ClassLoader=var1890, r1=var230, r6=var777, java.lang.ReflectiveOperationException=var3665, $r16=var596, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var656, $r17=var3519, $r18=var999, $r19=var2391, $r20=var2172, $r21=var2684, $r22=var776, java.lang.Throwable=var2357}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.ClassLoader;	r6 := @parameter2: java.lang.Class;	$r16 := @caughtexception;	$r17 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Specified class should have a public constructor.");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r22, $r16);	throw $r17
;block_num 2