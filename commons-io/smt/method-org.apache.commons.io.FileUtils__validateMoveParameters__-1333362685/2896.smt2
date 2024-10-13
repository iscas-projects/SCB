(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var898 0)
(declare-sort var1184 0)
(declare-sort var3526 0)
(declare-sort var1100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1184_requireNonNull/1378936425 (var3526 String) var3526)
(declare-fun cast-from-var898-to-var3526 (var898) var3526)
(declare-fun exists/1072868559 (var898) Bool)
(declare-fun var1100-init () var1100)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3526) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1681661674 (var1100 String) void)
(declare-const null-var898 var898)
(declare-const var2706 var898) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2706 null-var898)))
(declare-const var948 var898) ; Statement: r1 := @parameter1: java.io.File 
(assert (not (= var948 null-var898)))
;(assert (var1184_requireNonNull/1378936425 (cast-from-var898-to-var3526 var2706) "source")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "source") 

(declare-const var2706!1 var898)
(declare-const var2991 String)
;(assert (var1184_requireNonNull/1378936425 (cast-from-var898-to-var3526 var948) "destination")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "destination") 

(declare-const var948!1 var898)
(declare-const var449 String)
(assert true)
(define-const var714 Bool (exists/1072868559 var2706!1)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var714 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var52 var1100 var1100-init) ; Statement: $r2 = new java.io.FileNotFoundException 
(define-const var222 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var222)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var222!1 String)
(assert (= var222!1 ""))
(assert true)
(define-const var3310 String (append/672562846 var222!1 "Source \u0027")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Source \'") 
(declare-const var222!2 String)
(assert (= var222!2 (str.++ var222!1 "Source \u0027")))
(assert true)
(define-const var390 String (append/-1031950772 var3310 (cast-from-var898-to-var3526 var2706!1))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3310!1 String)
(assert (str.prefixof var3310 var3310!1))
(assert true)
(define-const var3485 String (append/672562846 var390 "\u0027 does not exist")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' does not exist") 
(declare-const var390!1 String)
(assert (= var390!1 (str.++ var390 "\u0027 does not exist")))
(assert true)
(define-const var3188 String (toString/-2075883882 var3485)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681661674 var52 var3188)) ; Statement: specialinvoke $r2.<java.io.FileNotFoundException: void <init>(java.lang.String)>($r7) 

(declare-const var52!1 var1100)
(declare-const var3188!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1184_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var898-to-var3526=([java.io.File], java.lang.Object), exists/1072868559=([java.io.File], boolean), var1100-init=([], java.io.FileNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1681661674=([java.io.FileNotFoundException, java.lang.String], void)}
; {var898=java.io.File, var2706=r0, var948=r1, var1184=java.util.Objects, var3526=java.lang.Object, var2991="source", var449="destination", var714=$z0, var1100=java.io.FileNotFoundException, var52=$r2, var222=$r3, var3310=$r4, var390=$r5, var3485=$r6, var3188=$r7}
; {java.io.File=var898, r0=var2706, r1=var948, java.util.Objects=var1184, java.lang.Object=var3526, "source"=var2991, "destination"=var449, $z0=var714, java.io.FileNotFoundException=var1100, $r2=var52, $r3=var222, $r4=var3310, $r5=var390, $r6=var3485, $r7=var3188}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	r1 := @parameter1: java.io.File;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "source");	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "destination");	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto return;	$r2 = new java.io.FileNotFoundException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Source \'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' does not exist");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.FileNotFoundException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 2