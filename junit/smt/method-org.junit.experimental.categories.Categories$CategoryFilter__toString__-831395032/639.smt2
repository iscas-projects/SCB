(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3669 0)
(declare-sort var2756 0)
(declare-sort var836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun included/658597768 (var3669) var2756)
(declare-fun var2756_isEmpty/-1493248066 (var2756) Bool)
(declare-fun cast-from-String-to-var836 (String) var836)
(declare-fun append/-1031950772 (String var836) String)
(declare-fun excluded/658597768 (var3669) var2756)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3669 var3669)
(declare-const var1365 var3669) ; Statement: r1 := @this: org.junit.experimental.categories.Categories$CategoryFilter 
(assert (not (= var1365 null-var3669)))
(define-const var1449 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1449 "categories ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("categories ") 
(declare-const var1449!1 String)
(assert (= var1449!1 "categories "))
(define-const var831 var2756 (included/658597768 var1365)) ; Statement: $r2 = r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.util.Set included> 
(define-const var39 Bool (var2756_isEmpty/-1493248066 var831)) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Set: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r8 = r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.util.Set included> 
(assert (not (= (ite var39 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3999 var836 (cast-from-String-to-var836 "[all]")) ; Statement: $r8 = "[all]" 
 ; Statement: goto [?= $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2866 String (append/-1031950772 var1449!1 var3999)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1449!2 String)
(assert (str.prefixof var1449!1 var1449!2))
(define-const var3007 var2756 (excluded/658597768 var1365)) ; Statement: $r3 = r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.util.Set excluded> 
(define-const var2261 Bool (var2756_isEmpty/-1493248066 var3007)) ; Statement: $z1 = interfaceinvoke $r3.<java.util.Set: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var2261 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
(define-const var1415 String (toString/-2075883882 var2866)) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), included/658597768=([org.junit.experimental.categories.Categories$CategoryFilter], java.util.Set), var2756_isEmpty/-1493248066=([java.util.Set], boolean), cast-from-String-to-var836=([java.lang.String], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), excluded/658597768=([org.junit.experimental.categories.Categories$CategoryFilter], java.util.Set), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3669=org.junit.experimental.categories.Categories$CategoryFilter, var1365=r1, var1449=$r0, var2756=java.util.Set, var831=$r2, var39=$z0, var836=java.lang.Object, var3999=$r8, var2866=$r7, var3007=$r3, var2261=$z1, var1415=$r4}
; {org.junit.experimental.categories.Categories$CategoryFilter=var3669, r1=var1365, $r0=var1449, java.util.Set=var2756, $r2=var831, $z0=var39, java.lang.Object=var836, $r8=var3999, $r7=var2866, $r3=var3007, $z1=var2261, $r4=var1415}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.junit.experimental.categories.Categories$CategoryFilter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("categories ");	$r2 = r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.util.Set included>;	$z0 = interfaceinvoke $r2.<java.util.Set: boolean isEmpty()>();	if $z0 == 0 goto $r8 = r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.util.Set included>;	$r8 = "[all]";	goto [?= $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8)];	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r3 = r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.util.Set excluded>;	$z1 = interfaceinvoke $r3.<java.util.Set: boolean isEmpty()>();	if $z1 != 0 goto $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4