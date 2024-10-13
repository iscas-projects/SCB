(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1313 0)
(declare-sort var1184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun reference/954115882 (var1313) var1184)
(declare-fun append/-1031950772 (String var1184) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1313 var1313)
(declare-const var2233 var1313) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Present 
(assert (not (= var2233 null-var1313)))
(define-const var813 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var813)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var813!1 String)
(assert (= var813!1 ""))
(assert true)
(define-const var2703 String (append/672562846 var813!1 "Optional.of(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Optional.of(") 
(declare-const var813!2 String)
(assert (= var813!2 (str.++ var813!1 "Optional.of(")))
(define-const var1887 var1184 (reference/954115882 var2233)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Present: java.lang.Object reference> 
(assert true)
(define-const var1776 String (append/-1031950772 var2703 var1887)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2703!1 String)
(assert (str.prefixof var2703 var2703!1))
(assert true)
(define-const var3796 String (append/672562846 var1776 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1776!1 String)
(assert (= var1776!1 (str.++ var1776 ")")))
(assert true)
(define-const var3988 String (toString/-2075883882 var3796)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), reference/954115882=([com.google.javascript.jscomp.jarjar.com.google.common.base.Present], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1313=com.google.javascript.jscomp.jarjar.com.google.common.base.Present, var2233=r1, var813=$r0, var2703=$r3, var1184=java.lang.Object, var1887=$r2, var1776=$r4, var3796=$r5, var3988=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Present=var1313, r1=var2233, $r0=var813, $r3=var2703, java.lang.Object=var1184, $r2=var1887, $r4=var1776, $r5=var3796, $r6=var3988}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Present;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Optional.of(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Present: java.lang.Object reference>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1