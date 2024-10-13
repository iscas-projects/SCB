(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3144 0)
(declare-sort var96 0)
(declare-sort var2569 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-var3144-to-var3144 ((arg var3144)) var3144 arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var96-init () var96)
(declare-fun toString/-522406933 (var2569) String)
(declare-fun cast-from-String-to-var2569 (String) var2569)
(declare-fun <init>/875830710 (var96 String) void)
(declare-const null-var3144 var3144)
(declare-const null-Int Int)
(declare-const var1162 var3144) ; Statement: r0 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1162 null-var3144)))
(declare-const var1936 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1936 null-Int)))
(define-const var918 var3144 (cast-from-var3144-to-var3144 var1162)) ; Statement: $r1 = (okhttp3.HttpUrl$Builder) r0 
 ; Statement: if 1 > i0 goto $z0 = 0 
(assert (> 1 var1936)) ; Cond: 1 > i0 
(define-const var772 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r1.<okhttp3.HttpUrl$Builder: int port> = i0 
(assert (not (not (= (ite var772 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3772 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3772)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3772!1 String)
(assert (= var3772!1 ""))
(assert true)
(define-const var537 String (append/672562846 var3772!1 "unexpected port: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected port: ") 
(declare-const var3772!2 String)
(assert (= var3772!2 (str.++ var3772!1 "unexpected port: ")))
(assert true)
(define-const var1538 String (append/-1001720160 var537 var1936)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var537!1 String)
(assert (str.prefixof var537 var537!1))
(assert true)
(define-const var2865 String (toString/-2075883882 var1538)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1772 var96 var96-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2663 String (toString/-522406933 (cast-from-String-to-var2569 var2865))) ; Statement: $r7 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1772 var2663)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var1772!1 var96)
(declare-const var2663!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3144-to-var3144=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var96-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2569=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3144=okhttp3.HttpUrl$Builder, var1162=r0, var1936=i0, var918=$r1, var772=$z0, var3772=$r3, var537=$r4, var1538=$r5, var2865=$r8, var96=java.lang.IllegalArgumentException, var1772=$r6, var2569=java.lang.Object, var2663=$r7}
; {okhttp3.HttpUrl$Builder=var3144, r0=var1162, i0=var1936, $r1=var918, $z0=var772, $r3=var3772, $r4=var537, $r5=var1538, $r8=var2865, java.lang.IllegalArgumentException=var96, $r6=var1772, java.lang.Object=var2569, $r7=var2663}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl$Builder;	i0 := @parameter0: int;	$r1 = (okhttp3.HttpUrl$Builder) r0;	if 1 > i0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $r1.<okhttp3.HttpUrl$Builder: int port> = i0;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected port: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = new java.lang.IllegalArgumentException;	$r7 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r6
;block_num 4