(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var150 0)
(declare-sort var3245 0)
(declare-sort var1985 0)
(declare-sort var1450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun url/1782237493 (var150) var3245)
(declare-fun host/1711863148 (var3245) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun port/1842567001 (var3245) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun proxy/1782237493 (var150) var1985)
(declare-fun append/-1031950772 (String var1450) String)
(declare-fun cast-from-var1985-to-var1450 (var1985) var1450)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var150 var150)
(declare-const null-var1985 var1985)
(declare-const var1500 var150) ; Statement: r1 := @this: okhttp3.Address 
(assert (not (= var1500 null-var150)))
(define-const var1822 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1822)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1822!1 String)
(assert (= var1822!1 ""))
(assert true)
(define-const var2711 String (append/672562846 var1822!1 "Address{")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Address{") 
(declare-const var1822!2 String)
(assert (= var1822!2 (str.++ var1822!1 "Address{")))
(define-const var1383 var3245 (url/1782237493 var1500)) ; Statement: $r2 = r1.<okhttp3.Address: okhttp3.HttpUrl url> 
(assert true)
(define-const var3257 String (host/1711863148 var1383)) ; Statement: $r3 = virtualinvoke $r2.<okhttp3.HttpUrl: java.lang.String host()>() 
(assert true)
(define-const var1782 String (append/672562846 var2711 var3257)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2711!1 String)
(assert (= var2711!1 (str.++ var2711 var3257)))
(assert true)
(define-const var2031 String (append/-1166366385 var1782 58)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1782!1 String)
(assert (str.prefixof var1782 var1782!1))
(define-const var3764 var3245 (url/1782237493 var1500)) ; Statement: $r6 = r1.<okhttp3.Address: okhttp3.HttpUrl url> 
(assert true)
(define-const var118 Int (port/1842567001 var3764)) ; Statement: $i0 = virtualinvoke $r6.<okhttp3.HttpUrl: int port()>() 
(assert true)
(define-const var1070 String (append/-1001720160 var2031 var118)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2031!1 String)
(assert (str.prefixof var2031 var2031!1))
(assert true)
(define-const var2110 String (append/672562846 var1070 ", ")) ; Statement: $r14 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1070!1 String)
(assert (= var1070!1 (str.++ var1070 ", ")))
(define-const var926 var1985 (proxy/1782237493 var1500)) ; Statement: $r9 = r1.<okhttp3.Address: java.net.Proxy proxy> 
 ; Statement: if $r9 == null goto $r10 = new java.lang.StringBuilder 
(assert (not (= var926 null-var1985))) ; Negate: Cond: $r9 == null  
(define-const var1186 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1186)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1186!1 String)
(assert (= var1186!1 ""))
(assert true)
(define-const var3120 String (append/672562846 var1186!1 "proxy=")) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("proxy=") 
(declare-const var1186!2 String)
(assert (= var1186!2 (str.++ var1186!1 "proxy=")))
(define-const var1635 var1985 (proxy/1782237493 var1500)) ; Statement: $r19 = r1.<okhttp3.Address: java.net.Proxy proxy> 
(assert true)
(define-const var2302 String (append/-1031950772 var3120 (cast-from-var1985-to-var1450 var1635))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r19) 
(declare-const var3120!1 String)
(assert (str.prefixof var3120 var3120!1))
(assert true)
(define-const var2371 String (toString/-2075883882 var2302)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var711 String (append/672562846 var2110 var2371)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2110!1 String)
(assert (= var2110!1 (str.++ var2110 var2371)))
(assert true)
(define-const var315 String (append/-1166366385 var711 125)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var711!1 String)
(assert (str.prefixof var711 var711!1))
(assert true)
(define-const var2014 String (toString/-2075883882 var315)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), url/1782237493=([okhttp3.Address], okhttp3.HttpUrl), host/1711863148=([okhttp3.HttpUrl], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), port/1842567001=([okhttp3.HttpUrl], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), proxy/1782237493=([okhttp3.Address], java.net.Proxy), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1985-to-var1450=([java.net.Proxy], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var150=okhttp3.Address, var1500=r1, var1822=$r0, var2711=$r4, var3245=okhttp3.HttpUrl, var1383=$r2, var3257=$r3, var1782=$r5, var2031=$r7, var3764=$r6, var118=$i0, var1070=$r8, var2110=$r14, var1985=java.net.Proxy, var926=$r9, var1186=$r18, var3120=$r20, var1635=$r19, var1450=java.lang.Object, var2302=$r21, var2371=$r22, var711=$r15, var315=$r16, var2014=$r17}
; {okhttp3.Address=var150, r1=var1500, $r0=var1822, $r4=var2711, okhttp3.HttpUrl=var3245, $r2=var1383, $r3=var3257, $r5=var1782, $r7=var2031, $r6=var3764, $i0=var118, $r8=var1070, $r14=var2110, java.net.Proxy=var1985, $r9=var926, $r18=var1186, $r20=var3120, $r19=var1635, java.lang.Object=var1450, $r21=var2302, $r22=var2371, $r15=var711, $r16=var315, $r17=var2014}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: okhttp3.Address;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Address{");	$r2 = r1.<okhttp3.Address: okhttp3.HttpUrl url>;	$r3 = virtualinvoke $r2.<okhttp3.HttpUrl: java.lang.String host()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r6 = r1.<okhttp3.Address: okhttp3.HttpUrl url>;	$i0 = virtualinvoke $r6.<okhttp3.HttpUrl: int port()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r14 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r9 = r1.<okhttp3.Address: java.net.Proxy proxy>;	if $r9 == null goto $r10 = new java.lang.StringBuilder;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("proxy=");	$r19 = r1.<okhttp3.Address: java.net.Proxy proxy>;	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 3