(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3629 0)
(declare-sort var2726 0)
(declare-sort var572 0)
(declare-sort var2493 0)
(declare-sort var869 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2493-init () var2493)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var2493 String var869) void)
(declare-fun cast-from-var572-to-var869 (var572) var869)
(declare-const null-var3629 var3629)
(declare-const null-String String)
(declare-const null-var572 var572)
(declare-const var3476 var3629) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PosixPermissionsSelector 
(assert (not (= var3476 null-var3629)))
(declare-const var3272 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3272 null-String)))
(assert true)
(define-const var2100 Int (length/-134980193 var3272)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 3 goto $r2 = staticinvoke <java.nio.file.attribute.PosixFilePermissions: java.util.Set fromString(java.lang.String)>(r0) 
(assert (not (not (= var2100 3)))) ; Negate: Cond: $i0 != 3  
(declare-const var425 var572) ; Statement: $r6 := @caughtexception 
(assert (not (= var425 null-var572)))
(define-const var24 var2493 var2493-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var789 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var789)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var789!1 String)
(assert (= var789!1 ""))
(assert true)
(define-const var3418 String (append/672562846 var789!1 "the permissions attribute ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("the permissions attribute ") 
(declare-const var789!2 String)
(assert (= var789!2 (str.++ var789!1 "the permissions attribute ")))
(assert true)
(define-const var1438 String (append/672562846 var3418 var3272)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3418!1 String)
(assert (= var3418!1 (str.++ var3418 var3272)))
(assert true)
(define-const var250 String (append/672562846 var1438 " is invalid")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is invalid") 
(declare-const var1438!1 String)
(assert (= var1438!1 (str.++ var1438 " is invalid")))
(assert true)
(define-const var493 String (toString/-2075883882 var250)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var24 var493 (cast-from-var572-to-var869 var425))) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6) 

(declare-const var24!1 var2493)
(declare-const var493!1 String)
(declare-const var425!1 var572)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2493-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var572-to-var869=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var3629=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PosixPermissionsSelector, var3476=r1, var3272=r0, var2726=null_type, var2100=$i0, var572=java.lang.IllegalArgumentException, var425=$r6, var2493=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var24=$r7, var789=$r8, var3418=$r9, var1438=$r10, var250=$r11, var493=$r12, var869=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PosixPermissionsSelector=var3629, r1=var3476, r0=var3272, null_type=var2726, $i0=var2100, java.lang.IllegalArgumentException=var572, $r6=var425, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2493, $r7=var24, $r8=var789, $r9=var3418, $r10=var1438, $r11=var250, $r12=var493, java.lang.Throwable=var869}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PosixPermissionsSelector;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 3 goto $r2 = staticinvoke <java.nio.file.attribute.PosixFilePermissions: java.util.Set fromString(java.lang.String)>(r0);	$r6 := @caughtexception;	$r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("the permissions attribute ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is invalid");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6);	throw $r7
;block_num 2