(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var124 0)
(declare-sort var2569 0)
(declare-sort var2417 0)
(declare-sort var251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tailable/57607469 (var124) var2569)
(declare-fun var2417-init () var2417)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var251) ClassObject)
(declare-fun cast-from-var2569-to-var251 (var2569) var251)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2417 String) void)
(declare-const null-var124 var124)
(declare-const var1362 var124) ; Statement: r0 := @this: org.apache.commons.io.input.Tailer 
(assert (not (= var1362 null-var124)))
(define-const var2950 var2569 (tailable/57607469 var1362)) ; Statement: $r1 = r0.<org.apache.commons.io.input.Tailer: org.apache.commons.io.input.Tailer$Tailable tailable> 
(define-const var568 Bool true) ; Statement: $z0 = $r1 instanceof org.apache.commons.io.input.Tailer$TailablePath 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.IllegalStateException 
(assert (= (ite var568 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1876 var2417 var2417-init) ; Statement: $r2 = new java.lang.IllegalStateException 
(define-const var2633 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2633)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2633!1 String)
(assert (= var2633!1 ""))
(assert true)
(define-const var2297 String (append/672562846 var2633!1 "Cannot extract java.io.File from ")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot extract java.io.File from ") 
(declare-const var2633!2 String)
(assert (= var2633!2 (str.++ var2633!1 "Cannot extract java.io.File from ")))
(define-const var2687 var2569 (tailable/57607469 var1362)) ; Statement: $r4 = r0.<org.apache.commons.io.input.Tailer: org.apache.commons.io.input.Tailer$Tailable tailable> 
(assert true)
(define-const var3689 ClassObject (getClass/1258963082 (cast-from-var2569-to-var251 var2687))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1931 String (getName/-1958580599 var3689)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2829 String (append/672562846 var2297 var1931)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2297!1 String)
(assert (= var2297!1 (str.++ var2297 var1931)))
(assert true)
(define-const var528 String (toString/-2075883882 var2829)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1876 var528)) ; Statement: specialinvoke $r2.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9) 

(declare-const var1876!1 var2417)
(declare-const var528!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {tailable/57607469=([org.apache.commons.io.input.Tailer], org.apache.commons.io.input.Tailer$Tailable), var2417-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2569-to-var251=([org.apache.commons.io.input.Tailer$Tailable], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var124=org.apache.commons.io.input.Tailer, var1362=r0, var2569=org.apache.commons.io.input.Tailer$Tailable, var2950=$r1, var568=$z0, var2417=java.lang.IllegalStateException, var1876=$r2, var2633=$r3, var2297=$r7, var2687=$r4, var251=java.lang.Object, var3689=$r5, var1931=$r6, var2829=$r8, var528=$r9}
; {org.apache.commons.io.input.Tailer=var124, r0=var1362, org.apache.commons.io.input.Tailer$Tailable=var2569, $r1=var2950, $z0=var568, java.lang.IllegalStateException=var2417, $r2=var1876, $r3=var2633, $r7=var2297, $r4=var2687, java.lang.Object=var251, $r5=var3689, $r6=var1931, $r8=var2829, $r9=var528}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.input.Tailer;	$r1 = r0.<org.apache.commons.io.input.Tailer: org.apache.commons.io.input.Tailer$Tailable tailable>;	$z0 = $r1 instanceof org.apache.commons.io.input.Tailer$TailablePath;	if $z0 == 0 goto $r2 = new java.lang.IllegalStateException;	$r2 = new java.lang.IllegalStateException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot extract java.io.File from ");	$r4 = r0.<org.apache.commons.io.input.Tailer: org.apache.commons.io.input.Tailer$Tailable tailable>;	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9);	throw $r2
;block_num 2