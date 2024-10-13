(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3370 0)
(declare-sort var3640 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun element/617136645 (var3370) var3640)
(declare-fun toString/-522406933 (var3640) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3370 var3370)
(declare-const var707 var3370) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.SingletonImmutableList 
(assert (not (= var707 null-var3370)))
(define-const var2737 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2737)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2737!1 String)
(assert (= var2737!1 ""))
(assert true)
(define-const var3139 String (append/-1166366385 var2737!1 91)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2737!2 String)
(assert (str.prefixof var2737!1 var2737!2))
(define-const var2016 var3640 (element/617136645 var707)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.SingletonImmutableList: java.lang.Object element> 
(assert true)
(define-const var570 String (toString/-522406933 var2016)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var666 String (append/672562846 var3139 var570)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3139!1 String)
(assert (= var3139!1 (str.++ var3139 var570)))
(assert true)
(define-const var2941 String (append/-1166366385 var666 93)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var666!1 String)
(assert (str.prefixof var666 var666!1))
(assert true)
(define-const var1473 String (toString/-2075883882 var2941)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), element/617136645=([com.google.javascript.jscomp.jarjar.com.google.common.collect.SingletonImmutableList], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3370=com.google.javascript.jscomp.jarjar.com.google.common.collect.SingletonImmutableList, var707=r1, var2737=$r0, var3139=$r4, var3640=java.lang.Object, var2016=$r2, var570=$r3, var666=$r5, var2941=$r6, var1473=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.SingletonImmutableList=var3370, r1=var707, $r0=var2737, $r4=var3139, java.lang.Object=var3640, $r2=var2016, $r3=var570, $r5=var666, $r6=var2941, $r7=var1473}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.SingletonImmutableList;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.SingletonImmutableList: java.lang.Object element>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1