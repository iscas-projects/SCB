(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var248 0)
(declare-sort var1443 0)
(declare-sort var2928 0)
(declare-sort var707 0)
(declare-sort var1144 0)
(declare-sort var2387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var707) void)
(declare-fun cast-from-var248-to-var707 (var248) var707)
(declare-fun name/1896754499 (var248) String)
(declare-fun file/1896754499 (var248) var2928)
(declare-fun exists/1072868559 (var2928) Bool)
(declare-fun var1144-init () var1144)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAbsolutePath/-802773300 (var2928) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1144 String) void)
(declare-fun cast-from-var1144-to-var2387 (var1144) var2387)
(declare-const null-var248 var248)
(declare-const null-String String)
(declare-const null-var2928 var2928)
(declare-const var1126 var248) ; Statement: r0 := @this: org.hibernate.boot.archive.internal.FileInputStreamAccess 
(assert (not (= var1126 null-var248)))
(declare-const var2936 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2936 null-String)))
(declare-const var1256 var2928) ; Statement: r2 := @parameter1: java.io.File 
(assert (not (= var1256 null-var2928)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var248-to-var707 var1126))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1126!1 var248)
(declare-const var1126!2 var248)
(assert (not (= var1126!2 null-var248)))
(assert (= (name/1896754499 var1126!2) var2936)) ; Statement: r0.<org.hibernate.boot.archive.internal.FileInputStreamAccess: java.lang.String name> = r1 
(declare-const var1126!3 var248)
(assert (not (= var1126!3 null-var248)))
(assert (= (file/1896754499 var1126!3) var1256)) ; Statement: r0.<org.hibernate.boot.archive.internal.FileInputStreamAccess: java.io.File file> = r2 
(assert true)
(define-const var395 Bool (exists/1072868559 var1256)) ; Statement: $z0 = virtualinvoke r2.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var395 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1830 var1144 var1144-init) ; Statement: $r10 = new org.hibernate.HibernateException 
(define-const var3455 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3455)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3455!1 String)
(assert (= var3455!1 ""))
(assert true)
(define-const var345 String (append/672562846 var3455!1 "File must exist : ")) ; Statement: $r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File must exist : ") 
(declare-const var3455!2 String)
(assert (= var3455!2 (str.++ var3455!1 "File must exist : ")))
(assert true)
(define-const var588 String (getAbsolutePath/-802773300 var1256)) ; Statement: $r5 = virtualinvoke r2.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var33 String (append/672562846 var345 var588)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var345!1 String)
(assert (= var345!1 (str.++ var345 var588)))
(assert true)
(define-const var2409 String (toString/-2075883882 var33)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1830 var2409)) ; Statement: specialinvoke $r10.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r8) 

(declare-const var1830!1 var1144)
(declare-const var2409!1 String)
(define-const var1431 var2387 (cast-from-var1144-to-var2387 var1830!1)) ; Statement: $r11 = (java.lang.Throwable) $r10 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var248-to-var707=([org.hibernate.boot.archive.internal.FileInputStreamAccess], java.lang.Object), name/1896754499=([org.hibernate.boot.archive.internal.FileInputStreamAccess], java.lang.String), file/1896754499=([org.hibernate.boot.archive.internal.FileInputStreamAccess], java.io.File), exists/1072868559=([java.io.File], boolean), var1144-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAbsolutePath/-802773300=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1144-to-var2387=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var248=org.hibernate.boot.archive.internal.FileInputStreamAccess, var1126=r0, var2936=r1, var1443=null_type, var2928=java.io.File, var1256=r2, var707=java.lang.Object, var395=$z0, var1144=org.hibernate.HibernateException, var1830=$r10, var3455=$r9, var345=$r6, var588=$r5, var33=$r7, var2409=$r8, var2387=java.lang.Throwable, var1431=$r11}
; {org.hibernate.boot.archive.internal.FileInputStreamAccess=var248, r0=var1126, r1=var2936, null_type=var1443, java.io.File=var2928, r2=var1256, java.lang.Object=var707, $z0=var395, org.hibernate.HibernateException=var1144, $r10=var1830, $r9=var3455, $r6=var345, $r5=var588, $r7=var33, $r8=var2409, java.lang.Throwable=var2387, $r11=var1431}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.archive.internal.FileInputStreamAccess;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.io.File;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.boot.archive.internal.FileInputStreamAccess: java.lang.String name> = r1;	r0.<org.hibernate.boot.archive.internal.FileInputStreamAccess: java.io.File file> = r2;	$z0 = virtualinvoke r2.<java.io.File: boolean exists()>();	if $z0 != 0 goto return;	$r10 = new org.hibernate.HibernateException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File must exist : ");	$r5 = virtualinvoke r2.<java.io.File: java.lang.String getAbsolutePath()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r8);	$r11 = (java.lang.Throwable) $r10;	throw $r11
;block_num 2