(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3198 0)
(declare-sort var3769 0)
(declare-sort var3751 0)
(declare-sort var2256 0)
(declare-sort var3773 0)
(declare-sort var2002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3751-init () var3751)
(declare-fun var3773-init () var3773)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2002) String)
(declare-fun cast-from-var2256-to-var2002 (var2256) var2002)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/184329998 (var3773 String) void)
(declare-const null-var3198 var3198)
(declare-const null-var3769 var3769)
(declare-const null-var2256 var2256)
(declare-const var877 var3198) ; Statement: r29 := @this: jdk.jfr.internal.tool.Command 
(assert (not (= var877 null-var3198)))
(declare-const var146 var3769) ; Statement: r1 := @parameter0: java.nio.file.Path 
(assert (not (= var146 null-var3769)))
(define-const var3957 var3751 var3751-init) ; Statement: $r0 = new java.io.RandomAccessFile 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1714 var2256) ; Statement: $r18 := @caughtexception 
(assert (not (= var1714 null-var2256)))
(define-const var1668 var3773 var3773-init) ; Statement: $r19 = new jdk.jfr.internal.tool.UserDataException 
(define-const var540 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var540)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var540!1 String)
(assert (= var540!1 ""))
(assert true)
(define-const var3677 String (append/672562846 var540!1 "could not open file ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not open file ") 
(declare-const var540!2 String)
(assert (= var540!2 (str.++ var540!1 "could not open file ")))
(assert true)
(define-const var3564 String (getMessage/849299655 (cast-from-var2256-to-var2002 var1714))) ; Statement: $r21 = virtualinvoke $r18.<java.io.FileNotFoundException: java.lang.String getMessage()>() 
(assert true)
(define-const var3783 String (append/672562846 var3677 var3564)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3677!1 String)
(assert (= var3677!1 (str.++ var3677 var3564)))
(assert true)
(define-const var2684 String (toString/-2075883882 var3783)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/184329998 var1668 var2684)) ; Statement: specialinvoke $r19.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r24) 

(declare-const var1668!1 var3773)
(declare-const var2684!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var3751-init=([], java.io.RandomAccessFile), var3773-init=([], jdk.jfr.internal.tool.UserDataException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2256-to-var2002=([java.io.FileNotFoundException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/184329998=([jdk.jfr.internal.tool.UserDataException, java.lang.String], void)}
; {var3198=jdk.jfr.internal.tool.Command, var877=r29, var3769=java.nio.file.Path, var146=r1, var3751=java.io.RandomAccessFile, var3957=$r0, var2256=java.io.FileNotFoundException, var1714=$r18, var3773=jdk.jfr.internal.tool.UserDataException, var1668=$r19, var540=$r20, var3677=$r22, var2002=java.lang.Throwable, var3564=$r21, var3783=$r23, var2684=$r24}
; {jdk.jfr.internal.tool.Command=var3198, r29=var877, java.nio.file.Path=var3769, r1=var146, java.io.RandomAccessFile=var3751, $r0=var3957, java.io.FileNotFoundException=var2256, $r18=var1714, jdk.jfr.internal.tool.UserDataException=var3773, $r19=var1668, $r20=var540, $r22=var3677, java.lang.Throwable=var2002, $r21=var3564, $r23=var3783, $r24=var2684}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r29 := @this: jdk.jfr.internal.tool.Command;	r1 := @parameter0: java.nio.file.Path;	$r0 = new java.io.RandomAccessFile;	$r18 := @caughtexception;	$r19 = new jdk.jfr.internal.tool.UserDataException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not open file ");	$r21 = virtualinvoke $r18.<java.io.FileNotFoundException: java.lang.String getMessage()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r24);	throw $r19
;block_num 2