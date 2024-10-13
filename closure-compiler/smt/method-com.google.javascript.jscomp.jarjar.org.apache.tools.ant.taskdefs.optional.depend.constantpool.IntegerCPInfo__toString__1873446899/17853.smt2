(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2203 0)
(declare-sort var3305 0)
(declare-sort var1915 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getValue/1336312284 (var1915) var3305)
(declare-fun cast-from-var2203-to-var1915 (var2203) var1915)
(declare-fun append/-1031950772 (String var3305) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2203 var2203)
(declare-const var1109 var2203) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.IntegerCPInfo 
(assert (not (= var1109 null-var2203)))
(define-const var2138 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2138)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2138!1 String)
(assert (= var2138!1 ""))
(assert true)
(define-const var61 String (append/672562846 var2138!1 "Integer Constant Pool Entry: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Integer Constant Pool Entry: ") 
(declare-const var2138!2 String)
(assert (= var2138!2 (str.++ var2138!1 "Integer Constant Pool Entry: ")))
(assert true)
(define-const var1822 var3305 (getValue/1336312284 (cast-from-var2203-to-var1915 var1109))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.IntegerCPInfo: java.lang.Object getValue()>() 
(assert true)
(define-const var2857 String (append/-1031950772 var61 var1822)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var61!1 String)
(assert (str.prefixof var61 var61!1))
(assert true)
(define-const var546 String (toString/-2075883882 var2857)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getValue/1336312284=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantCPInfo], java.lang.Object), cast-from-var2203-to-var1915=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.IntegerCPInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantCPInfo), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2203=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.IntegerCPInfo, var1109=r1, var2138=$r0, var61=$r3, var3305=java.lang.Object, var1915=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantCPInfo, var1822=$r2, var2857=$r4, var546=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.IntegerCPInfo=var2203, r1=var1109, $r0=var2138, $r3=var61, java.lang.Object=var3305, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantCPInfo=var1915, $r2=var1822, $r4=var2857, $r5=var546}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.IntegerCPInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Integer Constant Pool Entry: ");	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.IntegerCPInfo: java.lang.Object getValue()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1