(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2931 0)
(declare-sort var3880 0)
(declare-sort var3094 0)
(declare-sort var1415 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun closed/681596510 (var2931) Bool)
(declare-fun var3880-init () var3880)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun file/681596510 (var2931) var3094)
(declare-fun append/-1031950772 (String var1415) String)
(declare-fun cast-from-var3094-to-var1415 (var3094) var1415)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3880 String) void)
(declare-const null-var2931 var2931)
(declare-const var1438 var2931) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream 
(assert (not (= var1438 null-var2931)))
(define-const var739 Bool (closed/681596510 var1438)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream: boolean closed> 
 ; Statement: if $z0 == 0 goto $z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream: boolean opened> 
(assert (not (= (ite var739 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3631 var3880 var3880-init) ; Statement: $r4 = new java.io.IOException 
(define-const var2832 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2832)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2832!1 String)
(assert (= var2832!1 ""))
(define-const var2277 var3094 (file/681596510 var1438)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream: java.io.File file> 
(assert true)
(define-const var502 String (append/-1031950772 var2832!1 (cast-from-var3094-to-var1415 var2277))) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var2832!2 String)
(assert (str.prefixof var2832!1 var2832!2))
(assert true)
(define-const var3529 String (append/672562846 var502 " has already been closed.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has already been closed.") 
(declare-const var502!1 String)
(assert (= var502!1 (str.++ var502 " has already been closed.")))
(assert true)
(define-const var1375 String (toString/-2075883882 var3529)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var3631 var1375)) ; Statement: specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r9) 

(declare-const var3631!1 var3880)
(declare-const var1375!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {closed/681596510=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream], boolean), var3880-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), file/681596510=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3094-to-var1415=([java.io.File], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2931=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream, var1438=r0, var739=$z0, var3880=java.io.IOException, var3631=$r4, var2832=$r5, var3094=java.io.File, var2277=$r6, var1415=java.lang.Object, var502=$r7, var3529=$r8, var1375=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream=var2931, r0=var1438, $z0=var739, java.io.IOException=var3880, $r4=var3631, $r5=var2832, java.io.File=var3094, $r6=var2277, java.lang.Object=var1415, $r7=var502, $r8=var3529, $r9=var1375}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream: boolean closed>;	if $z0 == 0 goto $z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream: boolean opened>;	$r4 = new java.io.IOException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream: java.io.File file>;	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has already been closed.");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2