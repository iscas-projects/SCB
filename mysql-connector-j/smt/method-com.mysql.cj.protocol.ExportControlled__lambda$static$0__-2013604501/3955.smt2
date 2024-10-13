(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1947 0)
(declare-sort var2848 0)
(declare-sort var1924 0)
(declare-sort var3676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2848_add/328494887 (var2848 var3676) Bool)
(declare-fun cast-from-String-to-var3676 (String) var3676)
(declare-const null-String String)
(declare-const var1924-ALLOWED_CIPHERS var2848)
(declare-const var3506 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3506 null-String)))
(define-const var2477 var2848 var1924-ALLOWED_CIPHERS) ; Statement: $r1 = <com.mysql.cj.protocol.ExportControlled: java.util.List ALLOWED_CIPHERS> 
(define-const var1331 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1331)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1331!1 String)
(assert (= var1331!1 ""))
(assert true)
(define-const var3099 String (append/672562846 var1331!1 "TLS_")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TLS_") 
(declare-const var1331!2 String)
(assert (= var1331!2 (str.++ var1331!1 "TLS_")))
(assert true)
(define-const var3756 String (trim/-847153721 var3506)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3338 String (append/672562846 var3099 var3756)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3099!1 String)
(assert (= var3099!1 (str.++ var3099 var3756)))
(assert true)
(define-const var1299 String (toString/-2075883882 var3338)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2848_add/328494887 var2477 (cast-from-String-to-var3676 var1299))) ; Statement: interfaceinvoke $r1.<java.util.List: boolean add(java.lang.Object)>($r6) 

(declare-const var2477!1 var2848)
(declare-const var1299!1 String)
(define-const var314 var2848 var1924-ALLOWED_CIPHERS) ; Statement: $r8 = <com.mysql.cj.protocol.ExportControlled: java.util.List ALLOWED_CIPHERS> 
(define-const var3856 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3856)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3856!1 String)
(assert (= var3856!1 ""))
(assert true)
(define-const var577 String (append/672562846 var3856!1 "SSL_")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SSL_") 
(declare-const var3856!2 String)
(assert (= var3856!2 (str.++ var3856!1 "SSL_")))
(assert true)
(define-const var2567 String (trim/-847153721 var3506)) ; Statement: $r9 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2447 String (append/672562846 var577 var2567)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var577!1 String)
(assert (= var577!1 (str.++ var577 var2567)))
(assert true)
(define-const var13 String (toString/-2075883882 var2447)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2848_add/328494887 var314 (cast-from-String-to-var3676 var13))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var314!1 var2848)
(declare-const var13!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), trim/-847153721=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2848_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3676=([java.lang.String], java.lang.Object)}
; {var3506=r2, var1947=null_type, var2848=java.util.List, var1924=com.mysql.cj.protocol.ExportControlled, var2477=$r1, var1331=$r0, var3099=$r4, var3756=$r3, var3338=$r5, var1299=$r6, var3676=java.lang.Object, var314=$r8, var3856=$r7, var577=$r10, var2567=$r9, var2447=$r11, var13=$r12}
; {r2=var3506, null_type=var1947, java.util.List=var2848, com.mysql.cj.protocol.ExportControlled=var1924, $r1=var2477, $r0=var1331, $r4=var3099, $r3=var3756, $r5=var3338, $r6=var1299, java.lang.Object=var3676, $r8=var314, $r7=var3856, $r10=var577, $r9=var2567, $r11=var2447, $r12=var13}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @parameter0: java.lang.String;	$r1 = <com.mysql.cj.protocol.ExportControlled: java.util.List ALLOWED_CIPHERS>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TLS_");	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r1.<java.util.List: boolean add(java.lang.Object)>($r6);	$r8 = <com.mysql.cj.protocol.ExportControlled: java.util.List ALLOWED_CIPHERS>;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SSL_");	$r9 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r12);	return
;block_num 1