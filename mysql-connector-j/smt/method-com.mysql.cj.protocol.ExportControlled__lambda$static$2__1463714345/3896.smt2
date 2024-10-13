(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1962 0)
(declare-sort var3307 0)
(declare-sort var225 0)
(declare-sort var1835 0)
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
(declare-fun var3307_add/328494887 (var3307 var1835) Bool)
(declare-fun cast-from-String-to-var1835 (String) var1835)
(declare-const null-String String)
(declare-const var225-ALLOWED_CIPHERS var3307)
(declare-const var735 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var735 null-String)))
(define-const var3542 var3307 var225-ALLOWED_CIPHERS) ; Statement: $r1 = <com.mysql.cj.protocol.ExportControlled: java.util.List ALLOWED_CIPHERS> 
(define-const var3830 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3830)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3830!1 String)
(assert (= var3830!1 ""))
(assert true)
(define-const var49 String (append/672562846 var3830!1 "TLS_")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TLS_") 
(declare-const var3830!2 String)
(assert (= var3830!2 (str.++ var3830!1 "TLS_")))
(assert true)
(define-const var2959 String (trim/-847153721 var735)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1576 String (append/672562846 var49 var2959)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var49!1 String)
(assert (= var49!1 (str.++ var49 var2959)))
(assert true)
(define-const var1231 String (toString/-2075883882 var1576)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3307_add/328494887 var3542 (cast-from-String-to-var1835 var1231))) ; Statement: interfaceinvoke $r1.<java.util.List: boolean add(java.lang.Object)>($r6) 

(declare-const var3542!1 var3307)
(declare-const var1231!1 String)
(define-const var1902 var3307 var225-ALLOWED_CIPHERS) ; Statement: $r8 = <com.mysql.cj.protocol.ExportControlled: java.util.List ALLOWED_CIPHERS> 
(define-const var179 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var179)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var179!1 String)
(assert (= var179!1 ""))
(assert true)
(define-const var2807 String (append/672562846 var179!1 "SSL_")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SSL_") 
(declare-const var179!2 String)
(assert (= var179!2 (str.++ var179!1 "SSL_")))
(assert true)
(define-const var3396 String (trim/-847153721 var735)) ; Statement: $r9 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3639 String (append/672562846 var2807 var3396)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2807!1 String)
(assert (= var2807!1 (str.++ var2807 var3396)))
(assert true)
(define-const var3156 String (toString/-2075883882 var3639)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3307_add/328494887 var1902 (cast-from-String-to-var1835 var3156))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var1902!1 var3307)
(declare-const var3156!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), trim/-847153721=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3307_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1835=([java.lang.String], java.lang.Object)}
; {var735=r2, var1962=null_type, var3307=java.util.List, var225=com.mysql.cj.protocol.ExportControlled, var3542=$r1, var3830=$r0, var49=$r4, var2959=$r3, var1576=$r5, var1231=$r6, var1835=java.lang.Object, var1902=$r8, var179=$r7, var2807=$r10, var3396=$r9, var3639=$r11, var3156=$r12}
; {r2=var735, null_type=var1962, java.util.List=var3307, com.mysql.cj.protocol.ExportControlled=var225, $r1=var3542, $r0=var3830, $r4=var49, $r3=var2959, $r5=var1576, $r6=var1231, java.lang.Object=var1835, $r8=var1902, $r7=var179, $r10=var2807, $r9=var3396, $r11=var3639, $r12=var3156}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @parameter0: java.lang.String;	$r1 = <com.mysql.cj.protocol.ExportControlled: java.util.List ALLOWED_CIPHERS>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TLS_");	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r1.<java.util.List: boolean add(java.lang.Object)>($r6);	$r8 = <com.mysql.cj.protocol.ExportControlled: java.util.List ALLOWED_CIPHERS>;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SSL_");	$r9 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r12);	return
;block_num 1