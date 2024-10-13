(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2259 0)
(declare-sort var1763 0)
(declare-sort var1833 0)
(declare-sort var1747 0)
(declare-sort var407 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2259_put/1464166817 (var2259 var1763 var1763) var1763)
(declare-fun cast-from-String-to-var1763 (String) var1763)
(declare-fun cast-from-var1763-to-String (var1763) String)
(declare-fun var1747-init () var1747)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1763) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1747 String) void)
(declare-fun cast-from-var1747-to-var407 (var1747) var407)
(declare-const null-var2259 var2259)
(declare-const null-var1763 var1763)
(declare-const null-String String)
(declare-const var447 var2259) ; Statement: r0 := @parameter0: java.util.Map 
(assert (not (= var447 null-var2259)))
(declare-const var1931 var1763) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1931 null-var1763)))
(declare-const var2588 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2588 null-String)))
(define-const var1442 var1763 (var2259_put/1464166817 var447 var1931 (cast-from-String-to-var1763 var2588))) ; Statement: $r3 = interfaceinvoke r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2) 
(define-const var2168 String (cast-from-var1763-to-String var1442)) ; Statement: r4 = (java.lang.String) $r3 
 ; Statement: if r4 == null goto return 
(assert (not (= var2168 null-String))) ; Negate: Cond: r4 == null  
(define-const var1037 var1747 var1747-init) ; Statement: $r16 = new org.hibernate.MappingException 
(define-const var387 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var387)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var387!1 String)
(assert (= var387!1 ""))
(assert true)
(define-const var2090 String (append/672562846 var387!1 "Entities [")) ; Statement: $r7 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Entities [") 
(declare-const var387!2 String)
(assert (= var387!2 (str.++ var387!1 "Entities [")))
(assert true)
(define-const var316 String (append/672562846 var2090 var2588)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2090!1 String)
(assert (= var2090!1 (str.++ var2090 var2588)))
(assert true)
(define-const var1572 String (append/672562846 var316 "] and [")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] and [") 
(declare-const var316!1 String)
(assert (= var316!1 (str.++ var316 "] and [")))
(assert true)
(define-const var2563 String (append/672562846 var1572 var2168)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1572!1 String)
(assert (= var1572!1 (str.++ var1572 var2168)))
(assert true)
(define-const var1832 String (append/672562846 var2563 "] are mapped with the same discriminator value \u0027")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] are mapped with the same discriminator value \'") 
(declare-const var2563!1 String)
(assert (= var2563!1 (str.++ var2563 "] are mapped with the same discriminator value \u0027")))
(assert true)
(define-const var3059 String (append/-1031950772 var1832 var1931)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1832!1 String)
(assert (str.prefixof var1832 var1832!1))
(assert true)
(define-const var1887 String (append/672562846 var3059 "\u0027.")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.") 
(declare-const var3059!1 String)
(assert (= var3059!1 (str.++ var3059 "\u0027.")))
(assert true)
(define-const var338 String (toString/-2075883882 var1887)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var1037 var338)) ; Statement: specialinvoke $r16.<org.hibernate.MappingException: void <init>(java.lang.String)>($r14) 

(declare-const var1037!1 var1747)
(declare-const var338!1 String)
(define-const var463 var407 (cast-from-var1747-to-var407 var1037!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var2259_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1763=([java.lang.String], java.lang.Object), cast-from-var1763-to-String=([java.lang.Object], java.lang.String), var1747-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1747-to-var407=([org.hibernate.MappingException], java.lang.Throwable)}
; {var2259=java.util.Map, var447=r0, var1763=java.lang.Object, var1931=r1, var2588=r2, var1833=null_type, var1442=$r3, var2168=r4, var1747=org.hibernate.MappingException, var1037=$r16, var387=$r15, var2090=$r7, var316=$r8, var1572=$r9, var2563=$r10, var1832=$r11, var3059=$r12, var1887=$r13, var338=$r14, var407=java.lang.Throwable, var463=$r17}
; {java.util.Map=var2259, r0=var447, java.lang.Object=var1763, r1=var1931, r2=var2588, null_type=var1833, $r3=var1442, r4=var2168, org.hibernate.MappingException=var1747, $r16=var1037, $r15=var387, $r7=var2090, $r8=var316, $r9=var1572, $r10=var2563, $r11=var1832, $r12=var3059, $r13=var1887, $r14=var338, java.lang.Throwable=var407, $r17=var463}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Map;	r1 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.String;	$r3 = interfaceinvoke r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2);	r4 = (java.lang.String) $r3;	if r4 == null goto return;	$r16 = new org.hibernate.MappingException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Entities [");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] and [");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] are mapped with the same discriminator value \'");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.MappingException: void <init>(java.lang.String)>($r14);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2