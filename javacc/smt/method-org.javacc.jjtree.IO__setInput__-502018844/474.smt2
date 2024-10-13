(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var821 0)
(declare-sort var3550 0)
(declare-sort var329 0)
(declare-sort var3028 0)
(declare-sort var357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var329-init () var329)
(declare-fun var357-init () var357)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1208695669 (var357 String) void)
(declare-const null-var821 var821)
(declare-const null-String String)
(declare-const null-var3028 var3028)
(declare-const var3102 var821) ; Statement: r2 := @this: org.javacc.jjtree.IO 
(assert (not (= var3102 null-var821)))
(declare-const var3014 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3014 null-String)))
(define-const var3055 var329 var329-init) ; Statement: $r0 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1644 var3028) ; Statement: $r28 := @caughtexception 
(assert (not (= var1644 null-var3028)))
(define-const var3139 var357 var357-init) ; Statement: $r29 = new org.javacc.jjtree.JJTreeIOException 
(define-const var1831 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1831)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1831!1 String)
(assert (= var1831!1 ""))
(assert true)
(define-const var2998 String (append/672562846 var1831!1 "File ")) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File ") 
(declare-const var1831!2 String)
(assert (= var1831!2 (str.++ var1831!1 "File ")))
(assert true)
(define-const var1012 String (append/672562846 var2998 var3014)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2998!1 String)
(assert (= var2998!1 (str.++ var2998 var3014)))
(assert true)
(define-const var525 String (append/672562846 var1012 " not found.")) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found.") 
(declare-const var1012!1 String)
(assert (= var1012!1 (str.++ var1012 " not found.")))
(assert true)
(define-const var1905 String (toString/-2075883882 var525)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1208695669 var3139 var1905)) ; Statement: specialinvoke $r29.<org.javacc.jjtree.JJTreeIOException: void <init>(java.lang.String)>($r34) 

(declare-const var3139!1 var357)
(declare-const var1905!1 String)
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var329-init=([], java.io.File), var357-init=([], org.javacc.jjtree.JJTreeIOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1208695669=([org.javacc.jjtree.JJTreeIOException, java.lang.String], void)}
; {var821=org.javacc.jjtree.IO, var3102=r2, var3014=r1, var3550=null_type, var329=java.io.File, var3055=$r0, var3028=java.io.FileNotFoundException, var1644=$r28, var357=org.javacc.jjtree.JJTreeIOException, var3139=$r29, var1831=$r30, var2998=$r31, var1012=$r32, var525=$r33, var1905=$r34}
; {org.javacc.jjtree.IO=var821, r2=var3102, r1=var3014, null_type=var3550, java.io.File=var329, $r0=var3055, java.io.FileNotFoundException=var3028, $r28=var1644, org.javacc.jjtree.JJTreeIOException=var357, $r29=var3139, $r30=var1831, $r31=var2998, $r32=var1012, $r33=var525, $r34=var1905}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.javacc.jjtree.IO;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r28 := @caughtexception;	$r29 = new org.javacc.jjtree.JJTreeIOException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File ");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found.");	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<org.javacc.jjtree.JJTreeIOException: void <init>(java.lang.String)>($r34);	throw $r29
;block_num 2