(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/2042790688 (var2469) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2469 var2469)
(declare-const var189 var2469) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort 
(assert (not (= var189 null-var2469)))
(define-const var2157 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2157)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2157!1 String)
(assert (= var2157!1 ""))
(assert true)
(define-const var531 String (append/672562846 var2157!1 "ZipShort value: ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ZipShort value: ") 
(declare-const var2157!2 String)
(assert (= var2157!2 (str.++ var2157!1 "ZipShort value: ")))
(define-const var197 Int (value/2042790688 var189)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort: int value> 
(assert true)
(define-const var2181 String (append/-1001720160 var531 var197)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var531!1 String)
(assert (str.prefixof var531 var531!1))
(assert true)
(define-const var900 String (toString/-2075883882 var2181)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/2042790688=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2469=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort, var189=r1, var2157=$r0, var531=$r2, var197=$i0, var2181=$r3, var900=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort=var2469, r1=var189, $r0=var2157, $r2=var531, $i0=var197, $r3=var2181, $r4=var900}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ZipShort value: ");	$i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort: int value>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1