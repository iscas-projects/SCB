(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1279 0)
(declare-sort var1553 0)
(declare-sort var794 0)
(declare-sort var3024 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getResource/282459787 (var1553 String) var794)
(declare-fun var3024-init () var3024)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3024 String) void)
(declare-const null-String String)
(declare-const null-var1553 var1553)
(declare-const null-var794 var794)
(declare-const var3027 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3027 null-String)))
(declare-const var654 var1553) ; Statement: r0 := @parameter1: java.lang.ClassLoader 
(assert (not (= var654 null-var1553)))
 ; Statement: if r0 != null goto $r8 = virtualinvoke r0.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1) 
(assert (not (= var654 null-var1553))) ; Cond: r0 != null 
(assert true)
(define-const var1109 var794 (getResource/282459787 var654 var3027)) ; Statement: $r8 = virtualinvoke r0.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1) 
(assert true) ; Non Conditional
 ; Statement: if $r8 != null goto return $r8 
(assert (not (not (= var1109 null-var794)))) ; Negate: Cond: $r8 != null  
(define-const var315 var3024 var3024-init) ; Statement: $r2 = new java.io.IOException 
(define-const var832 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var832)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var832!1 String)
(assert (= var832!1 ""))
(assert true)
(define-const var2530 String (append/672562846 var832!1 "Resource not found: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resource not found: ") 
(declare-const var832!2 String)
(assert (= var832!2 (str.++ var832!1 "Resource not found: ")))
(assert true)
(define-const var312 String (append/672562846 var2530 var3027)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2530!1 String)
(assert (= var2530!1 (str.++ var2530 var3027)))
(assert true)
(define-const var2501 String (toString/-2075883882 var312)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var315 var2501)) ; Statement: specialinvoke $r2.<java.io.IOException: void <init>(java.lang.String)>($r6) 

(declare-const var315!1 var3024)
(declare-const var2501!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL), var3024-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var3027=r1, var1279=null_type, var1553=java.lang.ClassLoader, var654=r0, var794=java.net.URL, var1109=$r8, var3024=java.io.IOException, var315=$r2, var832=$r3, var2530=$r4, var312=$r5, var2501=$r6}
; {r1=var3027, null_type=var1279, java.lang.ClassLoader=var1553, r0=var654, java.net.URL=var794, $r8=var1109, java.io.IOException=var3024, $r2=var315, $r3=var832, $r4=var2530, $r5=var312, $r6=var2501}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.ClassLoader;	if r0 != null goto $r8 = virtualinvoke r0.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1);	$r8 = virtualinvoke r0.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1);	if $r8 != null goto return $r8;	$r2 = new java.io.IOException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resource not found: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.IOException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 4