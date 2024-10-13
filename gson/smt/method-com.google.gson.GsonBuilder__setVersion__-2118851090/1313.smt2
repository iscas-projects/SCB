(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2322 0)
(declare-sort var1043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Float64_isNaN/-647401060 (Float64) Bool)
(declare-fun var1043-init () var1043)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/33611274 (String Float64) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1043 String) void)
(declare-const null-var2322 var2322)
(declare-const null-Float64 Float64)
(declare-const var761 var2322) ; Statement: r5 := @this: com.google.gson.GsonBuilder 
(assert (not (= var761 null-var2322)))
(declare-const var3022 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var3022 null-Float64)))
(define-const var2555 Bool (Float64_isNaN/-647401060 var3022)) ; Statement: $z0 = staticinvoke <java.lang.Double: boolean isNaN(double)>(d0) 
 ; Statement: if $z0 != 0 goto $r9 = new java.lang.IllegalArgumentException 
(assert (not (= (ite var2555 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1858 var1043 var1043-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var2148 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2148)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2148!1 String)
(assert (= var2148!1 ""))
(assert true)
(define-const var587 String (append/672562846 var2148!1 "Invalid version: ")) ; Statement: $r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid version: ") 
(declare-const var2148!2 String)
(assert (= var2148!2 (str.++ var2148!1 "Invalid version: ")))
(assert true)
(define-const var2160 String (append/33611274 var587 var3022)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0) 
(declare-const var587!1 String)
(assert (str.prefixof var587 var587!1))
(assert true)
(define-const var1046 String (toString/-2075883882 var2160)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1858 var1046)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var1858!1 var1043)
(declare-const var1046!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {Float64_isNaN/-647401060=([double], boolean), var1043-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2322=com.google.gson.GsonBuilder, var761=r5, var3022=d0, var2555=$z0, var1043=java.lang.IllegalArgumentException, var1858=$r9, var2148=$r8, var587=$r2, var2160=$r3, var1046=$r4}
; {com.google.gson.GsonBuilder=var2322, r5=var761, d0=var3022, $z0=var2555, java.lang.IllegalArgumentException=var1043, $r9=var1858, $r8=var2148, $r2=var587, $r3=var2160, $r4=var1046}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.gson.GsonBuilder;	d0 := @parameter0: double;	$z0 = staticinvoke <java.lang.Double: boolean isNaN(double)>(d0);	if $z0 != 0 goto $r9 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid version: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r9
;block_num 2