(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var384 0)
(declare-sort var1060 0)
(declare-sort var2507 0)
(declare-sort var462 0)
(declare-sort var3688 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun url/1782237493 (var384) var1060)
(declare-fun host/1711863148 (var1060) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun port/1842567001 (var1060) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun proxy/1782237493 (var384) var2507)
(declare-fun proxySelector/1782237493 (var384) var462)
(declare-fun append/-1031950772 (String var3688) String)
(declare-fun cast-from-var462-to-var3688 (var462) var3688)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var384 var384)
(declare-const null-var2507 var2507)
(declare-const var905 var384) ; Statement: r1 := @this: okhttp3.Address 
(assert (not (= var905 null-var384)))
(define-const var2398 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2398)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2398!1 String)
(assert (= var2398!1 ""))
(assert true)
(define-const var1866 String (append/672562846 var2398!1 "Address{")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Address{") 
(declare-const var2398!2 String)
(assert (= var2398!2 (str.++ var2398!1 "Address{")))
(define-const var3034 var1060 (url/1782237493 var905)) ; Statement: $r2 = r1.<okhttp3.Address: okhttp3.HttpUrl url> 
(assert true)
(define-const var1550 String (host/1711863148 var3034)) ; Statement: $r3 = virtualinvoke $r2.<okhttp3.HttpUrl: java.lang.String host()>() 
(assert true)
(define-const var410 String (append/672562846 var1866 var1550)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1866!1 String)
(assert (= var1866!1 (str.++ var1866 var1550)))
(assert true)
(define-const var3033 String (append/-1166366385 var410 58)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var410!1 String)
(assert (str.prefixof var410 var410!1))
(define-const var2137 var1060 (url/1782237493 var905)) ; Statement: $r6 = r1.<okhttp3.Address: okhttp3.HttpUrl url> 
(assert true)
(define-const var51 Int (port/1842567001 var2137)) ; Statement: $i0 = virtualinvoke $r6.<okhttp3.HttpUrl: int port()>() 
(assert true)
(define-const var2702 String (append/-1001720160 var3033 var51)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3033!1 String)
(assert (str.prefixof var3033 var3033!1))
(assert true)
(define-const var1645 String (append/672562846 var2702 ", ")) ; Statement: $r14 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2702!1 String)
(assert (= var2702!1 (str.++ var2702 ", ")))
(define-const var2247 var2507 (proxy/1782237493 var905)) ; Statement: $r9 = r1.<okhttp3.Address: java.net.Proxy proxy> 
 ; Statement: if $r9 == null goto $r10 = new java.lang.StringBuilder 
(assert (= var2247 null-var2507)) ; Cond: $r9 == null 
(define-const var3093 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3093)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3093!1 String)
(assert (= var3093!1 ""))
(assert true)
(define-const var1515 String (append/672562846 var3093!1 "proxySelector=")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("proxySelector=") 
(declare-const var3093!2 String)
(assert (= var3093!2 (str.++ var3093!1 "proxySelector=")))
(define-const var36 var462 (proxySelector/1782237493 var905)) ; Statement: $r11 = r1.<okhttp3.Address: java.net.ProxySelector proxySelector> 
(assert true)
(define-const var1517 String (append/-1031950772 var1515 (cast-from-var462-to-var3688 var36))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var1515!1 String)
(assert (str.prefixof var1515 var1515!1))
(assert true)
(define-const var3294 String (toString/-2075883882 var1517)) ; Statement: $r22 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2725 String (append/672562846 var1645 var3294)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1645!1 String)
(assert (= var1645!1 (str.++ var1645 var3294)))
(assert true)
(define-const var3849 String (append/-1166366385 var2725 125)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var2725!1 String)
(assert (str.prefixof var2725 var2725!1))
(assert true)
(define-const var1571 String (toString/-2075883882 var3849)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), url/1782237493=([okhttp3.Address], okhttp3.HttpUrl), host/1711863148=([okhttp3.HttpUrl], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), port/1842567001=([okhttp3.HttpUrl], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), proxy/1782237493=([okhttp3.Address], java.net.Proxy), proxySelector/1782237493=([okhttp3.Address], java.net.ProxySelector), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var462-to-var3688=([java.net.ProxySelector], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var384=okhttp3.Address, var905=r1, var2398=$r0, var1866=$r4, var1060=okhttp3.HttpUrl, var3034=$r2, var1550=$r3, var410=$r5, var3033=$r7, var2137=$r6, var51=$i0, var2702=$r8, var1645=$r14, var2507=java.net.Proxy, var2247=$r9, var3093=$r10, var1515=$r12, var462=java.net.ProxySelector, var36=$r11, var3688=java.lang.Object, var1517=$r13, var3294=$r22, var2725=$r15, var3849=$r16, var1571=$r17}
; {okhttp3.Address=var384, r1=var905, $r0=var2398, $r4=var1866, okhttp3.HttpUrl=var1060, $r2=var3034, $r3=var1550, $r5=var410, $r7=var3033, $r6=var2137, $i0=var51, $r8=var2702, $r14=var1645, java.net.Proxy=var2507, $r9=var2247, $r10=var3093, $r12=var1515, java.net.ProxySelector=var462, $r11=var36, java.lang.Object=var3688, $r13=var1517, $r22=var3294, $r15=var2725, $r16=var3849, $r17=var1571}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: okhttp3.Address;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Address{");	$r2 = r1.<okhttp3.Address: okhttp3.HttpUrl url>;	$r3 = virtualinvoke $r2.<okhttp3.HttpUrl: java.lang.String host()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r6 = r1.<okhttp3.Address: okhttp3.HttpUrl url>;	$i0 = virtualinvoke $r6.<okhttp3.HttpUrl: int port()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r14 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r9 = r1.<okhttp3.Address: java.net.Proxy proxy>;	if $r9 == null goto $r10 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("proxySelector=");	$r11 = r1.<okhttp3.Address: java.net.ProxySelector proxySelector>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	$r22 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 3