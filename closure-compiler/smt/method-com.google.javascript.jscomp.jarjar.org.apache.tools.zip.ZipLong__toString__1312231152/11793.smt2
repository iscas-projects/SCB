(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/2143904600 (var2441) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2441 var2441)
(declare-const var2269 var2441) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong 
(assert (not (= var2269 null-var2441)))
(define-const var599 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var599)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var599!1 String)
(assert (= var599!1 ""))
(assert true)
(define-const var3480 String (append/672562846 var599!1 "ZipLong value: ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ZipLong value: ") 
(declare-const var599!2 String)
(assert (= var599!2 (str.++ var599!1 "ZipLong value: ")))
(define-const var2212 Int (value/2143904600 var2269)) ; Statement: $l0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong: long value> 
(assert true)
(define-const var1041 String (append/-901862667 var3480 var2212)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3480!1 String)
(assert (str.prefixof var3480 var3480!1))
(assert true)
(define-const var1160 String (toString/-2075883882 var1041)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/2143904600=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2441=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong, var2269=r1, var599=$r0, var3480=$r2, var2212=$l0, var1041=$r3, var1160=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong=var2441, r1=var2269, $r0=var599, $r2=var3480, $l0=var2212, $r3=var1041, $r4=var1160}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ZipLong value: ");	$l0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong: long value>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1