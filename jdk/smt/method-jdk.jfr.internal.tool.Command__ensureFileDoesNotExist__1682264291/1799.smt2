(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3529 0)
(declare-sort var3487 0)
(declare-sort var2980 0)
(declare-sort var2450 0)
(declare-sort var1459 0)
(declare-sort var1860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2980-init () (Array Int var2980))
(declare-fun var2450_exists/964052014 (var3487 (Array Int var2980)) Bool)
(declare-fun var1459-init () var1459)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1860) String)
(declare-fun cast-from-var3487-to-var1860 (var3487) var1860)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/184329998 (var1459 String) void)
(declare-const null-var3529 var3529)
(declare-const null-var3487 var3487)
(declare-const var1484 var3529) ; Statement: r8 := @this: jdk.jfr.internal.tool.Command 
(assert (not (= var1484 null-var3529)))
(declare-const var2392 var3487) ; Statement: r0 := @parameter0: java.nio.file.Path 
(assert (not (= var2392 null-var3487)))
(define-const var2220 (Array Int var2980) arr-var2980-init) ; Statement: $r1 = newarray (java.nio.file.LinkOption)[0] 
(define-const var615 Bool (var2450_exists/964052014 var2392 var2220)) ; Statement: $z0 = staticinvoke <java.nio.file.Files: boolean exists(java.nio.file.Path,java.nio.file.LinkOption[])>(r0, $r1) 
 ; Statement: if $z0 == 0 goto return r0 
(assert (not (= (ite var615 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var539 var1459 var1459-init) ; Statement: $r2 = new jdk.jfr.internal.tool.UserDataException 
(define-const var3894 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3894)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3894!1 String)
(assert (= var3894!1 ""))
(assert true)
(define-const var2282 String (append/672562846 var3894!1 "file \u0027")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("file \'") 
(declare-const var3894!2 String)
(assert (= var3894!2 (str.++ var3894!1 "file \u0027")))
(assert true)
(define-const var3876 String (append/-1031950772 var2282 (cast-from-var3487-to-var1860 var2392))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2282!1 String)
(assert (str.prefixof var2282 var2282!1))
(assert true)
(define-const var3090 String (append/672562846 var3876 "\u0027 already exists")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' already exists") 
(declare-const var3876!1 String)
(assert (= var3876!1 (str.++ var3876 "\u0027 already exists")))
(assert true)
(define-const var2691 String (toString/-2075883882 var3090)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/184329998 var539 var2691)) ; Statement: specialinvoke $r2.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r7) 

(declare-const var539!1 var1459)
(declare-const var2691!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2980-init=([], java.nio.file.LinkOption[]), var2450_exists/964052014=([java.nio.file.Path, java.nio.file.LinkOption[]], boolean), var1459-init=([], jdk.jfr.internal.tool.UserDataException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3487-to-var1860=([java.nio.file.Path], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/184329998=([jdk.jfr.internal.tool.UserDataException, java.lang.String], void)}
; {var3529=jdk.jfr.internal.tool.Command, var1484=r8, var3487=java.nio.file.Path, var2392=r0, var2980=java.nio.file.LinkOption, var2220=$r1, var2450=java.nio.file.Files, var615=$z0, var1459=jdk.jfr.internal.tool.UserDataException, var539=$r2, var3894=$r3, var2282=$r4, var1860=java.lang.Object, var3876=$r5, var3090=$r6, var2691=$r7}
; {jdk.jfr.internal.tool.Command=var3529, r8=var1484, java.nio.file.Path=var3487, r0=var2392, java.nio.file.LinkOption=var2980, $r1=var2220, java.nio.file.Files=var2450, $z0=var615, jdk.jfr.internal.tool.UserDataException=var1459, $r2=var539, $r3=var3894, $r4=var2282, java.lang.Object=var1860, $r5=var3876, $r6=var3090, $r7=var2691}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: jdk.jfr.internal.tool.Command;	r0 := @parameter0: java.nio.file.Path;	$r1 = newarray (java.nio.file.LinkOption)[0];	$z0 = staticinvoke <java.nio.file.Files: boolean exists(java.nio.file.Path,java.nio.file.LinkOption[])>(r0, $r1);	if $z0 == 0 goto return r0;	$r2 = new jdk.jfr.internal.tool.UserDataException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("file \'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' already exists");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 2