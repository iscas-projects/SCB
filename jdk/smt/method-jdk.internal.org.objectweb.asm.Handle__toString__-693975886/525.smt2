(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3044 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun owner/-1130912878 (var3044) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun name/-1130912878 (var3044) String)
(declare-fun desc/-1130912878 (var3044) String)
(declare-fun tag/-1130912878 (var3044) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3044 var3044)
(declare-const var1107 var3044) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.Handle 
(assert (not (= var1107 null-var3044)))
(define-const var1513 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1513)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1513!1 String)
(assert (= var1513!1 ""))
(define-const var595 String (owner/-1130912878 var1107)) ; Statement: $r2 = r1.<jdk.internal.org.objectweb.asm.Handle: java.lang.String owner> 
(assert true)
(define-const var1446 String (append/672562846 var1513!1 var595)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1513!2 String)
(assert (= var1513!2 (str.++ var1513!1 var595)))
(assert true)
(define-const var1001 String (append/-1166366385 var1446 46)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1446!1 String)
(assert (str.prefixof var1446 var1446!1))
(define-const var1790 String (name/-1130912878 var1107)) ; Statement: $r4 = r1.<jdk.internal.org.objectweb.asm.Handle: java.lang.String name> 
(assert true)
(define-const var3074 String (append/672562846 var1001 var1790)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1001!1 String)
(assert (= var1001!1 (str.++ var1001 var1790)))
(define-const var3114 String (desc/-1130912878 var1107)) ; Statement: $r6 = r1.<jdk.internal.org.objectweb.asm.Handle: java.lang.String desc> 
(assert true)
(define-const var3693 String (append/672562846 var3074 var3114)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3074!1 String)
(assert (= var3074!1 (str.++ var3074 var3114)))
(assert true)
(define-const var1057 String (append/672562846 var3693 " (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3693!1 String)
(assert (= var3693!1 (str.++ var3693 " (")))
(define-const var1465 Int (tag/-1130912878 var1107)) ; Statement: $i0 = r1.<jdk.internal.org.objectweb.asm.Handle: int tag> 
(assert true)
(define-const var281 String (append/-1001720160 var1057 var1465)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1057!1 String)
(assert (str.prefixof var1057 var1057!1))
(assert true)
(define-const var2671 String (append/-1166366385 var281 41)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var281!1 String)
(assert (str.prefixof var281 var281!1))
(assert true)
(define-const var3266 String (toString/-2075883882 var2671)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), owner/-1130912878=([jdk.internal.org.objectweb.asm.Handle], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), name/-1130912878=([jdk.internal.org.objectweb.asm.Handle], java.lang.String), desc/-1130912878=([jdk.internal.org.objectweb.asm.Handle], java.lang.String), tag/-1130912878=([jdk.internal.org.objectweb.asm.Handle], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3044=jdk.internal.org.objectweb.asm.Handle, var1107=r1, var1513=$r0, var595=$r2, var1446=$r3, var1001=$r5, var1790=$r4, var3074=$r7, var3114=$r6, var3693=$r8, var1057=$r9, var1465=$i0, var281=$r10, var2671=$r11, var3266=$r12}
; {jdk.internal.org.objectweb.asm.Handle=var3044, r1=var1107, $r0=var1513, $r2=var595, $r3=var1446, $r5=var1001, $r4=var1790, $r7=var3074, $r6=var3114, $r8=var3693, $r9=var1057, $i0=var1465, $r10=var281, $r11=var2671, $r12=var3266}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.Handle;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.internal.org.objectweb.asm.Handle: java.lang.String owner>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r4 = r1.<jdk.internal.org.objectweb.asm.Handle: java.lang.String name>;	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = r1.<jdk.internal.org.objectweb.asm.Handle: java.lang.String desc>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$i0 = r1.<jdk.internal.org.objectweb.asm.Handle: int tag>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1