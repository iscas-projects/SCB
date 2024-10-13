(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1486 0)
(declare-sort var2047 0)
(declare-sort var960 0)
(declare-sort var2512 0)
(declare-sort var3608 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun streams/-1209721817 (var1486) var2047)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun var2047_get/1088891777 (var2047 var960) var960)
(declare-fun cast-from-Int-to-var960 (Int) var960)
(declare-fun cast-from-var960-to-var2512 (var960) var2512)
(declare-fun var3608-init () var3608)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3608 String) void)
(declare-const null-var1486 var1486)
(declare-const null-Int Int)
(declare-const null-var2512 var2512)
(declare-const var1138 var1486) ; Statement: r0 := @this: jdk.management.jfr.StreamManager 
(assert (not (= var1138 null-var1486)))
(declare-const var3386 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3386 null-Int)))
(define-const var1835 var2047 (streams/-1209721817 var1138)) ; Statement: $r1 = r0.<jdk.management.jfr.StreamManager: java.util.Map streams> 
(define-const var3096 Int (Int_valueOf/-1102777585 var3386)) ; Statement: $r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0) 
(define-const var3234 var960 (var2047_get/1088891777 var1835 (cast-from-Int-to-var960 var3096))) ; Statement: $r3 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var1277 var2512 (cast-from-var960-to-var2512 var3234)) ; Statement: r4 = (jdk.management.jfr.Stream) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var1277 null-var2512)))) ; Negate: Cond: r4 != null  
(define-const var251 var3608 var3608-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var543 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var543)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var543!1 String)
(assert (= var543!1 ""))
(assert true)
(define-const var2526 String (append/672562846 var543!1 "Unknown stream identifier ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown stream identifier ") 
(declare-const var543!2 String)
(assert (= var543!2 (str.++ var543!1 "Unknown stream identifier ")))
(assert true)
(define-const var3027 String (append/-901862667 var2526 var3386)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2526!1 String)
(assert (str.prefixof var2526 var2526!1))
(assert true)
(define-const var3111 String (toString/-2075883882 var3027)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var251 var3111)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var251!1 var3608)
(declare-const var3111!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {streams/-1209721817=([jdk.management.jfr.StreamManager], java.util.Map), Int_valueOf/-1102777585=([long], java.lang.Long), var2047_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var960=([java.lang.Long], java.lang.Object), cast-from-var960-to-var2512=([java.lang.Object], jdk.management.jfr.Stream), var3608-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1486=jdk.management.jfr.StreamManager, var1138=r0, var3386=l0, var2047=java.util.Map, var1835=$r1, var3096=$r2, var960=java.lang.Object, var3234=$r3, var2512=jdk.management.jfr.Stream, var1277=r4, var3608=java.lang.IllegalArgumentException, var251=$r5, var543=$r6, var2526=$r7, var3027=$r8, var3111=$r9}
; {jdk.management.jfr.StreamManager=var1486, r0=var1138, l0=var3386, java.util.Map=var2047, $r1=var1835, $r2=var3096, java.lang.Object=var960, $r3=var3234, jdk.management.jfr.Stream=var2512, r4=var1277, java.lang.IllegalArgumentException=var3608, $r5=var251, $r6=var543, $r7=var2526, $r8=var3027, $r9=var3111}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.management.jfr.StreamManager;	l0 := @parameter0: long;	$r1 = r0.<jdk.management.jfr.StreamManager: java.util.Map streams>;	$r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0);	$r3 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	r4 = (jdk.management.jfr.Stream) $r3;	if r4 != null goto return r4;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown stream identifier ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2