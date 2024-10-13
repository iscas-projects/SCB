(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var486 0)
(declare-sort var1143 0)
(declare-sort var1775 0)
(declare-sort var1582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$optionsCopy/-1535891212 (var486) (Array Int var1143))
(declare-fun var1775_toString/-575966009 ((Array Int var1582)) String)
(declare-fun cast-from-__Array__Int__var1143__-to-__Array__Int__var1582__ ((Array Int var1143)) (Array Int var1582))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var486 var486)
(declare-const var729 var486) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$2 
(assert (not (= var729 null-var486)))
(define-const var3082 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3082)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3082!1 String)
(assert (= var3082!1 ""))
(assert true)
(define-const var36 String (append/672562846 var3082!1 "MoreFiles.isRegularFile(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MoreFiles.isRegularFile(") 
(declare-const var3082!2 String)
(assert (= var3082!2 (str.++ var3082!1 "MoreFiles.isRegularFile(")))
(define-const var2971 (Array Int var1143) (val$optionsCopy/-1535891212 var729)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$2: java.nio.file.LinkOption[] val$optionsCopy> 
(define-const var737 String (var1775_toString/-575966009 (cast-from-__Array__Int__var1143__-to-__Array__Int__var1582__ var2971))) ; Statement: $r3 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r2) 
(assert true)
(define-const var2835 String (append/672562846 var36 var737)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var36!1 String)
(assert (= var36!1 (str.++ var36 var737)))
(assert true)
(define-const var2684 String (append/672562846 var2835 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2835!1 String)
(assert (= var2835!1 (str.++ var2835 ")")))
(assert true)
(define-const var430 String (toString/-2075883882 var2684)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$optionsCopy/-1535891212=([com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$2], java.nio.file.LinkOption[]), var1775_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var1143__-to-__Array__Int__var1582__=([java.nio.file.LinkOption[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var486=com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$2, var729=r1, var3082=$r0, var36=$r4, var1143=java.nio.file.LinkOption, var2971=$r2, var1775=java.util.Arrays, var1582=java.lang.Object, var737=$r3, var2835=$r5, var2684=$r6, var430=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$2=var486, r1=var729, $r0=var3082, $r4=var36, java.nio.file.LinkOption=var1143, $r2=var2971, java.util.Arrays=var1775, java.lang.Object=var1582, $r3=var737, $r5=var2835, $r6=var2684, $r7=var430}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$2;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MoreFiles.isRegularFile(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$2: java.nio.file.LinkOption[] val$optionsCopy>;	$r3 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1