(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1687060072 (var759 Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var759 var759)
(declare-const null-Int Int)
(declare-const var3772 var759) ; Statement: r1 := @this: jdk.jfr.consumer.ChunkParser 
(assert (not (= var3772 null-var759)))
(declare-const var1433 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1433 null-Int)))
(declare-const var2438 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2438 null-Int)))
(define-const var1070 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1070)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1070!1 String)
(assert (= var1070!1 ""))
(assert true)
(define-const var2742 String (append/672562846 var1070!1 "Constant: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Constant: ") 
(declare-const var1070!2 String)
(assert (= var1070!2 (str.++ var1070!1 "Constant: ")))
(assert true)
(define-const var3183 String (getName/1687060072 var3772 var1433)) ; Statement: $r2 = specialinvoke r1.<jdk.jfr.consumer.ChunkParser: java.lang.String getName(long)>(l0) 
(assert true)
(define-const var1927 String (append/672562846 var2742 var3183)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2742!1 String)
(assert (= var2742!1 (str.++ var2742 var3183)))
(assert true)
(define-const var3028 String (append/672562846 var1927 "[")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1927!1 String)
(assert (= var1927!1 (str.++ var1927 "[")))
(assert true)
(define-const var3190 String (append/-1001720160 var3028 var2438)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3028!1 String)
(assert (str.prefixof var3028 var3028!1))
(assert true)
(define-const var1912 String (append/672562846 var3190 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3190!1 String)
(assert (= var3190!1 (str.++ var3190 "]")))
(assert true)
(define-const var2572 String (toString/-2075883882 var1912)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1687060072=([jdk.jfr.consumer.ChunkParser, long], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var759=jdk.jfr.consumer.ChunkParser, var3772=r1, var1433=l0, var2438=i1, var1070=$r0, var2742=$r3, var3183=$r2, var1927=$r4, var3028=$r5, var3190=$r6, var1912=$r7, var2572=$r8}
; {jdk.jfr.consumer.ChunkParser=var759, r1=var3772, l0=var1433, i1=var2438, $r0=var1070, $r3=var2742, $r2=var3183, $r4=var1927, $r5=var3028, $r6=var3190, $r7=var1912, $r8=var2572}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.consumer.ChunkParser;	l0 := @parameter0: long;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Constant: ");	$r2 = specialinvoke r1.<jdk.jfr.consumer.ChunkParser: java.lang.String getName(long)>(l0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1