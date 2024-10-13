(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1725 0)
(declare-sort var3704 0)
(declare-sort var3973 0)
(declare-sort var1324 0)
(declare-sort var441 0)
(declare-sort var2834 0)
(declare-sort var2438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openStream/913863501 (var3973) var1324)
(declare-fun var2438-init () var2438)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/180162754 (var2438 String var441) void)
(declare-fun cast-from-var2834-to-var441 (var2834) var441)
(declare-const null-var1725 var1725)
(declare-const null-String String)
(declare-const null-var3973 var3973)
(declare-const null-Bool Bool)
(declare-const null-var441 var441)
(declare-const null-var2834 var2834)
(declare-const var773 var1725) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var773 null-var1725)))
(declare-const var1099 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1099 null-String)))
(declare-const var3029 var3973) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var3029 null-var3973)))
(declare-const var1925 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1925 null-Bool)))
(define-const var328 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3058 var1324 (openStream/913863501 var3029)) ; Statement: r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1632 var441) ; Statement: $r19 := @caughtexception 
(assert (not (= var1632 null-var441)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2828 var2834) ; Statement: $r14 := @caughtexception 
(assert (not (= var2828 null-var2834)))
(define-const var3873 var2438 var2438-init) ; Statement: $r27 = new java.lang.ClassNotFoundException 
(define-const var753 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var753 "I/O exception reading class ")) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ") 
(declare-const var753!1 String)
(assert (= var753!1 "I/O exception reading class "))
(assert true)
(define-const var990 String (append/672562846 var753!1 var1099)) ; Statement: $r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var753!2 String)
(assert (= var753!2 (str.++ var753!1 var1099)))
(assert true)
(define-const var742 String (toString/-2075883882 var990)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/180162754 var3873 var742 (cast-from-var2834-to-var441 var2828))) ; Statement: specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14) 

(declare-const var3873!1 var2438)
(declare-const var742!1 String)
(declare-const var2828!1 var2834)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {openStream/913863501=([java.net.URL], java.io.InputStream), var2438-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/180162754=([java.lang.ClassNotFoundException, java.lang.String, java.lang.Throwable], void), cast-from-var2834-to-var441=([java.io.IOException], java.lang.Throwable)}
; {var1725=lombok.launch.ShadowClassLoader, var773=r1, var1099=r3, var3704=null_type, var3973=java.net.URL, var3029=r0, var1925=z1, var328=i3, var1324=java.io.InputStream, var3058=r20, var441=java.lang.Throwable, var1632=$r19, var2834=java.io.IOException, var2828=$r14, var2438=java.lang.ClassNotFoundException, var3873=$r27, var753=$r26, var990=$r17, var742=$r18}
; {lombok.launch.ShadowClassLoader=var1725, r1=var773, r3=var1099, null_type=var3704, java.net.URL=var3973, r0=var3029, z1=var1925, i3=var328, java.io.InputStream=var1324, r20=var3058, java.lang.Throwable=var441, $r19=var1632, java.io.IOException=var2834, $r14=var2828, java.lang.ClassNotFoundException=var2438, $r27=var3873, $r26=var753, $r17=var990, $r18=var742}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.net.URL;	z1 := @parameter2: boolean;	i3 = 0;	r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	$r19 := @caughtexception;	$r14 := @caughtexception;	$r27 = new java.lang.ClassNotFoundException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>(java.lang.String)>("I/O exception reading class ");	$r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.ClassNotFoundException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r14);	throw $r27
;block_num 4