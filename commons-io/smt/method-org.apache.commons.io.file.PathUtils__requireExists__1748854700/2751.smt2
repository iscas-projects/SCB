(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var120 0)
(declare-sort var642 0)
(declare-sort var165 0)
(declare-sort var3893 0)
(declare-sort var2355 0)
(declare-sort var3327 0)
(declare-sort var1375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3893_requireNonNull/1378936425 (var2355 String) var2355)
(declare-fun cast-from-var120-to-var2355 (var120) var2355)
(declare-fun var3327_exists/1474989889 (var120 (Array Int var165)) Bool)
(declare-fun var1375-init () var1375)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2355) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1375 String) void)
(declare-const null-var120 var120)
(declare-const null-String String)
(declare-const null-__Array__Int__var165__ (Array Int var165))
(declare-const var2334 var120) ; Statement: r0 := @parameter0: java.nio.file.Path 
(assert (not (= var2334 null-var120)))
(declare-const var1530 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1530 null-String)))
(declare-const var383 (Array Int var165)) ; Statement: r2 := @parameter2: java.nio.file.LinkOption[] 
(assert (not (= var383 null-__Array__Int__var165__)))
;(assert (var3893_requireNonNull/1378936425 (cast-from-var120-to-var2355 var2334) var1530)) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, r1) 

(declare-const var2334!1 var120)
(declare-const var1530!1 String)
(define-const var217 Bool (var3327_exists/1474989889 var2334!1 var383)) ; Statement: $z0 = staticinvoke <org.apache.commons.io.file.PathUtils: boolean exists(java.nio.file.Path,java.nio.file.LinkOption[])>(r0, r2) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var217 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var647 var1375 var1375-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var2060 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2060)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2060!1 String)
(assert (= var2060!1 ""))
(assert true)
(define-const var2589 String (append/672562846 var2060!1 "File system element for parameter \u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File system element for parameter \'") 
(declare-const var2060!2 String)
(assert (= var2060!2 (str.++ var2060!1 "File system element for parameter \u0027")))
(assert true)
(define-const var2651 String (append/672562846 var2589 var1530!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2589!1 String)
(assert (= var2589!1 (str.++ var2589 var1530!1)))
(assert true)
(define-const var1264 String (append/672562846 var2651 "\u0027 does not exist: \u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' does not exist: \'") 
(declare-const var2651!1 String)
(assert (= var2651!1 (str.++ var2651 "\u0027 does not exist: \u0027")))
(assert true)
(define-const var368 String (append/-1031950772 var1264 (cast-from-var120-to-var2355 var2334!1))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1264!1 String)
(assert (str.prefixof var1264 var1264!1))
(assert true)
(define-const var508 String (append/672562846 var368 "\u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var368!1 String)
(assert (= var368!1 (str.++ var368 "\u0027")))
(assert true)
(define-const var103 String (toString/-2075883882 var508)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var647 var103)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var647!1 var1375)
(declare-const var103!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3893_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var120-to-var2355=([java.nio.file.Path], java.lang.Object), var3327_exists/1474989889=([java.nio.file.Path, java.nio.file.LinkOption[]], boolean), var1375-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var120=java.nio.file.Path, var2334=r0, var1530=r1, var642=null_type, var165=java.nio.file.LinkOption, var383=r2, var3893=java.util.Objects, var2355=java.lang.Object, var3327=org.apache.commons.io.file.PathUtils, var217=$z0, var1375=java.lang.IllegalArgumentException, var647=$r3, var2060=$r4, var2589=$r5, var2651=$r6, var1264=$r7, var368=$r8, var508=$r9, var103=$r10}
; {java.nio.file.Path=var120, r0=var2334, r1=var1530, null_type=var642, java.nio.file.LinkOption=var165, r2=var383, java.util.Objects=var3893, java.lang.Object=var2355, org.apache.commons.io.file.PathUtils=var3327, $z0=var217, java.lang.IllegalArgumentException=var1375, $r3=var647, $r4=var2060, $r5=var2589, $r6=var2651, $r7=var1264, $r8=var368, $r9=var508, $r10=var103}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.nio.file.Path;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.nio.file.LinkOption[];	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, r1);	$z0 = staticinvoke <org.apache.commons.io.file.PathUtils: boolean exists(java.nio.file.Path,java.nio.file.LinkOption[])>(r0, r2);	if $z0 != 0 goto return r0;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File system element for parameter \'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' does not exist: \'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r3
;block_num 2