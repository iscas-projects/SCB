(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var399 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun host/-978820477 (var399) String)
(declare-fun port/-978820477 (var399) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun user/-978820477 (var399) String)
(declare-fun password/-978820477 (var399) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var399 var399)
(declare-const var3221 var399) ; Statement: r1 := @this: cn.hutool.extra.ssh.Connector 
(assert (not (= var3221 null-var399)))
(define-const var2461 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2461)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2461!1 String)
(assert (= var2461!1 ""))
(assert true)
(define-const var1849 String (append/672562846 var2461!1 "Connector [host=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Connector [host=") 
(declare-const var2461!2 String)
(assert (= var2461!2 (str.++ var2461!1 "Connector [host=")))
(define-const var3226 String (host/-978820477 var3221)) ; Statement: $r2 = r1.<cn.hutool.extra.ssh.Connector: java.lang.String host> 
(assert true)
(define-const var2088 String (append/672562846 var1849 var3226)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1849!1 String)
(assert (= var1849!1 (str.++ var1849 var3226)))
(assert true)
(define-const var1467 String (append/672562846 var2088 ", port=")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", port=") 
(declare-const var2088!1 String)
(assert (= var2088!1 (str.++ var2088 ", port=")))
(define-const var2128 Int (port/-978820477 var3221)) ; Statement: $i0 = r1.<cn.hutool.extra.ssh.Connector: int port> 
(assert true)
(define-const var1724 String (append/-1001720160 var1467 var2128)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1467!1 String)
(assert (str.prefixof var1467 var1467!1))
(assert true)
(define-const var3830 String (append/672562846 var1724 ", user=")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", user=") 
(declare-const var1724!1 String)
(assert (= var1724!1 (str.++ var1724 ", user=")))
(define-const var1943 String (user/-978820477 var3221)) ; Statement: $r7 = r1.<cn.hutool.extra.ssh.Connector: java.lang.String user> 
(assert true)
(define-const var876 String (append/672562846 var3830 var1943)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3830!1 String)
(assert (= var3830!1 (str.++ var3830 var1943)))
(assert true)
(define-const var1558 String (append/672562846 var876 ", password=")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", password=") 
(declare-const var876!1 String)
(assert (= var876!1 (str.++ var876 ", password=")))
(define-const var2377 String (password/-978820477 var3221)) ; Statement: $r10 = r1.<cn.hutool.extra.ssh.Connector: java.lang.String password> 
(assert true)
(define-const var2675 String (append/672562846 var1558 var2377)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1558!1 String)
(assert (= var1558!1 (str.++ var1558 var2377)))
(assert true)
(define-const var3664 String (append/672562846 var2675 "]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2675!1 String)
(assert (= var2675!1 (str.++ var2675 "]")))
(assert true)
(define-const var2225 String (toString/-2075883882 var3664)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), host/-978820477=([cn.hutool.extra.ssh.Connector], java.lang.String), port/-978820477=([cn.hutool.extra.ssh.Connector], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), user/-978820477=([cn.hutool.extra.ssh.Connector], java.lang.String), password/-978820477=([cn.hutool.extra.ssh.Connector], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var399=cn.hutool.extra.ssh.Connector, var3221=r1, var2461=$r0, var1849=$r3, var3226=$r2, var2088=$r4, var1467=$r5, var2128=$i0, var1724=$r6, var3830=$r8, var1943=$r7, var876=$r9, var1558=$r11, var2377=$r10, var2675=$r12, var3664=$r13, var2225=$r14}
; {cn.hutool.extra.ssh.Connector=var399, r1=var3221, $r0=var2461, $r3=var1849, $r2=var3226, $r4=var2088, $r5=var1467, $i0=var2128, $r6=var1724, $r8=var3830, $r7=var1943, $r9=var876, $r11=var1558, $r10=var2377, $r12=var2675, $r13=var3664, $r14=var2225}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.extra.ssh.Connector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Connector [host=");	$r2 = r1.<cn.hutool.extra.ssh.Connector: java.lang.String host>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", port=");	$i0 = r1.<cn.hutool.extra.ssh.Connector: int port>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", user=");	$r7 = r1.<cn.hutool.extra.ssh.Connector: java.lang.String user>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", password=");	$r10 = r1.<cn.hutool.extra.ssh.Connector: java.lang.String password>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1