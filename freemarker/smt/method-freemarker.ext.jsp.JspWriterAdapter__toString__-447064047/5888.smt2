(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3193 0)
(declare-sort var2038 0)
(declare-sort var3081 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun out/-1311664591 (var3193) var2038)
(declare-fun toString/-522406933 (var3081) String)
(declare-fun cast-from-var2038-to-var3081 (var2038) var3081)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3193 var3193)
(declare-const var2459 var3193) ; Statement: r1 := @this: freemarker.ext.jsp.JspWriterAdapter 
(assert (not (= var2459 null-var3193)))
(define-const var1708 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1708)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1708!1 String)
(assert (= var1708!1 ""))
(assert true)
(define-const var1843 String (append/672562846 var1708!1 "JspWriterAdapter wrapping a ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JspWriterAdapter wrapping a ") 
(declare-const var1708!2 String)
(assert (= var1708!2 (str.++ var1708!1 "JspWriterAdapter wrapping a ")))
(define-const var2912 var2038 (out/-1311664591 var2459)) ; Statement: $r2 = r1.<freemarker.ext.jsp.JspWriterAdapter: java.io.Writer out> 
(assert true)
(define-const var3628 String (toString/-522406933 (cast-from-var2038-to-var3081 var2912))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1804 String (append/672562846 var1843 var3628)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1843!1 String)
(assert (= var1843!1 (str.++ var1843 var3628)))
(assert true)
(define-const var1746 String (toString/-2075883882 var1804)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), out/-1311664591=([freemarker.ext.jsp.JspWriterAdapter], java.io.Writer), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2038-to-var3081=([java.io.Writer], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3193=freemarker.ext.jsp.JspWriterAdapter, var2459=r1, var1708=$r0, var1843=$r4, var2038=java.io.Writer, var2912=$r2, var3081=java.lang.Object, var3628=$r3, var1804=$r5, var1746=$r6}
; {freemarker.ext.jsp.JspWriterAdapter=var3193, r1=var2459, $r0=var1708, $r4=var1843, java.io.Writer=var2038, $r2=var2912, java.lang.Object=var3081, $r3=var3628, $r5=var1804, $r6=var1746}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.jsp.JspWriterAdapter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JspWriterAdapter wrapping a ");	$r2 = r1.<freemarker.ext.jsp.JspWriterAdapter: java.io.Writer out>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1