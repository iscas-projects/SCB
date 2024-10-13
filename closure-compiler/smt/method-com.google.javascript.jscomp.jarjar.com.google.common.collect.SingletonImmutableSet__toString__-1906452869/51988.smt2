(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var233 0)
(declare-sort var394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun element/1128292891 (var233) var394)
(declare-fun toString/-522406933 (var394) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var233 var233)
(declare-const var3408 var233) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.SingletonImmutableSet 
(assert (not (= var3408 null-var233)))
(define-const var938 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var938)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var938!1 String)
(assert (= var938!1 ""))
(assert true)
(define-const var740 String (append/-1166366385 var938!1 91)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var938!2 String)
(assert (str.prefixof var938!1 var938!2))
(define-const var1915 var394 (element/1128292891 var3408)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.SingletonImmutableSet: java.lang.Object element> 
(assert true)
(define-const var310 String (toString/-522406933 var1915)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1044 String (append/672562846 var740 var310)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var740!1 String)
(assert (= var740!1 (str.++ var740 var310)))
(assert true)
(define-const var205 String (append/-1166366385 var1044 93)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1044!1 String)
(assert (str.prefixof var1044 var1044!1))
(assert true)
(define-const var221 String (toString/-2075883882 var205)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), element/1128292891=([com.google.javascript.jscomp.jarjar.com.google.common.collect.SingletonImmutableSet], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var233=com.google.javascript.jscomp.jarjar.com.google.common.collect.SingletonImmutableSet, var3408=r1, var938=$r0, var740=$r4, var394=java.lang.Object, var1915=$r2, var310=$r3, var1044=$r5, var205=$r6, var221=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.SingletonImmutableSet=var233, r1=var3408, $r0=var938, $r4=var740, java.lang.Object=var394, $r2=var1915, $r3=var310, $r5=var1044, $r6=var205, $r7=var221}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.SingletonImmutableSet;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.SingletonImmutableSet: java.lang.Object element>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1