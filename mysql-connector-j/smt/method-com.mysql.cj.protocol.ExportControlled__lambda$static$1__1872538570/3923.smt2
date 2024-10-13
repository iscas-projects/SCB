(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var808 0)
(declare-sort var3490 0)
(declare-sort var1423 0)
(declare-sort var484 0)
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
(declare-fun var3490_add/328494887 (var3490 var484) Bool)
(declare-fun cast-from-String-to-var484 (String) var484)
(declare-const null-String String)
(declare-const var1423-ALLOWED_CIPHERS var3490)
(declare-const var2792 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2792 null-String)))
(define-const var312 var3490 var1423-ALLOWED_CIPHERS) ; Statement: $r1 = <com.mysql.cj.protocol.ExportControlled: java.util.List ALLOWED_CIPHERS> 
(define-const var1323 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1323)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1323!1 String)
(assert (= var1323!1 ""))
(assert true)
(define-const var59 String (append/672562846 var1323!1 "TLS_")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TLS_") 
(declare-const var1323!2 String)
(assert (= var1323!2 (str.++ var1323!1 "TLS_")))
(assert true)
(define-const var3971 String (trim/-847153721 var2792)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3171 String (append/672562846 var59 var3971)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var59!1 String)
(assert (= var59!1 (str.++ var59 var3971)))
(assert true)
(define-const var390 String (toString/-2075883882 var3171)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3490_add/328494887 var312 (cast-from-String-to-var484 var390))) ; Statement: interfaceinvoke $r1.<java.util.List: boolean add(java.lang.Object)>($r6) 

(declare-const var312!1 var3490)
(declare-const var390!1 String)
(define-const var3405 var3490 var1423-ALLOWED_CIPHERS) ; Statement: $r8 = <com.mysql.cj.protocol.ExportControlled: java.util.List ALLOWED_CIPHERS> 
(define-const var915 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var915)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var915!1 String)
(assert (= var915!1 ""))
(assert true)
(define-const var3437 String (append/672562846 var915!1 "SSL_")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SSL_") 
(declare-const var915!2 String)
(assert (= var915!2 (str.++ var915!1 "SSL_")))
(assert true)
(define-const var1823 String (trim/-847153721 var2792)) ; Statement: $r9 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3761 String (append/672562846 var3437 var1823)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3437!1 String)
(assert (= var3437!1 (str.++ var3437 var1823)))
(assert true)
(define-const var3324 String (toString/-2075883882 var3761)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3490_add/328494887 var3405 (cast-from-String-to-var484 var3324))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var3405!1 var3490)
(declare-const var3324!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), trim/-847153721=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3490_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var484=([java.lang.String], java.lang.Object)}
; {var2792=r2, var808=null_type, var3490=java.util.List, var1423=com.mysql.cj.protocol.ExportControlled, var312=$r1, var1323=$r0, var59=$r4, var3971=$r3, var3171=$r5, var390=$r6, var484=java.lang.Object, var3405=$r8, var915=$r7, var3437=$r10, var1823=$r9, var3761=$r11, var3324=$r12}
; {r2=var2792, null_type=var808, java.util.List=var3490, com.mysql.cj.protocol.ExportControlled=var1423, $r1=var312, $r0=var1323, $r4=var59, $r3=var3971, $r5=var3171, $r6=var390, java.lang.Object=var484, $r8=var3405, $r7=var915, $r10=var3437, $r9=var1823, $r11=var3761, $r12=var3324}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @parameter0: java.lang.String;	$r1 = <com.mysql.cj.protocol.ExportControlled: java.util.List ALLOWED_CIPHERS>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TLS_");	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r1.<java.util.List: boolean add(java.lang.Object)>($r6);	$r8 = <com.mysql.cj.protocol.ExportControlled: java.util.List ALLOWED_CIPHERS>;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SSL_");	$r9 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r12);	return
;block_num 1