(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var324 0)
(declare-sort var3940 0)
(declare-sort var323 0)
(declare-sort var3342 0)
(declare-sort var586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3342-init () var3342)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var586) String)
(declare-fun cast-from-var324-to-var586 (var324) var586)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3342 String) void)
(declare-const null-Int Int)
(declare-const null-var324 var324)
(declare-const null-var3940 var3940)
(declare-const null-var323 var323)
(declare-const var3203 Int) ; Statement: r0 := @parameter0: java.lang.Integer 
(assert (not (= var3203 null-Int)))
(declare-const var2114 Int) ; Statement: r1 := @parameter1: java.lang.Integer 
(assert (not (= var2114 null-Int)))
(declare-const var3506 var324) ; Statement: r2 := @parameter2: java.util.Locale 
(assert (not (= var3506 null-var324)))
(declare-const var2089 var3940) ; Statement: r9 := @parameter3: org.apache.commons.lang3.time.AbstractFormatCache$ArrayKey 
(assert (not (= var2089 null-var3940)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (not (= var3203 null-Int)))) ; Negate: Cond: r0 != null  
(declare-const var1812 var323) ; Statement: $r3 := @caughtexception 
(assert (not (= var1812 null-var323)))
(define-const var460 var3342 var3342-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var1603 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1603)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1603!1 String)
(assert (= var1603!1 ""))
(assert true)
(define-const var2175 String (append/672562846 var1603!1 "No date time pattern for locale: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No date time pattern for locale: ") 
(declare-const var1603!2 String)
(assert (= var1603!2 (str.++ var1603!1 "No date time pattern for locale: ")))
(assert true)
(define-const var2692 String (append/-1031950772 var2175 (cast-from-var324-to-var586 var3506))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2175!1 String)
(assert (str.prefixof var2175 var2175!1))
(assert true)
(define-const var799 String (toString/-2075883882 var2692)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var460 var799)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var460!1 var3342)
(declare-const var799!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3342-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var324-to-var586=([java.util.Locale], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3203=r0, var2114=r1, var324=java.util.Locale, var3506=r2, var3940=org.apache.commons.lang3.time.AbstractFormatCache$ArrayKey, var2089=r9, var323=java.lang.ClassCastException, var1812=$r3, var3342=java.lang.IllegalArgumentException, var460=$r4, var1603=$r5, var2175=$r6, var586=java.lang.Object, var2692=$r7, var799=$r8}
; {r0=var3203, r1=var2114, java.util.Locale=var324, r2=var3506, org.apache.commons.lang3.time.AbstractFormatCache$ArrayKey=var3940, r9=var2089, java.lang.ClassCastException=var323, $r3=var1812, java.lang.IllegalArgumentException=var3342, $r4=var460, $r5=var1603, $r6=var2175, java.lang.Object=var586, $r7=var2692, $r8=var799}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Integer;	r1 := @parameter1: java.lang.Integer;	r2 := @parameter2: java.util.Locale;	r9 := @parameter3: org.apache.commons.lang3.time.AbstractFormatCache$ArrayKey;	if r0 != null goto (branch);	$r3 := @caughtexception;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No date time pattern for locale: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2