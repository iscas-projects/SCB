(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3664 0)
(declare-sort var3030 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-261419463 (var3664 String) void)
(declare-const null-var3664 var3664)
(declare-const null-String String)
(declare-const var3610 var3664) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair 
(assert (not (= var3610 null-var3664)))
(declare-const var3575 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3575 null-String)))
(declare-const var3325 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3325 null-String)))
(define-const var13 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var13)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var13!1 String)
(assert (= var13!1 ""))
(assert true)
(define-const var3269 String (append/672562846 var13!1 var3575)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var13!2 String)
(assert (= var13!2 (str.++ var13!1 var3575)))
(assert true)
(define-const var579 String (append/672562846 var3269 "=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var3269!1 String)
(assert (= var3269!1 (str.++ var3269 "=")))
(assert true)
(define-const var2978 String (append/672562846 var579 var3325)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var579!1 String)
(assert (= var579!1 (str.++ var579 var3325)))
(assert true)
(define-const var83 String (toString/-2075883882 var2978)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-261419463 var3610 var83)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: void <init>(java.lang.String)>($r7) 

(declare-const var3610!1 var3664)
(declare-const var83!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-261419463=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair, java.lang.String], void)}
; {var3664=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair, var3610=r0, var3575=r2, var3030=null_type, var3325=r4, var13=$r1, var3269=$r3, var579=$r5, var2978=$r6, var83=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair=var3664, r0=var3610, r2=var3575, null_type=var3030, r4=var3325, $r1=var13, $r3=var3269, $r5=var579, $r6=var2978, $r7=var83}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: void <init>(java.lang.String)>($r7);	return
;block_num 1