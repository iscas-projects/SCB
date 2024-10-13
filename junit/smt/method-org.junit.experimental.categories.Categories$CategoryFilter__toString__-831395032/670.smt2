(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2881 0)
(declare-sort var3030 0)
(declare-sort var3267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun included/658597768 (var2881) var3030)
(declare-fun var3030_isEmpty/-1493248066 (var3030) Bool)
(declare-fun cast-from-var3030-to-var3267 (var3030) var3267)
(declare-fun append/-1031950772 (String var3267) String)
(declare-fun excluded/658597768 (var2881) var3030)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2881 var2881)
(declare-const var3035 var2881) ; Statement: r1 := @this: org.junit.experimental.categories.Categories$CategoryFilter 
(assert (not (= var3035 null-var2881)))
(define-const var573 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var573 "categories ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("categories ") 
(declare-const var573!1 String)
(assert (= var573!1 "categories "))
(define-const var442 var3030 (included/658597768 var3035)) ; Statement: $r2 = r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.util.Set included> 
(define-const var1252 Bool (var3030_isEmpty/-1493248066 var442)) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Set: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r8 = r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.util.Set included> 
(assert (= (ite var1252 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2126 var3267 (cast-from-var3030-to-var3267 (included/658597768 var3035))) ; Statement: $r8 = r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.util.Set included> 
(assert true) ; Non Conditional
(assert true)
(define-const var1335 String (append/-1031950772 var573!1 var2126)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var573!2 String)
(assert (str.prefixof var573!1 var573!2))
(define-const var940 var3030 (excluded/658597768 var3035)) ; Statement: $r3 = r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.util.Set excluded> 
(define-const var1244 Bool (var3030_isEmpty/-1493248066 var940)) ; Statement: $z1 = interfaceinvoke $r3.<java.util.Set: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var1244 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
(define-const var3390 String (toString/-2075883882 var1335)) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), included/658597768=([org.junit.experimental.categories.Categories$CategoryFilter], java.util.Set), var3030_isEmpty/-1493248066=([java.util.Set], boolean), cast-from-var3030-to-var3267=([java.util.Set], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), excluded/658597768=([org.junit.experimental.categories.Categories$CategoryFilter], java.util.Set), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2881=org.junit.experimental.categories.Categories$CategoryFilter, var3035=r1, var573=$r0, var3030=java.util.Set, var442=$r2, var1252=$z0, var3267=java.lang.Object, var2126=$r8, var1335=$r7, var940=$r3, var1244=$z1, var3390=$r4}
; {org.junit.experimental.categories.Categories$CategoryFilter=var2881, r1=var3035, $r0=var573, java.util.Set=var3030, $r2=var442, $z0=var1252, java.lang.Object=var3267, $r8=var2126, $r7=var1335, $r3=var940, $z1=var1244, $r4=var3390}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.junit.experimental.categories.Categories$CategoryFilter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("categories ");	$r2 = r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.util.Set included>;	$z0 = interfaceinvoke $r2.<java.util.Set: boolean isEmpty()>();	if $z0 == 0 goto $r8 = r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.util.Set included>;	$r8 = r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.util.Set included>;	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r3 = r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.util.Set excluded>;	$z1 = interfaceinvoke $r3.<java.util.Set: boolean isEmpty()>();	if $z1 != 0 goto $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4