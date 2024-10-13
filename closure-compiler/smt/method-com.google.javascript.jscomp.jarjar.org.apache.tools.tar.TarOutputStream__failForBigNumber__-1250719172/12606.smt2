(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var233 0)
(declare-sort var367 0)
(declare-sort var1464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1464-init () var1464)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var1464 String) void)
(declare-const null-var233 var233)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1081 var233) ; Statement: r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream 
(assert (not (= var1081 null-var233)))
(declare-const var3484 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3484 null-String)))
(declare-const var1944 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1944 null-Int)))
(declare-const var3254 Int) ; Statement: l2 := @parameter2: long 
(assert (not (= var3254 null-Int)))
(declare-const var1222 String) ; Statement: r11 := @parameter3: java.lang.String 
(assert (not (= var1222 null-String)))
(define-const var2081 Int (ite (> var1944 0) 1 (ite (< var1944 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var2904 Int (cast-from-Int-to-Int var2081)) ; Statement: $i4 = (int) $b1 
 ; Statement: if $i4 < 0 goto $r13 = new java.lang.RuntimeException 
(assert (< var2904 0)) ; Cond: $i4 < 0 
(define-const var2107 var1464 var1464-init) ; Statement: $r13 = new java.lang.RuntimeException 
(define-const var10 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var10)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var10!1 String)
(assert (= var10!1 ""))
(assert true)
(define-const var1623 String (append/672562846 var10!1 var3484)) ; Statement: $r3 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var10!2 String)
(assert (= var10!2 (str.++ var10!1 var3484)))
(assert true)
(define-const var732 String (append/672562846 var1623 " \u0027")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'") 
(declare-const var1623!1 String)
(assert (= var1623!1 (str.++ var1623 " \u0027")))
(assert true)
(define-const var1082 String (append/-901862667 var732 var1944)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var732!1 String)
(assert (str.prefixof var732 var732!1))
(assert true)
(define-const var2848 String (append/672562846 var1082 "\u0027 is too big ( > ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is too big ( > ") 
(declare-const var1082!1 String)
(assert (= var1082!1 (str.++ var1082 "\u0027 is too big ( > ")))
(assert true)
(define-const var2758 String (append/-901862667 var2848 var3254)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l2) 
(declare-const var2848!1 String)
(assert (str.prefixof var2848 var2848!1))
(assert true)
(define-const var3843 String (append/672562846 var2758 " )")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )") 
(declare-const var2758!1 String)
(assert (= var2758!1 (str.++ var2758 " )")))
(assert true)
(define-const var491 String (toString/-2075883882 var3843)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2107 var491)) ; Statement: specialinvoke $r13.<java.lang.RuntimeException: void <init>(java.lang.String)>($r9) 

(declare-const var2107!1 var1464)
(declare-const var491!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var1464-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var233=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream, var1081=r10, var3484=r2, var367=null_type, var1944=l0, var3254=l2, var1222=r11, var2081=$b1, var2904=$i4, var1464=java.lang.RuntimeException, var2107=$r13, var10=$r12, var1623=$r3, var732=$r4, var1082=$r5, var2848=$r6, var2758=$r7, var3843=$r8, var491=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream=var233, r10=var1081, r2=var3484, null_type=var367, l0=var1944, l2=var3254, r11=var1222, $b1=var2081, $i4=var2904, java.lang.RuntimeException=var1464, $r13=var2107, $r12=var10, $r3=var1623, $r4=var732, $r5=var1082, $r6=var2848, $r7=var2758, $r8=var3843, $r9=var491}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream;	r2 := @parameter0: java.lang.String;	l0 := @parameter1: long;	l2 := @parameter2: long;	r11 := @parameter3: java.lang.String;	$b1 = l0 cmp 0L;	$i4 = (int) $b1;	if $i4 < 0 goto $r13 = new java.lang.RuntimeException;	$r13 = new java.lang.RuntimeException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is too big ( > ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.RuntimeException: void <init>(java.lang.String)>($r9);	throw $r13
;block_num 2