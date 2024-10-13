(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1210 0)
(declare-sort var407 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var407) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1210 var1210)
(declare-const null-var407 var407)
(declare-const var1965 var1210) ; Statement: r7 := @this: jdk.jfr.internal.tool.PrettyWriter 
(assert (not (= var1965 null-var1210)))
(declare-const var1263 var407) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1263 null-var407)))
(define-const var1556 Bool false) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
(assert (not (= (ite var1556 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1665 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1665)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1665!1 String)
(assert (= var1665!1 ""))
(assert true)
(define-const var1801 String (append/672562846 var1665!1 "\u0022")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1665!2 String)
(assert (= var1665!2 (str.++ var1665!1 "\u0022")))
(assert true)
(define-const var1962 String (append/-1031950772 var1801 var1263)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1801!1 String)
(assert (str.prefixof var1801 var1801!1))
(assert true)
(define-const var3940 String (append/672562846 var1962 "\u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1962!1 String)
(assert (= var1962!1 (str.++ var1962 "\u0022")))
(assert true)
(define-const var1896 String (toString/-2075883882 var3940)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1210=jdk.jfr.internal.tool.PrettyWriter, var1965=r7, var407=java.lang.Object, var1263=r0, var1556=$z0, var1665=$r2, var1801=$r3, var1962=$r4, var3940=$r5, var1896=$r6}
; {jdk.jfr.internal.tool.PrettyWriter=var1210, r7=var1965, java.lang.Object=var407, r0=var1263, $z0=var1556, $r2=var1665, $r3=var1801, $r4=var1962, $r5=var3940, $r6=var1896}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: jdk.jfr.internal.tool.PrettyWriter;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2