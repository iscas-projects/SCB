(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2369 0)
(declare-sort var1522 0)
(declare-sort var3516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun sources/-163989097 (var2369) var1522)
(declare-fun append/-1031950772 (String var3516) String)
(declare-fun cast-from-var1522-to-var3516 (var1522) var3516)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2369 var2369)
(declare-const var435 var2369) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$ConcatenatedCharSource 
(assert (not (= var435 null-var2369)))
(define-const var712 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var712)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var712!1 String)
(assert (= var712!1 ""))
(assert true)
(define-const var3008 String (append/672562846 var712!1 "CharSource.concat(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharSource.concat(") 
(declare-const var712!2 String)
(assert (= var712!2 (str.++ var712!1 "CharSource.concat(")))
(define-const var1203 var1522 (sources/-163989097 var435)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$ConcatenatedCharSource: java.lang.Iterable sources> 
(assert true)
(define-const var1488 String (append/-1031950772 var3008 (cast-from-var1522-to-var3516 var1203))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3008!1 String)
(assert (str.prefixof var3008 var3008!1))
(assert true)
(define-const var680 String (append/672562846 var1488 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1488!1 String)
(assert (= var1488!1 (str.++ var1488 ")")))
(assert true)
(define-const var3983 String (toString/-2075883882 var680)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), sources/-163989097=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$ConcatenatedCharSource], java.lang.Iterable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1522-to-var3516=([java.lang.Iterable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2369=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$ConcatenatedCharSource, var435=r1, var712=$r0, var3008=$r3, var1522=java.lang.Iterable, var1203=$r2, var3516=java.lang.Object, var1488=$r4, var680=$r5, var3983=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$ConcatenatedCharSource=var2369, r1=var435, $r0=var712, $r3=var3008, java.lang.Iterable=var1522, $r2=var1203, java.lang.Object=var3516, $r4=var1488, $r5=var680, $r6=var3983}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$ConcatenatedCharSource;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharSource.concat(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$ConcatenatedCharSource: java.lang.Iterable sources>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1