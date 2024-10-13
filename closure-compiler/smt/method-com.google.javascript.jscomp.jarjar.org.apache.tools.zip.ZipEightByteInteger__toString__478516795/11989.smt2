(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3912 0)
(declare-sort var1567 0)
(declare-sort var2711 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-1759860253 (var3912) var1567)
(declare-fun append/-1031950772 (String var2711) String)
(declare-fun cast-from-var1567-to-var2711 (var1567) var2711)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3912 var3912)
(declare-const var3023 var3912) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEightByteInteger 
(assert (not (= var3023 null-var3912)))
(define-const var1004 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1004)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1004!1 String)
(assert (= var1004!1 ""))
(assert true)
(define-const var3680 String (append/672562846 var1004!1 "ZipEightByteInteger value: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ZipEightByteInteger value: ") 
(declare-const var1004!2 String)
(assert (= var1004!2 (str.++ var1004!1 "ZipEightByteInteger value: ")))
(define-const var1671 var1567 (value/-1759860253 var3023)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEightByteInteger: java.math.BigInteger value> 
(assert true)
(define-const var3207 String (append/-1031950772 var3680 (cast-from-var1567-to-var2711 var1671))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3680!1 String)
(assert (str.prefixof var3680 var3680!1))
(assert true)
(define-const var1117 String (toString/-2075883882 var3207)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-1759860253=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEightByteInteger], java.math.BigInteger), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1567-to-var2711=([java.math.BigInteger], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3912=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEightByteInteger, var3023=r1, var1004=$r0, var3680=$r3, var1567=java.math.BigInteger, var1671=$r2, var2711=java.lang.Object, var3207=$r4, var1117=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEightByteInteger=var3912, r1=var3023, $r0=var1004, $r3=var3680, java.math.BigInteger=var1567, $r2=var1671, java.lang.Object=var2711, $r4=var3207, $r5=var1117}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEightByteInteger;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ZipEightByteInteger value: ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEightByteInteger: java.math.BigInteger value>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1