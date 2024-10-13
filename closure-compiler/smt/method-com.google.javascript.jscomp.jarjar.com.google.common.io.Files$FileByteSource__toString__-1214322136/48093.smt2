(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2566 0)
(declare-sort var2887 0)
(declare-sort var1999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun file/-1032114296 (var2566) var2887)
(declare-fun append/-1031950772 (String var1999) String)
(declare-fun cast-from-var2887-to-var1999 (var2887) var1999)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2566 var2566)
(declare-const var3709 var2566) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.Files$FileByteSource 
(assert (not (= var3709 null-var2566)))
(define-const var2082 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2082)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2082!1 String)
(assert (= var2082!1 ""))
(assert true)
(define-const var2912 String (append/672562846 var2082!1 "Files.asByteSource(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Files.asByteSource(") 
(declare-const var2082!2 String)
(assert (= var2082!2 (str.++ var2082!1 "Files.asByteSource(")))
(define-const var178 var2887 (file/-1032114296 var3709)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.Files$FileByteSource: java.io.File file> 
(assert true)
(define-const var3993 String (append/-1031950772 var2912 (cast-from-var2887-to-var1999 var178))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2912!1 String)
(assert (str.prefixof var2912 var2912!1))
(assert true)
(define-const var1420 String (append/672562846 var3993 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3993!1 String)
(assert (= var3993!1 (str.++ var3993 ")")))
(assert true)
(define-const var2280 String (toString/-2075883882 var1420)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), file/-1032114296=([com.google.javascript.jscomp.jarjar.com.google.common.io.Files$FileByteSource], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2887-to-var1999=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2566=com.google.javascript.jscomp.jarjar.com.google.common.io.Files$FileByteSource, var3709=r1, var2082=$r0, var2912=$r3, var2887=java.io.File, var178=$r2, var1999=java.lang.Object, var3993=$r4, var1420=$r5, var2280=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.Files$FileByteSource=var2566, r1=var3709, $r0=var2082, $r3=var2912, java.io.File=var2887, $r2=var178, java.lang.Object=var1999, $r4=var3993, $r5=var1420, $r6=var2280}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.Files$FileByteSource;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Files.asByteSource(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.Files$FileByteSource: java.io.File file>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1