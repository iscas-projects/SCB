(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var943 0)
(declare-sort var2156 0)
(declare-sort var3334 0)
(declare-sort var2908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2156_requireNonNull/1378936425 (var3334 String) var3334)
(declare-fun cast-from-var943-to-var3334 (var943) var3334)
(declare-fun isFile/1016913701 (var943) Bool)
(declare-fun isDirectory/-2122094196 (var943) Bool)
(declare-fun var2908-init () var2908)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3334) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1681661674 (var2908 String) void)
(declare-const null-var943 var943)
(declare-const var2283 var943) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2283 null-var943)))
(declare-const var2073 var943) ; Statement: r7 := @parameter1: java.io.File 
(assert (not (= var2073 null-var943)))
;(assert (var2156_requireNonNull/1378936425 (cast-from-var943-to-var3334 var2283) "sourceFile")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "sourceFile") 

(declare-const var2283!1 var943)
(declare-const var3074 String)
(assert true)
(define-const var2210 Bool (isFile/1016913701 var2283!1)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean isFile()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.io.File: boolean isDirectory()>() 
(assert (= (ite var2210 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var76 Bool (isDirectory/-2122094196 var2283!1)) ; Statement: $z1 = virtualinvoke r0.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z1 == 0 goto $r1 = new java.io.FileNotFoundException 
(assert (= (ite var76 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1960 var2908 var2908-init) ; Statement: $r1 = new java.io.FileNotFoundException 
(define-const var1449 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1449)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1449!1 String)
(assert (= var1449!1 ""))
(assert true)
(define-const var2181 String (append/672562846 var1449!1 "The source ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The source ") 
(declare-const var1449!2 String)
(assert (= var1449!2 (str.++ var1449!1 "The source ")))
(assert true)
(define-const var3191 String (append/-1031950772 var2181 (cast-from-var943-to-var3334 var2283!1))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2181!1 String)
(assert (str.prefixof var2181 var2181!1))
(assert true)
(define-const var2915 String (append/672562846 var3191 " does not exist")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist") 
(declare-const var3191!1 String)
(assert (= var3191!1 (str.++ var3191 " does not exist")))
(assert true)
(define-const var3742 String (toString/-2075883882 var2915)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681661674 var1960 var3742)) ; Statement: specialinvoke $r1.<java.io.FileNotFoundException: void <init>(java.lang.String)>($r6) 

(declare-const var1960!1 var2908)
(declare-const var3742!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2156_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var943-to-var3334=([java.io.File], java.lang.Object), isFile/1016913701=([java.io.File], boolean), isDirectory/-2122094196=([java.io.File], boolean), var2908-init=([], java.io.FileNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1681661674=([java.io.FileNotFoundException, java.lang.String], void)}
; {var943=java.io.File, var2283=r0, var2073=r7, var2156=java.util.Objects, var3334=java.lang.Object, var3074="sourceFile", var2210=$z0, var76=$z1, var2908=java.io.FileNotFoundException, var1960=$r1, var1449=$r2, var2181=$r3, var3191=$r4, var2915=$r5, var3742=$r6}
; {java.io.File=var943, r0=var2283, r7=var2073, java.util.Objects=var2156, java.lang.Object=var3334, "sourceFile"=var3074, $z0=var2210, $z1=var76, java.io.FileNotFoundException=var2908, $r1=var1960, $r2=var1449, $r3=var2181, $r4=var3191, $r5=var2915, $r6=var3742}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	r7 := @parameter1: java.io.File;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "sourceFile");	$z0 = virtualinvoke r0.<java.io.File: boolean isFile()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.io.File: boolean isDirectory()>();	$z1 = virtualinvoke r0.<java.io.File: boolean isDirectory()>();	if $z1 == 0 goto $r1 = new java.io.FileNotFoundException;	$r1 = new java.io.FileNotFoundException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The source ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.io.FileNotFoundException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 3